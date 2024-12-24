import 'package:doctor/components/doctor/patients/filter_tile.dart';
import 'package:doctor/components/reusable/default_details_header.dart';
import 'package:doctor/components/user/medical_history/medication_tile.dart';
import 'package:doctor/core/controllers/doctor_controllers/patients_controller.dart';
import 'package:doctor/utils/data/filter_data.dart';
import 'package:doctor/utils/data/filter_medical_history_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/styles/used_styles.dart';

class MedicalHistoryScreen extends GetView<PatientsController> {
  const MedicalHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() =>PatientsController());
    return Column(
      spacing: 20.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultDetailsHeader(title: 'Medical History'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 28.w),
            child: Row(
              spacing: 6.w,
              children: List.generate(filterMedicalHistoryData.length, (index) {
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
            itemCount: 7,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => MedicationTile(
              onTap: (){

              },
              diagnosis: 'Cold Sore',
              doctorName: 'Mahmoud Mustafa',
              date: '${DateTime.now()}',
            ),
            separatorBuilder: (context, _) => SizedBox(height: 18.h,),
          ),
        ),


      ],
    );
  }
}
