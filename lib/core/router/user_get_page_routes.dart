import 'package:doctor/utils/static/app_routes.dart';
import 'package:doctor/view/User/authentication/login.dart';
import 'package:doctor/view/User/home.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? userGetPageRoutes = [
  GetPage(name: AppRoutes.userHomePage, page: () => HomeScreen()),
  GetPage(name: AppRoutes.userLogin, page: () => LogInScreen()),

];