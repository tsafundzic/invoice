import 'package:domain/company/model/item_type.dart';
import 'package:domain/customer/model/customer_type.dart';
import 'package:domain/invoice/model/units.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';
import 'package:intl/intl.dart';

String invoiceItemTypeTranslations(BuildContext context, ItemType itemType) {
  switch (itemType) {
    case ItemType.service:
      return Translations.of(context)!.invoiceItemTypeService;
    case ItemType.goods:
      return Translations.of(context)!.invoiceItemTypeGoods;
  }
}

String invoiceUnitTranslations(BuildContext context, Unit unit) {
  switch (unit) {
    case Unit.piece:
      return Translations.of(context)!.invoiceUnitPiece;
    case Unit.hour:
      return Translations.of(context)!.invoiceUnitHour;
  }
}

String invoiceRemarkTranslations(BuildContext context, ItemType itemType, CustomerType customerType) {
  switch (itemType) {
    case ItemType.service:
      switch (customerType) {
        case CustomerType.domestic:
          return Translations.of(context)!.invoiceRemarkServiceDomestic;

        case CustomerType.foreign:
          return Translations.of(context)!.invoiceRemarkServiceForeign;
      }
    case ItemType.goods:
      switch (customerType) {
        case CustomerType.domestic:
          return Translations.of(context)!.invoiceRemarkGoodsDomestic;

        case CustomerType.foreign:
          return Translations.of(context)!.invoiceRemarkGoodsForeign;
      }
  }
}

String formatCurrency(num value, {int fractionDigits = 2}) {
  if (value == 0) {
    return '0,00';
  }
  value = value / 100;

  return NumberFormat.currency(
    customPattern: '###,##0.##',
    locale: 'eu',
  ).format(value);
}

int priceFromString(String string, {int fractionDigits = 2}) {
  int value = int.tryParse(string.replaceAll(',', '').replaceAll('.', '')) ?? 0;
  return value;
}
