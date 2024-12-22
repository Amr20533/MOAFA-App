import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetectedDisease extends StatelessWidget {
  const DetectedDisease({
    super.key, required this.disease, required this.diseaseValue1, required this.diseaseValue2,
  });
  final String disease;
  final String diseaseValue1;
  final String diseaseValue2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 3.h,
      children: [
        Text(disease, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: MyStyles.greyTextColor),),
        SizedBox(height: 3.h,),
        Text(diseaseValue1, style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 16.sp),),
        Text(diseaseValue2, style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 16.sp),),

      ],
    );
  }
}
