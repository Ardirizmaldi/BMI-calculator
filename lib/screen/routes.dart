import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/result_content.dart';

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
