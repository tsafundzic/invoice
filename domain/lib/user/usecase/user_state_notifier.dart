import 'package:domain/user/model/user.dart';
import 'package:domain/user/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

import '../model/user_auth.dart';
import '../model/user_state.dart';

class UserStateNotifier with ChangeNotifier {
  final UserRepository _userRepository;

  UserStateNotifier(this._userRepository);

  UserState? state;

  Future<void> googleSignIn() async {
    return _userRepository.googleLogin().then((value) {
      //fixme just for testing
      state = UserState.allowed(value, User(id: value.id ?? '', name: 'Dragan', email: '', admin: true, authorized: true, providers: []));
      notifyListeners();
    });
  }

  Stream<UserAuth?> get userAuth => _userRepository.userAuth;

  Stream<User?> get user {
    return user.switchMap((userAuth) {
      if (userAuth == null) {
        return Stream.value(null);
      } else {
        return _userRepository.getUser(userAuth.id);
      }
    });
  }

  Stream<UserState> get userState {
    return Rx.combineLatest2(
      userAuth,
      user,
      (UserAuth? userAuth, User? userData) {
        if (userAuth == null || userData == null) {
          return UserState.unauthenticated;
        }
        if (userData.authorized) {
          return UserState.allowed(userAuth, userData);
        } else {
          return UserState.unauthorized(userAuth, userData);
        }
      },
    );
  }

  Future<void> resolveUser() async {
    bool signedIn = await _userRepository.isSigneIn;
    if (!signedIn) {
      state = const UserStateUnauthenticated();
      notifyListeners();
    }
    return _userRepository.resolveUser();
  }
}
