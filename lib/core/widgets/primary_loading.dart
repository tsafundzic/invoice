import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PrimaryLoading extends StatelessWidget {
  const PrimaryLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitFoldingCube(
        color: Theme.of(context).colorScheme.primary,
        size: 50,
      ),
    );
  }
}
