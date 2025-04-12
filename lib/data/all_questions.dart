import 'package:caliber_sense/models/question.dart';

class AllQuestions {
  static final List<Question> questions = [
    Question(
      questionText:
          'If the time is 4:20 PM now, what will be the time after 150 minutes?',
      options: ['6:10 PM', '7:30 PM', '6:50 PM', '8:00 PM'],
      correctAnswerIndex: 2,
      marks: 2,
      category: QuestionCategory.aptitude,
      difficulty: DifficultyLevel.medium,
    ),
    Question(
      questionText:
          'A boat covers 24 km upstream in 6 hours. What is the speed of the boat in still water if the speed of the stream is 2 km/hr?',
      options: ['5 km/hr', '6 km/hr', '7 km/hr', '4 km/hr'],
      correctAnswerIndex: 0,
      marks: 2,
      category: QuestionCategory.aptitude,
      difficulty: DifficultyLevel.medium,
    ),
    Question(
      questionText:
          'A sum of ₹5000 is invested at 10% per annum. What will be the compound interest at the end of 2 years?',
      options: ['₹1050', '₹1000', '₹1100', '₹1025'],
      correctAnswerIndex: 3,
      marks: 2,
      category: QuestionCategory.aptitude,
      difficulty: DifficultyLevel.medium,
    ),
    Question(
      questionText: 'What will be the average of the first 10 natural numbers?',
      options: ['5.0', '5.5', '6.0', '6.5'],
      correctAnswerIndex: 1,
      marks: 2,
      category: QuestionCategory.aptitude,
      difficulty: DifficultyLevel.medium,
    ),
    Question(
      questionText:
          'Train A crosses a pole in 15 seconds and Train B crosses the same pole in 20 seconds. What is the ratio of their speeds?',
      options: ['3:4', '4:3', '2:3', '1:2'],
      correctAnswerIndex: 0,
      marks: 2,
      category: QuestionCategory.aptitude,
      difficulty: DifficultyLevel.medium,
    ),
    // Question(
    //   questionText: 'If 3x + 2 = 17, what is the value of x?',
    //   options: ['5', '4', '3', '6'],
    //   correctAnswerIndex: 0,
    //   marks: 2,
    //   category: QuestionCategory.aptitude,
    //   difficulty: DifficultyLevel.medium,
    // ),
    // Question(
    //   questionText:
    //       'The perimeter of a rectangle is 60 cm. If the length is 20 cm, what is the breadth?',
    //   options: ['10 cm', '15 cm', '12 cm', '8 cm'],
    //   correctAnswerIndex: 1,
    //   marks: 2,
    //   category: QuestionCategory.aptitude,
    //   difficulty: DifficultyLevel.medium,
    // ),
    // Question(
    //   questionText:
    //       'If a man walks at 5 km/hr, he misses a train by 7 minutes. If he walks at 6 km/hr, he reaches the station 5 minutes early. What is the distance to the station?',
    //   options: ['6 km', '7 km', '5 km', '4 km'],
    //   correctAnswerIndex: 0,
    //   marks: 2,
    //   category: QuestionCategory.aptitude,
    //   difficulty: DifficultyLevel.medium,
    // ),
    // Question(
    //   questionText:
    //       'In a class, the average age of 30 students is 12 years. If the teacher’s age is added, the average becomes 13 years. What is the teacher’s age?',
    //   options: ['42', '44', '50', '48'],
    //   correctAnswerIndex: 3,
    //   marks: 2,
    //   category: QuestionCategory.aptitude,
    //   difficulty: DifficultyLevel.medium,
    // ),
    // Question(
    //   questionText:
    //       'A shopkeeper sells an article at a loss of 10%. If the cost price was ₹200, what was the selling price?',
    //   options: ['₹180', '₹190', '₹175', '₹170'],
    //   correctAnswerIndex: 0,
    //   marks: 2,
    //   category: QuestionCategory.aptitude,
    //   difficulty: DifficultyLevel.medium,
    // ),

    // Language Questions
    Question(
      questionText: 'Choose the correctly spelled word:',
      options: ['Recieve', 'Receive', 'Receeve', 'Recive'],
      correctAnswerIndex: 1,
      marks: 2,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.medium,
    ),
    Question(
      questionText:
          'Select the correct indirect speech: He said, "I am working on it."',
      options: [
        'He said that he was working on it.',
        'He said that he is working on it.',
        'He said he had been working on it.',
        'He said that he works on it.'
      ],
      correctAnswerIndex: 0,
      marks: 2,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.medium,
    ),
    Question(
      questionText: 'Choose the most suitable synonym for "benevolent":',
      options: ['Cruel', 'Generous', 'Hostile', 'Greedy'],
      correctAnswerIndex: 1,
      marks: 2,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.medium,
    ),
    Question(
      questionText: 'Identify the error: "She don’t like chocolate."',
      options: ['She', 'don’t', 'like', 'chocolate'],
      correctAnswerIndex: 1,
      marks: 2,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.medium,
    ),
    Question(
      questionText: 'Complete the sentence: If I ___ you, I would apologize.',
      options: ['was', 'am', 'were', 'be'],
      correctAnswerIndex: 2,
      marks: 2,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.medium,
    ),
    // Question(
    //   questionText: 'Choose the antonym of "reluctant":',
    //   options: ['Willing', 'Stubborn', 'Afraid', 'Doubtful'],
    //   correctAnswerIndex: 0,
    //   marks: 2,
    //   category: QuestionCategory.language,
    //   difficulty: DifficultyLevel.medium,
    // ),
    // Question(
    //   questionText: 'Fill in the blank: He was accused ___ cheating.',
    //   options: ['of', 'for', 'to', 'on'],
    //   correctAnswerIndex: 0,
    //   marks: 2,
    //   category: QuestionCategory.language,
    //   difficulty: DifficultyLevel.medium,
    // ),
    // Question(
    //   questionText: 'Choose the sentence with correct punctuation:',
    //   options: [
    //     'She said "I will be late."',
    //     'She said, "I will be late."',
    //     'She said I will be late.',
    //     'She said: "I will be late"'
    //   ],
    //   correctAnswerIndex: 1,
    //   marks: 2,
    //   category: QuestionCategory.language,
    //   difficulty: DifficultyLevel.medium,
    // ),
    // Question(
    //   questionText: 'What part of speech is the word "quickly"?',
    //   options: ['Noun', 'Verb', 'Adjective', 'Adverb'],
    //   correctAnswerIndex: 3,
    //   marks: 2,
    //   category: QuestionCategory.language,
    //   difficulty: DifficultyLevel.medium,
    // ),
    // Question(
    //   questionText: 'Which sentence is in passive voice?',
    //   options: [
    //     'The cat chased the mouse.',
    //     'She is baking a cake.',
    //     'The letter was written by John.',
    //     'They will finish the project soon.'
    //   ],
    //   correctAnswerIndex: 2,
    //   marks: 2,
    //   category: QuestionCategory.language,
    //   difficulty: DifficultyLevel.medium,
    // ),
  ];
}
