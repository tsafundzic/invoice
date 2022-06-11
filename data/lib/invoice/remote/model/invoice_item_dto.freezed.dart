// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invoice_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvoiceItemDto _$InvoiceItemDtoFromJson(Map<String, dynamic> json) {
  return _InvoiceItemDto.fromJson(json);
}

/// @nodoc
mixin _$InvoiceItemDto {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "unit")
  String get unit => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  int get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: "rebate")
  int get rebate => throw _privateConstructorUsedError;
  @JsonKey(name: "itemType")
  String get itemType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceItemDtoCopyWith<InvoiceItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceItemDtoCopyWith<$Res> {
  factory $InvoiceItemDtoCopyWith(
          InvoiceItemDto value, $Res Function(InvoiceItemDto) then) =
      _$InvoiceItemDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "unit") String unit,
      @JsonKey(name: "amount") int amount,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "rebate") int rebate,
      @JsonKey(name: "itemType") String itemType});
}

/// @nodoc
class _$InvoiceItemDtoCopyWithImpl<$Res>
    implements $InvoiceItemDtoCopyWith<$Res> {
  _$InvoiceItemDtoCopyWithImpl(this._value, this._then);

  final InvoiceItemDto _value;
  // ignore: unused_field
  final $Res Function(InvoiceItemDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? unit = freezed,
    Object? amount = freezed,
    Object? price = freezed,
    Object? rebate = freezed,
    Object? itemType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rebate: rebate == freezed
          ? _value.rebate
          : rebate // ignore: cast_nullable_to_non_nullable
              as int,
      itemType: itemType == freezed
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_InvoiceItemDtoCopyWith<$Res>
    implements $InvoiceItemDtoCopyWith<$Res> {
  factory _$$_InvoiceItemDtoCopyWith(
          _$_InvoiceItemDto value, $Res Function(_$_InvoiceItemDto) then) =
      __$$_InvoiceItemDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "unit") String unit,
      @JsonKey(name: "amount") int amount,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "rebate") int rebate,
      @JsonKey(name: "itemType") String itemType});
}

/// @nodoc
class __$$_InvoiceItemDtoCopyWithImpl<$Res>
    extends _$InvoiceItemDtoCopyWithImpl<$Res>
    implements _$$_InvoiceItemDtoCopyWith<$Res> {
  __$$_InvoiceItemDtoCopyWithImpl(
      _$_InvoiceItemDto _value, $Res Function(_$_InvoiceItemDto) _then)
      : super(_value, (v) => _then(v as _$_InvoiceItemDto));

  @override
  _$_InvoiceItemDto get _value => super._value as _$_InvoiceItemDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? unit = freezed,
    Object? amount = freezed,
    Object? price = freezed,
    Object? rebate = freezed,
    Object? itemType = freezed,
  }) {
    return _then(_$_InvoiceItemDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      rebate: rebate == freezed
          ? _value.rebate
          : rebate // ignore: cast_nullable_to_non_nullable
              as int,
      itemType: itemType == freezed
          ? _value.itemType
          : itemType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoiceItemDto extends _InvoiceItemDto {
  const _$_InvoiceItemDto(
      {@JsonKey(name: "id") this.id = '',
      @JsonKey(name: "name") this.name = '',
      @JsonKey(name: "unit") this.unit = '',
      @JsonKey(name: "amount") this.amount = 0,
      @JsonKey(name: "price") this.price = 0,
      @JsonKey(name: "rebate") this.rebate = 0,
      @JsonKey(name: "itemType") this.itemType = ''})
      : super._();

  factory _$_InvoiceItemDto.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceItemDtoFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "unit")
  final String unit;
  @override
  @JsonKey(name: "amount")
  final int amount;
  @override
  @JsonKey(name: "price")
  final int price;
  @override
  @JsonKey(name: "rebate")
  final int rebate;
  @override
  @JsonKey(name: "itemType")
  final String itemType;

  @override
  String toString() {
    return 'InvoiceItemDto(id: $id, name: $name, unit: $unit, amount: $amount, price: $price, rebate: $rebate, itemType: $itemType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceItemDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.rebate, rebate) &&
            const DeepCollectionEquality().equals(other.itemType, itemType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(unit),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(rebate),
      const DeepCollectionEquality().hash(itemType));

  @JsonKey(ignore: true)
  @override
  _$$_InvoiceItemDtoCopyWith<_$_InvoiceItemDto> get copyWith =>
      __$$_InvoiceItemDtoCopyWithImpl<_$_InvoiceItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceItemDtoToJson(this);
  }
}

abstract class _InvoiceItemDto extends InvoiceItemDto {
  const factory _InvoiceItemDto(
      {@JsonKey(name: "id") final String id,
      @JsonKey(name: "name") final String name,
      @JsonKey(name: "unit") final String unit,
      @JsonKey(name: "amount") final int amount,
      @JsonKey(name: "price") final int price,
      @JsonKey(name: "rebate") final int rebate,
      @JsonKey(name: "itemType") final String itemType}) = _$_InvoiceItemDto;
  const _InvoiceItemDto._() : super._();

  factory _InvoiceItemDto.fromJson(Map<String, dynamic> json) =
      _$_InvoiceItemDto.fromJson;

  @override
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "unit")
  String get unit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "amount")
  int get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "price")
  int get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "rebate")
  int get rebate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "itemType")
  String get itemType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceItemDtoCopyWith<_$_InvoiceItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}
