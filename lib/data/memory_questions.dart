import 'package:caliber_sense/models/question.dart';

class AllQuestions {
  static final List<Question> questions = [
    Question(
      questionText: 'Remember this number: 47913. What was the third digit?',
      options: ['7', '9', '1', '3'],
      correctAnswerIndex: 1,
      marks: 1,
      category: QuestionCategory.memory,
      difficulty: DifficultyLevel.medium,
    ),

    Question(
      questionText:
          'You read: Dog, Pen, Chair, Apple. Which item was not on the list?',
      options: ['Pen', 'Chair', 'Apple', 'Table'],
      correctAnswerIndex: 3,
      marks: 1,
      category: QuestionCategory.memory,
      difficulty: DifficultyLevel.medium,
    ),

    Question(
      questionText:
          'What color was the second shape shown: [Red, Blue, Green, Yellow]?',
      options: ['Red', 'Blue', 'Green', 'Yellow'],
      correctAnswerIndex: 1,
      marks: 1,
      category: QuestionCategory.memory,
      difficulty: DifficultyLevel.medium,
    ),

    Question(
      questionText: 'Which number completes the pattern: 3, 6, 9, 12, __?',
      options: ['14', '16', '15', '13'],
      correctAnswerIndex: 2,
      marks: 1,
      category: QuestionCategory.memory,
      difficulty: DifficultyLevel.medium,
    ),

    Question(
      questionText: 'You see: Cat → Fish → Banana → Hat. What came after Fish?',
      options: ['Banana', 'Cat', 'Hat', 'Book'],
      correctAnswerIndex: 0,
      marks: 1,
      category: QuestionCategory.memory,
      difficulty: DifficultyLevel.medium,
    ),

    Question(
      questionText:
          'If you parked on Floor 3, Row B, Spot 27, what is the row?',
      options: ['A', 'B', 'C', 'D'],
      correctAnswerIndex: 1,
      marks: 1,
      category: QuestionCategory.memory,
      difficulty: DifficultyLevel.medium,
    ),

    Question(
      questionText: 'You read: Red-7, Green-3, Blue-9. What number was Blue?',
      options: ['3', '7', '9', '5'],
      correctAnswerIndex: 2,
      marks: 1,
      category: QuestionCategory.memory,
      difficulty: DifficultyLevel.medium,
    ),

    Question(
      questionText:
          'Which shape was NOT shown: Circle, Square, Triangle, Star?',
      options: ['Circle', 'Square', 'Star', 'Hexagon'],
      correctAnswerIndex: 3,
      marks: 1,
      category: QuestionCategory.memory,
      difficulty: DifficultyLevel.medium,
    ),

    Question(
      questionText:
          'You saw: Banana, Mango, Apple, Guava. What was the first fruit?',
      options: ['Mango', 'Banana', 'Guava', 'Apple'],
      correctAnswerIndex: 1,
      marks: 1,
      category: QuestionCategory.memory,
      difficulty: DifficultyLevel.medium,
    ),

    Question(
      questionText:
          'A person said: "My PIN is 4312." What is the second digit?',
      options: ['3', '4', '2', '1'],
      correctAnswerIndex: 0,
      marks: 1,
      category: QuestionCategory.memory,
      difficulty: DifficultyLevel.medium,
    ),

    //hard questions
    Question(
      questionText:
          'You saw the list: Orange, Bottle, Phone, Key, Book. What was the 4th item?',
      options: ['Book', 'Key', 'Phone', 'Bottle'],
      correctAnswerIndex: 1,
      marks: 3,
      category: QuestionCategory.memory,
      difficulty: DifficultyLevel.hard,
    ),

    Question(
      questionText: 'A code was shown: AB3F9K. What was the 5th character?',
      options: ['9', 'F', 'K', '3'],
      correctAnswerIndex: 0,
      marks: 3,
      category: QuestionCategory.memory,
      difficulty: DifficultyLevel.hard,
    ),

    Question(
      questionText:
          'You saw these shapes: Triangle, Square, Circle, Star, Hexagon. Which came after Square?',
      options: ['Star', 'Circle', 'Hexagon', 'Triangle'],
      correctAnswerIndex: 1,
      marks: 3,
      category: QuestionCategory.memory,
      difficulty: DifficultyLevel.hard,
    ),

    Question(
      questionText:
          'You visited: Shop, Bank, Mall, Hospital, Park. What was the third place?',
      options: ['Mall', 'Hospital', 'Bank', 'Shop'],
      correctAnswerIndex: 0,
      marks: 3,
      category: QuestionCategory.memory,
      difficulty: DifficultyLevel.hard,
    ),

    Question(
      questionText:
          'You were given a 4-digit number: 7193. What was the sum of the first and last digit?',
      options: ['8', '10', '9', '11'],
      correctAnswerIndex: 3,
      marks: 3,
      category: QuestionCategory.memory,
      difficulty: DifficultyLevel.hard,
    ),

    Question(
      questionText:
          'The order was: Lion, Apple, Plane, Drum, Fan. What is the position of "Drum"?',
      options: ['3rd', '4th', '2nd', '5th'],
      correctAnswerIndex: 1,
      marks: 3,
      category: QuestionCategory.memory,
      difficulty: DifficultyLevel.hard,
    ),

    Question(
      questionText:
          'A locker code was shown: 52B9L7. What characters were between 2 and L?',
      options: ['B9', '29', 'B97', '9L'],
      correctAnswerIndex: 0,
      marks: 3,
      category: QuestionCategory.memory,
      difficulty: DifficultyLevel.hard,
    ),

    Question(
      questionText:
          'A student was told this list: Red, 8, Mango, Train, 19. Which item was numeric and last in the list?',
      options: ['8', '19', 'Red', 'Train'],
      correctAnswerIndex: 1,
      marks: 3,
      category: QuestionCategory.memory,
      difficulty: DifficultyLevel.hard,
    ),

    Question(
      questionText:
          'You read the sequence: C, D, E, G, H. Which letter is missing to form a natural alphabetical order?',
      options: ['F', 'I', 'B', 'A'],
      correctAnswerIndex: 0,
      marks: 3,
      category: QuestionCategory.memory,
      difficulty: DifficultyLevel.hard,
    ),

    Question(
      questionText:
          'You saw: 🟢🔵🟥🟨🟣. What was the 2nd and 4th color in order?',
      options: ['🔵 and 🟨', '🟥 and 🟣', '🟣 and 🟥', '🟨 and 🔵'],
      correctAnswerIndex: 0,
      marks: 3,
      category: QuestionCategory.memory,
      difficulty: DifficultyLevel.hard,
    ),
  ];
}
