import 'package:doctor/utils/styles/used_styles.dart';
import 'package:doctor/view/User/add_pill.dart';
import 'package:doctor/view/User/profile.dart';
import 'package:doctor/view/User/reports.dart';
import 'package:doctor/view/User/vitals.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> views = [
    VitalScreen(),
    AddPillScreen(),
    ReportsScreen(),
    ProfileScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: views[currentIndex],

      // Bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        color: MyStyles.whiteColor,
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.paste_rounded),
              onPressed: () {
                setState(() {
                  currentIndex = 1;
                });
              },
            ),
            SizedBox(width: 40), // Spacer for the notch
            IconButton(
              icon: Icon(Icons.monitor_heart_outlined),
              onPressed: () {
                setState(() {
                  currentIndex = 2;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                setState(() {
                  currentIndex = 3;
                });
              },
            ),
          ],
        ),
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddPillScreen()));
        },
        backgroundColor: MyStyles.maybeCyanColor,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
