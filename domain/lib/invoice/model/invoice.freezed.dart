// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Invoice {
  String get id => throw _privateConstructorUsedError;
  String get invoiceNr => throw _privateConstructorUsedError;
  String get companyId => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  DateTime get paymentDue => throw _privateConstructorUsedError;
  DateTime get dateOfIssue => throw _privateConstructorUsedError;
  DateTime get deliveryDate => throw _privateConstructorUsedError;
  List<InvoiceItem> get items => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  int get rebate => throw _privateConstructorUsedError;
  int get vat => throw _privateConstructorUsedError;
  String? get referenceNumber => throw _privateConstructorUsedError;
  DateTime? get dateOfPayment => throw _privateConstructorUsedError;
  int? get cashCharged => throw _privateConstructorUsedError;
  int? get transferCharged => throw _privateConstructorUsedError;
  String? get domesticCurrency => throw _privateConstructorUsedError;
  int? get domesticTotalPrice => throw _privateConstructorUsedError;
  double? get exchangeRate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoiceCopyWith<Invoice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String invoiceNr,
      String companyId,
      String customerId,
      DateTime paymentDue,
      DateTime dateOfIssue,
      DateTime deliveryDate,
      List<InvoiceItem> items,
      int totalPrice,
      String currency,
      int rebate,
      int vat,
      String? referenceNumber,
      DateTime? dateOfPayment,
      int? cashCharged,
      int? transferCharged,
      String? domesticCurrency,
      int? domesticTotalPrice,
      double? exchangeRate});
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res> implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  final Invoice _value;
  // ignore: unused_field
  final $Res Function(Invoice) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? invoiceNr = freezed,
    Object? companyId = freezed,
    Object? customerId = freezed,
    Object? paymentDue = freezed,
    Object? dateOfIssue = freezed,
    Object? deliveryDate = freezed,
    Object? items = freezed,
    Object? totalPrice = freezed,
    Object? currency = freezed,
    Object? rebate = freezed,
    Object? vat = freezed,
    Object? referenceNumber = freezed,
    Object? dateOfPayment = freezed,
    Object? cashCharged = freezed,
    Object? transferCharged = freezed,
    Object? domesticCurrency = freezed,
    Object? domesticTotalPrice = freezed,
    Object? exchangeRate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceNr: invoiceNr == freezed
          ? _value.invoiceNr
          : invoiceNr // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentDue: paymentDue == freezed
          ? _value.paymentDue
          : paymentDue // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateOfIssue: dateOfIssue == freezed
          ? _value.dateOfIssue
          : dateOfIssue // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: deliveryDate == freezed
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItem>,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      rebate: rebate == freezed
          ? _value.rebate
          : rebate // ignore: cast_nullable_to_non_nullable
              as int,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as int,
      referenceNumber: referenceNumber == freezed
          ? _value.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfPayment: dateOfPayment == freezed
          ? _value.dateOfPayment
          : dateOfPayment // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cashCharged: cashCharged == freezed
          ? _value.cashCharged
          : cashCharged // ignore: cast_nullable_to_non_nullable
              as int?,
      transferCharged: transferCharged == freezed
          ? _value.transferCharged
          : transferCharged // ignore: cast_nullable_to_non_nullable
              as int?,
      domesticCurrency: domesticCurrency == freezed
          ? _value.domesticCurrency
          : domesticCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      domesticTotalPrice: domesticTotalPrice == freezed
          ? _value.domesticTotalPrice
          : domesticTotalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      exchangeRate: exchangeRate == freezed
          ? _value.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$$_InvoiceCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$$_InvoiceCopyWith(
          _$_Invoice value, $Res Function(_$_Invoice) then) =
      __$$_InvoiceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String invoiceNr,
      String companyId,
      String customerId,
      DateTime paymentDue,
      DateTime dateOfIssue,
      DateTime deliveryDate,
      List<InvoiceItem> items,
      int totalPrice,
      String currency,
      int rebate,
      int vat,
      String? referenceNumber,
      DateTime? dateOfPayment,
      int? cashCharged,
      int? transferCharged,
      String? domesticCurrency,
      int? domesticTotalPrice,
      double? exchangeRate});
}

/// @nodoc
class __$$_InvoiceCopyWithImpl<$Res> extends _$InvoiceCopyWithImpl<$Res>
    implements _$$_InvoiceCopyWith<$Res> {
  __$$_InvoiceCopyWithImpl(_$_Invoice _value, $Res Function(_$_Invoice) _then)
      : super(_value, (v) => _then(v as _$_Invoice));

  @override
  _$_Invoice get _value => super._value as _$_Invoice;

  @override
  $Res call({
    Object? id = freezed,
    Object? invoiceNr = freezed,
    Object? companyId = freezed,
    Object? customerId = freezed,
    Object? paymentDue = freezed,
    Object? dateOfIssue = freezed,
    Object? deliveryDate = freezed,
    Object? items = freezed,
    Object? totalPrice = freezed,
    Object? currency = freezed,
    Object? rebate = freezed,
    Object? vat = freezed,
    Object? referenceNumber = freezed,
    Object? dateOfPayment = freezed,
    Object? cashCharged = freezed,
    Object? transferCharged = freezed,
    Object? domesticCurrency = freezed,
    Object? domesticTotalPrice = freezed,
    Object? exchangeRate = freezed,
  }) {
    return _then(_$_Invoice(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceNr: invoiceNr == freezed
          ? _value.invoiceNr
          : invoiceNr // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentDue: paymentDue == freezed
          ? _value.paymentDue
          : paymentDue // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateOfIssue: dateOfIssue == freezed
          ? _value.dateOfIssue
          : dateOfIssue // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: deliveryDate == freezed
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItem>,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      rebate: rebate == freezed
          ? _value.rebate
          : rebate // ignore: cast_nullable_to_non_nullable
              as int,
      vat: vat == freezed
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as int,
      referenceNumber: referenceNumber == freezed
          ? _value.referenceNumber
          : referenceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfPayment: dateOfPayment == freezed
          ? _value.dateOfPayment
          : dateOfPayment // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cashCharged: cashCharged == freezed
          ? _value.cashCharged
          : cashCharged // ignore: cast_nullable_to_non_nullable
              as int?,
      transferCharged: transferCharged == freezed
          ? _value.transferCharged
          : transferCharged // ignore: cast_nullable_to_non_nullable
              as int?,
      domesticCurrency: domesticCurrency == freezed
          ? _value.domesticCurrency
          : domesticCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      domesticTotalPrice: domesticTotalPrice == freezed
          ? _value.domesticTotalPrice
          : domesticTotalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      exchangeRate: exchangeRate == freezed
          ? _value.exchangeRate
          : exchangeRate // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_Invoice implements _Invoice {
  const _$_Invoice(
      {required this.id,
      required this.invoiceNr,
      required this.companyId,
      required this.customerId,
      required this.paymentDue,
      required this.dateOfIssue,
      required this.deliveryDate,
      required final List<InvoiceItem> items,
      required this.totalPrice,
      required this.currency,
      required this.rebate,
      required this.vat,
      required this.referenceNumber,
      required this.dateOfPayment,
      required this.cashCharged,
      required this.transferCharged,
      required this.domesticCurrency,
      required this.domesticTotalPrice,
      required this.exchangeRate})
      : _items = items;

  @override
  final String id;
  @override
  final String invoiceNr;
  @override
  final String companyId;
  @override
  final String customerId;
  @override
  final DateTime paymentDue;
  @override
  final DateTime dateOfIssue;
  @override
  final DateTime deliveryDate;
  final List<InvoiceItem> _items;
  @override
  List<InvoiceItem> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int totalPrice;
  @override
  final String currency;
  @override
  final int rebate;
  @override
  final int vat;
  @override
  final String? referenceNumber;
  @override
  final DateTime? dateOfPayment;
  @override
  final int? cashCharged;
  @override
  final int? transferCharged;
  @override
  final String? domesticCurrency;
  @override
  final int? domesticTotalPrice;
  @override
  final double? exchangeRate;

  @override
  String toString() {
    return 'Invoice(id: $id, invoiceNr: $invoiceNr, companyId: $companyId, customerId: $customerId, paymentDue: $paymentDue, dateOfIssue: $dateOfIssue, deliveryDate: $deliveryDate, items: $items, totalPrice: $totalPrice, currency: $currency, rebate: $rebate, vat: $vat, referenceNumber: $referenceNumber, dateOfPayment: $dateOfPayment, cashCharged: $cashCharged, transferCharged: $transferCharged, domesticCurrency: $domesticCurrency, domesticTotalPrice: $domesticTotalPrice, exchangeRate: $exchangeRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Invoice &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.invoiceNr, invoiceNr) &&
            const DeepCollectionEquality().equals(other.companyId, companyId) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality()
                .equals(other.paymentDue, paymentDue) &&
            const DeepCollectionEquality()
                .equals(other.dateOfIssue, dateOfIssue) &&
            const DeepCollectionEquality()
                .equals(other.deliveryDate, deliveryDate) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other.totalPrice, totalPrice) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality().equals(other.rebate, rebate) &&
            const DeepCollectionEquality().equals(other.vat, vat) &&
            const DeepCollectionEquality()
                .equals(other.referenceNumber, referenceNumber) &&
            const DeepCollectionEquality()
                .equals(other.dateOfPayment, dateOfPayment) &&
            const DeepCollectionEquality()
                .equals(other.cashCharged, cashCharged) &&
            const DeepCollectionEquality()
                .equals(other.transferCharged, transferCharged) &&
            const DeepCollectionEquality()
                .equals(other.domesticCurrency, domesticCurrency) &&
            const DeepCollectionEquality()
                .equals(other.domesticTotalPrice, domesticTotalPrice) &&
            const DeepCollectionEquality()
                .equals(other.exchangeRate, exchangeRate));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(invoiceNr),
        const DeepCollectionEquality().hash(companyId),
        const DeepCollectionEquality().hash(customerId),
        const DeepCollectionEquality().hash(paymentDue),
        const DeepCollectionEquality().hash(dateOfIssue),
        const DeepCollectionEquality().hash(deliveryDate),
        const DeepCollectionEquality().hash(_items),
        const DeepCollectionEquality().hash(totalPrice),
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(rebate),
        const DeepCollectionEquality().hash(vat),
        const DeepCollectionEquality().hash(referenceNumber),
        const DeepCollectionEquality().hash(dateOfPayment),
        const DeepCollectionEquality().hash(cashCharged),
        const DeepCollectionEquality().hash(transferCharged),
        const DeepCollectionEquality().hash(domesticCurrency),
        const DeepCollectionEquality().hash(domesticTotalPrice),
        const DeepCollectionEquality().hash(exchangeRate)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_InvoiceCopyWith<_$_Invoice> get copyWith =>
      __$$_InvoiceCopyWithImpl<_$_Invoice>(this, _$identity);
}

abstract class _Invoice implements Invoice {
  const factory _Invoice(
      {required final String id,
      required final String invoiceNr,
      required final String companyId,
      required final String customerId,
      required final DateTime paymentDue,
      required final DateTime dateOfIssue,
      required final DateTime deliveryDate,
      required final List<InvoiceItem> items,
      required final int totalPrice,
      required final String currency,
      required final int rebate,
      required final int vat,
      required final String? referenceNumber,
      required final DateTime? dateOfPayment,
      required final int? cashCharged,
      required final int? transferCharged,
      required final String? domesticCurrency,
      required final int? domesticTotalPrice,
      required final double? exchangeRate}) = _$_Invoice;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get invoiceNr => throw _privateConstructorUsedError;
  @override
  String get companyId => throw _privateConstructorUsedError;
  @override
  String get customerId => throw _privateConstructorUsedError;
  @override
  DateTime get paymentDue => throw _privateConstructorUsedError;
  @override
  DateTime get dateOfIssue => throw _privateConstructorUsedError;
  @override
  DateTime get deliveryDate => throw _privateConstructorUsedError;
  @override
  List<InvoiceItem> get items => throw _privateConstructorUsedError;
  @override
  int get totalPrice => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  int get rebate => throw _privateConstructorUsedError;
  @override
  int get vat => throw _privateConstructorUsedError;
  @override
  String? get referenceNumber => throw _privateConstructorUsedError;
  @override
  DateTime? get dateOfPayment => throw _privateConstructorUsedError;
  @override
  int? get cashCharged => throw _privateConstructorUsedError;
  @override
  int? get transferCharged => throw _privateConstructorUsedError;
  @override
  String? get domesticCurrency => throw _privateConstructorUsedError;
  @override
  int? get domesticTotalPrice => throw _privateConstructorUsedError;
  @override
  double? get exchangeRate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceCopyWith<_$_Invoice> get copyWith =>
      throw _privateConstructorUsedError;
}
