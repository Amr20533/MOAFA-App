import 'package:get/get.dart';
import 'package:flutter/material.dart';

class WelcomeAnimationController extends GetxController with GetTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> circle1StartPosition;
  late Animation<double> circle2StartPosition;
  late Animation<double> userCharacterPosition;
  late Animation<double> doctorCharacterPosition;
  RxDouble opacity = 0.0.obs;

  @override
  void onInit() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    circle1StartPosition = Tween<double>(begin: 20, end: -90).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
    );

    circle2StartPosition = Tween<double>(begin: -800.0, end: -580.0).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
    );

    userCharacterPosition = Tween<double>(begin: -60, end: 180).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
    );

    doctorCharacterPosition = Tween<double>(begin: -60, end: 200).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
    );

    _startAnimation();
    _fadeOutButtons();
    super.onInit();
  }

  void _fadeOutButtons() {
    Future.delayed(const Duration(milliseconds: 1500), () {
      opacity.value = 1.0;
    });
  }

  void _startAnimation() {
    animationController.forward();
  }

  void restartAnimation() {
    animationController.reset();
    _startAnimation();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
