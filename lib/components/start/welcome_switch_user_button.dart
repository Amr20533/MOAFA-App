import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:doctor/core/controllers/animation/welcome_animation_controller.dart';

class WelcomeSwitchUserButton extends GetView<WelcomeAnimationController>  {
  const WelcomeSwitchUserButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Obx(() => PositionedDirectional(
      start: 14.w,
      top: 32.h,
      child: AnimatedOpacity(
        duration: const Duration(seconds: 2),
        opacity: controller.opacity.value,
        child: TextButton(
            onPressed: onPressed,
                child: Text(text , style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 20.sp, color: MyStyles.maybeCyanColor),)
        ),
      ),
    ));
  }
}