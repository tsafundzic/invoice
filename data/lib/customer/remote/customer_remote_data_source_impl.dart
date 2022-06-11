import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data/customer/remote/model/customer_dto.dart';

import 'customer_remote_data_source.dart';

const String _customers = "customers";

class CustomerRemoteDataSourceImpl extends CustomerRemoteDataSource {
  final FirebaseFirestore _firestore;

  CustomerRemoteDataSourceImpl(this._firestore);

  @override
  Stream<List<CustomerDto>> get customers {
    return _firestore.collection(_customers).snapshots().map((QuerySnapshot snapshots) {
      return snapshots.docs.map((QueryDocumentSnapshot doc) {
        var customerDto = CustomerDto.fromJson(doc.data() as Map<String, dynamic>);
        return customerDto;
      }).toList();
    });
  }

  @override
  Future<void> editCustomer(CustomerDto customerDto) {
    CustomerDto customer = customerDto;
    if (customer.id.isEmpty) {
      customer = customer.copyWith(id: _firestore.collection(_customers).doc().id);
    }
    return _firestore.collection(_customers).doc(customer.id).set(customer.toJson());
  }
}
