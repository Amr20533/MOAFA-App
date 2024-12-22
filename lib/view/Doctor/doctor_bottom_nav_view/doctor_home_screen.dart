import 'package:doctor/components/home/custom_home_header.dart';
import 'package:doctor/components/home/doctor/upcommint_appointment_tile.dart';
import 'package:doctor/components/home/next_appointment_card.dart';
import 'package:doctor/components/home/see_all_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorHomeScreen extends StatelessWidget {
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
          SeeAllBar(title: "Upcoming Appointments"),
          ListView.separated(
              itemCount: 6,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => UpcomingAppointmentTile(),
              separatorBuilder: (context, _) => SizedBox(height: 18.h,),
          )
        ],
      ),
    );
  }
}