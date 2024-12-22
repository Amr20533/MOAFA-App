import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultDetailsHeader extends StatelessWidget {
  const DefaultDetailsHeader({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 64.h,
      alignment: Alignment.center,
      padding: EdgeInsetsDirectional.only(start: 25.w),
      decoration: BoxDecoration(
        color: MyStyles.cyanColor,
      ),
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Icon(Icons.arrow_back_ios, color: MyStyles.blackColor,),
          Align(
              alignment: Alignment.center,
              child: Text(title, style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 20.sp),textAlign: TextAlign.center,)),
        ],
      ),
    );
  }
}


