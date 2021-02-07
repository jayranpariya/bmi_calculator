import 'dart:math';

import 'package:flutter/cupertino.dart';

class Bmicalculatorbrian {
  Bmicalculatorbrian({@required this.h, @required this.w});

  final double h;
  final int w;
  double _bmi;
  String calculateBMI() {
    _bmi = w / pow(h / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getdata() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'your BMI result is quite low ,you should eat more!';
    } else if (_bmi >= 18.5) {
      return 'you have a normal body weight , good job!';
    } else {
      return 'you have a lower than normal body weight. you can eat a bit more';
    }
  }
}
