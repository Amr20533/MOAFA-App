import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonationRequestItem extends StatelessWidget {
  const DonationRequestItem({super.key,
    required this.icon,
    required this.child,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.width = 160,
    this.height = 45,
  });

  final double width;
  final double height;
  final IconData icon;
  final Widget child;
  final CrossAxisAlignment crossAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      margin: EdgeInsets.symmetric(horizontal: 28.w),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          color: MyStyles.donationCardColor
      ),
      child: Row(
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Icon(icon, color: MyStyles.maybeCyanColor, size: 18.sp),
          SizedBox(width: 12.w,),
          child
        ],
      ),
    );
  }
}

