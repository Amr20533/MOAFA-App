import 'package:doctor/components/reusable/default_network_image.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeHeader extends StatelessWidget {
  const CustomHomeHeader({
    super.key, required this.name,
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 94.h,
      alignment: Alignment.center,
      padding: EdgeInsetsDirectional.only(start: 25.w),
      decoration: BoxDecoration(
        color: MyStyles.cyanColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(22.w),
          bottomRight: Radius.circular(22.w),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50.w,
            height: 50.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: MyStyles.blueColor)
            ),
            child: DefaultNetworkImage(imageUrl:  'https://img.freepik.com/free-photo/portrait-professional-medical-worker-posing-picture-with-arms-folded_1098-19293.jpg?t=st=1734883262~exp=1734886862~hmac=b1e9accfacf247599423e037916b2eee90707b024cfddd5af7e196591105844f&w=740',),

          ),
          SizedBox(width: 12.w),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Good Morning,", style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 18)),
              Text(name, style: Theme.of(context).textTheme.titleLarge,),
            ],
          )
        ],
      ),
    );
  }
}
