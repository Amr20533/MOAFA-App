import 'package:doctor/components/reusable/default_heading_text.dart';
import 'package:doctor/components/reusable/default_network_image.dart';
import 'package:doctor/utils/helpers/format_helper.dart';
import 'package:doctor/utils/static/app_icons.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NextAppointmentCard extends StatelessWidget {
  const NextAppointmentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultHeadingText(heading: 'Next Appointment',),
          SizedBox(height: 16.h),
          Container(
            width: double.infinity,
            height: 133.h,
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: MyStyles.cyanColor,
                borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // top part
                Row(
                  children: [
                    Container(
                      width: 38.w,
                      height: 38.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                          child: DefaultNetworkImage(imageUrl:  'https://img.freepik.com/free-photo/portrait-professional-medical-worker-posing-picture-with-arms-folded_1098-19293.jpg?t=st=1734883262~exp=1734886862~hmac=b1e9accfacf247599423e037916b2eee90707b024cfddd5af7e196591105844f&w=740',)),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mahmoud Mostafa", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 18),),
                        Text("Follow Up Consultation", style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 12)),
                      ],
                    ),
                    const Spacer(),
                    CircleAvatar(
                      backgroundColor: MyStyles.maybeCyanColor,
                      radius: 18.sp,
                      child: Icon(
                        AppIcons.call,
                        color: MyStyles.whiteColor,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 42.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: MyStyles.maybeCyanColor),
                  child: Row(
                    children: [
                      const Spacer(),
                      Icon(
                        AppIcons.calendar_alt,
                        color: MyStyles.whiteColor,
                        size: 20.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        FormatHelper.formatAppointmentDate(DateTime.now().toString()),
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 14.sp, color: Colors.white),
                      ),
                      const Spacer(),
                      Container(
                        width: 2.w,
                        color: MyStyles.whiteColor,
                        margin: EdgeInsets.symmetric(vertical: 10.h),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.access_time_filled,
                        color: MyStyles.whiteColor,
                        size: 22.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            FormatHelper.formatAppointmentTime(DateTime.now().toString()),
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 16.sp, color: Colors.white),
                          ),
                          Text(
                            ' ${FormatHelper.formatDayOrNight(DateTime.now().toString())}',
                            style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12.sp, color: Colors.white),
                          )
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}