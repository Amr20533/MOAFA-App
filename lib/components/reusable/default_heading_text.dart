import 'package:flutter/material.dart';

class DefaultHeadingText extends StatelessWidget {
  const DefaultHeadingText({
    super.key, required this.heading,
  });
  final String heading;
  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
