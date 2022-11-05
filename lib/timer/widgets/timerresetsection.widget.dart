import 'package:flutter/cupertino.dart';

import '../../designs/widgets/text.design.dart';

class TimerResetSection extends StatelessWidget {
  const TimerResetSection({
    Key? key,
    required this.paused,
  }) : super(key: key);
  final String paused;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DesignText.body1("Great work"),
        const SizedBox(
          height: 25,
        ),
        DesignText.body2("You Focused For"),
        const SizedBox(
          height: 27,
        ),
        DesignText.h2(paused),
      ],
    );
  }
}
