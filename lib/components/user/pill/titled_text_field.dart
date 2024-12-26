import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitledTextField extends StatelessWidget {
  const TitledTextField({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
    this.maxLines = 1,
  });
  final TextEditingController controller;
  final String title;
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.h,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(color: MyStyles.greyTextColor),
          ),
          TextField(
            controller: controller,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(color: MyStyles.blackColor, fontSize: 16.sp),
            maxLines: maxLines,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: MyStyles.blackColor, fontSize: 16.sp),
              fillColor: MyStyles.donationCardColor,
              filled: true,
              contentPadding: EdgeInsets.fromLTRB(12.w,12.h,12.w,2.h,),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12.sp)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
