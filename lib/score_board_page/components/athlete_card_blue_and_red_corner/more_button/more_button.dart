import 'package:fitofan_test/my_constants.dart';
import 'package:flutter/material.dart';

class MoreButton extends StatelessWidget {
  const MoreButton({
    super.key,
    required this.buttonColor,
  });

  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: buttonColor,
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(
          Radius.circular(kMoreButtonBorderRadius),
        ),
      ),
      height: kMoreButtonHeight,
      width: kMoreButtonWidth,
      child: IconButton(
        onPressed: () {},
        icon: Image.asset('assets/icons/more.png'),
        color: kMoreButtonIconColor,
      ),
    );
  }
}
