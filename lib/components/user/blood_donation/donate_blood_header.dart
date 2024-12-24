import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonateBloodHeader extends StatelessWidget {
  const DonateBloodHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 28.w),
      padding: EdgeInsets.all(16),
      height: 130.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: MyStyles.maybeCyanColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              'Donate Blood\nSave Lives',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(color: MyStyles.whiteColor, fontSize: 26.sp),
            ),
          ),
          Expanded(
            flex: 2,
            child: Image.asset(
              'assets/Asset 37@10x.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
