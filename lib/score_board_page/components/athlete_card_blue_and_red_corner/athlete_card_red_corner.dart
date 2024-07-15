import 'package:fitofan_test/my_constants.dart';
import 'package:fitofan_test/score_board_page/components/athlete_avatar_widget/athlete_avatar_widget.dart';
import 'package:fitofan_test/score_board_page/components/athlete_card_blue_and_red_corner/athlete_name%20widget/athlete_name_widget.dart';
import 'package:fitofan_test/score_board_page/components/athlete_card_blue_and_red_corner/combat_presentation_widget/combat_presentation_widget.dart';
import 'package:fitofan_test/score_board_page/components/athlete_card_blue_and_red_corner/more_button/more_button.dart';
import 'package:flutter/material.dart';
import 'package:fitofan_test/score_board_page/components/athlete_card_blue_and_red_corner/coach_presentation_widget/coach_presentation_widget.dart';
import 'package:fitofan_test/score_board_page/components/athlete_card_blue_and_red_corner/penalty_button/penalty_button.dart';

class AthleteCardRedCorner extends StatelessWidget {
  const AthleteCardRedCorner({
    super.key,
  });

  ///For temporary use
  final athleteName = 'Shirin \nShirinov';
  final combatPresentation = 'Poomsae Ukrainian Federation';
  final coachPresentation = 'Чебан (Cheban) В.';
  final String imageUrlRedCorner =
      'https://s3-alpha-sig.figma.com/img/868e/6daf/75af0a066ecd5fde24447791aad9c018?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=WWP6mcGjQnoYWOwkVoqrQ8hBG7qDq7vXjr3S1LDRTLvj-d9bmY~HmxpJsEfCLRhgA99ZYHd6CfV4l0d5nBrGXaj8bmFcpaPDzD-loUfbBkg9xoGDeZ9lmQGlCvaSvACWG9KsYxIn1GOuhKr01JQEWb90PKIHaS08DGkKAplxB-j1xXnveh-iCeJn7tD8FUE8BRYgoXZHamIUDHSV00umtbUgbpmVdr5JI~m1GLMD81LboBZIPFcl1v3rJYih-6ZtStB8oK1iUiD~S-b~dtzo1ZNkMnsl4HsIEU1RYjacSMngeE1Q7DF9JXbqFdlHPDD3DRfi2Tlo~3mROcgETGFalw__';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: kAthleteCardPadding,
        left: kAthleteCardPadding,
        right: kAthleteCardPadding,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: kBorderColor,
            width: kBorderWidth,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(kAthleteCardBorderRadius),
          ),
          gradient: const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: kCentralPanelAthleteAvatarRedGradientColor,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(kAthleteAvatarPadding),
                  child: AthleteAvatarWidget(imageUrl: imageUrlRedCorner),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: kAthleteCardBlueCornerNamePaddingBottom,
                      ),
                      child: AthleteNameWidget(
                        athleteName: athleteName,
                      ),
                    ),
                    CombatPresentationWidget(
                      combatPresentation: combatPresentation,
                    ),
                    CoachPresentationWidget(
                      coachPresentation: coachPresentation,
                    ),
                  ],
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: kAthleteCardPenaltyButtonPaddingTop,
                    right: kAthleteCardPenaltyButtonPaddingRight,
                  ),
                  child: PenaltyButton(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: kMoreButtonPadding,
                    right: kMoreButtonPadding,
                  ),
                  child: MoreButton(buttonColor: kMoreButtonRedColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
