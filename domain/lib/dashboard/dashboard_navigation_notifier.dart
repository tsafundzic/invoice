import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

const int dashboardIndexInvoices= 0;
const int dashboardIndexOffers = 1;
const int dashboardIndexHome = 2;
const int dashboardIndexCustomers = 3;
const int dashboardIndexProfile = 4;

class DashboardNavigationNotifier extends StateNotifier<Stream<int>> {
  DashboardNavigationNotifier() : super(Stream.value(dashboardIndexHome));

  void changeNavigationIndex(int index) {
    state = Stream.value(index);
  }
}
