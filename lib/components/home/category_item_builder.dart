import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';

Widget categoryItemBuilder(String name, String image) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 5.0),
        child: CircleAvatar(
          minRadius: 30,
          backgroundColor: MyStyles.cyanColor,
          child: Image.asset(
            image,
            scale: 2.5,
          ),
        ),
      ),
      Text(
        name,
        style: MyStyles.smallItemColor(MyStyles.blackColor),
      ),
    ],
  );
}
