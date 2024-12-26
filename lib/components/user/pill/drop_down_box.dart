import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DropDownBox extends StatelessWidget {
  const DropDownBox({
    super.key,
    this.startMargin = 20,
    required this.value,
    required this.items,
    this.onChanged,
  });

  final String value;
  final double startMargin;
  final List<String> items;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: value,
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
        color: MyStyles.blackColor,
        fontSize: 16.sp,
      ),
      items: items
          .map(
            (item) => DropdownMenuItem(
          value: item,
          child: SizedBox(
            width: 85.w,
            child: Text(
              item,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: MyStyles.blackColor,
                fontSize: 16.sp,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      )
          .toList(),
      icon: Container(
        width: 21.w,
        height: 21.h,
        alignment: Alignment.center,
        margin: EdgeInsetsDirectional.only(start: startMargin.w),
        decoration: BoxDecoration(
          color: MyStyles.cyanColor,
          borderRadius: BorderRadius.circular(4.sp),
        ),
        child: Icon(
          FontAwesomeIcons.chevronDown,
          color: MyStyles.whiteColor,
          size: 14.sp,
        ),
      ),
      dropdownColor: Colors.white,
      underline: const SizedBox(),
      onChanged: onChanged,
    );
  }
}
