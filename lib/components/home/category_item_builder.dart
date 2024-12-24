import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CategoryItemBuilder extends StatelessWidget {
  const CategoryItemBuilder({super.key, required this.title, required this.icon, required this.onTap});
  final VoidCallback onTap;
  final String title;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 6.w),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: CircleAvatar(
                  radius: 25.sp,
                  backgroundColor: MyStyles.cyanColor,
                  child: Image.asset(
                    icon,
                    scale: 2.5,
                  ),),
            ),
            SizedBox(
              width: 60.w,
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 13.sp),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}

