import 'package:domain/company/usecase/company_use_case.dart';
import 'package:domain/offer/usecase/offer_usecase.dart';
import 'package:domain/user/usecase/user_state_notifier.dart';
import 'package:domain/customer/usecase/customer_use_case.dart';
import 'package:domain/invoice/usecase/invoices_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data_module.dart';
import 'package:domain/dashboard/dashboard_navigation_notifier.dart';

final dashboardNavigationProvider = StateNotifierProvider.autoDispose<DashboardNavigationNotifier, Stream<int>>((ref) => DashboardNavigationNotifier());

final userUseCaseProvider = Provider((ref) => UserStateNotifier(ref.watch(userRepositoryProvider)));
final userAuthStreamProvider = StreamProvider((ref) => (ref.watch(userUseCaseProvider)).userAuth);
final userStreamProvider = StreamProvider((ref) => (ref.watch(userUseCaseProvider)).user);
final userStateStreamProvider = StreamProvider((ref) => (ref.watch(userUseCaseProvider)).userState);

final companyUseCaseProvider = Provider((ref) => CompanyUseCase(ref.watch(companyRepositoryProvider)));
final companyStreamProvider = StreamProvider((ref) => ref.watch(companyUseCaseProvider).company);

final customerUseCaseProvider = Provider((ref) => CustomerUseCase(ref.watch(customerRepositoryProvider)));
final customersStreamProvider = StreamProvider((ref) => ref.watch(customerUseCaseProvider).customers);

final invoiceUseCaseProvider = Provider((ref) => InvoicesUseCase(ref.watch(invoiceRepositoryProvider)));
final invoicesStreamProvider = StreamProvider((ref) => ref.watch(invoiceUseCaseProvider).invoices);

final offerUseCaseProvider = Provider((ref) => OfferUseCase(ref.watch(offerRepositoryProvider)));
final offersStreamProvider = StreamProvider((ref) => ref.watch(offerUseCaseProvider).offers);

