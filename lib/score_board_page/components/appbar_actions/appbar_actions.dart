import 'package:fitofan_test/score_board_page/components/appbar_actions/buttons/judges_button/judges_button.dart';
import 'package:fitofan_test/score_board_page/components/appbar_actions/buttons/matches_button/matches_button.dart';
import 'package:fitofan_test/score_board_page/components/appbar_actions/buttons/screen_button/screen_button.dart';
import 'package:fitofan_test/score_board_page/components/appbar_actions/buttons/settings_button/settings_button.dart';
import 'package:flutter/material.dart';

import 'buttons/promo_button/promo_button.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PromoButton(),
        MatchesButton(),
        JudgesButton(),
        ScreenButton(),
        SettingsButton(),
      ],
    );
  }
}
