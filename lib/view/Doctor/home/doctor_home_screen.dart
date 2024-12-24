import 'package:doctor/components/home/custom_home_header.dart';
import 'package:doctor/components/doctor/home/upcommint_appointment_tile.dart';
import 'package:doctor/components/doctor/home/next_appointment_card.dart';
import 'package:doctor/components/home/see_all_bar.dart';
import 'package:doctor/core/controllers/main/main_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DoctorHomeScreen extends GetView<MainViewController> {
  const DoctorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20.h,
        children: [
          CustomHomeHeader(name: "Dr. Mahmoud",),
          NextAppointmentCard(),
          SeeAllBar(
            title: "Upcoming Appointments",
            seeAllTap: (){
              controller.setCurrentIndex = 1;
            },
          ),
          ListView.separated(
              itemCount: 6,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(bottom: 18.h,),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => UpcomingAppointmentTile(),
              separatorBuilder: (context, _) => SizedBox(height: 18.h,),
          )
        ],
      ),
    );
  }
}