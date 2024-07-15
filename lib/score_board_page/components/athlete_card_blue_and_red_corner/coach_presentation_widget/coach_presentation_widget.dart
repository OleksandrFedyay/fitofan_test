import 'package:fitofan_test/l10n/l10n.dart';
import 'package:fitofan_test/my_constants.dart';
import 'package:flutter/material.dart';

class CoachPresentationWidget extends StatelessWidget {
  const CoachPresentationWidget({
    super.key,
    required this.coachPresentation,
  });

  final String coachPresentation;

  @override
  Widget build(BuildContext context) {
    return Text(
      context.l10n.coachPresentationLabel(coachPresentation),
      style: const TextStyle(
        color: kAthleteCardBlueCornerTextColor,
        fontSize: kAthleteCardBlueCornerCoachTagFontSize,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
