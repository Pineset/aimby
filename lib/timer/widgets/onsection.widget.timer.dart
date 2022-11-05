import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../designs/widgets/text.design.dart';

class OnSectionWidget extends StatelessWidget {
  const OnSectionWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/egg.png"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: DesignText.body2(
            "Focus hard or the chicken will hatch early on",
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: Get.height * 0.035,
        ),
        DesignText.h2(text),
      ],
    );
  }
}
