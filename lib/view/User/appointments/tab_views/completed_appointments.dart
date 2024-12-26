import 'package:doctor/components/user/user_upcoming_appointment_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompletedAppointments extends StatelessWidget {
  const CompletedAppointments({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: 8,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(bottom: 18.h,),
              physics: ClampingScrollPhysics(),
              itemBuilder: (context, index) => UserUpcomingAppointmentCard(),
              separatorBuilder: (context, _) => SizedBox(height: 18.h,),
            ),
          )
        ],
      ),
    );
  }
}
