import 'package:doctor/components/reusable/default_bottom_nav.dart';
import 'package:doctor/components/reusable/default_bottom_nav_button.dart';
import 'package:doctor/components/reusable/default_details_header.dart';
import 'package:doctor/components/user/blood_donation/donation_request_item.dart';
import 'package:doctor/components/user/pill/drop_down_box.dart';
import 'package:doctor/core/controllers/user_controllers/donation_controller.dart';
import 'package:doctor/utils/data/blood_types_data.dart';
import 'package:doctor/utils/data/governorate_data.dart';
import 'package:doctor/utils/static/app_icons.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';


class RequestBloodScreen extends GetView<DonationController> {
  const RequestBloodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20.h,
            children: [
              DefaultDetailsHeader(title: 'Donation Request'),
              DonationRequestItem(
                icon: AppIcons.location_on,
                width: double.infinity,
                child: Obx(()=> DropDownBox(
                    value: controller.selectedGovernorate.value,
                    items: governoratesData,
                    startMargin: 61,
                    textMaxWidth: 200,
                    onChanged: (value) {
                      controller.setSelectedGovernorate = value!;
                    }),
                ),
              ),

              DonationRequestItem(
                icon: AppIcons.hospital,
                width: double.infinity,
                child: Obx(() {
                  controller.setSelectedPlace = controller.placesList[0];
                  return DropDownBox(
                    value: controller.selectedPlace.value,
                    items: controller.placesList,
                    startMargin: 61,
                    textMaxWidth: 200,
                    onChanged: (value) {
                      controller.setSelectedPlace = value!;
                    });
                },
                ),
              ),

              DonationRequestItem(
                icon: AppIcons.droplet,
                width: double.infinity,
                child: Obx(() => DropDownBox(
                    value: controller.selectedBloodType.value,
                    items: bloodTypesData,
                    startMargin: 176,
                    onChanged: (value) {
                      controller.setSelectedBloodType = value!;
                    }),
                ),
              ),
          Container(
            width: double.infinity,
            height: 188.h,
            margin: EdgeInsets.symmetric(horizontal: 28.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.sp),
                color: MyStyles.donationCardColor
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.w,top: 12.h),
                  child: Icon(FontAwesomeIcons.notesMedical, color: MyStyles.maybeCyanColor, size: 18.sp),
                ),
                SizedBox(width: 12.w,),
                Obx(() => Expanded(
                  child: TextField(
                    controller: controller.notes.value,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(color: MyStyles.blackColor, fontSize: 16.sp),
                    maxLines: 7,
                    decoration: InputDecoration(
                      hintText: "Notes",
                      hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: MyStyles.blackColor, fontSize: 16.sp),
                      fillColor: MyStyles.donationCardColor,
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(6.w,14.h,12.w,2.h,),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12.sp)
                      ),
                    ),
                  ),
                )),
            ],
            ),
          )

              // Obx(() => TextField(
              //   controller: controller.notes.value,
              //   style: Theme.of(context)
              //       .textTheme
              //       .titleMedium!
              //       .copyWith(color: MyStyles.blackColor, fontSize: 16.sp),
              //   maxLines: 7,
              //   decoration: InputDecoration(
              //     hintText: "",
              //     hintStyle: Theme.of(context)
              //         .textTheme
              //         .titleMedium!
              //         .copyWith(color: MyStyles.blackColor, fontSize: 16.sp),
              //     fillColor: MyStyles.donationCardColor,
              //     filled: true,
              //     prefixIcon: Padding(
              //       padding: EdgeInsets.only(left: 8.w, top: 8.h), // Adjust for positioning
              //       child: Icon(
              //         FontAwesomeIcons.noteSticky,
              //         color: MyStyles.maybeCyanColor,
              //         size: 18.sp,
              //       ),
              //     ),
              //     contentPadding: EdgeInsets.fromLTRB(12.w, 12.h, 12.w, 2.h),
              //     border: OutlineInputBorder(
              //       borderSide: BorderSide.none,
              //       borderRadius: BorderRadius.circular(12.sp),
              //     ),
              //   ),
              // ),)
            ],
          ),
      ),
      bottomNavigationBar: DefaultBottomNavButton(
          onTap: (){

          },
          title: "Submit"
      ),
    );
  }
}
