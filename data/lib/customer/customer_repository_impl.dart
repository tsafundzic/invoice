import 'package:data/customer/remote/customer_remote_data_source.dart';
import 'package:data/customer/remote/model/customer_dto.dart';
import 'package:domain/customer/customer_repository.dart';
import 'package:domain/customer/model/customer.dart';

class CustomerRepositoryImpl extends CustomerRepository {
  final CustomerRemoteDataSource _remoteDataSource;

  CustomerRepositoryImpl(this._remoteDataSource);

  @override
  Stream<List<Customer>> get customers => _remoteDataSource.customers.map((list) => list.map((e) => e.toCustomer).toList());

  @override
  Future<void> editCustomer(Customer customer) {
    return _remoteDataSource.editCustomer(CustomerDto.fromCustomer(customer));
  }
}
