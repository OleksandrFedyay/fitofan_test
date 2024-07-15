import 'package:fitofan_test/my_constants.dart';
import 'package:fitofan_test/score_board_page/components/previous_side_bar/components/winner_tag_widget/winner_tag_widget.dart';
import 'package:flutter/material.dart';

class BlueBadgeWidget extends StatelessWidget {
  const BlueBadgeWidget({
    super.key,
    required this.isWinner,
    required this.blueCornerFighterName,
  });

  final bool? isWinner;
  final String blueCornerFighterName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kMatchItemBadgeBlueColor,
        borderRadius: BorderRadius.all(
          Radius.circular(kMatchItemBadgeRadius),
        ),
      ),
      width: kMatchItemBadgeWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(kBlueBadgeNameTextPadding),
            child: Text(
              blueCornerFighterName,
              style: const TextStyle(
                  color: kMatchItemBadgeNameTextColor,
                  fontSize: kFighterNameFontSize,
                  fontWeight: FontWeight.bold),
            ),
          ),
          if (isWinner != null && isWinner!)
            const Padding(
              padding: EdgeInsets.all(kWinnerTagPadding),
              child: WinnerTagWidget(),
            ),
        ],
      ),
    );
  }
}
