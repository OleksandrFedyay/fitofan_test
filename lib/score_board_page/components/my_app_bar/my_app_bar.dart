import 'package:fitofan_test/my_constants.dart';
import 'package:fitofan_test/score_board_page/components/appbar_actions/appbar_actions.dart';
import 'package:fitofan_test/score_board_page/components/logo/logo.dart';
import 'package:fitofan_test/score_board_page/score_board_page.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: kToolBarPaddingLeft,
        right: kToolBarPaddingRight,
      ),
      child: AppBar(
        backgroundColor: appBarBackgroundColor,
        actions: const [AppBarActions()],
        leading: const Logo(),
        leadingWidth: kLogoWidth,
        toolbarHeight: kToolBarHeight,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolBarHeight);
}
