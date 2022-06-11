import 'model/user.dart';
import 'model/user_auth.dart';

abstract class UserRepository {
  Future<UserAuth> googleLogin();

  Stream<UserAuth?> get userAuth;

  Stream<User?> getUser(String userId);

  Future<void> resolveUser();

  Future<bool> get isSigneIn;
}
