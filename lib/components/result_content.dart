import 'package:bmi_calculator/screen/routes.dart';
import 'package:flutter/material.dart';

import 'package:bmi_calculator/utils/screen_arguments.dart';
import 'package:bmi_calculator/widgets/button_widget.dart';
import 'package:bmi_calculator/components/content_constant.dart';

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
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: boldLabelTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: args.darkMode ? Color(0xFF242425) : Colors.lightBlue,
                border: Border.all(
                  color: Colors.transparent,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    args.caption1,
                    style: resultTextStyle.copyWith(
                      color: args.colorResult,
                    ),
                  ),
                  Text(
                    args.rate,
                    style: resultNumberTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '${args.caption1} BMI range:',
                        style: labelTextStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          args.rangeInfoBMI,
                          style: labelTextStyle,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      args.caption2,
                      textAlign: TextAlign.center,
                      style: labelTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ButtonWidget(
            title: 'RE-CALCULATE',
            onNavigate: () => Navigator.of(context).pushReplacementNamed(
              RouteList.initial,
            ),
          ),
        ],
      ),
    );
  }
}
