import 'package:doctor/components/doctor/availability/available_date_tile.dart';
import 'package:doctor/components/doctor/availability/slot_tile.dart';
import 'package:doctor/components/reusable/default_details_header.dart';
import 'package:doctor/components/reusable/default_heading_text.dart';
import 'package:doctor/components/reusable/default_switch_button.dart';
import 'package:doctor/components/reusable/default_title.dart';
import 'package:doctor/core/controllers/doctor_controllers/availability_controller.dart';
import 'package:doctor/utils/data/week_days.dart';
import 'package:doctor/utils/helpers/format_helper.dart';
import 'package:doctor/utils/static/app_icons.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DoctorAvailabilityScreen extends GetView<AvailabilityController> {
  const DoctorAvailabilityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20.h,
      children: [
        DefaultDetailsHeader(title: 'Availability'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: ClampingScrollPhysics(),
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 28.w),
            child: Row(
              spacing: 6.w,
              children: List.generate(weekDays.length, (index) {
                String day = weekDays[index];
                return Obx(() {
                  bool selected = controller.currentDay.value == index;
                  return AvailableDateTile(
                    onTap: () {
                      controller.setCurrentDay = index;
                    },
                    selected: selected,
                    text: day,
                );
                }
                );
              }),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.w,),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DefaultHeadingText(heading: 'Manage Availability',),
              Obx(() => DefaultSwitchButton(
                onChanged: (value) {
                  controller.setAvailabilityState = value;
                },
                value: controller.availabilityState.value,
              )),
            ],
          ),
        ),
        DefaultTitle(title: 'Slots'),
        ListView.separated(
            itemCount: 5,
            shrinkWrap: true,
            padding: EdgeInsets.only(bottom: 18.h,),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => SlotTile(
              editTap: (){

              },
              deleteTap: (){

              },
              startTime: '${DateTime.now()}',endTime: '${DateTime.now()}',),
            separatorBuilder: (context, _) => SizedBox(height: 18.h,),
        ),
      ],
    );
  }
}



