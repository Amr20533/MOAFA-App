import 'package:doctor/utils/static/app_icons.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultCallButton extends StatelessWidget {
  const DefaultCallButton({
    super.key, this.circleSize = 10, this.iconSize = 12, required this.onTap,
  });
  final VoidCallback onTap;
  final double circleSize;
  final double iconSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: MyStyles.maybeCyanColor,
        radius: circleSize.sp,
        child: Icon(
          AppIcons.call,
          color: MyStyles.whiteColor,
          size: iconSize.sp,
        ),
      ),
    );
  }
}
