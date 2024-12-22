import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultTitle extends StatelessWidget {
  const DefaultTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.w),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 18.sp),
      ),
    );
  }
}
