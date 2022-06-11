// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvoiceItemDto _$$_InvoiceItemDtoFromJson(Map<String, dynamic> json) =>
    _$_InvoiceItemDto(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      unit: json['unit'] as String? ?? '',
      amount: json['amount'] as int? ?? 0,
      price: json['price'] as int? ?? 0,
      rebate: json['rebate'] as int? ?? 0,
      itemType: json['itemType'] as String? ?? '',
    );

Map<String, dynamic> _$$_InvoiceItemDtoToJson(_$_InvoiceItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'unit': instance.unit,
      'amount': instance.amount,
      'price': instance.price,
      'rebate': instance.rebate,
      'itemType': instance.itemType,
    };
