import 'package:doctor/components/home/see_all_bar.dart';
import 'package:doctor/components/user/blood_donation/blood_seelers_card.dart';
import 'package:doctor/components/reusable/default_details_header.dart';
import 'package:doctor/components/user/blood_donation/blood_service_tile.dart';
import 'package:doctor/components/user/blood_donation/donate_blood_header.dart';
import 'package:doctor/utils/static/app_icons.dart';
import 'package:doctor/utils/static/app_routes.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BloodDonationScreen extends StatefulWidget {
  BloodDonationScreen({super.key});

  @override
  State<BloodDonationScreen> createState() => _BloodDonationScreenState();
}

class _BloodDonationScreenState extends State<BloodDonationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyStyles.whiteColor,
      body: SafeArea(
        child: Column(
          spacing: 20.h,
          children: [
            DefaultDetailsHeader(title: 'Blood Donation'),
            DonateBloodHeader(),
            BloodServiceTile(
              onTap: () {

              },
              title: "Donate",
              icon: FontAwesomeIcons.handHoldingDroplet,
            ),
            BloodServiceTile(
              onTap: () {
                Get.toNamed(AppRoutes.bloodBanks);
              },
              title: "Blood Banks",
              icon: AppIcons.car,
            ),
            BloodServiceTile(
              onTap: () {
                Get.toNamed(AppRoutes.donationRequest);
              },
              title: "Request Blood",
              icon: AppIcons.blood,
            ),
            SeeAllBar(
              seeAllTap: (){
                Get.toNamed(AppRoutes.bloodSeekers);
              },
              title: "Blood Seekers",
            ),
            BloodSeekersCard(),
          ],
        ),
      ),
    );
  }

}
