import 'package:doctor/components/home/category_item_builder.dart';
import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';

class VitalScreen extends StatelessWidget {
  VitalScreen({super.key});

  final List<Map<String?, String?>> theCategoriesData = [
    {'name': 'Hospitals', 'image': 'assets/Asset 16@10x.png'},
    {'name': 'Blood Donation', 'image': 'assets/Asset 17@10x.png'},
    {'name': 'Clinics', 'image': 'assets/Asset 28@10x.png'},
    {'name': 'Radiology Centers', 'image': 'assets/Asset 27@10x.png'},
    {'name': 'Laboratories', 'image': 'assets/Asset 30@10x.png'},
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        // Header Section
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: MyStyles.cyanColor,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // profile pic
                  CircleAvatar(
                    radius: screenWidth * 0.05,
                    child: ClipOval(
                      child: Image.asset("assets/Asset 11@10x.png"),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  // Greeting + name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good Morning,",
                          style: MyStyles.light16(MyStyles.grey)),
                      Text("Mahmoud",
                          style: MyStyles.bold16(MyStyles.blackColor)),
                    ],
                  ),
                  const Spacer(),
                  // the location
                  Text(
                    'Cairo, Egypt',
                    style: MyStyles.bold14(MyStyles.maybeCyanColor),
                  ),
                  SizedBox(width: screenWidth * 0.01),

                  Icon(
                    Icons.location_pin,
                    color: MyStyles.maybeCyanColor,
                    size: 18,
                  )
                ],
              ),
            ],
          ),
        ),

        // The Upcoming appointment part

        Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              // the title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming Appointment',
                    style: MyStyles.bold18(MyStyles.blackColor),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: MyStyles.bold12(MyStyles.maybeCyanColor),
                      ))
                ],
              ),
              SizedBox(
                height: screenWidth * 0.03,
              ),
              // the card
              Container(
                height: screenHeight * 0.20,
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    color: MyStyles.cyanColor,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: [
                    // top part
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: MyStyles.maybeCyanColor,
                          radius: screenWidth * 0.04,
                        ),
                        SizedBox(
                          width: screenWidth * 0.02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Alfa Labs',
                              style: MyStyles.bold14(MyStyles.blackColor),
                            ),
                            Text(
                              'Blood Test',
                              style:
                              MyStyles.semiLight10(MyStyles.blackColor),
                            )
                          ],
                        ),
                        const Spacer(),
                        CircleAvatar(
                          backgroundColor: MyStyles.maybeCyanColor,
                          radius: screenWidth * 0.03,
                          child: Icon(
                            Icons.call,
                            color: MyStyles.whiteColor,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.04,
                    ),
                    Container(
                      height: screenHeight * 0.06,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: MyStyles.maybeCyanColor),
                      child: Row(
                        children: [
                          const Spacer(),
                          Icon(
                            Icons.calendar_month,
                            color: MyStyles.whiteColor,
                          ),
                          SizedBox(
                            width: screenWidth * 0.01,
                          ),
                          Text(
                            'Monday, 31 November',
                            style: MyStyles.bold12(MyStyles.whiteColor),
                          ),
                          const Spacer(),
                          Container(
                            width: 3,
                            color: MyStyles.whiteColor,
                            margin: EdgeInsets.symmetric(vertical: 8),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.access_time_filled,
                            color: MyStyles.whiteColor,
                          ),
                          SizedBox(
                            width: screenWidth * 0.01,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '09:00',
                                style: MyStyles.bold16(MyStyles.whiteColor),
                              ),
                              Text(
                                ' PM',
                                style: MyStyles.bold8(MyStyles.whiteColor),
                              )
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),

        // Categories Section
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 16.0, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Categories", style: MyStyles.bold18(MyStyles.blackColor)),
              SizedBox(height: 15),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: SizedBox(
              //     height: screenHeight * 0.15,
              //     child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //         children: List.generate(
              //             theCategoriesData.length,
              //                 (index) => categoryItemBuilder(
              //                 title:theCategoriesData[index]['name']!,
              //                 icon: theCategoriesData[index]['image']!))),
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
