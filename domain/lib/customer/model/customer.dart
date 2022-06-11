import 'package:domain/customer/model/customer_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer.freezed.dart';

@freezed
class Customer with _$Customer {
  const factory Customer({
    required final String id,
    required final String name,
    required final String address,
    required final String city,
    required final String postcode,
    required final String country,
    required final String companyId,
    required final String vatId,
    required final String email,
    required final String phone,
    required final String web,
    required final CustomerType customerType,
    required final String mainCurrency,
  }) = _Customer;
}
