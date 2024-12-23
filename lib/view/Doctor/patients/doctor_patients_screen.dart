import 'package:doctor/components/doctor/patients/slot_patients_tile.dart';
import 'package:doctor/components/reusable/default_details_header.dart';
import 'package:doctor/utils/static/app_routes.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DoctorPatientsScreen extends StatelessWidget {
  const DoctorPatientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20.h,
        children: [
          DefaultDetailsHeader(title: 'My Patients'),
          ListView.separated(
            itemCount: 5,
            shrinkWrap: true,
            padding: EdgeInsets.only(bottom: 18.h,),
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => SlotPatientsTile(
              onTap: (){
                Get.toNamed(AppRoutes.patientDetails);
              },
              startTime: '${DateTime.now()}',endTime: '${DateTime.now()}',),
            separatorBuilder: (context, _) => Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 18.h),
              height: 2.h,
              decoration: BoxDecoration(
                color: MyStyles.secLightGrey
              ),
      
            ),
          ),
        ],
      ),
    );
  }
}
