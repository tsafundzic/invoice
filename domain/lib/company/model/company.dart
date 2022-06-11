import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';

@freezed
class Company with _$Company {
  const factory Company({
    required final String id,
    required final String name,
    required final String address,
    required final String city,
    required final String postcode,
    required final String owner,
    required final String ownerAddress,
    required final String companyId,
    required final String iban,
    required final String bankName,
    required final String email,
    required final String phone,
    required final String web,
    required final String vatId,
    required final String mainCurrency,
  }) = _Company;
}
