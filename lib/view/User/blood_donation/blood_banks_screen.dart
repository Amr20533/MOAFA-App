import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor/components/reusable/default_details_header.dart';
import 'package:doctor/components/reusable/default_network_image.dart';
import 'package:doctor/utils/static/app_icons.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class BloodBanksScreen extends StatelessWidget {
  const BloodBanksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20.h,
            children: [
              DefaultDetailsHeader(title: 'Blood Banks'),
              Expanded(
                child: ListView.separated(
                  itemCount: 8,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.only(bottom: 18.h,),
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28.w),
                    child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 110.h,
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.sp),
                            color: MyStyles.cyanColor,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 10.w,
                            children: [
                              Container(
                                width: 90.w,
                                height: 90.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.sp),
                                  color: MyStyles.maybeCyanColor
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.sp),
                                  child: DefaultNetworkImage(imageUrl: "https://images.unsplash.com/photo-1583912086096-8c60d75a53f9?q=80&w=2074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: 6.h,
                                  children: [
                                    Text("Greek Blood Bank", style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 20.sp, color: MyStyles.whiteColor),),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      spacing: 4.w,
                                      children: [
                                        Icon(AppIcons.location_on, color: MyStyles.maybeCyanColor, size: 16.sp,),
                                        SizedBox(
                                            width: 190.w,
                                            child: Text("Cairo", style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 16.sp, color: MyStyles.maybeCyanColor),)),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomEnd,
                          child: Container(
                            width: 120.w,
                            height: 25.h,
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(10.sp),bottomEnd: Radius.circular(10.sp),),
                              color: MyStyles.maybeCyanColor,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(AppIcons.star, color: Colors.white ,size: 12.sp,),
                                Text("4.8 (1.3k+Review)", style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 12.sp, color: MyStyles.whiteColor),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  separatorBuilder: (context, _) => SizedBox(height: 18.h,),
                ),
              )
            ],
          )
      ),
    );
  }
}
