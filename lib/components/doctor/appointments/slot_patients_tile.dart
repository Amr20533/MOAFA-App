import 'package:doctor/components/reusable/default_network_image.dart';
import 'package:doctor/components/reusable/default_title.dart';
import 'package:doctor/utils/helpers/format_helper.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlotPatientsTile extends StatelessWidget {
  const SlotPatientsTile({
    super.key,
    required this.startTime,
    required this.endTime,
    required this.onTap,
  });

  final String startTime;
  final String endTime;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w),
        child: Column(
          spacing: 20.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultTitle(title: 'September 2024'),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    height: 110.h,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("20", style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: MyStyles.maybeCyanColor),),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              FormatHelper.formatAppointmentTime(DateTime.now().toString()),
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14.sp, color: MyStyles.maybeCyanColor),
                            ),
                            Text(
                              ' ${FormatHelper.formatDayOrNight(DateTime.now().toString())}',
                              style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 11.sp, color: MyStyles.maybeCyanColor),
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 110.h,
                    padding: EdgeInsets.symmetric(horizontal: 14.w,),
                    decoration: BoxDecoration(
                        color: MyStyles.cyanColor,
                        borderRadius: BorderRadius.circular(12.w)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 3.h,
                          children: [
                            Text('Mahmoud Mostafa',
                              style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 18.sp),
                            ),

                            Text('Follow Up Consultation',
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 14.sp),
                            ),

                            Text('Cold Sore',
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 14.sp),
                            ),


                          ],
                        ),
                        Container(
                          width: 55.w,
                          height: 55.w,
                          decoration: BoxDecoration(
                            color: MyStyles.blueColor,
                            borderRadius: BorderRadius.circular(6.sp),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(6.sp),
                              child: DefaultNetworkImage(imageUrl: 'https://images.unsplash.com/photo-1734192209674-e38b0eb4ff1c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',)),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
