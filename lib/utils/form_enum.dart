enum GenderEnum {
  male,
  female,
}

enum BMIResultEnum {
  obese,
  overweight,
  normal,
  uderweight,
  undefined,
}

class BMIResult {
  BMIResultEnum result;

  BMIResult({this.result});

  static const BMIResultEnum obese = BMIResultEnum.obese;
  static const BMIResultEnum overweight = BMIResultEnum.overweight;
  static const BMIResultEnum normal = BMIResultEnum.normal;
  static const BMIResultEnum underweight = BMIResultEnum.uderweight;
  static const BMIResultEnum undefined = BMIResultEnum.undefined;

  static const String obeseString = 'Obese';
  static const String overweightString = 'Overweight';
  static const String normalString = 'Normal';
  static const String underweightString = 'Uderweight';
  static const String undefinedString = '';

  static String getString(BMIResultEnum result) {
    switch (result) {
      case obese:
        return obeseString;
      case overweight:
        return overweightString;
      case normal:
        return normalString;
      case underweight:
        return underweightString;
      default:
        return undefinedString;
    }
  }
}
