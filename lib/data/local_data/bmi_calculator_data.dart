import 'dart:math' as math;

class BmiCalculator{
  static calculateBmi(double weight, double height) {
    final bmiResponse = weight / math.pow(height / 100, 2);
    return bmiResponse;
}


static String bmiResult(double bmiResponse) {
    if (bmiResponse >= 25) {
      return 'Лишний вес';
    } else if (bmiResponse > 18.5) {
      return 'Норма';
    } else {
      return 'Низкий вес';
    }
  }

  static String getDescroption(double bmiResponse) {
    return bmiResponse >= 25
        ? 'Ваш вес тела выше нормала,старайтесь больше тренироваться.\n 💪🚵🚴🏊🏇🏃'
        : bmiResponse > 18.5
            ? 'Ваш вес в норме. Отлична!'
            : 'Вес вашего тела ниже нормы. Вы можете съесть немного больше.';
  }
}