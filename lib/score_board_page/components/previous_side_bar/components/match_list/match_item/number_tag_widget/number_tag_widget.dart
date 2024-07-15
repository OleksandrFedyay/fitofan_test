import 'package:fitofan_test/my_constants.dart';
import 'package:flutter/material.dart';

class NumberTagWidget extends StatelessWidget {
  const NumberTagWidget({
    super.key,
    required this.orderNumber,
  });

  final int orderNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kMatchItemNumberTagWidth,
      decoration: const BoxDecoration(
        color: kMatchItemTagColor,
        borderRadius: BorderRadius.all(
          Radius.circular(kMatchItemTagRadius),
        ),
      ),
      child: Center(
        child: Text(
          '$orderNumber',
          style: const TextStyle(color: kMatchItemFighterNameTextColor),
        ),
      ),
    );
  }
}
