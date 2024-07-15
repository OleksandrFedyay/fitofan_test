import 'package:fitofan_test/my_constants.dart';
import 'package:fitofan_test/score_board_page/components/previous_side_bar/components/match_list/match_item/number_tag_widget/number_tag_widget.dart';
import 'package:fitofan_test/score_board_page/components/previous_side_bar/components/match_list/match_item/red_and_blue_badges/blue_badge_widget/blue_badge_widget.dart';
import 'package:fitofan_test/score_board_page/models/models.dart';
import 'package:flutter/material.dart';
import 'red_and_blue_badges/red_badge_widget/red_badge_widget.dart';

class MatchItem extends StatefulWidget {
  final Fighter redCornerFighter;
  final Fighter blueCornerFighter;
  final int orderNumber;

  const MatchItem({
    super.key,
    required this.redCornerFighter,
    required this.blueCornerFighter,
    required int index,
  }) : orderNumber = index + 1;

  @override
  State<MatchItem> createState() => _MatchItemState();
}

class _MatchItemState extends State<MatchItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kMatchItemWidth,
      height: kMatchItemHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NumberTagWidget(orderNumber: widget.orderNumber),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(bottom: kBlueBadgePaddingBottom),
                    child: BlueBadgeWidget(
                      blueCornerFighterName: widget.blueCornerFighter.name,
                      isWinner: widget.blueCornerFighter.isWinner,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: kRedBadgePaddingTop),
                    child: RedBadgeWidget(
                      redCornerFighterName: widget.redCornerFighter.name,
                      isWinner: widget.redCornerFighter.isWinner,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
