import 'package:doctor/components/home/category_item_builder.dart';
import 'package:doctor/components/home/custom_home_header.dart';
import 'package:doctor/components/home/see_all_bar.dart';
import 'package:doctor/components/reusable/default_heading_text.dart';
import 'package:doctor/components/user/user_upcoming_appointment_card.dart';
import 'package:doctor/utils/data/categorites_data.dart';
import 'package:doctor/utils/static/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UserHomeScreen extends StatelessWidget {
  const UserHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20.h,
        children: [
          CustomHomeHeader(
            onTap: (){

            },
            name: "Mahmoud",
          ),
          SeeAllBar(
            title: "Upcoming Appointments",
            seeAllTap: (){
              Get.toNamed(AppRoutes.userAppointment);
            },
          ),
          UserUpcomingAppointmentCard(),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: DefaultHeadingText(heading: 'Categories',),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                categoriesData.length,
                    (index) {
                  final category = categoriesData[index];
                  return CategoryItemBuilder(
                    onTap: () {
                      Get.toNamed(category['route']!);
                    },
                    title: category['title']!,
                    icon: category['icon']!,
                  );
                },
              ),
            ),
          ),

        ],
      ),
    );
  }
}
