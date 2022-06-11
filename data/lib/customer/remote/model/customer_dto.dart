import 'package:domain/customer/model/customer.dart';
import 'package:domain/customer/model/customer_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_dto.freezed.dart';

part 'customer_dto.g.dart';

@freezed
class CustomerDto with _$CustomerDto {
  const CustomerDto._();

  const factory CustomerDto({
    @Default('') @JsonKey(name: "id") String id,
    @Default('') @JsonKey(name: "name") String name,
    @Default('') @JsonKey(name: "address") String address,
    @Default('') @JsonKey(name: "city") String city,
    @Default('') @JsonKey(name: "postcode") String postcode,
    @Default('') @JsonKey(name: "country") String country,
    @Default('') @JsonKey(name: "companyId") String companyId,
    @Default('') @JsonKey(name: "vatId") String vatId,
    @Default('') @JsonKey(name: "email") String email,
    @Default('') @JsonKey(name: "phone") String phone,
    @Default('') @JsonKey(name: "web") String web,
    @Default('') @JsonKey(name: "customerType") String customerType,
    @Default('') @JsonKey(name: "mainCurrency") String mainCurrency,
  }) = _CustomerDto;

  factory CustomerDto.fromJson(Map<String, dynamic> json) => _$CustomerDtoFromJson(json);

  factory CustomerDto.fromCustomer(Customer customer) => CustomerDto(
        id: customer.id,
        name: customer.name,
        address: customer.address,
        city: customer.city,
        postcode: customer.postcode,
        companyId: customer.companyId,
        vatId: customer.vatId,
        email: customer.email,
        phone: customer.phone,
        web: customer.web,
        customerType: customer.customerType.name,
        country: customer.country,
        mainCurrency: customer.mainCurrency,
      );

  Customer get toCustomer => Customer(
        id: id,
        name: name,
        address: address,
        city: city,
        postcode: postcode,
        country: country,
        companyId: companyId,
        vatId: vatId,
        email: email,
        phone: phone,
        web: web,
        customerType: customerType.isNotEmpty ? CustomerType.values.firstWhere((element) => element.name == customerType) : CustomerType.domestic,
        mainCurrency: mainCurrency,
      );
}
