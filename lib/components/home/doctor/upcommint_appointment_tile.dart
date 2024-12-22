import 'package:doctor/utils/helpers/format_helper.dart';
import 'package:doctor/utils/static/app_icons.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpcomingAppointmentTile extends StatelessWidget {
  const UpcomingAppointmentTile({
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
          Row(
            children: [

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Mahmoud Mostafa", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 18),),
                      SizedBox(width: 12.w),
                      CircleAvatar(
                        backgroundColor: MyStyles.maybeCyanColor,
                        radius: 10.sp,
                        child: Icon(
                          AppIcons.call,
                          color: MyStyles.whiteColor,
                          size: 12.sp,
                        ),
                      ),
                    ],
                  ),
                  Text("Follow Up Consultation", style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 12)),
                ],
              ),

            ],
          ),
          Row(
            children: [
              Icon(
                AppIcons.calendar_alt,
                color: MyStyles.maybeCyanColor,
                size: 16.sp,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                FormatHelper.formatAppointmentDate(DateTime.now().toString()),
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 12.sp, color: MyStyles.maybeCyanColor),
              ),
              Container(
                width: 2.w,
                height: 16.h,
                color: MyStyles.maybeCyanColor,
                margin: EdgeInsets.symmetric(horizontal: 10.w),
              ),
              Icon(
                Icons.access_time_filled,
                color: MyStyles.maybeCyanColor,
                size: 20.sp,
              ),
              SizedBox(
                width: 10.w,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    FormatHelper.formatAppointmentTime(DateTime.now().toString()),
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14.sp, color: MyStyles.maybeCyanColor),
                  ),
                  Text(
                    ' ${FormatHelper.formatDayOrNight(DateTime.now().toString())}',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 11.sp, color: MyStyles.maybeCyanColor),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
