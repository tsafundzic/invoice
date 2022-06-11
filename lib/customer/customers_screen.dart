import 'package:di/domain_module.dart';
import 'package:domain/customer/model/customer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';
import 'package:go_router/go_router.dart';

import '../core/custom_widgets.dart';
import '../core/utils/constants/route_constants.dart';
import 'customer_list_item.dart';

class CustomersScreen extends ConsumerStatefulWidget {
  const CustomersScreen({Key? key}) : super(key: key);

  @override
  CustomersScreenState createState() => CustomersScreenState();
}

class CustomersScreenState extends ConsumerState<CustomersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => context.pushNamed(customerEditRouteName),
      ),
      body: ref.watch(customersStreamProvider).when(
            data: (data) {
              return data.isNotEmpty ? _customerWidget(data) : _noCustomersWidget();
            },
            error: (error, stack) => GeneralError(errorMessage: error.toString()),
            loading: () => const PrimaryLoading(),
          ),
    );
  }

  Widget _customerWidget(List<Customer> customers) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: customers.length,
      separatorBuilder: (BuildContext context, int index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 2),
      ),
      itemBuilder: (BuildContext context, int childChildIndex) {
        return CustomerListItem(customers[childChildIndex]);
      },
    );
  }

  Widget _noCustomersWidget() {
    return Center(
      child: Text(Translations.of(context)!.customersNoCustomers),
    );
  }
}
