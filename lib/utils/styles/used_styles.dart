import 'package:flutter/material.dart';

class MyStyles {
  static final Color blueColor = Color(0xff3058a6);
  static final Color deepBlueColor = Color(0xFF32519D);
  static final Color lightMaybeCyanColor = Color(0xFF88B6FF);
  static final Color blackColor = Color(0xff0b0d0e);
  static final Color whiteColor = Colors.white;
  static final Color cyanColor = Color(0xffcce3ff);
  static final Color maybeCyanColor = Color(0xff5689d6);
  static final Color grey = Color(0xff687483);
  static final Color secGrey = Color(0xFF9A9A9C);
  static final Color red = Color(0xFFFF0000);
  static final Color secLightGrey = Color(0xFFF7F7F7);
  static final Color greyTextColor = Color(0xFFF7F7F80);
  static final Color bioTextColor = Color(0xFFD0D1D3);
  static final Color infoTileColor = Color(0xFFF5FAFF);
  static final Color lightBlue = Colors.lightBlueAccent;
  static final Color Lightgrey = Color(0xfff5F6F9);

  static TextStyle headersize(Color c) =>
      TextStyle(fontSize: 32, color: c, fontWeight: FontWeight.bold);
  static TextStyle notessize(Color c) => TextStyle(color: c, fontSize: 18);
  static TextStyle Datasize(Color c) => TextStyle(fontSize: 20);

  static TextStyle semiLight10(Color c) =>
      TextStyle(fontSize: 10, color: c, fontWeight: FontWeight.w200);

  static TextStyle light16(Color c) =>
      TextStyle(fontSize: 16, color: c, fontWeight: FontWeight.w100);

  static TextStyle bold12(Color c) =>
      TextStyle(fontSize: 12, color: c, fontWeight: FontWeight.bold);

  static TextStyle bold8(Color c) =>
      TextStyle(fontSize: 8, color: c, fontWeight: FontWeight.bold);

  static TextStyle bold14(Color c) =>
      TextStyle(fontSize: 14, color: c, fontWeight: FontWeight.bold);

  static TextStyle bold16(Color c) =>
      TextStyle(fontSize: 16, color: c, fontWeight: FontWeight.bold);

  static TextStyle light18(Color c) =>
      TextStyle(fontSize: 18, color: c, fontWeight: FontWeight.w100);

  static TextStyle bold18(Color c) =>
      TextStyle(fontSize: 18, color: c, fontWeight: FontWeight.bold);

  static TextStyle socialsize(Color c) => TextStyle(
        fontSize: 16,
        color: c,
      );
  static TextStyle smallItemColor(Color c) => TextStyle(
        fontSize: 12,
        color: c,
      );
  static TextStyle buttonsize(Color c) => TextStyle(
        fontSize: 16,
        fontFamily: 'BarlowSemiCondensed',
        fontWeight: FontWeight.w400,
        color: c,
      );

  static TextStyle welcomeButtonSize(Color c) => TextStyle(
        fontSize: 24,
        fontFamily: 'BarlowSemiCondensed',
        fontWeight: FontWeight.w900,
        color: c,
      );

  ButtonStyle welcomeButtonsStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      minimumSize: const Size(0, 30.0),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255));


}

