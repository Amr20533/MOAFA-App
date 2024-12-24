import 'package:get/get.dart';

class PatientsController extends GetxController{

  final RxInt _selectedFilter = 0.obs;

  RxInt get selectedFilter => _selectedFilter;

  set setSelectedFilter(int newIndex){
    _selectedFilter.value = newIndex;
  }


  @override
  void onInit() {

    super.onInit();
  }
}