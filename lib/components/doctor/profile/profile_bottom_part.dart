import 'package:doctor/components/doctor/profile/doctor_personal_info.dart';
import 'package:doctor/components/doctor/profile/experience_and_patients_count.dart';
import 'package:flutter/material.dart';
import 'package:doctor/components/reusable/default_heading_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor/utils/styles/used_styles.dart';

class ProfileBottomPart extends StatelessWidget {
  const ProfileBottomPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.33),
      padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 18.h),
      decoration: BoxDecoration(
          color: MyStyles.whiteColor,
          borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(32.sp), topEnd: Radius.circular(32.sp))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 18.h,
        children: [
          DoctorPersonalInfo(),
          Divider(height: 2.h, color: MyStyles.maybeCyanColor,),
          ExperienceAndPatientsBar(yearsOfExperience: 7, patientsCount: 1500,),
          DefaultHeadingText(heading: "Biography"),
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(color: MyStyles.bioTextColor, fontSize: 14.sp),
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10.h,
            children: [
              DefaultHeadingText(heading: "Availability"),
              Text("Mon - Sat. 10:00 AM - 07:00 PM", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 16, color: MyStyles.maybeCyanColor)),
            ],
          ),

        ],
      ),
    );
  }
}

