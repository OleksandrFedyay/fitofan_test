import 'package:fitofan_test/my_constants.dart';
import 'package:flutter/material.dart';

class AthleteNameWidget extends StatelessWidget {
  const AthleteNameWidget({
    super.key,
    required this.athleteName,
  });

  final String athleteName;

  @override
  Widget build(BuildContext context) {
    return Text(
      athleteName,
      style: const TextStyle(
          color: kAthleteCardBlueCornerTextColor,
          fontSize: kAthleteCardBlueCornerNameFontSize,
          fontWeight: FontWeight.bold,
          height: kAthleteCardBlueCornerNameLineHeight),
    );
  }
}
