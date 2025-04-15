import 'package:uuid/uuid.dart';

class ResultModel {
  String id;
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
  }) : id = const Uuid().v4();
}

enum TestType {
  language,
  aptitude,
  memory,
}
