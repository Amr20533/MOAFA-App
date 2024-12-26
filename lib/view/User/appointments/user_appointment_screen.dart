import 'package:doctor/components/reusable/default_details_header.dart';
import 'package:doctor/core/controllers/doctor_controllers/appointment_controller.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UserAppointmentScreen extends StatelessWidget {
  const UserAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<AppointmentController>(builder: (controller){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  DefaultDetailsHeader(title: "Appointments"),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 28.w),
                    color: MyStyles.cyanColor,
                    child: TabBar(
                        padding: EdgeInsets.zero,
                        // indicatorSize: TabBarIndicatorSize.values.first,
                        indicatorColor: MyStyles.maybeCyanColor,
                        indicatorWeight: 5.0,
                        controller: controller.tabController,
                        labelColor: MyStyles.maybeCyanColor,
                        labelStyle: Theme.of(context).textTheme.titleMedium,
                        unselectedLabelColor: MyStyles.blackColor,
                        // indicatorPadding: EdgeInsets.only(left: 5.w,right: 5.w,),
                        tabs: List.generate(controller.tabs.length, (index) => Tab(text: controller.tabs[index],))
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                    controller: controller.tabController,
                    children: controller.tabViews),
              ),
            ],
          );
        }),
      ),
    );
  }

}
