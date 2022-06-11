import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/translations.dart';

import '../custom_widgets.dart';

class GeneralError extends StatelessWidget {
  final Object? exception;
  final String? errorMessage;
  final String? refreshText;
  final VoidCallback? onRefresh;

  const GeneralError({Key? key, this.exception, this.errorMessage, this.refreshText, this.onRefresh}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textRefresh = refreshText;
    return Padding(
      padding: const EdgeInsets.all(48),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "${errorMessage ?? Translations.of(context)!.generalError}${exception != null ? "\n$exception" : ""}",
              textAlign: TextAlign.center,
            ),
            textRefresh != null
                ? Padding(
              padding: const EdgeInsets.all(24),
              child: PrimaryButton(onPressed: onRefresh, child: Text(textRefresh)),
            )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
