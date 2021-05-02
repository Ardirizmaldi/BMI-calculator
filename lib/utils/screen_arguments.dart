import 'package:bmi_calculator/utils/form_enum.dart';

class ResultScreenArguments {
  final BMIResultEnum result;
  final double rate;
  final String caption1;
  final String caption2;
  final bool darkMode;

  ResultScreenArguments({
    this.result,
    this.rate,
    this.caption1,
    this.caption2,
    this.darkMode,
  });
}
