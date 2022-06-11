import 'package:domain/company/model/company.dart';

abstract class CompanyRepository {
  Stream<Company> get company;

  Future<void> editCompany(Company company);

}
