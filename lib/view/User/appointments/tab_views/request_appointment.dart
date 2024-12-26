import 'package:doctor/components/authentication/sign_out_button.dart';
import 'package:doctor/components/doctor/appointments/doc_appointment_calendar.dart';
import 'package:doctor/components/user/appointment/book_now_button.dart';
import 'package:doctor/components/user/appointment/service_item_builder.dart';
import 'package:doctor/components/user/pill/drop_down_box.dart';
import 'package:doctor/core/controllers/user_controllers/request_appointment_controller.dart';
import 'package:doctor/utils/data/governorate_data.dart';
import 'package:doctor/utils/data/service_data.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RequestAppointment extends GetView<RequestAppointmentController> {
  const RequestAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          spacing: 20.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DocAppointmentCalendar(),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.w),
                child: Text(
                  "Select a Service",
                  style: Theme.of(context).textTheme.titleLarge,
                )
            ),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  serviceData.length,
                      (index) {
                    final service = serviceData[index];
                    return Obx(() {
                      bool selected = controller.selectedService.value == index;
                      return ServiceItemBuilder(
                      onTap: () {
                        controller.setSelectedService = index;
                      },
                      selected: selected,
                      title: service['title']!,
                      icon: service['icon']!,
                    );
                    });
                  },
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 160.w,
                    height: 45.h,
                    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 3.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        color: MyStyles.donationCardColor
                    ),
                    child: Obx(()=> DropDownBox(
                        value: controller.selectedGovernorate.value,
                        items: governoratesData,
                        startMargin: 25,
                        onChanged: (value) {
                          controller.setSelectedGovernorate = value!;
                        }),
                  ),
                  ),
                  Container(
                    width: 160.w,
                    height: 45.h,
                    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 3.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        color: MyStyles.donationCardColor
                    ),
                    child: Obx(() {
                      controller.setSelectedPlace = controller.placesList[0];
                      return DropDownBox(
                        value: controller.selectedPlace.value,
                        items: controller.placesList,
                        startMargin: 25,
                        onChanged: (value) {
                          controller.setSelectedPlace = value!;
                        });
                    },
                  ),
                  ),
                ],
              ),
            ),
             Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                3,
                    (index) {
                  return Obx(() {
                    bool selected = controller.selectedPeriod.value == index;
                    return GestureDetector(
                      onTap: (){
                        controller.setSelectedPeriod = index;
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.sp),
                          color: selected ? MyStyles.maybeCyanColor : MyStyles.donationCardColor,
                        ),
                        child: Text("12:05 - 12:35", style: Theme.of(context).textTheme.titleMedium!.copyWith(color: selected ? MyStyles.whiteColor : MyStyles.blackColor, fontSize: 16.sp),),
                      ),
                    );
                  });
                },
              ),
            ),
             Align(
                 alignment: Alignment.centerRight,
                 child: BookNowButton(onTap: () {

                 }, text: 'Book Now',
                 )
             ),
             SizedBox(),
          ],
        ),
    );
  }
}
