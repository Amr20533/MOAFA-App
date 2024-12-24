import 'package:doctor/components/reusable/default_bottom_nav.dart';
import 'package:doctor/core/controllers/main/main_view_controller.dart';
import 'package:doctor/utils/static/app_routes.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class UserMainView extends GetView<MainViewController> {
  const UserMainView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(child: Obx(() => controller.userViews[controller.currentScreen.value])),

      // Bottom Navigation Bar
      bottomNavigationBar: DefaultBottomNav(isUser: true,),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        onPressed: () {
          Get.toNamed(AppRoutes.addPill);
        },
        backgroundColor: MyStyles.deepBlueColor,
        child: Icon(FontAwesomeIcons.plus, color: Colors.white,size: 27.sp,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

