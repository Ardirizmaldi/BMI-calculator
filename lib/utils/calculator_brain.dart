import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  final double height;
  final double weight;

  CalculatorBrain({
    this.height,
    this.weight,
  });

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Uderweight';
    }
  }

  String getRangeBMI() {
    if (_bmi >= 30) {
      return '30.0 and Above';
    } else if (_bmi >= 25) {
      return '25.0—29.9';
    } else if (_bmi > 18.5) {
      return '18.5—24.9';
    } else {
      return 'Below 18.5';
    }
  }

  String getInterpolation() {
    if (_bmi >= 30) {
      return 'You have a hinger than overweight body weight. Try to exercise more and more.';
    } else if (_bmi >= 25) {
      return 'You have a hinger than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good Job.';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  MaterialColor getColorResult() {
    if (_bmi >= 30) {
      return Colors.red;
    } else if (_bmi >= 25) {
      return Colors.red;
    } else if (_bmi > 18.5) {
      return Colors.lightGreen;
    } else {
      return Colors.yellow;
    }
  }
}
