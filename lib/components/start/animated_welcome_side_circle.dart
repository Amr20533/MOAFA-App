import 'package:doctor/core/controllers/animation/welcome_animation_controller.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedWelcomeSideCircle extends GetView<WelcomeAnimationController> {
  const AnimatedWelcomeSideCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller.animationController,
      builder: (context, child) {
        return PositionedDirectional(
          start: controller.circle1StartPosition.value,
          top: 170.0,
          child: CircleAvatar(
            backgroundColor: MyStyles.lightMaybeCyanColor,
            radius: 450.0,
          ),
        );
      },
    );
  }
}
