import 'package:doctor/core/controllers/animation/welcome_animation_controller.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AnimatedWelcomeBottomCircle extends GetView<WelcomeAnimationController> {
  const AnimatedWelcomeBottomCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller.animationController,
      builder: (context, child) {
        return Positioned(
            bottom: controller.circle2StartPosition.value,
            // bottom: - 580.h,
            child: CircleAvatar(
              backgroundColor: MyStyles.deepBlueColor,
              radius: 450.sp,));
      },
    );
  }
}
