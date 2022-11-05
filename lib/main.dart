import 'package:aimby/splash/splash.view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Aimby());
}

class Aimby extends StatelessWidget {
  const Aimby({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Aimby',
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
