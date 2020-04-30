import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You Have A Higher Than Normal Body Weight. Try To Exercise More..';
    } else if (_bmi > 18.5) {
      return 'You Have Normal Body Weight. Good Job..';
    } else {
      return 'You Have A Lower Than Normal Body Weight. You Must Eat A Bit More..';
    }
  }
}
