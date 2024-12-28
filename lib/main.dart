import 'package:doctor/core/dependencies/app_bindings.dart';
import  'package:doctor/core/router/user_get_page_routes.dart';
import 'package:doctor/utils/styles/light_theme.dart';
import 'package:doctor/view/User/authentication/login.dart';
import 'package:doctor/view/User/blood_donation/blood_donation.dart';
import 'package:doctor/view/User/user_main_view.dart';
import 'package:doctor/view/User/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: MediaQuery.of(context).size,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'MOAFA App',
          theme: lightTheme,
          initialBinding: AppBindings(),
          getPages: userGetPageRoutes
          // home: LogInScreen(),
        );
      },
    );
  }
}
