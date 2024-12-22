import 'package:doctor/core/dependencies/app_bindings.dart';
import 'package:doctor/utils/static/app_routes.dart';
import 'package:doctor/view/Doctor/authentication/doctor_login.dart';
import 'package:doctor/view/Doctor/authentication/doctor_signup.dart';
import 'package:doctor/view/Doctor/doctor_main_view.dart';
import 'package:doctor/view/User/add_pill.dart';
import 'package:doctor/view/User/authentication/login.dart';
import 'package:doctor/view/User/home.dart';
import 'package:get/get.dart';

import '../../view/User/authentication/signup.dart';
import '../../view/start/welcome.dart';

List<GetPage<dynamic>>? userGetPageRoutes = [
  GetPage(name: AppRoutes.welcome, page: () => WelcomeScreen(),
  binding: AppBindings(),
  ),
  GetPage(name: AppRoutes.userHomePage, page: () => HomeScreen()),
  GetPage(name: AppRoutes.userLogin, page: () => LogInScreen()),
  GetPage(name: AppRoutes.userSignup, page: () => SingUpScreen()),
  GetPage(name: AppRoutes.addPill, page: () => AddPillScreen()),

  GetPage(name: AppRoutes.doctorLogin, page: () => DoctorLoginScreen()),
  GetPage(name: AppRoutes.doctorSignup, page: () => DoctorSingUpScreen()),
  GetPage(name: AppRoutes.doctorMainView, page: () => DoctorMainView()),

];