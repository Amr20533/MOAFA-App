import 'package:doctor/core/router/user_get_page_routes.dart';
import 'package:doctor/utils/styles/light_theme.dart';
import 'package:doctor/view/User/blooddonation.dart';
import 'package:doctor/view/User/home.dart';
import 'package:doctor/view/User/profile.dart';
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
          getPages: userGetPageRoutes,
        );
      },
    );
  }
}
