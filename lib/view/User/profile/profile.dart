import 'package:doctor/components/doctor/patients/patient_info_header.dart';
import 'package:doctor/components/profile/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          spacing: 20.h,
          children: [
           PatientInfoHeader(isUser: true,),

            MenuItem(onTap: (){}, title: "Appointments"),
            MenuItem(onTap: (){}, title: "Medical History"),
            MenuItem(onTap: (){}, title: "Medications"),
            MenuItem(onTap: (){}, title: "Family"),
          ],
        ),
      ),
    );
  }
}
