import 'package:flutter/material.dart';
import 'package:bmi_calculator/screen/routes.dart';
import 'package:bmi_calculator/widgets/skeleton_card.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  ValueNotifier<bool> _darkMode = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _darkMode,
      builder: (BuildContext context, bool darkMode, Widget child) {
        return MaterialApp(
          theme: darkMode ? ThemeData.dark() : ThemeData.light(),
          routes: BMIRoutes.getAll(),
          home: Scaffold(
            appBar: AppBar(
              title: Text('BMI CALCULATOR'),
              actions: [
                FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Icon(
                    darkMode ? Icons.nightlight_round : Icons.wb_sunny,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    _darkMode.value = !_darkMode.value;
                  },
                ),
              ],
            ),
            body: Center(
              child: BodyCalculator(
                darkMode: _darkMode,
              ),
            ),
          ),
        );
      },
    );
  }
}
