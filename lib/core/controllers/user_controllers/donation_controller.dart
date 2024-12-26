import 'package:doctor/utils/data/blood_types_data.dart';
import 'package:doctor/utils/data/governorate_data.dart';
import 'package:doctor/utils/data/places_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DonationController extends GetxController {

  late Rx<TextEditingController> notes;

  final RxString _selectedGovernorate = governoratesData[0].obs;

  RxString get selectedGovernorate => _selectedGovernorate;

  set setSelectedGovernorate(String newValue){
    _selectedGovernorate.value = newValue;
  }

  // List<String> get placesList {
  //   return placesData
  //       .where((place) => _selectedGovernorate.value == place['governorate'])
  //       .map((place) => place['place']!)
  //       .toSet()
  //       .toList();
  // }


  List<String> get placesList{

    return placesData.where(
            (place) => _selectedGovernorate.value == place['governorate']
    ).map((place) => place['place']!).toList();
  }

  final RxString _selectedPlace = "Select a place".obs;

  RxString get selectedPlace => _selectedPlace;

  set setSelectedPlace(String newValue){
    _selectedPlace.value = newValue;
  }

  final RxString _selectedBloodType = bloodTypesData[0].obs;

  RxString get selectedBloodType => _selectedBloodType;

  set setSelectedBloodType(String newValue){
    _selectedBloodType.value = newValue;
  }


  @override
  void onInit() {
    notes = TextEditingController().obs;
    super.onInit();
  }

  @override
  void dispose() {
    notes.value.dispose();
    super.dispose();
  }
}