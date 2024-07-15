import 'package:fitofan_test/my_constants.dart';
import 'package:fitofan_test/l10n/l10n.dart';
import 'package:flutter/material.dart';

class SideBarBottomPart extends StatelessWidget {
  const SideBarBottomPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: kSidePanelBottomContainerHeight,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: kSidePanelEdgeColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(kSideBarBorderRadius),
            bottomRight: Radius.circular(kSideBarBorderRadius),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(kSidePanelElevatedButtonPadding),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(kShowOnTvButtonBorderRadius),
                ),
              ),
              backgroundColor: kElevatedButtonBackgroundColor,
              foregroundColor: kElevatedButtonForegroundColor,
            ),
            onPressed: () {},
            child: Text(
              context.l10n.showOnTv,
              style: const TextStyle(
                fontSize: kSidePanelElevatedButtonFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
