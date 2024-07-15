import 'package:fitofan_test/l10n/l10n.dart';
import 'package:fitofan_test/my_constants.dart';
import 'package:flutter/material.dart';

class ThisMatchIsActiveButton extends StatefulWidget {
  const ThisMatchIsActiveButton({
    super.key,
  });

  @override
  State<ThisMatchIsActiveButton> createState() =>
      _ThisMatchIsActiveButtonState();
}

class _ThisMatchIsActiveButtonState extends State<ThisMatchIsActiveButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Image.asset(
        'assets/icons/ok.png',
        color: kOkIconColor,
        height: kOkIconHeight,
        width: kOkIconWidth,
      ),
      label: Text(
        context.l10n.thisMatchIsActive,
        style: const TextStyle(
          fontSize: kCentralPanelBottomButtonsFontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(
          kCentralPanelBottomButtonsWidth,
          kCentralPanelBottomButtonsHeight,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              kCentralPanelBottomButtonBorderRadius,
            ),
          ),
        ),
        backgroundColor: kThisMatchIsActiveButtonColor,
        foregroundColor: kThisMatchIsActiveButtonTextColor,
      ),
    );
  }
}
