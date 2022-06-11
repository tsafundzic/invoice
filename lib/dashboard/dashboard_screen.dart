import 'package:di/domain_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../invoice/invoices_screen.dart';
import '../company/company_screen.dart';
import '../customer/customers_screen.dart';
import '../offers/offers_screen.dart';
import 'main_screen.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  DashboardScreenState createState() => DashboardScreenState();
}

class DashboardScreenState extends ConsumerState<DashboardScreen> {
  late List<Widget> _pages;

  late final PageStorageBucket _bucket = PageStorageBucket();

  @override
  void initState() {
    _pages = [
      const InvoicesScreen(key: PageStorageKey('InvoicesScreenKey')),
      const OffersScreen(key: PageStorageKey('OffersScreenKey')),
      const MainScreen(key: PageStorageKey('MainScreenKey')),
      const CustomersScreen(key: PageStorageKey('CustomersScreenKey')),
      const CompanyScreen(key: PageStorageKey('ProfileScreenKey')),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: ref.watch(dashboardNavigationProvider),
      builder: (context, snapshot) {
        var selectedIndex = snapshot.data;
        return selectedIndex != null
            ? Scaffold(
                bottomNavigationBar: _bottomNavigationBar(context, ref, selectedIndex),
                body: SafeArea(
                  child: PageStorage(
                    bucket: _bucket,
                    child: _pages[selectedIndex],
                  ),
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }

  Widget _bottomNavigationBar(BuildContext context, WidgetRef ref, int selectedIndex) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (int index) => ref.read(dashboardNavigationProvider.notifier).changeNavigationIndex(index),
      currentIndex: selectedIndex,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet_outlined),
          activeIcon: Icon(Icons.account_balance_wallet),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_offer_outlined),
          activeIcon: Icon(Icons.local_offer),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_alt_outlined),
          activeIcon: Icon(Icons.people_alt),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          activeIcon: Icon(Icons.account_circle),
          label: '',
        ),
      ],
    );
  }
}
