import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar defaultDetailsAppBar(BuildContext context, {required String title}){
  return AppBar(
    leading: IconButton(
      onPressed: () => Get.back(),
      icon: Icon(Icons.arrow_back_ios, color: MyStyles.blackColor,),
    ),
    backgroundColor: MyStyles.cyanColor,
    title: Text(title, style: Theme.of(context).textTheme.titleLarge,),
  );
}
