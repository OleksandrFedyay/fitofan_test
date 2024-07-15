import 'package:fitofan_test/l10n/l10n.dart';
import 'package:fitofan_test/my_constants.dart';
import 'package:flutter/material.dart';

class PenaltyButton extends StatelessWidget {
  const PenaltyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kAthleteCardPenaltyButtonHeight,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: kAthleteCardPenaltyButtonTextPaddingVertical,
            horizontal: kAthleteCardPenaltyButtonTextPaddingHorizontal,
          ),
          side: const BorderSide(
            color: kPenaltyButtonColor,
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                kAthleteCardPenaltyButtonBorderRadius,
              ),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          context.l10n.penalty,
          style: const TextStyle(
            color: kPenaltyButtonColor,
            fontSize: kAthleteCardPenaltyButtonTextFontSize,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
