import 'package:doctor/components/reusable/container.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:doctor/view/User/bloodseekers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BloodDonationScreen extends StatefulWidget {
  BloodDonationScreen({super.key});

  @override
  State<BloodDonationScreen> createState() => _BloodDonationScreenState();
}

class _BloodDonationScreenState extends State<BloodDonationScreen> {
  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height;
    final maxWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: MyStyles.whiteColor,
      appBar: AppBar(
        backgroundColor: MyStyles.maybeCyanColor,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text(
          'Blood Donation',
          style: MyStyles.headersize(MyStyles.blackColor),
        ),
      ),
      body: Column(
        children: [
          // Top Responsive Banner
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(16),
            height: maxHeight * 0.18,
            width: maxWidth,
            decoration: BoxDecoration(
              color: MyStyles.maybeCyanColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                // Responsive Text Section
                Expanded(
                  flex: 2,
                  child: Text(
                    'Donate Blood\nSave Lives',
                    style: TextStyle(
                      color: MyStyles.whiteColor,
                      fontSize: maxWidth * 0.06, // Adjusts font size
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Responsive Image Section
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'assets/Asset 37@10x.png', // Replace with your image asset
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          _menuItem(
            Image.asset("assets/Asset 38@10x.png"),
            "Donate",
            maxHeight,
            maxWidth,
          ),
          _menuItem(
            Image.asset("assets/Asset 39@10x.png"),
            "Blood Bank",
            maxHeight,
            maxWidth,
          ),
          _menuItem(
            Image.asset("assets/Asset 40@10x.png"),
            "Request Blood",
            maxHeight,
            maxWidth,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Blood Seekers",
                style: MyStyles.headersize(MyStyles.blackColor),
              ),
              TextButton(
                onPressed: () {
                  Get.to(BloodSeekersScreen());
                },
                child: Text(
                  "See All",
                  style: MyStyles.notessize(MyStyles.blueColor),
                ),
              )
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          MyContainer(
              context: context,
              name: "Mahmoud Mostafa",
              location: "El",
              bloodType: "A+",
              onDonateTap: () {})
        ],
      ),
    );
  }

  Widget _menuItem(
      Image image, String title, double maxHeight, double maxWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        color: MyStyles.grey,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          height: maxHeight * 0.08,
          width: maxWidth,
          decoration: BoxDecoration(
            color: MyStyles.whiteColor, // Container background color
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: MyStyles.blueColor, // Background color for the icon
                borderRadius: BorderRadius.circular(10),
              ),
              child: image, // Display the passed image
            ),
            title: Text(
              title,
              style: MyStyles.Datasize(MyStyles.blackColor),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: MyStyles.blueColor,
              size: 22,
            ),
            onTap: () {
              // Add navigation or functionality here
            },
          ),
        ),
      ),
    );
  }
}
