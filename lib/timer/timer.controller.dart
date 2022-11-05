import 'dart:async';

import 'package:get/get.dart';

class TimerController extends GetxController {
  Rx<int> time = 0.obs;
  Timer? clock;

  Rx<bool> isClockActive = false.obs;
  void startTime() {
    isClockActive.value = true;
    clock = Timer.periodic(const Duration(seconds: 1), (timer) {
      time.value = time.value + 1;
    });
  }

  void pauseTime() {
    isClockActive.value = false;

    if (clock != null) {
      clock!.cancel();
    }
  }

  void resetTime() {
    time.value = 0;
    isClockActive.value = false;
  }

  String formatTime() {
    int min = time.value ~/ 60;
    int sec = time.value % 60;

    String minString = min.toString();
    String secString = sec.toString();

    if (min < 10) {
      minString = "0$min";
    }

    if (sec < 10) {
      secString = "0$sec";
    }

    return "$minString:$secString";
  }
}
