import 'package:domain/user/model/user.dart';
import 'package:domain/user/model/user_auth.dart';
import 'package:domain/user/user_repository.dart';

import 'remote/user_remote_data_source.dart';

class UserRepositoryImpl extends UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl(this.remoteDataSource);

  @override
  Future<UserAuth> googleLogin() {
    return remoteDataSource.googleSignIn().asStream().map((event) => event.toUserAuth()).first;
  }

  @override
  Stream<UserAuth?> get userAuth => remoteDataSource.userAuth.map((event) => event?.toUserAuth());

  @override
  Stream<User?> getUser(String userId) {
    return remoteDataSource.getUser(userId).map((data) => data?.toUser);
  }

  @override
  Future<void> resolveUser() async {

  }

  @override
  Future<bool> get isSigneIn => remoteDataSource.isSignedIn;

}
