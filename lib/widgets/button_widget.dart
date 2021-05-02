import 'package:flutter/material.dart';
import 'package:bmi_calculator/widgets/content_constant.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final Function onNavigate;
  const ButtonWidget({
    Key key,
    this.title,
    this.onNavigate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onNavigate,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: largeButtonTextStyle,
          ),
        ),
        color: Colors.red,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.1,
      ),
    );
  }
}
