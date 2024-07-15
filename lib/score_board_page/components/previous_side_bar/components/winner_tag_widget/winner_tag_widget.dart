import 'package:fitofan_test/my_constants.dart';
import 'package:fitofan_test/l10n/l10n.dart';
import 'package:flutter/material.dart';

class WinnerTagWidget extends StatelessWidget {
  const WinnerTagWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kWinnerTagWidth,
      height: kWinnerTagHeight,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(kWinnerTagBorderRadius),
        ),
        gradient: LinearGradient(
          colors: kWinnerTagGradientColors,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Center(
        child: Text(
          context.l10n.winner,
          style: const TextStyle(
              color: kWinnerTagTextColor,
              fontSize: kWinnerTagFontSize,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
