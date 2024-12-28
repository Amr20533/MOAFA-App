import 'package:doctor/components/authentication/login/animated_login_blue_circle.dart';
import 'package:doctor/components/authentication/login/animated_login_cyan_circle.dart';
import 'package:doctor/components/authentication/default_auth_button.dart';
import 'package:doctor/components/authentication/login/animated_login_heading.dart';
import 'package:doctor/components/authentication/login/animated_login_logo.dart';
import 'package:doctor/components/reusable/textFieldsLoginSignup.dart';
import 'package:doctor/core/controllers/authentication/login_controller.dart';
import 'package:doctor/utils/static/app_routes.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LogInScreen extends GetView<LoginController> {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedLoginCyanCircle(),
            AnimatedLoginBlueCircle(),
            PositionedDirectional(
              top: 40,
              end: 20,
              child: AnimatedLoginLogo()
            ),
            PositionedDirectional(
              top: 135.h,
              start: 28.w,
              child: AnimatedLoginHeading()
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
                      position: controller.loginAnimationController.slideAnimations[0],
                      child: DefaultTextFormField(
                        controller: controller.email.value,
                        label: 'Email Address',
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) => controller.validateEmail(),
                      ),
                    )),
                    Obx(() {
                      bool secure = controller.secure.value == true;
                      return SlideTransition(
                        position: controller.loginAnimationController.slideAnimations[1],
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
                    Obx(() => AnimatedOpacity(
                      duration: const Duration(seconds: 2),
                      opacity: controller.loginAnimationController.opacity.value,
                      child: Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 28.w),
                          child: GestureDetector(
                            onTap: (){

                            },
                            child: Text("Forget Password?",
                                style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp, color: MyStyles.blackColor)),
                          ),
                        ),
                      ),
                    )),
                    SlideTransition(
                      position: controller.loginAnimationController.slideAnimations[2],
                      child: DefaultAuthButton(
                        onPressed: () {
                          controller.login();
                        },
                        text: 'SIGN IN',
                      ),
                    ),
                    Obx(() => AnimatedOpacity(
                      duration: const Duration(seconds: 2),
                      opacity: controller.loginAnimationController.opacity.value,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 6.w,
                          children: [
                            Text('Don`t have an account? ',
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp, color: MyStyles.blackColor),
                            ),
                            GestureDetector(
                              onTap: (){
                                Get.offNamed(AppRoutes.userSignup);
                              },
                              child: Text(
                                'Sign Up',
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




