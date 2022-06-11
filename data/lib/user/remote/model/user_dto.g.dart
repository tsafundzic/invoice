// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      admin: json['admin'] as bool? ?? false,
      authorized: json['authorized'] as bool? ?? false,
      providers: (json['providers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'admin': instance.admin,
      'authorized': instance.authorized,
      'providers': instance.providers,
    };
