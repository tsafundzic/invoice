import 'package:domain/invoice/model/invoice.dart';
import 'package:domain/company/model/company.dart';
import 'package:domain/customer/model/customer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';
import 'package:invoice/common/extension.dart';
import 'package:invoice/core/utils/invoice/invoice_utils.dart';
import 'package:invoice/offers/offer_print.dart';

import '../common/utils.dart';
import '../core/utils/constants/route_constants.dart';
import 'invoice_print.dart';

class InvoiceListItem extends ConsumerWidget {
  final Invoice invoice;
  final Company company;
  final Customer customer;
  final bool offer;

  const InvoiceListItem(this.invoice, this.company, this.customer, {Key? key, this.offer = false}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      child: Card(
        child: InkWell(
          onTap: () => context.pushNamed(invoiceEditRouteName, extra: invoice),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () => (offer ? printOffer(context, invoice, company, customer) : printInvoice(context, invoice, company, customer)).then((value) {
                        showSnackBar(context, offer ? Translations.of(context)!.offerSuccessfullyPrinted : Translations.of(context)!.invoiceSuccessfullyPrinted);
                      }).catchError((onError) {
                        showSnackBar(context, Translations.of(context)!.generalError);
                      }),
                      icon: const Icon(Icons.print),
                    ),
                    IconButton(
                      onPressed: () => context.pushNamed(invoiceEditRouteName, extra: invoice),
                      icon: const Icon(Icons.edit),
                    ),
                  ],
                ),
                Text(
                  customer.name,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  customer.country,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
                  invoice.dateOfIssue.presentationDateHourMin,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
                  Translations.of(context)!.invoicePrintValueWithCurrency(formatCurrency(invoice.totalPrice), invoice.currency),
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
