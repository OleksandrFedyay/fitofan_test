import 'package:fitofan_test/l10n/l10n.dart';
import 'package:fitofan_test/my_constants.dart';
import 'package:flutter/material.dart';

class CombatPresentationWidget extends StatelessWidget {
  const CombatPresentationWidget({
    super.key,
    required this.combatPresentation,
  });

  final String combatPresentation;

  @override
  Widget build(BuildContext context) {
    return Text(
      context.l10n.combatPresentationLabel(combatPresentation),
      style: const TextStyle(
        color: kAthleteCardBlueCornerTextColor,
        fontSize: kAthleteCardBlueCornerCombatTagFontSize,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
