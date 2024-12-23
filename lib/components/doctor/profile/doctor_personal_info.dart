import 'package:doctor/utils/styles/used_styles.dart';
import 'package:flutter/material.dart';
import 'package:doctor/components/authentication/sign_out_button.dart';

class DoctorPersonalInfo extends StatelessWidget {
  const DoctorPersonalInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Mahmoud Mostafa", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20),),
            Text("Heart Surgeon", style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 14, color: MyStyles.bioTextColor)),
          ],
        ),
        SignOutButton(),
      ],
    );
  }
}
