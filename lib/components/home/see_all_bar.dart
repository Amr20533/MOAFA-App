import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeeAllBar extends StatelessWidget {
  const SeeAllBar({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          GestureDetector(
            onTap: (){},
            child: Text(
              'See All',
              style: MyStyles.bold12(MyStyles.maybeCyanColor),
            ),
          )
        ],
      ),
    );
  }
}
