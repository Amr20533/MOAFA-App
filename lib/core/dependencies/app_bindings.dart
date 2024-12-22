import 'package:doctor/core/controllers/authentication/login_controller.dart';
import 'package:doctor/core/controllers/authentication/sign_up_controller.dart';
import 'package:doctor/core/controllers/doctor_controllers/appointments_controller.dart';
import 'package:doctor/core/controllers/doctor_controllers/availability_controller.dart';
import 'package:doctor/core/controllers/main/main_view_controller.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainViewController>(() => MainViewController());
    Get.lazyPut<AvailabilityController>(() => AvailabilityController());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<SignUpController>(() => SignUpController());
    Get.lazyPut<AppointmentsController>(() => AppointmentsController());
  }
}