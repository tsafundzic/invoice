import 'package:data/user/remote/model/user_dto.dart';

import 'model/user_auth_dto.dart';

abstract class UserRemoteDataSource {
  Future<UserAuthDto> googleSignIn();

  Stream<UserAuthDto?> get userAuth;

  Stream<UserDto?> getUser(String userId);

  Future<bool> get isSignedIn;
}
