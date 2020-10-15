import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({ this.calcHeight, this.calcWeight });

  final int calcHeight;
  final int calcWeight;

  double _bmi;
  String calculateBMI() {
    _bmi = calcWeight / pow(calcHeight/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Under weight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'You have a higher than average body weight. Try exercising more!';
    } else if (_bmi > 18.5) {
      return 'You have a average body weight. Good job!';
    } else {
      return 'You have a lower than average body weight. You should eat a bit more.';
    }
  } 
}