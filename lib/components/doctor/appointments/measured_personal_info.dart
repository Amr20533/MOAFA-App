import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MeasuredPersonalInfo extends StatelessWidget {
  const MeasuredPersonalInfo({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 10.w,
      children: [
        Icon(icon, color: MyStyles.maybeCyanColor,),
        Text(text, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: MyStyles.maybeCyanColor),)
      ],
    );
  }
}
