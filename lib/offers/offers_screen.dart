import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OffersScreen extends ConsumerStatefulWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  OffersScreenState createState() => OffersScreenState();
}

class OffersScreenState extends ConsumerState<OffersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("OffersScreen"),
      ),
    );
  }
}
