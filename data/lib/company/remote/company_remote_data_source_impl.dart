import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data/company/remote/model/company_dto.dart';

import 'company_remote_data_source.dart';

const String _companies = "companies";

class CompanyRemoteDataSourceImpl extends CompanyRemoteDataSource {
  final FirebaseFirestore _firestore;

  CompanyRemoteDataSourceImpl(this._firestore);

  ///Made for possible multiple companies
  @override
  Stream<CompanyDto> get company {
    return _firestore.collection(_companies).snapshots().map((QuerySnapshot snapshots) {
      return snapshots.docs
          .map((QueryDocumentSnapshot doc) {
            var companyDto = CompanyDto.fromJson(doc.data() as Map<String, dynamic>);
            return companyDto;
          })
          .toList()
          .first;
    });
  }

  @override
  Future<void> editCompany(CompanyDto companyDto) {
    CompanyDto company = companyDto;
    if (company.id.isEmpty) {
      company = company.copyWith(id: _firestore.collection(_companies).doc().id);
    }
    return _firestore.collection(_companies).doc(company.id).set(company.toJson());
  }

}
