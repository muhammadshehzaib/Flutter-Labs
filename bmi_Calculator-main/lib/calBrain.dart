import 'dart:math';

class CalculatorBrain {
  int height;
  int weight;

  double _bmi = 0;

  CalculatorBrain(this.height, this.weight);

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5 || _bmi < 25) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight.';
    } else if (_bmi >= 18.5 || _bmi < 25) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight.';
    }
  }
}
