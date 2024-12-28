import 'package:doctor/core/controllers/animation/login_animation_controller.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedLoginBlueCircle extends GetView<LoginAnimationController> {
  const AnimatedLoginBlueCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller.animationController,
      builder: (context, child) {
        return PositionedDirectional(
          end: controller.circle1StartPosition.value,
          top: -140,
          child: CircleAvatar(
            backgroundColor: MyStyles.blueColor,
            radius: 150.0,
          ),
        );
      },
    );
  }
}
