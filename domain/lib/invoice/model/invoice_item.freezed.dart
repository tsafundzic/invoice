// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invoice_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InvoiceItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Unit get unit => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get rebate => throw _privateConstructorUsedError;
  ItemType get itemType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoiceItemCopyWith<InvoiceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceItemCopyWith<$Res> {
  factory $InvoiceItemCopyWith(
          InvoiceItem value, $Res Function(InvoiceItem) then) =
      _$InvoiceItemCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      Unit unit,
      int amount,
      int price,
      int rebate,
      ItemType itemType});
}

/// @nodoc
class _$InvoiceItemCopyWithImpl<$Res> implements $InvoiceItemCopyWith<$Res> {
  _$InvoiceItemCopyWithImpl(this._value, this._then);

  final InvoiceItem _value;
  // ignore: unused_field
  final $Res Function(InvoiceItem) _then;

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
              as Unit,
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
              as ItemType,
    ));
  }
}

/// @nodoc
abstract class _$$_InvoiceItemCopyWith<$Res>
    implements $InvoiceItemCopyWith<$Res> {
  factory _$$_InvoiceItemCopyWith(
          _$_InvoiceItem value, $Res Function(_$_InvoiceItem) then) =
      __$$_InvoiceItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      Unit unit,
      int amount,
      int price,
      int rebate,
      ItemType itemType});
}

/// @nodoc
class __$$_InvoiceItemCopyWithImpl<$Res> extends _$InvoiceItemCopyWithImpl<$Res>
    implements _$$_InvoiceItemCopyWith<$Res> {
  __$$_InvoiceItemCopyWithImpl(
      _$_InvoiceItem _value, $Res Function(_$_InvoiceItem) _then)
      : super(_value, (v) => _then(v as _$_InvoiceItem));

  @override
  _$_InvoiceItem get _value => super._value as _$_InvoiceItem;

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
    return _then(_$_InvoiceItem(
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
              as Unit,
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
              as ItemType,
    ));
  }
}

/// @nodoc

class _$_InvoiceItem implements _InvoiceItem {
  const _$_InvoiceItem(
      {required this.id,
      required this.name,
      required this.unit,
      required this.amount,
      required this.price,
      required this.rebate,
      required this.itemType});

  @override
  final String id;
  @override
  final String name;
  @override
  final Unit unit;
  @override
  final int amount;
  @override
  final int price;
  @override
  final int rebate;
  @override
  final ItemType itemType;

  @override
  String toString() {
    return 'InvoiceItem(id: $id, name: $name, unit: $unit, amount: $amount, price: $price, rebate: $rebate, itemType: $itemType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.rebate, rebate) &&
            const DeepCollectionEquality().equals(other.itemType, itemType));
  }

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
  _$$_InvoiceItemCopyWith<_$_InvoiceItem> get copyWith =>
      __$$_InvoiceItemCopyWithImpl<_$_InvoiceItem>(this, _$identity);
}

abstract class _InvoiceItem implements InvoiceItem {
  const factory _InvoiceItem(
      {required final String id,
      required final String name,
      required final Unit unit,
      required final int amount,
      required final int price,
      required final int rebate,
      required final ItemType itemType}) = _$_InvoiceItem;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  Unit get unit => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  int get rebate => throw _privateConstructorUsedError;
  @override
  ItemType get itemType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceItemCopyWith<_$_InvoiceItem> get copyWith =>
      throw _privateConstructorUsedError;
}
