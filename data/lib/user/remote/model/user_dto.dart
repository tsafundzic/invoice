import 'package:domain/user/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';

part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "email") String? email,
    @Default(false) @JsonKey(name: "admin") bool admin,
    @Default(false) @JsonKey(name: "authorized") bool authorized,
    @JsonKey(name: "providers") List<String>? providers,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

  User get toUser => User(
        id: id ?? '',
        name: name ?? '',
        email: email ?? '',
        admin: admin,
        authorized: authorized,
        providers: providers ?? [],
      );

}
