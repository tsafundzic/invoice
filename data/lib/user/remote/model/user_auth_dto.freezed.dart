// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_auth_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserAuthDto {
  String? get id => throw _privateConstructorUsedError;
  bool? get admin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserAuthDtoCopyWith<UserAuthDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthDtoCopyWith<$Res> {
  factory $UserAuthDtoCopyWith(
          UserAuthDto value, $Res Function(UserAuthDto) then) =
      _$UserAuthDtoCopyWithImpl<$Res>;
  $Res call({String? id, bool? admin});
}

/// @nodoc
class _$UserAuthDtoCopyWithImpl<$Res> implements $UserAuthDtoCopyWith<$Res> {
  _$UserAuthDtoCopyWithImpl(this._value, this._then);

  final UserAuthDto _value;
  // ignore: unused_field
  final $Res Function(UserAuthDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? admin = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      admin: admin == freezed
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserAuthDtoCopyWith<$Res>
    implements $UserAuthDtoCopyWith<$Res> {
  factory _$$_UserAuthDtoCopyWith(
          _$_UserAuthDto value, $Res Function(_$_UserAuthDto) then) =
      __$$_UserAuthDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? id, bool? admin});
}

/// @nodoc
class __$$_UserAuthDtoCopyWithImpl<$Res> extends _$UserAuthDtoCopyWithImpl<$Res>
    implements _$$_UserAuthDtoCopyWith<$Res> {
  __$$_UserAuthDtoCopyWithImpl(
      _$_UserAuthDto _value, $Res Function(_$_UserAuthDto) _then)
      : super(_value, (v) => _then(v as _$_UserAuthDto));

  @override
  _$_UserAuthDto get _value => super._value as _$_UserAuthDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? admin = freezed,
  }) {
    return _then(_$_UserAuthDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      admin: admin == freezed
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_UserAuthDto extends _UserAuthDto {
  const _$_UserAuthDto({this.id, this.admin}) : super._();

  @override
  final String? id;
  @override
  final bool? admin;

  @override
  String toString() {
    return 'UserAuthDto(id: $id, admin: $admin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAuthDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.admin, admin));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(admin));

  @JsonKey(ignore: true)
  @override
  _$$_UserAuthDtoCopyWith<_$_UserAuthDto> get copyWith =>
      __$$_UserAuthDtoCopyWithImpl<_$_UserAuthDto>(this, _$identity);
}

abstract class _UserAuthDto extends UserAuthDto {
  const factory _UserAuthDto({final String? id, final bool? admin}) =
      _$_UserAuthDto;
  const _UserAuthDto._() : super._();

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  bool? get admin => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserAuthDtoCopyWith<_$_UserAuthDto> get copyWith =>
      throw _privateConstructorUsedError;
}
