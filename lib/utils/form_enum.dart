enum GenderEnum {
  male,
  female,
}

enum BMIResultEnum {
  overweight,
  normal,
  undefined,
}

class BMIResult {
  BMIResultEnum result;

  BMIResult({this.result});

  static const BMIResultEnum overweight = BMIResultEnum.overweight;
  static const BMIResultEnum normal = BMIResultEnum.normal;
  static const BMIResultEnum undefined = BMIResultEnum.undefined;

  static const String overweightString = 'OVERWEIGHT';
  static const String normalString = 'NORMAL';
  static const String undefinedString = '';

  static String getString(BMIResultEnum result) {
    switch (result) {
      case overweight:
        return overweightString;
      case normal:
        return normalString;
      default:
        return undefinedString;
    }
  }

  static BMIResultEnum getEnum(String response) {
    switch (response) {
      case overweightString:
        return overweight;
      case normalString:
        return normal;
      default:
        return undefined;
    }
  }
}
