import 'package:bmi_calculator/utils/form_enum.dart';
import 'package:bmi_calculator/utils/screen_arguments.dart';
import 'package:bmi_calculator/widgets/button_widget.dart';
import 'package:bmi_calculator/widgets/content_card.dart';
import 'package:bmi_calculator/widgets/gender_content.dart';
import 'package:bmi_calculator/widgets/height_content.dart';
import 'package:bmi_calculator/widgets/routes.dart';
import 'package:bmi_calculator/widgets/weight_age_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BodyCalculator extends StatefulWidget {
  final ValueNotifier<bool> darkMode;
  BodyCalculator({
    this.darkMode,
  });

  @override
  _BodyCalculatorState createState() => _BodyCalculatorState();
}

class _BodyCalculatorState extends State<BodyCalculator> {
  GenderEnum genderSelected;
  double height = 180;
  int weight = 55;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.darkMode,
      builder: (
        BuildContext context,
        bool darkMode,
        Widget child,
      ) {
        return Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ContentCard(
                      darkMode: darkMode,
                      opacity: genderSelected == GenderEnum.male ? 0.5 : 1,
                      onSelected: () => setState(
                        () {
                          genderSelected = GenderEnum.male;
                        },
                      ),
                      childWidget: ContentGender(
                        icon: FontAwesomeIcons.mars,
                        title: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ContentCard(
                      darkMode: darkMode,
                      opacity: genderSelected == GenderEnum.female ? 0.5 : 1,
                      onSelected: () => setState(
                        () {
                          genderSelected = GenderEnum.female;
                        },
                      ),
                      childWidget: ContentGender(
                        icon: FontAwesomeIcons.venus,
                        title: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ContentCard(
                darkMode: darkMode,
                childWidget: ContentHeight(
                  icon: FontAwesomeIcons.mars,
                  title: 'HEIGHT',
                  height: height,
                  onSlider: (double newValue) {
                    setState(() {
                      height = newValue.roundToDouble();
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ContentCard(
                      darkMode: darkMode,
                      childWidget: ContentWeightAge(
                        title: 'WEIGHT',
                        number: weight,
                        darkMode: darkMode,
                        increase: () {
                          setState(() {
                            weight++;
                          });
                        },
                        decrease: () {
                          setState(() {
                            weight--;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: ContentCard(
                      darkMode: darkMode,
                      childWidget: ContentWeightAge(
                        title: 'AGE',
                        number: age,
                        darkMode: darkMode,
                        increase: () {
                          setState(() {
                            age++;
                          });
                        },
                        decrease: () {
                          setState(() {
                            age--;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ButtonWidget(
              title: 'CALCULATE',
              onNavigate: () => Navigator.of(context).pushNamed(
                RouteList.result,
                arguments: ResultScreenArguments(
                  result: BMIResultEnum.normal,
                  rate: 26.8,
                  caption1: 'Test',
                  caption2: 'test',
                  darkMode: darkMode,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
