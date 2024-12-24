import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppointmentController extends GetxController with GetSingleTickerProviderStateMixin  {
late TabController _tabController;

final RxInt _selectedFilter = 0.obs;

  RxInt get selectedFilter => _selectedFilter;

  set setSelectedFilter(int newIndex){
    _selectedFilter.value = newIndex;
  }


  @override
  void onInit() {
    _tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }
}