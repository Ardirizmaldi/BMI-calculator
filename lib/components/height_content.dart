import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/content_constant.dart';

class ContentHeight extends StatelessWidget {
  final IconData icon;
  final String title;
  final double height;
  final Function onSlider;
  const ContentHeight({
    Key key,
    this.icon,
    this.title,
    this.height,
    this.onSlider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: labelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              height.toString(),
              style: boldLabelTextStyle,
            ),
            Text(
              'cm',
              style: labelTextStyle,
            ),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbColor: Colors.red,
            activeTrackColor: Colors.white,
            overlayColor: Color(0x29EB1555),
            inactiveTrackColor: Colors.white54,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10),
          ),
          child: Slider(
            value: height,
            onChanged: onSlider,
            min: 120.0,
            max: 220.0,
          ),
        )
      ],
    );
  }
}
