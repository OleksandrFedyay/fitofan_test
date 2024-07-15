import 'package:fitofan_test/my_constants.dart';
import 'package:flutter/material.dart';

class CentralPanelTitle extends StatelessWidget {
  const CentralPanelTitle({
    super.key,
    required this.numberTitle,
    required this.textTitle,
  });

  final String numberTitle;
  final String textTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kCentralPanelTitleHeight,
      decoration: BoxDecoration(
        border: Border.all(
          color: kBorderColor,
          width: kBorderWidth,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            kCentralPanelTitleBorderRadius,
          ),
        ),
        color: kCentralPanelTitleColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          kCentralPanelTitlePadding,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: kCentralPanelTitleNumberWidth,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    kCentralPanelTitleNumberBorderRadius,
                  ),
                ),
                color: kSidePanelTitleNumberColor,
              ),
              child: Center(
                child: Text(
                  numberTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: kCentralPanelTitleTextFontSize,
                    color: kCentralPanelTitleNumberTextColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: kCentralPanelTitleTextPaddingLeft,
              ),
              child: Text(
                textTitle,
                style: const TextStyle(
                  fontSize: kCentralPanelTitleTextFontSize,
                  fontWeight: FontWeight.w500,
                  color: kCentralPanelTitleTextColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
