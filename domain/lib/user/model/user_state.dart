import 'user.dart';
import 'user_auth.dart';

abstract class UserState {
  factory UserState.allowed(UserAuth userAuth, User user) = UserStateAllowed;

  factory UserState.unauthorized(UserAuth userAuth, User user) = UserStateUnauthorized;

  static const unauthenticated = UserStateUnauthenticated();
}

class UserStateAllowed implements UserState {
  final UserAuth userAuth;
  final User user;

  UserStateAllowed(this.userAuth, this.user);
}

class UserStateUnauthorized implements UserState {
  final UserAuth userAuth;
  final User user;

  const UserStateUnauthorized(this.userAuth, this.user);
}

class UserStateUnauthenticated implements UserState {
  const UserStateUnauthenticated();
}
