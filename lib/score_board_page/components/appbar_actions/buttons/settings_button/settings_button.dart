import 'package:fitofan_test/my_constants.dart';
import 'package:fitofan_test/l10n/l10n.dart';
import 'package:flutter/material.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(foregroundColor: Colors.white),
      onPressed: () {},
      icon: SizedBox(
        height: kTextButtonIconHeight,
        width: kTextButtonIconWidth,
        child: Image.asset(
          'assets/icons/settings.png',
          color: Colors.white,
        ),
      ),
      label: Text(context.l10n.settings),
    );
  }
}
