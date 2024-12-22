import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';


class DefaultTextFormField extends StatelessWidget {
  const DefaultTextFormField({super.key,
    required this.label,
    this.suffixIcon,
    this.secure = false,
    required this.keyboardType,
    required this.controller
  });

  final String label;
  final Widget? suffixIcon;
  final bool secure;
  final TextInputType keyboardType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: TextFormField(
        controller: controller ,
        obscureText: secure,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: Theme.of(context).textTheme.titleSmall,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: MyStyles.blueColor),
          ),
          suffixIcon: suffixIcon ?? SizedBox(),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: MyStyles.blueColor),
          ),
        ),
        keyboardType: keyboardType,
      ),
    );
  }
}


Widget pillTextField(

  double screenWidth,
 String label
) {
  return TextFormField(
    decoration: InputDecoration(
      hintText: label,
      fillColor: Colors.grey[200],
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(screenWidth * 0.02),
      ),
    ),
  );
}
