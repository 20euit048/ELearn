import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signup/src/features/authentication/screens/on_boarding/on_boarding.dart';
import '../../features/authentication/screens/welcome_screen/welcome_screen.dart';

class Fade_in_animation_controller extends GetxController {
  static Fade_in_animation_controller get find => Get.find();
  RxBool animate = false.obs;

  Future startSplashAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(const Duration(milliseconds: 2000));
    Get.offAll(WelcomeScreen());
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
  }
}
