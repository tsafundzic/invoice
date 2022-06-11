import 'dart:async';

import '../customer_repository.dart';
import '../model/customer.dart';

class CustomerUseCase {
  final CustomerRepository _customerRepository;

  CustomerUseCase(this._customerRepository);

  Stream<List<Customer>> get customers => _customerRepository.customers;

  Future<void> editCustomer(Customer customer) {
    return _customerRepository.editCustomer(customer);
  }

  Stream<Customer> customer(String id) => _customerRepository.customers.map((event) => event.firstWhere((element) => element.id == id));
}
