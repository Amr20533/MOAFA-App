import 'package:doctor/components/start/animated_welcome_bottom_circle.dart';
import 'package:doctor/components/start/animated_welcome_bottom_part.dart';
import 'package:doctor/components/start/animated_welcome_side_circle.dart';
import 'package:doctor/components/start/welcome_switch_user_button.dart';
import 'package:doctor/core/controllers/animation/welcome_animation_controller.dart';
import 'package:doctor/utils/static/app_assets.dart';
import 'package:doctor/utils/static/app_routes.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserWelcomeScreen extends GetView<WelcomeAnimationController> {
  const UserWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyStyles.whiteColor,
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          AnimatedWelcomeSideCircle(),
          WelcomeSwitchUserButton(
            onPressed: () {
              controller.restartAnimation();
              Get.offNamed(AppRoutes.doctorWelcome);
            },
          text: "Switch to Doctor",
          ),
          AnimatedBuilder(
            animation: controller.animationController,
            builder: (context, child) {
              return PositionedDirectional(
                  bottom: controller.userCharacterPosition.value,
                  child: Image.asset(
                    AppAssets.user,
                    scale: 2.4,
                  ));
            },
          ),
          AnimatedWelcomeBottomCircle(),
          AnimatedWelcomeBottomPart(
            loginPressed: () {
              Get.toNamed(AppRoutes.userLogin);
            },
            signUpPressed: () {
              Get.toNamed(AppRoutes.userSignup);
            },
          ),
        ],
      ),
    );
  }

}



