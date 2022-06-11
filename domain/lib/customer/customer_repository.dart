import 'model/customer.dart';

abstract class CustomerRepository {
  Stream<List<Customer>> get customers;

  Future<void> editCustomer(Customer customer);
}
