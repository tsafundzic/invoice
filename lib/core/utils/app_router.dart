import 'package:domain/company/model/company.dart';
import 'package:domain/customer/model/customer.dart';
import 'package:domain/user/model/user_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:domain/user/usecase/user_state_notifier.dart';
import 'package:invoice/offers/offer_edit_screen.dart';
import '../../company/company_edit_screen.dart';
import '../../customer/customer_edit_screen.dart';
import '../../dashboard/dashboard_screen.dart';
import '../../invoice/invoice_edit_screen.dart';
import '../../splash/splash_screen.dart';
import '../../user/login_screen.dart';
import 'constants/route_constants.dart';

class AppRouter {
  final UserStateNotifier _userStateNotifier;

  AppRouter(this._userStateNotifier);

  late final router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    refreshListenable: _userStateNotifier,
    redirect: (state) {
      String? routePath;
      var userState = _userStateNotifier.state;
      if (userState is UserStateUnauthorized || userState is UserStateUnauthenticated) {
        if (state.location == splashRoutePath) {
          routePath = loginRoutePath;
        }
      } else if (userState is UserStateAllowed) {
        if (state.location == loginRoutePath || state.location == splashRoutePath) {
          routePath = dashboardRoutePath;
        }
      }
      return routePath;
    },
    routes: [
      GoRoute(
        name: splashRouteName,
        path: splashRoutePath,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const SplashScreen(),
        ),
      ),
      GoRoute(
        name: loginRouteName,
        path: loginRoutePath,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        name: dashboardRouteName,
        path: dashboardRoutePath,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const DashboardScreen(),
        ),
      ),
      GoRoute(
        name: companyEditRouteName,
        path: companyEditRoutePath,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: CompanyEditScreen(company: state.extra as Company?),
        ),
      ),
      GoRoute(
        name: customerEditRouteName,
        path: customerEditRoutePath,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: CustomerEditScreen(customer: state.extra as Customer?),
        ),
      ),
      GoRoute(
        name: invoiceEditRouteName,
        path: invoiceEditRoutePath,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: InvoiceEditScreen(extra: state.extra),
        ),
      ),
      GoRoute(
        name: offerEditRouteName,
        path: offerEditRoutePath,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: OfferEditScreen(extra: state.extra),
        ),
      ),
    ],
  );
}
