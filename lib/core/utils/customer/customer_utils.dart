import 'package:domain/customer/model/customer_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';

String customerTypeTranslations(BuildContext context, CustomerType customerType) {
  switch (customerType) {
    case CustomerType.domestic:
      return Translations.of(context)!.companyEditLabelCustomerTypeDomestic;
    case CustomerType.foreign:
      return Translations.of(context)!.companyEditLabelCustomerTypeForeign;
  }
}
