import 'package:doctor/components/reusable/default_network_image.dart';
import 'package:doctor/components/reusable/default_title.dart';
import 'package:doctor/utils/helpers/format_helper.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicationTile extends StatelessWidget {
  const MedicationTile({
    super.key,
    required this.diagnosis,
    required this.doctorName,
    required this.date,
    required this.onTap,
  });

  final String diagnosis;
  final String doctorName;
  final String date;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w),
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
                  Text(diagnosis,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 20.sp),
                  ),

                  Text('Diagnosed By Dr. $doctorName'
                      '',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 16.sp),
                  ),

                  Text(FormatHelper.formatAppointmentDate(date),
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 14.sp, color: MyStyles.greyTextColor),
                  ),


                ],
              ),
              Icon(Icons.arrow_forward_ios, size: 20.sp,)
            ],
          ),
        ),
      ),
    );
  }
}
