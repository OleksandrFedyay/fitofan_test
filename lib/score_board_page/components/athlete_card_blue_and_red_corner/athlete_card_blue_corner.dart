import 'package:fitofan_test/my_constants.dart';
import 'package:fitofan_test/score_board_page/components/athlete_avatar_widget/athlete_avatar_widget.dart';
import 'package:fitofan_test/score_board_page/components/athlete_card_blue_and_red_corner/athlete_name%20widget/athlete_name_widget.dart';
import 'package:fitofan_test/score_board_page/components/athlete_card_blue_and_red_corner/combat_presentation_widget/combat_presentation_widget.dart';
import 'package:fitofan_test/score_board_page/components/athlete_card_blue_and_red_corner/more_button/more_button.dart';
import 'package:flutter/material.dart';
import 'package:fitofan_test/score_board_page/components/athlete_card_blue_and_red_corner/coach_presentation_widget/coach_presentation_widget.dart';
import 'package:fitofan_test/score_board_page/components/athlete_card_blue_and_red_corner/penalty_button/penalty_button.dart';

class AthleteCardBlueCorner extends StatelessWidget {
  const AthleteCardBlueCorner({
    super.key,
  });

  ///For temporary use
  final athleteName = 'Shirin \nShirinov';
  final combatPresentation = 'Poomsae Ukrainian Federation';
  final coachPresentation = 'Чебан (Cheban) В.';
  final String imageUrlBlueCorner =
      'https://s3-alpha-sig.figma.com/img/5029/539f/8d80575f6bef160e1c3fde6a1a69c104?Expires=1722211200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Bb7maYSRYyQVyEXHXcVNQGcYB9AbUz44GHGdcnd4oC2Fl8ytx9geCfvxSiiKhKgDrIa44xjZsrcGRVkEiebU3uJKIUjWQnzboMREOEKcvQGpo6HVOHJWZqIBbjFSlRQ4OJJrTEJC7QPdtffyVAid5vNE0qDUaFY7HgImAK6Ar-EsN~VRyy~j09EGXorhPHoOi2toGDXZp4tLSVulWBOpYug2j1yTm7yXeVGtXCXQzneVLSyaCmfoFWSDZp53RGxouDxP04GMD6aQi4c8aK5hfCapcK4fvcQYpYZna6rjSujSqxZj-0JPgKJMUyI3wTX9~OcfwoDILMRU-PTXm7~0ag__';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kAthleteCardPadding),
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
            colors: kCentralPanelAthleteAvatarBlueGradientColor,
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
                  child: AthleteAvatarWidget(imageUrl: imageUrlBlueCorner),
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
                  child: MoreButton(buttonColor: kMoreButtonBlueColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
