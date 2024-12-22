import 'package:get/get.dart';

class AvailabilityController extends GetxController{

  final RxBool _availabilityState = false.obs;

  RxBool get availabilityState => _availabilityState;

  set setAvailabilityState(bool newValue){
    _availabilityState.value = newValue;
  }

  final RxInt _currentDay = 0.obs;

  RxInt get currentDay => _currentDay;

  set setCurrentDay(int newIndex){
    _currentDay.value = newIndex;
  }

  
  @override
  void onInit() {

    super.onInit();
  }
}