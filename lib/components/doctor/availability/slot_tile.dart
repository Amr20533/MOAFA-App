import 'package:doctor/utils/helpers/format_helper.dart';
import 'package:doctor/utils/static/app_icons.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlotTile extends StatelessWidget {
  const SlotTile({
    super.key,
    required this.startTime,
    required this.endTime,
    required this.editTap,
    required this.deleteTap,
  });

  final String startTime;
  final String endTime;
  final VoidCallback editTap;
  final VoidCallback deleteTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55.h,
      margin: EdgeInsets.symmetric(horizontal: 28.w),
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
          color: MyStyles.secLightGrey,
          borderRadius: BorderRadius.circular(12.w)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('${FormatHelper.formatAppointmentTime(startTime)} - ${FormatHelper.formatAppointmentTime(endTime)} ${FormatHelper.formatDayOrNight(endTime)}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Row(
            spacing: 6.w,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: editTap,
                  child: Icon(AppIcons.pencil, size: 20.sp, color: MyStyles.secGrey,)),
              GestureDetector(
                  onTap: deleteTap,
                  child: Icon(AppIcons.delete, size: 24.sp, color: MyStyles.red,)),
            ],
          )
        ],
      ),
    );
  }
}
