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

  final List<IconData> bottomIcons = [
    FontAwesomeIcons.house,
    Icons.paste_rounded,
    Icons.monitor_heart_outlined,
    FontAwesomeIcons.user,
  ];


  @override
  void onInit() {

    super.onInit();
  }
}