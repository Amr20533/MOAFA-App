import 'package:doctor/components/reusable/my_button.dart';
import 'package:doctor/utils/static/app_routes.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyStyles.whiteColor,
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          PositionedDirectional(
              start: - 90.h,
              top: 170.h,
              child: CircleAvatar(
                backgroundColor: MyStyles.lightMaybeCyanColor,
                radius: 450.sp,)),
          // Image.asset("assets/Asset 10@10x.png"),
          Column(
            children: [
              const Spacer(flex: 1,),
              Image.asset(
                "assets/Asset 11@10x.png",
                scale: 2.4,
              ),
              const Spacer(
                flex: 4,
              )
            ],
          ),

          Positioned(
            bottom: - 580.h,
              child: CircleAvatar(
                backgroundColor: MyStyles.deepBlueColor,
                radius: 450.sp,)),
          // Column(
          //   children: [
          //     const Spacer(),
          //     ClipRect(
          //         child: Align(
          //             alignment: AlignmentDirectional.topCenter,
          //             heightFactor: 1.02,widthFactor: 2.99,
          //             child: Image.asset("assets/Asset 8@10x.png"))),
          //   ],
          // ),
          Column(
            children: [
              const Spacer(
                flex: 7,
              ),
              Image.asset(
                "assets/Asset 5@10x.png",
                scale: 2.7,
              ),
              SizedBox(height: 26.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyButton(
                    onPressed: () {
                    Get.toNamed(AppRoutes.doctorLogin);
                    // Get.toNamed(AppRoutes.userLogin);
                  },
                    style: MyStyles().welcomeButtonsStyle,
                   title:  'LOGIN',
                  ),
                  MyButton(
                    onPressed: () {
                    Get.toNamed(AppRoutes.doctorSignup);
                    // Get.toNamed(AppRoutes.userSignup);
                  },
                    style: MyStyles().welcomeButtonsStyle,
                   title:  'SING UP',
                  ),
                ],
              ),
              const Spacer()
            ],
          ),
        ],
      ),
    );
  }

}
