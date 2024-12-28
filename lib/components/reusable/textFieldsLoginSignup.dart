import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultTextFormField extends StatelessWidget {
  const DefaultTextFormField({super.key,
    required this.label,
    this.suffixIcon,
    this.secure = false,
    required this.keyboardType,
    required this.controller,
    this.onChanged
  });

  final String label;
  final Widget? suffixIcon;
  final bool secure;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53.h,
      padding: EdgeInsets.symmetric(horizontal: 28.w,),
      child: TextFormField(
        controller: controller ,
        obscureText: secure,
        cursorColor: MyStyles.blueColor,
        style: Theme.of(context).textTheme.titleSmall,
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
        onChanged: onChanged,
        keyboardType: keyboardType,
      ),
    );
  }
}
