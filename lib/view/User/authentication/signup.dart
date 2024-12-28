import 'package:doctor/components/authentication/default_auth_button.dart';
import 'package:doctor/components/authentication/sign_up/animated_signup_blue_circle.dart';
import 'package:doctor/components/authentication/sign_up/animated_signup_cyan_circle.dart';
import 'package:doctor/components/authentication/sign_up/animated_signup_heading.dart';
import 'package:doctor/components/authentication/sign_up/animated_signup_logo.dart';
import 'package:doctor/components/reusable/textFieldsLoginSignup.dart';
import 'package:doctor/core/controllers/authentication/sign_up_controller.dart';
import 'package:doctor/utils/static/app_routes.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SingUpScreen extends GetView<SignUpController> {
  const SingUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedSignupCyanCircle(),
            AnimatedSignupBlueCircle(),
            PositionedDirectional(
                top: 40,
                end: 20,
                child: AnimatedSignupLogo()
            ),
            PositionedDirectional(
                top: 135.h,
                start: 28.w,
                child: AnimatedSignupHeading()
            ),

            PositionedDirectional(
                top: 250.h,
                start: 0,
                end: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 20.h,
                  children: [
                    Obx(() => SlideTransition(
                      position: controller.signupAnimationController.slideAnimations[0],
                      child: DefaultTextFormField(
                        controller: controller.nId.value,
                        label: 'National ID',
                        keyboardType: TextInputType.number,
                        onChanged: (value) => controller.validateNId(),
                      ),
                    )),

                    Obx(() => SlideTransition(
                      position: controller.signupAnimationController.slideAnimations[1],
                      child: DefaultTextFormField(
                        controller: controller.email.value,
                        label: 'Email Address',
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) => controller.validateEmail(),
                      ),
                    )),

                    Obx(() => SlideTransition(
                      position: controller.signupAnimationController.slideAnimations[2],
                      child: DefaultTextFormField(
                        controller: controller.phone.value,
                        label: 'Phone Number',
                        keyboardType: TextInputType.phone,
                        onChanged: (value) => controller.validatePhone(),
                      ),
                    )),
                    Obx(() {
                      bool secure = controller.secure.value == true;
                      return SlideTransition(
                        position: controller.signupAnimationController.slideAnimations[3],
                        child: DefaultTextFormField(
                          controller: controller.password.value,
                          label: 'Password',
                          secure: controller.secure.value,
                          suffixIcon: GestureDetector(
                            onTap: (){
                              controller.toggleSecurePassword();
                            },
                            child: Icon(secure ? Icons.visibility : Icons.visibility_off, color: MyStyles.grey,),
                          ),
                          keyboardType:TextInputType.visiblePassword,
                          onChanged: (value) => controller.validatePassword(),
                        ),
                      );
                    }),
                    SlideTransition(
                      position: controller.signupAnimationController.slideAnimations[4],
                      child: DefaultAuthButton(
                        onPressed: () {
                          controller.signUp();
                        },
                        text: 'SIGN UP',
                      ),
                    ),
                    Obx(() => AnimatedOpacity(
                      duration: const Duration(seconds: 2),
                      opacity: controller.signupAnimationController.opacity.value,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 6.w,
                          children: [
                            Text('Already have an account? ',
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp, color: MyStyles.blackColor),
                            ),
                            GestureDetector(
                              onTap: (){
                                Get.offNamed(AppRoutes.userLogin);
                              },
                              child: Text(
                                'SIGN IN',
                                style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 16.sp, color: MyStyles.blueColor, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ]
                      ),
                    )),
                  ],
                )
            ),

          ],
        ),
      ),
    );
  }
}




