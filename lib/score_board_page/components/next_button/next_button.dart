import 'package:fitofan_test/my_constants.dart';
import 'package:fitofan_test/l10n/l10n.dart';
import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
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
        label: Text(
          context.l10n.next,
        ),
        icon: const Icon(Icons.arrow_back),
      ),
    );
  }
}
