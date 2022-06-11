// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyDto _$$_CompanyDtoFromJson(Map<String, dynamic> json) =>
    _$_CompanyDto(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      address: json['address'] as String? ?? '',
      city: json['city'] as String? ?? '',
      postcode: json['postcode'] as String? ?? '',
      owner: json['owner'] as String? ?? '',
      ownerAddress: json['ownerAddress'] as String? ?? '',
      companyId: json['companyId'] as String? ?? '',
      iban: json['iban'] as String? ?? '',
      bankName: json['bankName'] as String? ?? '',
      vatId: json['vatId'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      web: json['web'] as String? ?? '',
      mainCurrency: json['mainCurrency'] as String? ?? '',
    );

Map<String, dynamic> _$$_CompanyDtoToJson(_$_CompanyDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'city': instance.city,
      'postcode': instance.postcode,
      'owner': instance.owner,
      'ownerAddress': instance.ownerAddress,
      'companyId': instance.companyId,
      'iban': instance.iban,
      'bankName': instance.bankName,
      'vatId': instance.vatId,
      'email': instance.email,
      'phone': instance.phone,
      'web': instance.web,
      'mainCurrency': instance.mainCurrency,
    };
