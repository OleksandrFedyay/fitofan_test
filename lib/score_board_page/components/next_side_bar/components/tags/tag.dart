import 'package:fitofan_test/my_constants.dart';
import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  const Tag({
    super.key,
    required this.tagText,
  });

  final String tagText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kTagPaddingLeft),
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          color: kTagsBodyColor,
          borderRadius: BorderRadius.all(
            Radius.circular(
              kTagBorderRadius,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: kTagTextPaddingVertical,
            horizontal: kTagTextPaddingHorizontal,
          ),
          child: Text(
            tagText,
            style: const TextStyle(
              color: kTagsTextColor,
              fontSize: kTagFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
