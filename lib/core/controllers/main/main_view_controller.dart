import 'package:doctor/utils/static/app_icons.dart';
import 'package:doctor/view/Doctor/doctor_bottom_nav_view/doctor_appointment_screen.dart';
import 'package:doctor/view/Doctor/doctor_bottom_nav_view/doctor_availability_screen.dart';
import 'package:doctor/view/Doctor/doctor_bottom_nav_view/doctor_home_screen.dart';
import 'package:doctor/view/Doctor/doctor_bottom_nav_view/doctor_profile_screen.dart';
import 'package:doctor/view/User/add_pill.dart';
import 'package:doctor/view/User/profile.dart';
import 'package:doctor/view/User/reports.dart';
import 'package:doctor/view/User/vitals.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MainViewController extends GetxController{

  final RxInt _currentScreen = 0.obs;

  RxInt get currentScreen => _currentScreen;

  set setCurrentIndex(int newIndex){
    _currentScreen.value = newIndex;
  }

  final List<Widget> userViews = [
    VitalScreen(),
    AddPillScreen(),
    ReportsScreen(),
    ProfileScreen(),
  ];

  final List<Widget> doctorViews = [
    DoctorHomeScreen(),
    DoctorAppointmentScreen(),
    DoctorAvailabilityScreen(),
    DoctorProfileScreen(),
  ];

  final List<IconData> bottomIcons = [
    AppIcons.home,
    AppIcons.file_medical_alt,
    AppIcons.pulse,
    Icons.person,
  ];

 final List<IconData> doctorBottomIcons = [
    FontAwesomeIcons.house,
    AppIcons.calendar_alt,
    AppIcons.clock,
   // FontAwesomeIcons.solidClock,
   FontAwesomeIcons.solidUser,
  ];


  @override
  void onInit() {

    super.onInit();
  }
}