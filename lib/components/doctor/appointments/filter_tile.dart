import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterTile extends StatelessWidget {
  const FilterTile({
    super.key,
    required this.onTap,
    required this.text,
    this.selected = false,
  });
  final VoidCallback onTap;
  final String text;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 1.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.sp),
            color: selected ? MyStyles.blueColor : MyStyles.cyanColor
        ),
        child: Text(text,style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 16.sp, color:  selected ? MyStyles.whiteColor : MyStyles.blueColor),),
      ),
    );
  }
}
