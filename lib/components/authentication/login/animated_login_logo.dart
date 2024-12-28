import 'package:doctor/core/controllers/animation/login_animation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedLoginLogo extends GetView<LoginAnimationController> {
  const AnimatedLoginLogo ({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedOpacity(
      duration: const Duration(seconds: 2),
      opacity: controller.opacity.value,
      child: Image.asset(
        "assets/Asset 5@10x.png",
        scale: 4.1,
      ),
    ));
  }
}
