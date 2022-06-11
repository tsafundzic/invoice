// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerDto _$$_CustomerDtoFromJson(Map<String, dynamic> json) =>
    _$_CustomerDto(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      address: json['address'] as String? ?? '',
      city: json['city'] as String? ?? '',
      postcode: json['postcode'] as String? ?? '',
      country: json['country'] as String? ?? '',
      companyId: json['companyId'] as String? ?? '',
      vatId: json['vatId'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      web: json['web'] as String? ?? '',
      customerType: json['customerType'] as String? ?? '',
      mainCurrency: json['mainCurrency'] as String? ?? '',
    );

Map<String, dynamic> _$$_CustomerDtoToJson(_$_CustomerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'city': instance.city,
      'postcode': instance.postcode,
      'country': instance.country,
      'companyId': instance.companyId,
      'vatId': instance.vatId,
      'email': instance.email,
      'phone': instance.phone,
      'web': instance.web,
      'customerType': instance.customerType,
      'mainCurrency': instance.mainCurrency,
    };
