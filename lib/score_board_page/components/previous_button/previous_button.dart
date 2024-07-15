import 'package:fitofan_test/my_constants.dart';
import 'package:fitofan_test/l10n/l10n.dart';
import 'package:flutter/material.dart';

class PreviousButton extends StatelessWidget {
  const PreviousButton({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: TextButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(kButtonBorderRadius),
          ),
        ),
        backgroundColor: kElevatedButtonBackgroundColor,
        foregroundColor: kElevatedButtonForegroundColor,
        fixedSize: const Size(
          kElevatedButtonWidth,
          kElevatedButtonHeight,
        ),
      ),
      onPressed: () {},
      icon: const Icon(Icons.arrow_back),
      label: Text(context.l10n.previous),
    );
  }
}
