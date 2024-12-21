import 'package:doctor/utils/static/app_routes.dart';
import 'package:doctor/view/User/authentication/login.dart';
import 'package:doctor/view/User/home.dart';
import 'package:get/get.dart';

import '../../view/User/authentication/signup.dart';
import '../../view/start/welcome.dart';

List<GetPage<dynamic>>? userGetPageRoutes = [
  GetPage(name: AppRoutes.welcome, page: () => WelcomeScreen()),
  GetPage(name: AppRoutes.userHomePage, page: () => HomeScreen()),
  GetPage(name: AppRoutes.userLogin, page: () => LogInScreen()),
  GetPage(name: AppRoutes.userSignup, page: () => SingUpScreen()),

];