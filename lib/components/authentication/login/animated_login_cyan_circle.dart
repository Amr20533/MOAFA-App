import 'package:doctor/core/controllers/animation/login_animation_controller.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedLoginCyanCircle extends GetView<LoginAnimationController> {
  const AnimatedLoginCyanCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller.animationController,
      builder: (context, child) {
        return PositionedDirectional(
          end: -30,
          top: controller.circle2StartPosition.value,
          child: CircleAvatar(
            backgroundColor: MyStyles.maybeCyanColor,
            radius: 150.0,
          ),
        );
      },
    );
  }
}
