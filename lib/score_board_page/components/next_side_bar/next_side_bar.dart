import 'package:fitofan_test/l10n/l10n.dart';
import 'package:fitofan_test/my_constants.dart';
import 'package:fitofan_test/score_board_page/components/next_side_bar/components/tags_container/tags_container.dart';
import 'package:fitofan_test/score_board_page/components/previous_side_bar/components/match_list/match_item/match_item.dart';
import 'package:fitofan_test/score_board_page/components/previous_side_bar/components/match_list/match_list.dart';
import 'package:fitofan_test/score_board_page/components/previous_side_bar/components/side_bar_top_part/side_bar_top_part.dart';
import 'package:flutter/material.dart';

class NextSideBar extends StatelessWidget {
  const NextSideBar({
    super.key,
    required this.nextMatchItems,
  });

  final List<MatchItem> nextMatchItems;

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
          SideBarTopPart(topPartLabel: context.l10n.next),
          const TagsContainer(),
          const Divider(color: kDividerColor),
          Expanded(
            child: MatchList(matchItems: nextMatchItems),
          ),
        ],
      ),
    );
  }
}
