import 'package:data/company/remote/company_remote_data_source.dart';
import 'package:domain/company/company_repository.dart';
import 'package:domain/company/model/company.dart';

import 'remote/model/company_dto.dart';

class CompanyRepositoryImpl extends CompanyRepository {
  final CompanyRemoteDataSource _remoteDataSource;

  CompanyRepositoryImpl(this._remoteDataSource);

  @override
  Stream<Company> get company => _remoteDataSource.company.map((event) => event.toCompany);

  @override
  Future<void> editCompany(Company company) {
    return _remoteDataSource.editCompany(CompanyDto.fromCompany(company));
  }

}
