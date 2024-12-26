import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitledSelectionBox extends StatelessWidget {
  const TitledSelectionBox({
    super.key,
    required this.title,
    required this.child,
  });
  final Widget child;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.h,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(color: MyStyles.greyTextColor),
        ),
        Container(
          width: 160.w,
          height: 45.h,
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 3.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.sp),
              color: MyStyles.donationCardColor
          ),
          child: child,
        ),
      ],
    );
  }
}
