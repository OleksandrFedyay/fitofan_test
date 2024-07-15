import 'package:fitofan_test/my_constants.dart';
import 'package:fitofan_test/score_board_page/components/next_side_bar/components/tags/tag.dart';
import 'package:flutter/material.dart';

class TagsContainer extends StatelessWidget {
  const TagsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kSidePanelTagsContainerColor,
      height: kSidePanelTagsContainerHeight,
      child: const Padding(
        padding: EdgeInsets.all(kTagContainerPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Tag(tagText: '50 kg'),
            Tag(tagText: 'Male'),
            Tag(tagText: 'Yellow Belt'),
          ],
        ),
      ),
    );
  }
}
