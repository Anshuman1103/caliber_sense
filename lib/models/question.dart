class Question {
  String questionText;
  List<String> options;
  int correctAnswerIndex;
  int marks;

  Question({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
    required this.marks,
  });
}
