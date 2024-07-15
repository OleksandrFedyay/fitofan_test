import 'package:fitofan_test/my_constants.dart';
import 'package:flutter/material.dart';

class SideBarTopPart extends StatelessWidget {
  final String topPartLabel;
  const SideBarTopPart({super.key, required this.topPartLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kSidePanelTopTitlesContainerHeight,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kSidePanelEdgeColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(kSideBarBorderRadius),
          topRight: Radius.circular(kSideBarBorderRadius),
        ),
      ),
      child: Center(
        child: Text(
          topPartLabel,
          style: const TextStyle(
            fontSize: kSidePanelTitleFontSize,
            fontWeight: FontWeight.bold,
            color: kSidePanelTextColor,
          ),
        ),
      ),
    );
  }
}
