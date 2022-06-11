import 'dart:async';

import 'package:domain/company/company_repository.dart';
import 'package:domain/company/model/company.dart';

class CompanyUseCase {
  final CompanyRepository _companyRepository;

  CompanyUseCase(this._companyRepository);

  Stream<Company?> get company => _companyRepository.company;

  Future<void> editCompany(Company company) {
    return _companyRepository.editCompany(company);
  }

}
