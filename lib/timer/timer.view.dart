import 'package:aimby/designs/styles/color.design.dart';
import 'package:aimby/designs/widgets/text.design.dart';
import 'package:aimby/timer/timer.controller.dart';
import 'package:aimby/timer/widgets/offSection.widget.timer.dart';
import 'package:aimby/timer/widgets/onsection.widget.timer.dart';
import 'package:aimby/timer/widgets/timerresetsection.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TimerView extends StatelessWidget {
  TimerView({super.key});
  final TimerController controller = Get.put(TimerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: SizedBox(
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                DesignText.h3(
                  "Aimby",
                  textAlign: TextAlign.center,
                ),
                const Expanded(
                  flex: 3,
                  child: SizedBox(),
                ),
                // const TimerOffSection(),
                //
                // const OnSectionWidget(),
                // const TimerResetSection(),
                Obx(
                  () => controller.time.value == 0
                      ? const TimerOffSection()
                      : controller.isClockActive.value
                          ? OnSectionWidget(
                              text: controller.formatTime(),
                            )
                          : TimerResetSection(
                              paused: controller.formatTime(),
                            ),
                ),

                const Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),

                InkWell(
                  onTap: () {
                    controller.time.value == 0
                        ? controller.startTime()
                        : controller.isClockActive.value
                            ? controller.pauseTime()
                            : controller.resetTime();
                  },
                  child: Container(
                    width: Get.width * 0.5,
                    height: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      color: DesignColors.black,
                    ),
                    child: Center(
                      child: Obx(() => DesignText.bText(
                            controller.time.value == 0
                                ? "start"
                                : controller.isClockActive.value
                                    ? "pause"
                                    : "reset",
                            color: DesignColors.white,
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.08,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
