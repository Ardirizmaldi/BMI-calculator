import 'package:flutter/material.dart';
import 'package:bmi_calculator/widgets/content_constant.dart';

class ContentWeightAge extends StatelessWidget {
  final IconData icon;
  final String title;
  final int number;
  final bool darkMode;
  final Function increase;
  final Function decrease;
  const ContentWeightAge({
    Key key,
    this.icon,
    this.title,
    this.number,
    this.darkMode,
    this.increase,
    this.decrease,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: labelTextStyle,
        ),
        Text(
          number.toString(),
          style: boldLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              mini: true,
              heroTag: null,
              foregroundColor: Colors.white,
              backgroundColor: darkMode ? Color(0xFF242425) : Colors.lightBlue,
              onPressed: increase,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            FloatingActionButton(
              mini: true,
              heroTag: null,
              foregroundColor: Colors.white,
              backgroundColor: darkMode ? Color(0xFF242425) : Colors.lightBlue,
              onPressed: decrease,
              child: Icon(
                Icons.remove,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
