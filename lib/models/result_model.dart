class ResultModel {
  //uuid required
  TestType testType;
  int? aptitudeScore;
  int? languageScore;
  int? memoryScore;
  int percentage;

  ResultModel({
    required this.testType,
    required this.aptitudeScore,
    required this.languageScore,
    required this.memoryScore,
    required this.percentage,
  });
}

enum TestType {
  language,
  aptitude,
  memory,
}
