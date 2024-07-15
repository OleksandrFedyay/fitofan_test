import 'dart:async';

import 'package:fitofan_test/my_constants.dart';
import 'package:flutter/material.dart';

class SmallTimerButton extends StatefulWidget {
  const SmallTimerButton({
    super.key,
  });

  @override
  State<SmallTimerButton> createState() => _SmallTimerButtonState();
}

class _SmallTimerButtonState extends State<SmallTimerButton> {
  ///For temporary usage
  static const _maxSeconds = 180;
  int _seconds = _maxSeconds;
  Timer? _timer;

  void _startTimer() {
    const oneSec = Duration(seconds: 1);
    Timer? timer;
    if (_timer != null) {
      _timer!.cancel();
      _timer = null;
    } else {
      _timer = Timer.periodic(
        oneSec,
        (Timer timer) {
          if (_seconds == 0) {
            setState(() {
              timer.cancel();
              _seconds = _maxSeconds;
            });
          } else {
            setState(() {
              _seconds--;
              formatMMSS(_seconds);
            });
          }
        },
      );
    }
  }

  void stopTimer() {
    _timer?.cancel();
  }

  String formatMMSS(int seconds) {
    seconds = (seconds % 3600).truncate();
    int minutes = (seconds / 60).truncate();

    String minutesStr = (minutes).toString().padLeft(2, '0');
    String secondsStr = (seconds % 60).toString().padLeft(2, '0');

    return "$minutesStr:$secondsStr";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kSmallTimerButtonHeight,
      decoration: const BoxDecoration(
        color: kSmallTimerColor,
        borderRadius: BorderRadius.all(
          Radius.circular(kSmallTimerBorderRadius),
        ),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {
            _startTimer();
          },
          child: Padding(
            padding: const EdgeInsets.all(kSmallTimerTextPadding),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Round 1',
                  style: TextStyle(
                    fontSize: kSmallTimerTextFontSize,
                    fontWeight: FontWeight.bold,
                    color: kSmallTimerTextColor,
                  ),
                ),
                Text(
                  formatMMSS(_seconds),
                  style: const TextStyle(
                    fontSize: kSmallTimerTimeFontSize,
                    fontWeight: FontWeight.bold,
                    color: kSmallTimerTextColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
