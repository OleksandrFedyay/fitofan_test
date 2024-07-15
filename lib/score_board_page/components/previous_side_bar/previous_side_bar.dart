import 'package:fitofan_test/l10n/l10n.dart';
import 'package:fitofan_test/my_constants.dart';
import 'package:fitofan_test/score_board_page/components/previous_side_bar/components/match_list/match_item/match_item.dart';
import 'package:fitofan_test/score_board_page/components/previous_side_bar/components/match_list/match_list.dart';
import 'package:fitofan_test/score_board_page/components/previous_side_bar/components/side_bar_bottom_part/side_bar_bottom_part.dart';
import 'package:fitofan_test/score_board_page/components/previous_side_bar/components/side_bar_top_part/side_bar_top_part.dart';
import 'package:flutter/material.dart';

class PreviousSideBar extends StatefulWidget {
  const PreviousSideBar({super.key, required this.previousMatchItems});

  final List<MatchItem> previousMatchItems;

  @override
  State<PreviousSideBar> createState() => _PreviousSideBarState();
}

class _PreviousSideBarState extends State<PreviousSideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: kSidePanelWidth,
      height: kSidePanelHeight,
      decoration: BoxDecoration(
        border: Border.all(
          color: kBorderColor,
          width: kBorderWidth,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(kSideBarBorderRadius),
        ),
        color: kSidePanelBodyColor,
      ),
      child: Column(
        children: [
          SideBarTopPart(topPartLabel: context.l10n.previous),
          Expanded(
            child: MatchList(matchItems: widget.previousMatchItems),
          ),
          const SideBarBottomPart(),
        ],
      ),
    );
  }
}
