import 'package:domain/customer/model/customer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';

import '../core/utils/constants/route_constants.dart';

class CustomerListItem extends ConsumerWidget {
  final Customer customer;

  const CustomerListItem(this.customer, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 4),
      child: Card(
        child: InkWell(
          onTap: () => context.pushNamed(customerEditRouteName, extra: customer),

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  customer.name,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  customer.address,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
                  Translations.of(context)!.companyDataPostcodeAndCity(customer.postcode, customer.city),
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
                  Translations.of(context)!.companyDataCompanyId(customer.companyId),
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
