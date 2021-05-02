import 'package:bmi_calculator/utils/form_enum.dart';
import 'package:bmi_calculator/utils/screen_arguments.dart';
import 'package:bmi_calculator/widgets/button_widget.dart';
import 'package:bmi_calculator/widgets/content_constant.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    final ResultScreenArguments args =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      backgroundColor:
          args.darkMode ? Color(0xFF1B1B1F) : ThemeData().primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(8),
              child: Text(
                'Your Result',
                style: boldLabelTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: args.darkMode ? Color(0xFF242425) : Colors.lightBlue,
                border: Border.all(
                  color: Colors.transparent,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'NORMAL',
                    style: labelTextStyle.copyWith(
                      color: Colors.green,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    args.rate.roundToDouble().toString(),
                    style: boldLabelTextStyle,
                  ),
                  Visibility(
                    visible: args.result == BMIResultEnum.normal,
                    child: Column(
                      children: [
                        Text(
                          'Normal BMI range:',
                          style: labelTextStyle,
                        ),
                        Text(
                          args.caption1,
                          style: labelTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    args.caption2,
                    style: labelTextStyle,
                  ),
                ],
              ),
            ),
          ),
          ButtonWidget(
            title: 'RE-CALCULATE',
            onNavigate: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
