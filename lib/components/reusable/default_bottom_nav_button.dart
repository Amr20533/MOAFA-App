import 'package:flutter/material.dart';
import 'package:doctor/components/reusable/default_rounded_button.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultBottomNavButton extends StatelessWidget {
  const DefaultBottomNavButton({
    super.key, required this.onTap, required this.title,
  });
  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 85.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: MyStyles.maybeCyanColor,
          borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(14.sp), topEnd: Radius.circular(14.sp))
      ),
      child: DefaultRoundedButton(onTap: onTap, title: title),
    );
  }
}
