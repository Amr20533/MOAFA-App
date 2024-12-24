import 'package:doctor/components/reusable/default_details_header.dart';
import 'package:doctor/components/user/blood_donation/blood_seelers_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BloodSeekersScreen extends StatelessWidget {
  const BloodSeekersScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          spacing: 20.h,
          children: [
            DefaultDetailsHeader(title: 'Blood Seekers'),
            Expanded(child: ListView.separated(
              itemCount: 6,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(bottom: 18.h,),
              physics: ClampingScrollPhysics(),
              itemBuilder: (context, index) => BloodSeekersCard(),
              separatorBuilder: (context, _) => SizedBox(height: 18.h,),
            ))
          ],
        ),
      ),
    );
  }
}
