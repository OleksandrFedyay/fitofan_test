import 'package:fitofan_test/my_constants.dart';
import 'package:fitofan_test/l10n/l10n.dart';
import 'package:flutter/material.dart';

class PromoButton extends StatelessWidget {
  const PromoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(foregroundColor: Colors.white),
      onPressed: () {},
      icon: SizedBox(
        height: kTextButtonIconHeight,
        width: kTextButtonIconWidth,
        child: Image.asset(
          'assets/icons/social_speaker_advertising_megaphone_loud_marketing_icon_133181.png',
          color: Colors.white,
        ),
      ),
      label: Text(context.l10n.promo),
    );
  }
}
