import 'package:doctor/utils/static/app_icons.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        width: 80.w,
        height: 25.h,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 6.w),
        decoration: BoxDecoration(
            color: MyStyles.infoTileColor,
            borderRadius: BorderRadius.circular(8.sp)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Sign Out", style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp),),
            Icon(AppIcons.logout, color: MyStyles.blueColor, size: 16.sp,)
          ],
        ),

      ),
    );
  }
}
