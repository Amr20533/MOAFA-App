import 'package:doctor/core/controllers/animation/welcome_animation_controller.dart';
import 'package:doctor/core/controllers/authentication/login_controller.dart';
import 'package:doctor/core/controllers/authentication/sign_up_controller.dart';
import 'package:doctor/core/controllers/doctor_controllers/appointment_controller.dart';
import 'package:doctor/core/controllers/doctor_controllers/patients_controller.dart';
import 'package:doctor/core/controllers/doctor_controllers/availability_controller.dart';
import 'package:doctor/core/controllers/doctor_controllers/doctor_profile_controller.dart';
import 'package:doctor/core/controllers/main/main_view_controller.dart';
import 'package:doctor/core/controllers/user_controllers/pill_controller.dart';
import 'package:doctor/core/controllers/user_controllers/request_appointment_controller.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    // Get.put(WelcomeAnimationController());
    Get.lazyPut<WelcomeAnimationController>(() => WelcomeAnimationController());
    Get.lazyPut<MainViewController>(() => MainViewController());
    Get.lazyPut<AvailabilityController>(() => AvailabilityController());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<SignUpController>(() => SignUpController());
    Get.lazyPut<PillController>(() => PillController());
    Get.lazyPut<RequestAppointmentController>(() => RequestAppointmentController());
    Get.lazyPut<AppointmentController>(() => AppointmentController());
    Get.lazyPut<PatientsController>(() => PatientsController());
    Get.lazyPut<DoctorProfileController>(() => DoctorProfileController());
  }
}