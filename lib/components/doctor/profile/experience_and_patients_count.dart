import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExperienceAndPatientsBar extends StatelessWidget {
  const ExperienceAndPatientsBar({
    super.key, required this.yearsOfExperience, required this.patientsCount,
  });
  final int yearsOfExperience;
  final int patientsCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("+$yearsOfExperience Years", style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 20, color: MyStyles.maybeCyanColor),),
              Text("Experience", style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 20, color: MyStyles.maybeCyanColor),),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("+$patientsCount", style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 20, color: MyStyles.maybeCyanColor),),
              Text("Patients", style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 20, color: MyStyles.maybeCyanColor),),
            ],
          ),
        ],
      ),
    );
  }
}
