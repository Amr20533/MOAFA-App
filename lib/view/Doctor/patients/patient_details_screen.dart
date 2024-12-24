import 'package:doctor/components/doctor/patients/diagnosis_tile.dart';
import 'package:doctor/components/doctor/patients/filter_tile.dart';
import 'package:doctor/components/doctor/patients/patient_info_header.dart';
import 'package:doctor/core/controllers/doctor_controllers/patients_controller.dart';
import 'package:doctor/utils/data/filter_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PatientDetailsScreen extends GetView<PatientsController> {
  const PatientDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child : Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 18.h,
          children: [
            PatientInfoHeader(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: ClampingScrollPhysics(),
              child: Padding(
                padding: EdgeInsetsDirectional.only(start: 28.w),
                child: Row(
                  spacing: 6.w,
                  children: List.generate(filterData.length, (index) {
                    String day = filterData[index];
                    return Obx(() {
                      bool selected = controller.selectedFilter.value == index;
                      return FilterTile(
                        onTap: () {
                          controller.setSelectedFilter = index;
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
            Expanded(
              child: ListView.separated(
                itemCount: 6,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.only(bottom: 18.h,),
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) => DiagnosisTile(),
                separatorBuilder: (context, _) => SizedBox(height: 18.h,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
