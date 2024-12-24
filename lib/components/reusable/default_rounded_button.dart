import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultRoundedButton extends StatelessWidget {
  const DefaultRoundedButton({
    super.key, required this.onTap, required this.title,
  });
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 45.h,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 28.w),
        decoration: BoxDecoration(
          color: MyStyles.whiteColor,
          borderRadius: BorderRadius.circular(22.sp),
        ),
        child: Text(title, style: Theme.of(context).textTheme.titleLarge!.copyWith(color: MyStyles.maybeCyanColor, fontSize: 18.sp),),
      ),
    );
  }
}
