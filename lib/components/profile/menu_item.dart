import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MenuItem extends StatelessWidget {
  const MenuItem({super.key, required this.title, required this.onTap});
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Card(
        elevation: 0,
        color: MyStyles.infoTileColor,
        child: ListTile(
          onTap: onTap,
          // minTileHeight: 36.h,
          contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
          title: Text(title, style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 16.sp)),
          trailing: Icon(Icons.arrow_forward_ios, size: 14.sp,),
        ),
      ),
    );
  }
}
