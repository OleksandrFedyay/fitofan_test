import 'package:fitofan_test/my_constants.dart';
import 'package:fitofan_test/score_board_page/components/central_panel/central_panel.dart';
import 'package:fitofan_test/score_board_page/components/my_app_bar/my_app_bar.dart';
import 'package:fitofan_test/score_board_page/components/next_button/next_button.dart';
import 'package:fitofan_test/score_board_page/components/next_side_bar/next_side_bar.dart';
import 'package:fitofan_test/score_board_page/components/previous_button/previous_button.dart';
import 'package:fitofan_test/score_board_page/components/previous_side_bar/components/match_list/match_item/match_item.dart';
import 'package:fitofan_test/score_board_page/components/previous_side_bar/previous_side_bar.dart';
import 'package:fitofan_test/score_board_page/models/models.dart';
import 'package:flutter/material.dart';

///These constants would be implemented with Theme Colors Scheme. So they are here just for working purposes.
const scaffoldBackgroundColor = Colors.black;
const appBarBackgroundColor = Colors.black;

class ScoreBoardPage extends StatefulWidget {
  const ScoreBoardPage({
    super.key,
  });

  @override
  State<ScoreBoardPage> createState() => _ScoreBoardPageState();
}

class _ScoreBoardPageState extends State<ScoreBoardPage> {
  /// The variables for temporary use. This data will be fetched from somewhere else (Server, Database).
  final List<MatchItem> previousMatchItems = List.generate(
    10,
    (index) => MatchItem(
      blueCornerFighter: Fighter(name: 'Zhou Emma', isWinner: true),
      redCornerFighter: Fighter(name: 'Zhou Emma', isWinner: false),
      index: index,
    ),
  );
  final List<MatchItem> nextMatchItems = List.generate(
    10,
    (index) => MatchItem(
      blueCornerFighter: Fighter(name: 'Zhou Emma'),
      redCornerFighter: Fighter(name: 'Zhou Emma'),
      index: index,
    ),
  );
  final String numberTitle = '#5';
  final String textTitle = 'Day 1, Dojang 1, №1 All. Poomsae';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kScoreBoardPagePaddingHorizontal),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const PreviousButton(),
                  const SizedBox(
                    height: kSpaceBetweenButtonAndList,
                  ),
                  PreviousSideBar(
                    previousMatchItems: previousMatchItems,
                  )
                ],
              ),
              Expanded(
                child: CentralPanel(
                    numberTitle: numberTitle, textTitle: textTitle),
              ),
              Column(
                children: [
                  const NextButton(),
                  const SizedBox(
                    height: kSpaceBetweenButtonAndList,
                  ),
                  NextSideBar(
                    nextMatchItems: nextMatchItems,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
