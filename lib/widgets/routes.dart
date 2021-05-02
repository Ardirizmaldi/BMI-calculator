import 'package:bmi_calculator/widgets/result_content.dart';
import 'package:flutter/material.dart';

abstract class RouteList {
  static const String initial = '/';
  static const String result = '/result';
}

class BMIRoutes {
  static Map<String, WidgetBuilder> getAll() {
    return {
      RouteList.result: (context) => ResultScreen(),
    };
  }
}
