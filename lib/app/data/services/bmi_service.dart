import 'dart:math';

class BmiService {
  static double bmiCalculate({double? height, int? weight}) {
    final bmiJoop = weight! / pow(height! / 100, 2);
    return bmiJoop;
  }

  static String? bmiResult(double bmiJoop) {
    if (bmiJoop >= 25) {
      return 'Семиз';
    } else if (bmiJoop > 18.5) {
      return 'Норма';
    } else if (bmiJoop < 18.5) {
      return 'Арык';
    }
    return null;
  }

  static String? giveDescription(double bmiJoop) {
    if (bmiJoop >= 25) {
      return 'Код жазып отура бербей кыймылдаңыз';
    } else if (bmiJoop > 18.5) {
      return 'Норма эле экенсиз код жазуудан баш көтөрбөң';
    } else if (bmiJoop < 18.5) {
      return 'Семириңиз!';
    }
    return null;
  }
}
