class Question {
  String questionText;
  List<String> options;
  int correctAnswerIndex;
  int marks;
  QuestionCategory category;
  DifficultyLevel difficulty;
  String? image;

  Question({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
    required this.marks,
    required this.category,
    required this.difficulty,
    this.image,
  });
}

enum QuestionCategory {
  aptitude,
  language,
  memory,
}

enum DifficultyLevel {
  easy,
  medium,
  hard,
}
