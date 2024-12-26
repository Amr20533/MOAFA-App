import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PillController extends GetxController{

  late TextEditingController pillName;
  late TextEditingController notes;

  final RxString _selectedShape = "Tablets".obs;

  RxString get selectedShape => _selectedShape;

  set setSelectedShape(String newValue){
    _selectedShape.value = newValue;
  }

  final RxString _selectedFrequency = "Every Day".obs;

  RxString get selectedFrequency => _selectedFrequency;

  set setSelectedFrequency(String newValue){
    _selectedFrequency.value = newValue;
  }

  final RxString _selectedDuration = "1 Week".obs;

  RxString get selectedDuration => _selectedDuration;

  set setSelectedDuration(String newValue){
    _selectedDuration.value = newValue;
  }

  final RxBool _enabledAlarm = false.obs;

  RxBool get enabledAlarm => _enabledAlarm;

  set setAlarm(bool value){
    _enabledAlarm.value = value;
  }

  final RxInt _dosageNumber = 1.obs;

  RxInt get dosageNumber => _dosageNumber;

  void dosageNumberPLus() {
    _dosageNumber.value++;
  }
  void dosageNumberMinus() {
    if(_dosageNumber.value > 1){
      _dosageNumber.value--;
    }
  }

  final RxInt _timesPerDay = 1.obs;

  RxInt get timesPerDay => _timesPerDay;

  void timesPerDayPLus() {
    _timesPerDay.value++;
  }
  void timesPerDayMinus() {
    if(_timesPerDay.value > 1){
      _timesPerDay.value--;
    }
  }
  Rx<TimeOfDay> _selectedTime = TimeOfDay(hour: 13, minute: 00).obs;
  Rx<TimeOfDay> get selectedTime => _selectedTime;

  Future<void> pickTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime.value,
      cancelText: "Cancel",
      confirmText: "Confirm",

    );
    if (pickedTime != null) {
      _selectedTime.value = pickedTime;
    }
  }


  @override
  void onInit() {
    pillName = TextEditingController();
    notes = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    pillName.dispose();
    notes.dispose();
    super.dispose();
  }
}