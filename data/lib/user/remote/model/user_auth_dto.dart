import 'package:domain/user/model/user_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_auth_dto.freezed.dart';

@freezed
class UserAuthDto with _$UserAuthDto {
  const UserAuthDto._();

  const factory UserAuthDto({
    String? id,
    bool? admin,
  }) = _UserAuthDto;

  UserAuth toUserAuth() => UserAuth(id: id, admin: admin);
}
