import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';

class DefaultAuthButton extends StatelessWidget {
  const DefaultAuthButton({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(
            MediaQuery.of(context).size.width * 0.84,
            MediaQuery.of(context).size.height * 0.07
        ),
        backgroundColor: MyStyles.blueColor,
      ),
    );
  }
}
