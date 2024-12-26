import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CounterBox extends StatelessWidget {
  const CounterBox({super.key,
    required this.plusTap,
    required this.minusTap,
    required this.count,
  });

  final VoidCallback plusTap;
  final VoidCallback minusTap;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: minusTap,
          child: Container(
            width: 21.w,
            height: 21.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: MyStyles.cyanColor,
              borderRadius: BorderRadius.circular(4.sp),
            ),
            child: Icon(FontAwesomeIcons.minus, color: MyStyles.whiteColor, size: 14.sp,),
          ),
        ),
        Text(
          '$count',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(color: MyStyles.blackColor, fontSize: 16.sp),
        ),
        GestureDetector(
          onTap: plusTap,
          child: Container(
            width: 21.w,
            height: 21.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: MyStyles.cyanColor,
              borderRadius: BorderRadius.circular(4.sp),
            ),
            child: Icon(FontAwesomeIcons.plus, color: MyStyles.whiteColor, size: 14.sp,),
          ),
        ),
      ],
    );
  }
}
