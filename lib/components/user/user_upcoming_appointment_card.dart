import 'package:doctor/components/home/see_all_bar.dart';
import 'package:doctor/components/reusable/default_call_button.dart';
import 'package:doctor/components/reusable/default_heading_text.dart';
import 'package:doctor/components/reusable/default_network_image.dart';
import 'package:doctor/utils/helpers/format_helper.dart';
import 'package:doctor/utils/static/app_icons.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserUpcomingAppointmentCard extends StatelessWidget {
  const UserUpcomingAppointmentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20.h,
      children: [
        SeeAllBar(
          title: "Upcoming Appointments",
          seeAllTap: (){

          },
        ),
        Container(
          width: double.infinity,
          height: 133.h,
          padding: EdgeInsets.all(16.0),
          margin: EdgeInsets.symmetric(horizontal: 28.w),
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
                        child: DefaultNetworkImage(imageUrl:  'https://images.unsplash.com/photo-1734366965580-a60e03ae8a17?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',)),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Alpha Labs", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 18),),
                      Text("Blood Test", style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 12)),
                    ],
                  ),
                  const Spacer(),
                  DefaultCallButton(
                    onTap: (){},
                    circleSize: 18,
                    iconSize: 22,
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
    );
  }
}