import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:domain/company/model/company.dart';

part 'company_dto.freezed.dart';

part 'company_dto.g.dart';

@freezed
class CompanyDto with _$CompanyDto {
  const CompanyDto._();

  const factory CompanyDto({
    @Default('') @JsonKey(name: "id") String id,
    @Default('') @JsonKey(name: "name") String name,
    @Default('') @JsonKey(name: "address") String address,
    @Default('') @JsonKey(name: "city") String city,
    @Default('') @JsonKey(name: "postcode") String postcode,
    @Default('') @JsonKey(name: "owner") String owner,
    @Default('') @JsonKey(name: "ownerAddress") String ownerAddress,
    @Default('') @JsonKey(name: "companyId") String companyId,
    @Default('') @JsonKey(name: "iban") String iban,
    @Default('') @JsonKey(name: "bankName") String bankName,
    @Default('') @JsonKey(name: "vatId") String vatId,
    @Default('') @JsonKey(name: "email") String email,
    @Default('') @JsonKey(name: "phone") String phone,
    @Default('') @JsonKey(name: "web") String web,
    @Default('') @JsonKey(name: "mainCurrency") String mainCurrency,
  }) = _CompanyDto;

  factory CompanyDto.fromJson(Map<String, dynamic> json) => _$CompanyDtoFromJson(json);

  factory CompanyDto.fromCompany(Company company) => CompanyDto(
        id: company.id,
        name: company.name,
        address: company.address,
        city: company.city,
        postcode: company.postcode,
        owner: company.owner,
        ownerAddress: company.ownerAddress,
        companyId: company.companyId,
        iban: company.iban,
        bankName: company.bankName,
        email: company.email,
        phone: company.phone,
        web: company.web,
        vatId: company.vatId,
        mainCurrency: company.mainCurrency,
      );

  Company get toCompany => Company(
        id: id,
        name: name,
        address: address,
        city: city,
        postcode: postcode,
        owner: owner,
        ownerAddress: ownerAddress,
        companyId: companyId,
        iban: iban,
        bankName: bankName,
        email: email,
        phone: phone,
        web: web,
        vatId: vatId,
        mainCurrency: mainCurrency,
      );
}
