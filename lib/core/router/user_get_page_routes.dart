import 'package:doctor/core/controllers/animation/welcome_animation_controller.dart';
import 'package:doctor/core/controllers/authentication/login_controller.dart';
import 'package:doctor/core/controllers/authentication/sign_up_controller.dart';
import 'package:doctor/core/controllers/doctor_controllers/appointments_controller.dart';
import 'package:doctor/core/dependencies/app_bindings.dart';
import 'package:doctor/core/dependencies/doctor_app_bindings.dart';
import 'package:doctor/utils/static/app_routes.dart';
import 'package:doctor/view/Doctor/appointment/patient_details_screen.dart';
import 'package:doctor/view/Doctor/authentication/doctor_login.dart';
import 'package:doctor/view/Doctor/authentication/doctor_signup.dart';
import 'package:doctor/view/Doctor/doctor_main_view.dart';
import 'package:doctor/view/User/add_pill.dart';
import 'package:doctor/view/User/authentication/login.dart';
import 'package:doctor/view/User/home.dart';
import 'package:doctor/view/start/doctor_welcome_screen.dart';
import 'package:get/get.dart';

import '../../view/User/authentication/signup.dart';
import '../../view/start/user_welcome_screen.dart';

List<GetPage<dynamic>>? userGetPageRoutes = [
  GetPage(name: AppRoutes.userWelcome, page: () => UserWelcomeScreen(),
    binding: BindingsBuilder(() => Get.lazyReplace(() => WelcomeAnimationController())),
  ),
  GetPage(name: AppRoutes.userHomePage, page: () => HomeScreen()),
  GetPage(name: AppRoutes.userLogin, page: () => LogInScreen(),
    binding: BindingsBuilder(() => Get.lazyReplace(() => LoginController())),
  ),
  GetPage(name: AppRoutes.userSignup, page: () => SingUpScreen(),
    binding: BindingsBuilder(() => Get.lazyReplace(() => SignUpController())),
  ),
  GetPage(name: AppRoutes.addPill, page: () => AddPillScreen()),


  GetPage(name: AppRoutes.doctorWelcome, page: () => DoctorWelcomeScreen(),
    binding: BindingsBuilder(() => Get.lazyReplace(() => WelcomeAnimationController())),
  ),
  GetPage(name: AppRoutes.doctorLogin, page: () => DoctorLoginScreen(),
    binding: BindingsBuilder(() => Get.lazyReplace(() => LoginController())),
  ),
  GetPage(name: AppRoutes.doctorSignup, page: () => DoctorSingUpScreen(),
    binding: BindingsBuilder(() => Get.lazyReplace(() => SignUpController())),
  ),
  GetPage(name: AppRoutes.doctorMainView, page: () => DoctorMainView()),
  GetPage(name: AppRoutes.patientDetails, page: () => PatientDetailsScreen(),
  binding: BindingsBuilder(() => Get.lazyPut(()=> AppointmentsController()))
  ),

];