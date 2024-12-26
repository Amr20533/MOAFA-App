import 'package:doctor/components/reusable/default_details_header.dart';
import 'package:doctor/components/reusable/default_switch_button.dart';
import 'package:doctor/components/user/pill/counter_box.dart';
import 'package:doctor/components/user/pill/drop_down_box.dart';
import 'package:doctor/components/user/pill/titled_selection_box.dart';
import 'package:doctor/components/user/pill/titled_text_field.dart';
import 'package:doctor/core/controllers/user_controllers/pill_controller.dart';
import 'package:doctor/utils/data/pill_data/duraitons_data.dart';
import 'package:doctor/utils/data/pill_data/frequency_data.dart';
import 'package:doctor/utils/data/pill_data/shapes_data.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddPillScreen extends GetView<PillController> {
  AddPillScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20.h,
            children: [
              DefaultDetailsHeader(title: 'Add Pill Schedule'),
              // Pill Name
              TitledTextField(
                controller: controller.pillName,
                title: "Pill Name",
                hintText: "",
              ),
              // Shape and Frequency
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  TitledSelectionBox(
                    title: "Shape",
                    child: Obx(()=> DropDownBox(
                        value: controller.selectedShape.value,
                        items: shapesData,
                        startMargin: 57,
                        onChanged: (value) {
                          controller.setSelectedShape = value!;
                        })),
                  ),
                  TitledSelectionBox(
                    title: "Frequency",
                    child: Obx(()=> DropDownBox(
                        value: controller.selectedFrequency.value,
                        items: frequenciesData,
                        onChanged: (value) {
                          controller.setSelectedFrequency = value!;
                        }),
                     ),
                  ),
                  ],
                ),
              ),
          
              // Duration and Dosage
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitledSelectionBox(
                      title: "Duration",
                      child: Obx(()=> DropDownBox(
                          value: controller.selectedDuration.value,
                          items: durationsData,
                          startMargin: 57,
                          onChanged: (value) {
                            controller.setSelectedDuration = value!;
                          }),
                    )
                ),
                    TitledSelectionBox(
                      title: "Dosage Per Time",
                      child: Obx(() => CounterBox(
                        plusTap: (){
                          controller.dosageNumberPLus();
                        },
                        count: controller.dosageNumber.value,
                        minusTap: (){
                          controller.dosageNumberMinus();
                        },
                      )),
                    ),
                  ],
                ),
              ),
          
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitledSelectionBox(
                      title: "Times Per Day",
                      child: Obx(() => CounterBox(
                        plusTap: (){
                          controller.timesPerDayPLus();
                        },
                        count: controller.timesPerDay.value,
                        minusTap: (){
                          controller.timesPerDayMinus();
                        },
                      )),
                    ),
                    TitledSelectionBox(
                      title: "Next Alarm",
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(()=> GestureDetector(
                            onTap: ()=> controller.pickTime(context),
                            child: Text(
                              controller.selectedTime.value.format(context),
                                style: Theme.of(context).textTheme.titleMedium!.copyWith(color: MyStyles.blackColor, fontSize: 16.sp)),                          ),
                          ),
                          Obx(()=>  DefaultSwitchButton(
                            onChanged: (value) {
                              controller.setAlarm = value;
                            },
                            value: controller.enabledAlarm.value,
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              TitledTextField(
                controller: controller.notes,
                title:"Notes",
                hintText: "",
                maxLines: 5
              ),
          
            ],
          ),
        ),
      ),
    );
  }
}

