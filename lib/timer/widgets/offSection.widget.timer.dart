import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../designs/widgets/text.design.dart';

class TimerOffSection extends StatelessWidget {
  const TimerOffSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: Get.width * 0.28),
          child: Image.asset(
            "assets/bird.png",
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        DesignText.body2(
          "Break time’s over \n start focusing again",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
