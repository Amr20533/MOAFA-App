import 'package:doctor/components/reusable/default_call_button.dart';
import 'package:doctor/utils/helpers/format_helper.dart';
import 'package:doctor/utils/static/app_icons.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiagnosisTile extends StatelessWidget {
  const DiagnosisTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 103.h,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.symmetric(horizontal: 28.w),
      decoration: BoxDecoration(
          color: MyStyles.cyanColor,
          borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Cold Sore", style: Theme.of(context).textTheme.titleLarge),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 200.w,
                      child: Text("Diagnosed By Dr. Mahmoud Mostafa", style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 14.sp),maxLines: 1, overflow: TextOverflow.ellipsis,)),
                  Icon(Icons.arrow_forward_ios, color: MyStyles.blackColor, size: 18.sp,)
                ],
              ),
            ],
          ),
          Text(FormatHelper.formatAppointmentDate(DateTime.now().toString()), style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 13.sp, color: MyStyles.greyTextColor),)
        ],
      ),
    );
  }
}

