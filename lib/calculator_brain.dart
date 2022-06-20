import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({required this.height, required this.weight});

  String calculateBmi() {
    double bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(2);
  }
}
