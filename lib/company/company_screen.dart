import 'package:di/domain_module.dart';
import 'package:domain/company/model/company.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';

import '../core/custom_widgets.dart';
import '../core/utils/constants/route_constants.dart';

class CompanyScreen extends ConsumerStatefulWidget {
  const CompanyScreen({Key? key}) : super(key: key);

  @override
  CompanyScreenState createState() => CompanyScreenState();
}

class CompanyScreenState extends ConsumerState<CompanyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        child: ref.watch(companyStreamProvider).when(
              data: (data) => data != null ? _companyData(data) : _noCompanyData(),
              error: (error, stack) => GeneralError(errorMessage: error.toString()),
              loading: () => const PrimaryLoading(),
            ),
      ),
    );
  }

  Widget _companyData(Company company) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            company.name,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Text(
            company.address,
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Text(
            Translations.of(context)!.companyDataPostcodeAndCity(company.postcode, company.city),
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Text(
            Translations.of(context)!.companyDataCompanyId(company.companyId),
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Text(
            Translations.of(context)!.companyDataVatId(company.vatId),
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Text(
            Translations.of(context)!.companyDataIBAN(company.iban),
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Text(
            Translations.of(context)!.companyDataBank(company.bankName),
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Text(
            Translations.of(context)!.companyDataMainCurrency(company.mainCurrency),
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Text(
            Translations.of(context)!.companyDataEmail(company.email),
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Text(
            Translations.of(context)!.companyDataPhone(company.phone),
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Text(
            Translations.of(context)!.companyDataWeb(company.web),
            style: Theme.of(context).textTheme.labelSmall,
          ),
          PrimaryButton(
            onPressed: () => context.pushNamed(companyEditRouteName, extra: company),
            child: Text(Translations.of(context)!.companyEditBtnEdit),
          ),
        ],
      ),
    );
  }

  Widget _noCompanyData() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Translations.of(context)!.companyNoDataEnteredYet,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          PrimaryButton(
            onPressed: () => context.pushNamed(companyEditRouteName),
            child: Text(Translations.of(context)!.companyNoDataAddData),
          ),
        ],
      ),
    );
  }
}
