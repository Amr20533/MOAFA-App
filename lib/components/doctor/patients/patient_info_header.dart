import 'package:doctor/components/doctor/patients/detected_disease.dart';
import 'package:doctor/components/doctor/patients/measured_personal_info.dart';
import 'package:doctor/components/reusable/default_call_button.dart';
import 'package:doctor/components/reusable/default_network_image.dart';
import 'package:doctor/utils/static/app_icons.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PatientInfoHeader extends StatelessWidget {
  const PatientInfoHeader({
    super.key, this.isUser = false,
  });
  final bool isUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 255.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: MyStyles.cyanColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(22.w),
          bottomRight: Radius.circular(22.w),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16.h,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50.w,
                  height: 50.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: MyStyles.blueColor)
                  ),
                  child: ClipOval(child: DefaultNetworkImage(imageUrl:  'https://img.freepik.com/free-photo/portrait-professional-medical-worker-posing-picture-with-arms-folded_1098-19293.jpg?t=st=1734883262~exp=1734886862~hmac=b1e9accfacf247599423e037916b2eee90707b024cfddd5af7e196591105844f&w=740',)),

                ),
                SizedBox(width: 12.w),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mahmoud Mostafa", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 18.sp),),
                    Text("23 Years Old", style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16.sp),),
                  ],
                ),
                Spacer(),
                isUser ? Container() : DefaultCallButton(
                  onTap: (){},
                  circleSize: 20,
                  iconSize: 22,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MeasuredPersonalInfo(icon: AppIcons.weight, text: '70 KG',),
                MeasuredPersonalInfo(icon: AppIcons.ruler_vertical, text: '180 Cm',),
                MeasuredPersonalInfo(icon: AppIcons.droplet, text: 'A+',),
              ],
            ),
          ),
          Divider(height: 2.h, color: MyStyles.secLightGrey,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DetectedDisease(disease: 'Allergies', diseaseValue1: 'Nuts', diseaseValue2: 'Vitamin C',),
                DetectedDisease(disease: 'Intolerance', diseaseValue1: 'Lactose', diseaseValue2: 'Gluten',),
                DetectedDisease(disease: 'Diseases', diseaseValue1: 'Diabetes (1)', diseaseValue2: '',),
    ],
            ),
          )
        ],
      ),
    );
  }
}


