import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceItemBuilder extends StatelessWidget {
  const ServiceItemBuilder({super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.selected = false
  });

  final VoidCallback onTap;
  final String title;
  final String icon;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 6.w),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: CircleAvatar(
                radius: 25.sp,
                backgroundColor: selected ? MyStyles.maybeCyanColor : MyStyles.cyanColor,
                child: Image.asset(
                  icon,
                  color: selected ? MyStyles.whiteColor : MyStyles.maybeCyanColor ,
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

