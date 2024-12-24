import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BloodServiceTile extends StatelessWidget {
  const BloodServiceTile({
    super.key, required this.title, required this.icon, required this.onTap,
  });
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 28.w),
      decoration: BoxDecoration(
        color: MyStyles.donationCardColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        onTap: onTap,
        titleAlignment: ListTileTitleAlignment.center,
        leading: Container(
          width: 42.w,
          height: 42.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: MyStyles.maybeCyanColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: MyStyles.whiteColor, size: 20.sp,),
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 20.sp),
        ),
      ),
    );
  }
}
