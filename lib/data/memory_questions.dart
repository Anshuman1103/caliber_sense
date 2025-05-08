import 'package:caliber_sense/models/question.dart';

class MemoryQuestions {
  static final List<Question> questions = [
    // EASY LEVEL
    Question(
        questionText: 'What was the third number?',
        options: ['2', '7', '9', '5'],
        correctAnswerIndex: 2,
        marks: 1,
        category: QuestionCategory.memory,
        difficulty: DifficultyLevel.easy,
        image: 'assets/images/m1.png'),
    Question(
        questionText: 'Which was second?',
        options: ['Chair', 'Book', 'Phone', 'Apple'],
        correctAnswerIndex: 0,
        marks: 1,
        category: QuestionCategory.memory,
        difficulty: DifficultyLevel.easy,
        image: 'assets/images/m2.png'),
    Question(
        questionText: 'What was the third element?',
        options: ['E5', 'C3', 'A7', 'G1'],
        correctAnswerIndex: 0,
        marks: 3,
        category: QuestionCategory.memory,
        difficulty: DifficultyLevel.easy,
        image: 'assets/images/m3.png'),
    Question(
        questionText: 'Where was it parked?',
        options: [
          '2nd floor, A',
          '3rd floor, A',
          '3rd floor, B',
          '4th floor, B'
        ],
        correctAnswerIndex: 2,
        marks: 1,
        category: QuestionCategory.memory,
        difficulty: DifficultyLevel.easy,
        image: 'assets/images/m4.png'),
    Question(
        questionText: 'What was the second character?',
        options: ['4', 'X', 'B', '9'],
        correctAnswerIndex: 0,
        marks: 1,
        category: QuestionCategory.memory,
        difficulty: DifficultyLevel.easy,
        image: 'assets/images/m5.png'),

    // MEDIUM LEVEL
    Question(
        questionText: 'What was the fourth item?',
        options: ['Tree', 'Bottle', 'Spoon', 'Hat'],
        correctAnswerIndex: 1,
        marks: 2,
        category: QuestionCategory.memory,
        difficulty: DifficultyLevel.medium,
        image: 'assets/images/m6.png'),
    Question(
        questionText: 'What were the last three digits?',
        options: ['715', '294', '638', '157'],
        correctAnswerIndex: 0,
        marks: 2,
        category: QuestionCategory.memory,
        difficulty: DifficultyLevel.medium,
        image: 'assets/images/m7.png'),
    Question(
        questionText: 'Second yellow come at which place',
        options: ['4', '5', '1', '2'],
        correctAnswerIndex: 3,
        marks: 2,
        category: QuestionCategory.memory,
        difficulty: DifficultyLevel.medium,
        image: 'assets/images/m8.png'),
    Question(
        questionText: 'What was before "Bike"?',
        options: ['Pen', 'Clock', 'Fish', 'Mango'],
        correctAnswerIndex: 1,
        marks: 2,
        category: QuestionCategory.memory,
        difficulty: DifficultyLevel.medium,
        image: 'assets/images/m9.png'),
    Question(
        questionText: 'What’s next in the sequence?',
        options: ['14', '15', '16', '18'],
        correctAnswerIndex: 1,
        marks: 2,
        category: QuestionCategory.memory,
        difficulty: DifficultyLevel.medium,
        image: 'assets/images/m10.png'),

    // HARD LEVEL
    Question(
        questionText: 'Which color appeared most frequently?',
        options: ['Red', 'Blue', 'Green', 'Yellow'],
        correctAnswerIndex: 1,
        marks: 3,
        category: QuestionCategory.memory,
        difficulty: DifficultyLevel.hard,
        image: 'assets/images/m11.png'),
    Question(
        questionText: 'What was the third element?',
        options: ['E5', 'C3', 'A7', 'G1'],
        correctAnswerIndex: 0,
        marks: 3,
        category: QuestionCategory.memory,
        difficulty: DifficultyLevel.hard,
        image: 'assets/images/m12.png'),
    Question(
        questionText: 'On which place odd emoji was present?',
        options: ['1', '0', '4', '3'],
        correctAnswerIndex: 3,
        marks: 3,
        category: QuestionCategory.memory,
        difficulty: DifficultyLevel.hard,
        image: 'assets/images/m13.png'),
    Question(
        questionText: 'What color of fourth heart?',
        options: ['pink', 'orange', 'green', 'blue'],
        correctAnswerIndex: 1,
        marks: 1,
        category: QuestionCategory.memory,
        difficulty: DifficultyLevel.hard,
        image: 'assets/images/m14.png'),
    Question(
        questionText: 'What was the color of 7?',
        options: ['yellow', 'black', 'blue', 'green'],
        correctAnswerIndex: 4,
        marks: 3,
        category: QuestionCategory.memory,
        difficulty: DifficultyLevel.hard,
        image: 'assets/images/m15.png'),
  ];
}
