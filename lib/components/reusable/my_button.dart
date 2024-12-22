import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.onPressed, required this.style, required this.title});
  final VoidCallback onPressed;
  final ButtonStyle style;
  final String title;

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        style: style,
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: MyStyles.welcomeButtonSize(MyStyles.blueColor),
          ),
        ));
  }
}
