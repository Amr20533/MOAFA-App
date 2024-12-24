import 'package:doctor/components/doctor/appointments/doc_appointment_calendar.dart';
import 'package:doctor/components/home/doctor/upcommint_appointment_tile.dart';
import 'package:doctor/components/reusable/default_details_header.dart';
import 'package:doctor/components/reusable/default_title.dart';
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
      spacing: 18.h,
      children: [

        // SizedBox(width: double.infinity,
        //   child: TabBar(
        //     padding: EdgeInsets.zero,
        //     indicatorSize: TabBarIndicatorSize.values.first,
        //     indicatorColor: myBlueColor,
        //     indicatorWeight: 5.0,
        //     controller: _tabController,
        //     isScrollable:true,
        //     labelColor: myBlueColor.withOpacity(0.8),
        //     labelStyle: appStyle(15.w,Colors.white,FontWeight.w500),
        //     unselectedLabelColor: Colors.black45,
        //     labelPadding: EdgeInsets.only(left: 40.w,right: 40.w),
        //     // labelPadding: EdgeInsets.only(left: 50.w,right: 50.w),
        //     indicatorPadding: EdgeInsets.only(left: 5.w,right: 5.w,),
        //     // tabAlignment: TabAlignment.center,
        //     tabs: [
        //       Tab(text: tabs[0],),
        //       Tab(text: tabs[1],),
        //     ],),
        // ),

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
