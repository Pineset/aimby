import 'package:aimby/designs/widgets/text.design.dart';
import 'package:aimby/splash/spash.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  SplashView({super.key});

  final SplashConroller conroller = Get.put(SplashConroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: DesignText.h1("aimby"),
          ),
        ],
      ),
    );
  }
}
