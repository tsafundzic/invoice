import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_auth.freezed.dart';

@freezed
class UserAuth with _$UserAuth {
  const factory UserAuth({
    String? id,
    bool? admin,
  }) = _UserAuth;
}
