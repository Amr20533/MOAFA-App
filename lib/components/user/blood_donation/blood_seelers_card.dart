import 'package:doctor/utils/static/app_icons.dart';
import 'package:doctor/utils/static/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BloodSeekersCard extends StatelessWidget {
  const BloodSeekersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.w),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.18,
        width: MediaQuery.of(context).size.width * 0.9,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          color: MyStyles.donationCardColor,
          borderRadius: BorderRadius.circular(20.sp),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left Column
                Column(
                  spacing: 8.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.solidUser, color: MyStyles.maybeCyanColor, size: 20.sp),
                        const SizedBox(width: 5),
                        Text("Mahmoud Mustafa", style: Theme.of(context).textTheme.titleMedium),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(AppIcons.location_on, color: MyStyles.maybeCyanColor, size: 20.sp),
                        const SizedBox(width: 5),
                        Text("Cairo, Egypt", style: Theme.of(context).textTheme.titleMedium),
                      ],
                    ),
                  ],
                ),

                Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(Icons.water_drop_sharp, size: 60.sp, color: MyStyles.maybeCyanColor),
                    Text('A+',style: MyStyles.bold18(MyStyles.whiteColor)),
                  ],
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('5 Min Ago',style: Theme.of(context).textTheme.bodySmall!.copyWith(color: MyStyles.greyTextColor, fontSize: 14.sp)),
                GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoutes.bloodSeekers);
                  },
                  child: Text(
                    "Donate",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 22.sp, color: MyStyles.maybeCyanColor),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
