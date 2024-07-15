import 'package:fitofan_test/my_constants.dart';
import 'package:fitofan_test/l10n/l10n.dart';
import 'package:flutter/material.dart';

class JudgesButton extends StatelessWidget {
  const JudgesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(foregroundColor: Colors.white),
      onPressed: () {
        ///Implement an action here
      },
      icon: SizedBox(
        height: kTextButtonIconHeight,
        width: kTextButtonIconWidth,
        child: Image.asset(
          'assets/icons/grid_view.png',
          color: Colors.white,
        ),
      ),
      label: Text(context.l10n.judges),
    );
  }
}
