import 'package:doctor/utils/data/governorate_data.dart';
import 'package:doctor/utils/data/places_data.dart';
import 'package:get/get.dart';

class RequestAppointmentController extends GetxController with GetSingleTickerProviderStateMixin  {

  final RxInt _selectedService = 0.obs;

  RxInt get selectedService => _selectedService;

  set setSelectedService(int newIndex){
    _selectedService.value = newIndex;
  }


  RxInt _selectedPeriod = 0.obs;

  RxInt get selectedPeriod => _selectedPeriod;

  set setSelectedPeriod(int newIndex){
    _selectedPeriod.value = newIndex;
  }

  final RxString _selectedGovernorate = governoratesData[0].obs;

  RxString get selectedGovernorate => _selectedGovernorate;

  set setSelectedGovernorate(String newValue){
    _selectedGovernorate.value = newValue;
  }

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


  @override
  void onInit() {
    super.onInit();
  }
}