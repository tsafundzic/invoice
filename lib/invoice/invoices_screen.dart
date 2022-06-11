import 'package:collection/collection.dart';
import 'package:di/domain_module.dart';
import 'package:domain/invoice/model/invoice.dart';
import 'package:domain/company/model/company.dart';
import 'package:domain/customer/model/customer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';

import '../core/custom_widgets.dart';
import 'invoice_list_item.dart';

class InvoicesScreen extends ConsumerStatefulWidget {
  const InvoicesScreen({Key? key}) : super(key: key);

  @override
  InvoicesScreenState createState() => InvoicesScreenState();
}

class InvoicesScreenState extends ConsumerState<InvoicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ref.watch(companyStreamProvider).when(
            data: (company) {
              return company != null
                  ? ref.watch(invoicesStreamProvider).when(
                        data: (invoices) => Scaffold(
                          floatingActionButton: FloatingActionButton(
                            child: const Icon(Icons.add),
                            onPressed: () {
                              //TODO
                            },
                          ),
                          body: invoices.isNotEmpty
                              ? ref.watch(customersStreamProvider).when(
                                    data: (customers) => _invoicesWidget(invoices, company, customers),
                                    error: (error, stack) => GeneralError(errorMessage: error.toString()),
                                    loading: () => const PrimaryLoading(),
                                  )
                              : _noInvoicesWidget(),
                        ),
                        error: (error, stack) => GeneralError(errorMessage: error.toString()),
                        loading: () => const PrimaryLoading(),
                      )
                  : GeneralError(errorMessage: Translations.of(context)!.generalErrorSetCompany);
            },
            error: (error, stack) => GeneralError(errorMessage: error.toString()),
            loading: () => const PrimaryLoading(),
          ),
    );
  }

  Widget _invoicesWidget(List<Invoice> invoices, Company company, List<Customer> customers) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: invoices.length,
      separatorBuilder: (BuildContext context, int index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 2),
      ),
      itemBuilder: (BuildContext context, int childChildIndex) {
        var customer = customers.firstWhereOrNull((element) => invoices[childChildIndex].customerId == element.id);
        return customer != null ? InvoiceListItem(invoices[childChildIndex], company, customer) : const SizedBox.shrink();
      },
    );
  }

  Widget _noInvoicesWidget() {
    return Center(
      child: Text(Translations.of(context)!.invoicesNoInvoices),
    );
  }
}
