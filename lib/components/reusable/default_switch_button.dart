import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultSwitchButton extends StatelessWidget {
  const DefaultSwitchButton({
    super.key, required this.value, required this.onChanged,
  });
  final bool value;
  final void Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.8.w,
      child: Switch(
        value: value,
        padding: EdgeInsets.zero,
        activeColor: MyStyles.whiteColor,
        activeTrackColor: MyStyles.blueColor,
        inactiveTrackColor: MyStyles.whiteColor,
        inactiveThumbColor: MyStyles.grey,
        onChanged: onChanged,
      ),
    );
  }
}