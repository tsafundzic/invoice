import 'package:domain/invoice/model/invoice.dart';
import 'package:domain/company/model/company.dart';
import 'package:domain/customer/model/customer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invoice/common/extension.dart';
import 'package:invoice/core/utils/invoice/invoice_utils.dart';

import '../core/utils/constants/route_constants.dart';

class InvoiceListItem extends ConsumerWidget {
  final Invoice invoice;
  final Company company;
  final Customer customer;

  const InvoiceListItem(this.invoice, this.company, this.customer, {Key? key}) : super(key: key);

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
                      onPressed: () {
                        //TODO
                      },
                      icon: const Icon(Icons.print),
                    ),
                    IconButton(
                      onPressed: () {
                        //TODO
                      },
                      icon: const Icon(Icons.edit),
                    ),
                  ],
                ),
                Text(
                  customer.name,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  invoice.customerId,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
                  invoice.dateOfIssue.presentationDateHourMin,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
                  formatCurrency(invoice.totalPrice),
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
