import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookNowButton extends StatelessWidget {
  const BookNowButton({
    super.key,
    required this.onTap,
    required this.text,
  });
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 95.w,
        height: 35.h,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 28.w),
        decoration: BoxDecoration(
            color: MyStyles.maybeCyanColor,
            borderRadius: BorderRadius.circular(8.sp)
        ),
        child: Text(text, style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 18.sp, color: Colors.white),),

      ),
    );
  }
}
