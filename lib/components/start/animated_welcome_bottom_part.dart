import 'package:doctor/components/reusable/my_button.dart';
import 'package:doctor/core/controllers/animation/welcome_animation_controller.dart';
import 'package:doctor/utils/static/app_assets.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AnimatedWelcomeBottomPart extends GetView<WelcomeAnimationController> {
  const AnimatedWelcomeBottomPart({
    super.key,
    required this.loginPressed,
    required this.signUpPressed,
  });

  final VoidCallback loginPressed;
  final VoidCallback signUpPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(
          flex: 7,
        ),
        Obx(() => AnimatedOpacity(
          duration: const Duration(seconds: 2),
          opacity: controller.opacity.value,
          child: Image.asset(
            AppAssets.logo,
            scale: 2.7,
          ),
        )),
        SizedBox(height: 26.h),
        Obx(() => AnimatedOpacity(
          duration: const Duration(seconds: 2),
          opacity: controller.opacity.value,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyButton(
                onPressed: loginPressed,
                style: MyStyles().welcomeButtonsStyle,
                title:  'LOGIN',
              ),
              MyButton(
                onPressed: signUpPressed  ,
                style: MyStyles().welcomeButtonsStyle,
                title:  'SING UP',
              ),
            ],
          ),
        )),
        const Spacer()
      ],
    );
  }
}
