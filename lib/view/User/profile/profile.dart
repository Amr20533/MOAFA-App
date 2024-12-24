import 'package:doctor/components/profile/info_card.dart';
import 'package:doctor/components/profile/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // Variable to track the switch state
  bool _isAvailableForDonate = true;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            _buildHeader(screenHeight, screenWidth),

            SizedBox(height: 20),

            // Vitals and Allergies Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: InfoCard(
                            title: "Vitals",
                            labels:["Weight", "Pulse"],
                            values:["70 KG", "70 BPM"],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: InfoCard(
                            title: "Allergies",
                            labels:["Peanut Allergy", "Perfume Allergy"],
                            values:["", ""],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Menu Items
            MenuItem(onTap: (){}, title: "Appointments"),
            MenuItem(onTap: (){}, title: "Medical History"),
            MenuItem(onTap: (){}, title: "Family"),
            MenuItem(onTap: (){}, title: "Medications"),

            SizedBox(height: 10),

            // Toggle Switch
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListTile(
                title: Text(
                  "Available for Donate",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Switch(
                  value: _isAvailableForDonate,
                  onChanged: (val) {
                    setState(() {
                      _isAvailableForDonate = val; // Update the switch state
                    });
                  },
                  activeColor: MyStyles.blueColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Header Section
  Widget _buildHeader(double screenHeight, double screenWidth) {
    return Container(
      height: screenHeight * 0.25,
      decoration: BoxDecoration(
        color: MyStyles.maybeCyanColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: screenHeight * 0.05,
            backgroundImage: AssetImage('assets/Doctor.png'),
          ),
          SizedBox(width: screenWidth * 0.05),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mahmoud Mostafa",
                style: MyStyles.Datasize(MyStyles.blackColor),
              ),
              SizedBox(height: 5),
              Text("23 Years Old",
                  style: MyStyles.notessize(MyStyles.blackColor)),
              SizedBox(height: 5),
              Text("Male", style: MyStyles.notessize(MyStyles.blackColor)),
              Text("Diabetes Patient",
                  style: MyStyles.notessize(MyStyles.blueColor)),
            ],
          ),
          Spacer(),
          Stack(
            alignment: Alignment.center,
            children: [
              Icon(Icons.water_drop, size: 70, color: MyStyles.blueColor),
              Text("A+", style: MyStyles.bold18(MyStyles.whiteColor)),
            ],
          ),
        ],
      ),
    );
  }

  // Reusable Card Widget

  // Menu Item Widget
}
