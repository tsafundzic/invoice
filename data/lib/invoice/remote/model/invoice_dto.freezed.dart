// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invoice_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvoiceDto _$InvoiceDtoFromJson(Map<String, dynamic> json) {
  return _InvoiceDto.fromJson(json);
}

/// @nodoc
mixin _$InvoiceDto {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "invoiceNr")
  String get invoiceNr => throw _privateConstructorUsedError;
  @JsonKey(name: "companyId")
  String get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: "customerId")
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(
      name: "paymentDue", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp)
  Timestamp get paymentDue => throw _privateConstructorUsedError;
  @JsonKey(
      name: "dateOfIssue", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp)
  Timestamp get dateOfIssue => throw _privateConstructorUsedError;
  @JsonKey(
      name: "deliveryDate",
      fromJson: fromJsonTimestamp,
      toJson: toJsonTimestamp)
  Timestamp get deliveryDate => throw _privateConstructorUsedError;
  @JsonKey(name: "items")
  List<InvoiceItemDto> get items => throw _privateConstructorUsedError;
  @JsonKey(name: "totalPrice")
  int get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "currency")
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(name: "rebate")
  int get rebate => throw _privateConstructorUsedError;
  @JsonKey(name: "vat")
  int get vat => throw _privateConstructorUsedError;
  @JsonKey(name: "referenceNumber")
  String? get referenceNumber => throw _privateConstructorUsedError;
  @JsonKey(
      name: "dateOfPayment",
      fromJson: fromJsonTimestampNullable,
      toJson: toJsonTimestampNullable)
  Timestamp? get dateOfPayment => throw _privateConstructorUsedError;
  @JsonKey(name: "cashCharged")
  int? get cashCharged => throw _privateConstructorUsedError;
  @JsonKey(name: "transferCharged")
  int? get transferCharged => throw _privateConstructorUsedError;
  @JsonKey(name: "domesticCurrency")
  String? get domesticCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: "domesticTotalPrice")
  int? get domesticTotalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "exchangeRate")
  double? get exchangeRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceDtoCopyWith<InvoiceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDtoCopyWith<$Res> {
  factory $InvoiceDtoCopyWith(
          InvoiceDto value, $Res Function(InvoiceDto) then) =
      _$InvoiceDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id")
          String id,
      @JsonKey(name: "invoiceNr")
          String invoiceNr,
      @JsonKey(name: "companyId")
          String companyId,
      @JsonKey(name: "customerId")
          String customerId,
      @JsonKey(name: "paymentDue", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp)
          Timestamp paymentDue,
      @JsonKey(name: "dateOfIssue", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp)
          Timestamp dateOfIssue,
      @JsonKey(name: "deliveryDate", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp)
          Timestamp deliveryDate,
      @JsonKey(name: "items")
          List<InvoiceItemDto> items,
      @JsonKey(name: "totalPrice")
          int totalPrice,
      @JsonKey(name: "currency")
          String currency,
      @JsonKey(name: "rebate")
          int rebate,
      @JsonKey(name: "vat")
          int vat,
      @JsonKey(name: "referenceNumber")
          String? referenceNumber,
      @JsonKey(name: "dateOfPayment", fromJson: fromJsonTimestampNullable, toJson: toJsonTimestampNullable)
          Timestamp? dateOfPayment,
      @JsonKey(name: "cashCharged")
          int? cashCharged,
      @JsonKey(name: "transferCharged")
          int? transferCharged,
      @JsonKey(name: "domesticCurrency")
          String? domesticCurrency,
      @JsonKey(name: "domesticTotalPrice")
          int? domesticTotalPrice,
      @JsonKey(name: "exchangeRate")
          double? exchangeRate});
}

/// @nodoc
class _$InvoiceDtoCopyWithImpl<$Res> implements $InvoiceDtoCopyWith<$Res> {
  _$InvoiceDtoCopyWithImpl(this._value, this._then);

  final InvoiceDto _value;
  // ignore: unused_field
  final $Res Function(InvoiceDto) _then;

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
              as Timestamp,
      dateOfIssue: dateOfIssue == freezed
          ? _value.dateOfIssue
          : dateOfIssue // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      deliveryDate: deliveryDate == freezed
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItemDto>,
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
              as Timestamp?,
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
abstract class _$$_InvoiceDtoCopyWith<$Res>
    implements $InvoiceDtoCopyWith<$Res> {
  factory _$$_InvoiceDtoCopyWith(
          _$_InvoiceDto value, $Res Function(_$_InvoiceDto) then) =
      __$$_InvoiceDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id")
          String id,
      @JsonKey(name: "invoiceNr")
          String invoiceNr,
      @JsonKey(name: "companyId")
          String companyId,
      @JsonKey(name: "customerId")
          String customerId,
      @JsonKey(name: "paymentDue", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp)
          Timestamp paymentDue,
      @JsonKey(name: "dateOfIssue", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp)
          Timestamp dateOfIssue,
      @JsonKey(name: "deliveryDate", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp)
          Timestamp deliveryDate,
      @JsonKey(name: "items")
          List<InvoiceItemDto> items,
      @JsonKey(name: "totalPrice")
          int totalPrice,
      @JsonKey(name: "currency")
          String currency,
      @JsonKey(name: "rebate")
          int rebate,
      @JsonKey(name: "vat")
          int vat,
      @JsonKey(name: "referenceNumber")
          String? referenceNumber,
      @JsonKey(name: "dateOfPayment", fromJson: fromJsonTimestampNullable, toJson: toJsonTimestampNullable)
          Timestamp? dateOfPayment,
      @JsonKey(name: "cashCharged")
          int? cashCharged,
      @JsonKey(name: "transferCharged")
          int? transferCharged,
      @JsonKey(name: "domesticCurrency")
          String? domesticCurrency,
      @JsonKey(name: "domesticTotalPrice")
          int? domesticTotalPrice,
      @JsonKey(name: "exchangeRate")
          double? exchangeRate});
}

/// @nodoc
class __$$_InvoiceDtoCopyWithImpl<$Res> extends _$InvoiceDtoCopyWithImpl<$Res>
    implements _$$_InvoiceDtoCopyWith<$Res> {
  __$$_InvoiceDtoCopyWithImpl(
      _$_InvoiceDto _value, $Res Function(_$_InvoiceDto) _then)
      : super(_value, (v) => _then(v as _$_InvoiceDto));

  @override
  _$_InvoiceDto get _value => super._value as _$_InvoiceDto;

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
    return _then(_$_InvoiceDto(
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
              as Timestamp,
      dateOfIssue: dateOfIssue == freezed
          ? _value.dateOfIssue
          : dateOfIssue // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      deliveryDate: deliveryDate == freezed
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItemDto>,
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
              as Timestamp?,
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

@JsonSerializable(explicitToJson: true, anyMap: true)
class _$_InvoiceDto extends _InvoiceDto {
  const _$_InvoiceDto(
      {@JsonKey(name: "id")
          this.id = '',
      @JsonKey(name: "invoiceNr")
          this.invoiceNr = '',
      @JsonKey(name: "companyId")
          this.companyId = '',
      @JsonKey(name: "customerId")
          this.customerId = '',
      @JsonKey(name: "paymentDue", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp)
          required this.paymentDue,
      @JsonKey(name: "dateOfIssue", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp)
          required this.dateOfIssue,
      @JsonKey(name: "deliveryDate", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp)
          required this.deliveryDate,
      @JsonKey(name: "items")
          final List<InvoiceItemDto> items = const [],
      @JsonKey(name: "totalPrice")
          this.totalPrice = 0,
      @JsonKey(name: "currency")
          this.currency = '',
      @JsonKey(name: "rebate")
          this.rebate = 0,
      @JsonKey(name: "vat")
          this.vat = 0,
      @JsonKey(name: "referenceNumber")
          this.referenceNumber,
      @JsonKey(name: "dateOfPayment", fromJson: fromJsonTimestampNullable, toJson: toJsonTimestampNullable)
          this.dateOfPayment,
      @JsonKey(name: "cashCharged")
          this.cashCharged,
      @JsonKey(name: "transferCharged")
          this.transferCharged,
      @JsonKey(name: "domesticCurrency")
          this.domesticCurrency,
      @JsonKey(name: "domesticTotalPrice")
          this.domesticTotalPrice,
      @JsonKey(name: "exchangeRate")
          this.exchangeRate})
      : _items = items,
        super._();

  factory _$_InvoiceDto.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceDtoFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "invoiceNr")
  final String invoiceNr;
  @override
  @JsonKey(name: "companyId")
  final String companyId;
  @override
  @JsonKey(name: "customerId")
  final String customerId;
  @override
  @JsonKey(
      name: "paymentDue", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp)
  final Timestamp paymentDue;
  @override
  @JsonKey(
      name: "dateOfIssue", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp)
  final Timestamp dateOfIssue;
  @override
  @JsonKey(
      name: "deliveryDate",
      fromJson: fromJsonTimestamp,
      toJson: toJsonTimestamp)
  final Timestamp deliveryDate;
  final List<InvoiceItemDto> _items;
  @override
  @JsonKey(name: "items")
  List<InvoiceItemDto> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: "totalPrice")
  final int totalPrice;
  @override
  @JsonKey(name: "currency")
  final String currency;
  @override
  @JsonKey(name: "rebate")
  final int rebate;
  @override
  @JsonKey(name: "vat")
  final int vat;
  @override
  @JsonKey(name: "referenceNumber")
  final String? referenceNumber;
  @override
  @JsonKey(
      name: "dateOfPayment",
      fromJson: fromJsonTimestampNullable,
      toJson: toJsonTimestampNullable)
  final Timestamp? dateOfPayment;
  @override
  @JsonKey(name: "cashCharged")
  final int? cashCharged;
  @override
  @JsonKey(name: "transferCharged")
  final int? transferCharged;
  @override
  @JsonKey(name: "domesticCurrency")
  final String? domesticCurrency;
  @override
  @JsonKey(name: "domesticTotalPrice")
  final int? domesticTotalPrice;
  @override
  @JsonKey(name: "exchangeRate")
  final double? exchangeRate;

  @override
  String toString() {
    return 'InvoiceDto(id: $id, invoiceNr: $invoiceNr, companyId: $companyId, customerId: $customerId, paymentDue: $paymentDue, dateOfIssue: $dateOfIssue, deliveryDate: $deliveryDate, items: $items, totalPrice: $totalPrice, currency: $currency, rebate: $rebate, vat: $vat, referenceNumber: $referenceNumber, dateOfPayment: $dateOfPayment, cashCharged: $cashCharged, transferCharged: $transferCharged, domesticCurrency: $domesticCurrency, domesticTotalPrice: $domesticTotalPrice, exchangeRate: $exchangeRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceDto &&
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

  @JsonKey(ignore: true)
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
  _$$_InvoiceDtoCopyWith<_$_InvoiceDto> get copyWith =>
      __$$_InvoiceDtoCopyWithImpl<_$_InvoiceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceDtoToJson(this);
  }
}

abstract class _InvoiceDto extends InvoiceDto {
  const factory _InvoiceDto(
      {@JsonKey(name: "id")
          final String id,
      @JsonKey(name: "invoiceNr")
          final String invoiceNr,
      @JsonKey(name: "companyId")
          final String companyId,
      @JsonKey(name: "customerId")
          final String customerId,
      @JsonKey(name: "paymentDue", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp)
          required final Timestamp paymentDue,
      @JsonKey(name: "dateOfIssue", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp)
          required final Timestamp dateOfIssue,
      @JsonKey(name: "deliveryDate", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp)
          required final Timestamp deliveryDate,
      @JsonKey(name: "items")
          final List<InvoiceItemDto> items,
      @JsonKey(name: "totalPrice")
          final int totalPrice,
      @JsonKey(name: "currency")
          final String currency,
      @JsonKey(name: "rebate")
          final int rebate,
      @JsonKey(name: "vat")
          final int vat,
      @JsonKey(name: "referenceNumber")
          final String? referenceNumber,
      @JsonKey(name: "dateOfPayment", fromJson: fromJsonTimestampNullable, toJson: toJsonTimestampNullable)
          final Timestamp? dateOfPayment,
      @JsonKey(name: "cashCharged")
          final int? cashCharged,
      @JsonKey(name: "transferCharged")
          final int? transferCharged,
      @JsonKey(name: "domesticCurrency")
          final String? domesticCurrency,
      @JsonKey(name: "domesticTotalPrice")
          final int? domesticTotalPrice,
      @JsonKey(name: "exchangeRate")
          final double? exchangeRate}) = _$_InvoiceDto;
  const _InvoiceDto._() : super._();

  factory _InvoiceDto.fromJson(Map<String, dynamic> json) =
      _$_InvoiceDto.fromJson;

  @override
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "invoiceNr")
  String get invoiceNr => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "companyId")
  String get companyId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "customerId")
  String get customerId => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      name: "paymentDue", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp)
  Timestamp get paymentDue => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      name: "dateOfIssue", fromJson: fromJsonTimestamp, toJson: toJsonTimestamp)
  Timestamp get dateOfIssue => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      name: "deliveryDate",
      fromJson: fromJsonTimestamp,
      toJson: toJsonTimestamp)
  Timestamp get deliveryDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "items")
  List<InvoiceItemDto> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "totalPrice")
  int get totalPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "currency")
  String get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "rebate")
  int get rebate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "vat")
  int get vat => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "referenceNumber")
  String? get referenceNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      name: "dateOfPayment",
      fromJson: fromJsonTimestampNullable,
      toJson: toJsonTimestampNullable)
  Timestamp? get dateOfPayment => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "cashCharged")
  int? get cashCharged => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "transferCharged")
  int? get transferCharged => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "domesticCurrency")
  String? get domesticCurrency => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "domesticTotalPrice")
  int? get domesticTotalPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "exchangeRate")
  double? get exchangeRate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceDtoCopyWith<_$_InvoiceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
