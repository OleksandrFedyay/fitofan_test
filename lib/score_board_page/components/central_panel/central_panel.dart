import 'package:fitofan_test/l10n/l10n.dart';
import 'package:fitofan_test/my_constants.dart';
import 'package:fitofan_test/score_board_page/components/athlete_card_blue_and_red_corner/athlete_card_blue_corner.dart';
import 'package:fitofan_test/score_board_page/components/athlete_card_blue_and_red_corner/athlete_card_red_corner.dart';
import 'package:fitofan_test/score_board_page/components/central_panel/central_panel_buttons/green_gradient_central_panel_button/green_gradient_central_panel_button.dart';
import 'package:fitofan_test/score_board_page/components/central_panel/central_panel_buttons/small_timer_button/small_timer_button.dart';
import 'package:fitofan_test/score_board_page/components/central_panel/central_panel_buttons/this_match_is_active_button/this_match_is_active_button.dart';
import 'package:fitofan_test/score_board_page/components/central_panel_title/central_panel_title.dart';
import 'package:flutter/material.dart';

const greenButtonsPadding = EdgeInsets.only(
    bottom: kCentralPanelBottomButtonsPaddingBottom,
    right: kCentralPanelBottomButtonsPaddingRight,
    left: kCentralPanelBottomButtonsPaddingLeft);

class CentralPanel extends StatelessWidget {
  const CentralPanel({
    super.key,
    required this.numberTitle,
    required this.textTitle,
  });

  final String numberTitle;
  final String textTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: kCentralPanelPadding,
        right: kCentralPanelPadding,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: kCentralPanelTitlePadding,
            ),
            child: CentralPanelTitle(
                numberTitle: numberTitle, textTitle: textTitle),
          ),
          Container(
            height: kCentralColumnForTheAthleteHeight,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const AthleteCardBlueCorner(),
                const AthleteCardRedCorner(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Padding(
                          padding: greenButtonsPadding,
                          child: ThisMatchIsActiveButton(),
                        ),
                        Padding(
                          padding: greenButtonsPadding,
                          child: GreenGradientCentralPanelButton(
                              buttonTitle: context.l10n.saveResults),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: kCentralPanelBottomButtonsPaddingRight,
                              left: kCentralPanelBottomButtonsPaddingLeft),
                          child: GreenGradientCentralPanelButton(
                              buttonTitle: context.l10n.showResultOnScreen),
                        ),
                      ],
                    ),
                    const Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(right: kSmallTimerPaddingRight),
                      child: SmallTimerButton(),
                    ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
