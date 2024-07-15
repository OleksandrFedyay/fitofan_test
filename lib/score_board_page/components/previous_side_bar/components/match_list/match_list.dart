import 'package:fitofan_test/my_constants.dart';
import 'package:fitofan_test/score_board_page/components/previous_side_bar/components/match_list/match_item/match_item.dart';
import 'package:flutter/material.dart';

class MatchList extends StatefulWidget {
  final List<MatchItem> matchItems;

  const MatchList({super.key, required this.matchItems});

  @override
  State<MatchList> createState() => _MatchListState();
}

class _MatchListState extends State<MatchList> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      minThumbLength: kMinThumbLength,
      padding: const EdgeInsets.all(kScrollBarPadding),
      thumbColor: kScrollbarColor,
      controller: _controller,
      thumbVisibility: true,
      thickness: kScrollBarThickness,
      trackVisibility: true,
      child: Padding(
        padding: const EdgeInsets.all(kMatchListPadding),
        child: ListView.separated(
          controller: _controller,
          shrinkWrap: true,
          itemCount: widget.matchItems.length,
          separatorBuilder: (context, index) {
            return const Divider(
              color: kDividerColor,
            );
          },
          itemBuilder: (context, index) {
            return MatchItem(
              redCornerFighter: widget.matchItems[index].redCornerFighter,
              blueCornerFighter: widget.matchItems[index].blueCornerFighter,
              index: index,
            );
          },
        ),
      ),
    );
  }
}
