import 'dart:async';

import 'package:aimby/timer/timer.view.dart';
import 'package:get/get.dart';

class SplashConroller extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 3), () {
      Get.to(() => TimerView());
    });
  }
}
