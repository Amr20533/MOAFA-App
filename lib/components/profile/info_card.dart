import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.title, required this.labels, required this.values});
  final String title;
  final List<String> labels;
  final List<String> values;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(title, style: MyStyles.Datasize(MyStyles.blackColor)),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
            SizedBox(height: 10),
            ...List.generate(
              labels.length,
                  (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(labels[index]),
                    Text(
                      values[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

