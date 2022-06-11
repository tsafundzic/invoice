// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvoiceDto _$$_InvoiceDtoFromJson(Map json) => _$_InvoiceDto(
      id: json['id'] as String? ?? '',
      invoiceNr: json['invoiceNr'] as String? ?? '',
      companyId: json['companyId'] as String? ?? '',
      customerId: json['customerId'] as String? ?? '',
      paymentDue: fromJsonTimestamp(json['paymentDue'] as Timestamp),
      dateOfIssue: fromJsonTimestamp(json['dateOfIssue'] as Timestamp),
      deliveryDate: fromJsonTimestamp(json['deliveryDate'] as Timestamp),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  InvoiceItemDto.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      totalPrice: json['totalPrice'] as int? ?? 0,
      currency: json['currency'] as String? ?? '',
      rebate: json['rebate'] as int? ?? 0,
      vat: json['vat'] as int? ?? 0,
      referenceNumber: json['referenceNumber'] as String?,
      dateOfPayment:
          fromJsonTimestampNullable(json['dateOfPayment'] as Timestamp?),
      cashCharged: json['cashCharged'] as int?,
      transferCharged: json['transferCharged'] as int?,
      domesticCurrency: json['domesticCurrency'] as String?,
      domesticTotalPrice: json['domesticTotalPrice'] as int?,
      exchangeRate: (json['exchangeRate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_InvoiceDtoToJson(_$_InvoiceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoiceNr': instance.invoiceNr,
      'companyId': instance.companyId,
      'customerId': instance.customerId,
      'paymentDue': toJsonTimestamp(instance.paymentDue),
      'dateOfIssue': toJsonTimestamp(instance.dateOfIssue),
      'deliveryDate': toJsonTimestamp(instance.deliveryDate),
      'items': instance.items.map((e) => e.toJson()).toList(),
      'totalPrice': instance.totalPrice,
      'currency': instance.currency,
      'rebate': instance.rebate,
      'vat': instance.vat,
      'referenceNumber': instance.referenceNumber,
      'dateOfPayment': toJsonTimestampNullable(instance.dateOfPayment),
      'cashCharged': instance.cashCharged,
      'transferCharged': instance.transferCharged,
      'domesticCurrency': instance.domesticCurrency,
      'domesticTotalPrice': instance.domesticTotalPrice,
      'exchangeRate': instance.exchangeRate,
    };
