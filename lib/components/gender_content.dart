import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/content_constant.dart';

class ContentGender extends StatelessWidget {
  final IconData icon;
  final String title;
  const ContentGender({
    Key key,
    this.icon,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          title,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
