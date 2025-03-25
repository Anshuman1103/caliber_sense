class Question {
  String questionText;
  List<String> options;
  int correctAnswerIndex;
  int marks;
  QuestionCategory category;

  Question({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
    required this.marks,
    required this.category,
  });
}

enum QuestionCategory {
  aptitude,
  language,
  memory,
}
