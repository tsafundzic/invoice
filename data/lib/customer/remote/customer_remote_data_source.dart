
import 'model/customer_dto.dart';

abstract class CustomerRemoteDataSource {

  Stream<List<CustomerDto>> get customers;

  Future<void> editCustomer(CustomerDto customerDto);

}