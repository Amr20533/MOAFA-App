import 'package:doctor/view/User/appointments/tab_views/completed_appointments.dart';
import 'package:doctor/view/User/appointments/tab_views/request_appointment.dart';
import 'package:doctor/view/User/appointments/tab_views/upcoming_appointments.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppointmentController extends GetxController with GetSingleTickerProviderStateMixin  {
  late TabController _tabController;

  TabController get tabController => _tabController;

  final List<String> tabs = ['Upcoming', 'Completed', 'Request'];
  final List<Widget> tabViews = [
    UpcomingAppointments(),
    CompletedAppointments(),
    RequestAppointment(),
  ];


  final RxInt _selectedFilter = 0.obs;

  RxInt get selectedFilter => _selectedFilter;

  set setSelectedFilter(int newIndex){
    _selectedFilter.value = newIndex;
  }


  @override
  void onInit() {
    _tabController = TabController(length: tabs.length, vsync: this);
    super.onInit();
  }
}