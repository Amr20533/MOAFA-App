import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor/components/doctor/profile/profile_bottom_part.dart';
import 'package:doctor/components/reusable/default_bottom_nav_button.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DoctorProfileScreen extends StatelessWidget {
  const DoctorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 310.h,
                decoration: BoxDecoration(
                  color: MyStyles.cyanColor
                ),
                child: CachedNetworkImage(imageUrl: 'https://img.freepik.com/free-photo/portrait-professional-medical-worker-posing-picture-with-arms-folded_1098-19293.jpg?t=st=1734883262~exp=1734886862~hmac=b1e9accfacf247599423e037916b2eee90707b024cfddd5af7e196591105844f&w=740'),
              ),

              PositionedDirectional(
                top: 16.h,
                start: 16.w,
                child: GestureDetector(
                  onTap: ()=> Get.back(),
                  child: CircleAvatar(
                    radius: 18.sp,
                    backgroundColor: MyStyles.maybeCyanColor,
                    child: Align(
                        alignment: Alignment.center,
                        child: Icon(Icons.arrow_back_ios, color: MyStyles.whiteColor, size: 20.sp,)),
                  ),
                ),
              ),

              Expanded(
                child: ProfileBottomPart(),
              ),

            ],
          )),
      bottomNavigationBar: DefaultBottomNavButton(
        onTap: (){},
        title: "Book Appointment",
      ),
    );
  }
}





