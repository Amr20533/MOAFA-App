import 'package:doctor/utils/static/app_assets.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void defaultSnackBar(BuildContext context, {required String message}) {
  Get.showSnackbar(GetSnackBar(
    duration: const Duration(milliseconds: 1500),
    animationDuration: const Duration(milliseconds: 400),
    margin: EdgeInsets.symmetric(horizontal: 28.w, vertical: 20.h),
    padding: EdgeInsets.only(left: 8.w, top: 16.h,),
    messageText: Container(

      child: Row(
        children: [
          Image.asset(AppAssets.alert, width: 60.w, height: 50.h,),
          SizedBox(
            width: 260.w,
            child: Text(message,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 16.sp, color: MyStyles.blackColor),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    ),
    backgroundColor: Colors.white,
    borderRadius: 10.sp,
    boxShadows: [
      BoxShadow(
          offset: Offset(-1, -1),
          blurRadius: 14,
          color: MyStyles.donationCardColor
      )
    ],
  ));
}
