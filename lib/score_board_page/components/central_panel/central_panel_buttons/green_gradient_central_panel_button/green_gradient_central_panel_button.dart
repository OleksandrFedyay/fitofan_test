import 'package:fitofan_test/my_constants.dart';
import 'package:flutter/material.dart';

class GreenGradientCentralPanelButton extends StatelessWidget {
  const GreenGradientCentralPanelButton({
    super.key,
    required this.buttonTitle,
    this.voidCallback,
  });

  final String buttonTitle;
  final Function()? voidCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(
          Radius.circular(
            kCentralPanelBottomButtonBorderRadius,
          ),
        ),
        gradient: LinearGradient(
          colors: kCentralPanelBottomButtonsGradientColors,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(
            kCentralPanelBottomButtonsWidth,
            kCentralPanelBottomButtonsHeight,
          ),
          backgroundColor: Colors.transparent,
          foregroundColor: kCentralPanelBottomButtonTextColor,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          buttonTitle,
          style: const TextStyle(
            fontSize: kCentralPanelBottomButtonsFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
