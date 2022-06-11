import 'model/company_dto.dart';

abstract class CompanyRemoteDataSource {
  Stream<CompanyDto> get company;

  Future<void> editCompany(CompanyDto companyDto);

}
