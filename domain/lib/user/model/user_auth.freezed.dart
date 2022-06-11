// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserAuth {
  String? get id => throw _privateConstructorUsedError;
  bool? get admin => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserAuthCopyWith<UserAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthCopyWith<$Res> {
  factory $UserAuthCopyWith(UserAuth value, $Res Function(UserAuth) then) =
      _$UserAuthCopyWithImpl<$Res>;
  $Res call({String? id, bool? admin});
}

/// @nodoc
class _$UserAuthCopyWithImpl<$Res> implements $UserAuthCopyWith<$Res> {
  _$UserAuthCopyWithImpl(this._value, this._then);

  final UserAuth _value;
  // ignore: unused_field
  final $Res Function(UserAuth) _then;

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
abstract class _$$_UserAuthCopyWith<$Res> implements $UserAuthCopyWith<$Res> {
  factory _$$_UserAuthCopyWith(
          _$_UserAuth value, $Res Function(_$_UserAuth) then) =
      __$$_UserAuthCopyWithImpl<$Res>;
  @override
  $Res call({String? id, bool? admin});
}

/// @nodoc
class __$$_UserAuthCopyWithImpl<$Res> extends _$UserAuthCopyWithImpl<$Res>
    implements _$$_UserAuthCopyWith<$Res> {
  __$$_UserAuthCopyWithImpl(
      _$_UserAuth _value, $Res Function(_$_UserAuth) _then)
      : super(_value, (v) => _then(v as _$_UserAuth));

  @override
  _$_UserAuth get _value => super._value as _$_UserAuth;

  @override
  $Res call({
    Object? id = freezed,
    Object? admin = freezed,
  }) {
    return _then(_$_UserAuth(
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

class _$_UserAuth implements _UserAuth {
  const _$_UserAuth({this.id, this.admin});

  @override
  final String? id;
  @override
  final bool? admin;

  @override
  String toString() {
    return 'UserAuth(id: $id, admin: $admin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAuth &&
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
  _$$_UserAuthCopyWith<_$_UserAuth> get copyWith =>
      __$$_UserAuthCopyWithImpl<_$_UserAuth>(this, _$identity);
}

abstract class _UserAuth implements UserAuth {
  const factory _UserAuth({final String? id, final bool? admin}) = _$_UserAuth;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  bool? get admin => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserAuthCopyWith<_$_UserAuth> get copyWith =>
      throw _privateConstructorUsedError;
}
