import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginAnimationController extends GetxController with GetTickerProviderStateMixin {
  late AnimationController animationController;
  late List<AnimationController> slideAnimationControllers;
  late Animation<double> circle1StartPosition;
  late Animation<double> circle2StartPosition;
  late List<Animation<Offset>> slideAnimations;
  RxDouble opacity = 0.0.obs;

  @override
  void onInit() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    slideAnimationControllers = List.generate(5, (index){
      return AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 2000),
      );
    });

    circle1StartPosition = Tween<double>(begin: -200, end: -110).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
    );

    circle2StartPosition = Tween<double>(begin: -200, end: -180).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
    );

    slideAnimations = List.generate(slideAnimationControllers.length, (index) {
      return Tween<Offset>(
        begin: Offset(0.0, 1.0),
        end: Offset(0, 0),
      ).animate(
        CurvedAnimation(
          parent: slideAnimationControllers[index],
          curve: Curves.easeInOut,
        ),
      );
    });


    _startAnimation();
    _fadeOutButtons();
    super.onInit();
  }

  void _fadeOutButtons() {
    Future.delayed(const Duration(milliseconds: 2000), () {
      opacity.value = 1.0;
    });
  }

  void _startAnimation() {
    animationController.forward();
    for (final controller in slideAnimationControllers) {
      controller.forward();
    }
  }


  void restartAnimation() {
    animationController.reset();
    _startAnimation();
  }

  @override
  void dispose() {
    animationController.dispose();
    for (final controller in slideAnimationControllers) {
      controller.dispose();
    }
    super.dispose();
  }
}
