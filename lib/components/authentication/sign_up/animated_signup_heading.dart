import 'package:doctor/core/controllers/animation/signup_animation_controller.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AnimatedSignupHeading extends GetView<SignupAnimationController> {
  const AnimatedSignupHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return AnimatedOpacity(
          duration: const Duration(seconds: 2),
          opacity: controller.opacity.value,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome",
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: MyStyles.blueColor, fontSize: 40.sp),
              ),
              Text("Please login or Sign up to continue",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: MyStyles.subTitleColor, fontSize: 16.sp)),
            ],
          ),
      );
    });
  }
}

