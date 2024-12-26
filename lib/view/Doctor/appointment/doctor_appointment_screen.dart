import 'package:doctor/components/doctor/appointments/doc_appointment_calendar.dart';
import 'package:doctor/components/doctor/home/upcommint_appointment_tile.dart';
import 'package:doctor/components/reusable/default_details_header.dart';
import 'package:doctor/core/controllers/doctor_controllers/appointment_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DoctorAppointmentScreen extends GetView<AppointmentController> {
  const DoctorAppointmentScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20.h,
      children: [
        DefaultDetailsHeader(title: 'Appointments'),
        DocAppointmentCalendar(),
        Padding(
          padding: EdgeInsetsDirectional.only(start: 28.w),
          child: Text(
            "Upcoming Appointments",
            style: Theme.of(context).textTheme.titleLarge,
          )
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 8,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.only(bottom: 18.h,),
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) => UpcomingAppointmentTile(),
            separatorBuilder: (context, _) => SizedBox(height: 18.h,),
          ),
        )
      ],
    );
  }
}
