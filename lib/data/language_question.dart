import 'package:caliber_sense/models/question.dart';

class LanguageQuestion {
  static final List<Question> questions = [
    // Language Questions
    Question(
      questionText: 'Choose the correctly spelled word:',
      options: ['Acommodate', 'Accommodate', 'Acomodate', 'Acommmodate'],
      correctAnswerIndex: 1,
      marks: 1,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.easy,
    ),

    Question(
      questionText: 'Identify the synonym of the word "Rapid":',
      options: ['Slow', 'Quick', 'Calm', 'Heavy'],
      correctAnswerIndex: 1,
      marks: 1,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.easy,
    ),

    Question(
      questionText: 'Select the correct plural form of "Analysis":',
      options: ['Analysises', 'Analys', 'Analyses', 'Analysises'],
      correctAnswerIndex: 2,
      marks: 1,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.easy,
    ),

    Question(
      questionText:
          'Choose the correct form: “She ____ to the store yesterday.”',
      options: ['go', 'gone', 'went', 'going'],
      correctAnswerIndex: 2,
      marks: 1,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.easy,
    ),

    Question(
      questionText: 'Fill in the blank: “The sun ____ in the east.”',
      options: ['rise', 'rises', 'rose', 'raising'],
      correctAnswerIndex: 1,
      marks: 1,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.easy,
    ),

    Question(
      questionText: 'Find the antonym of “Generous”:',
      options: ['Kind', 'Selfish', 'Gentle', 'Helpful'],
      correctAnswerIndex: 1,
      marks: 1,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.easy,
    ),

    Question(
      questionText: 'Which sentence is grammatically correct?',
      options: [
        'He don’t like apples.',
        'He doesn’t likes apples.',
        'He doesn’t like apples.',
        'He not like apples.'
      ],
      correctAnswerIndex: 2,
      marks: 1,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.easy,
    ),

    Question(
      questionText:
          'Identify the noun in the sentence: “The cat sat on the mat.”',
      options: ['sat', 'on', 'mat', 'cat'],
      correctAnswerIndex: 3,
      marks: 1,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.easy,
    ),

    Question(
      questionText: 'Choose the correct article: “She bought ____ apple.”',
      options: ['a', 'an', 'the', 'no article needed'],
      correctAnswerIndex: 1,
      marks: 1,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.easy,
    ),

    Question(
      questionText: 'Which of the following is a verb?',
      options: ['Happy', 'Run', 'Blue', 'Quick'],
      correctAnswerIndex: 1,
      marks: 1,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.easy,
    ),

    Question(
      questionText: 'Choose the correctly spelled word:',
      options: ['Recieve', 'Receive', 'Receeve', 'Recive'],
      correctAnswerIndex: 1,
      marks: 1,
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
      marks: 1,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.medium,
    ),
    Question(
      questionText: 'Choose the most suitable synonym for "benevolent":',
      options: ['Cruel', 'Generous', 'Hostile', 'Greedy'],
      correctAnswerIndex: 1,
      marks: 1,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.medium,
    ),
    Question(
      questionText: 'Identify the error: "She don’t like chocolate."',
      options: ['She', 'don’t', 'like', 'chocolate'],
      correctAnswerIndex: 1,
      marks: 1,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.medium,
    ),
    Question(
      questionText: 'Complete the sentence: If I ___ you, I would apologize.',
      options: ['was', 'am', 'were', 'be'],
      correctAnswerIndex: 2,
      marks: 1,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.medium,
    ),
    Question(
      questionText: 'Choose the antonym of "reluctant":',
      options: ['Willing', 'Stubborn', 'Afraid', 'Doubtful'],
      correctAnswerIndex: 0,
      marks: 1,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.medium,
    ),
    Question(
      questionText: 'Fill in the blank: He was accused ___ cheating.',
      options: ['of', 'for', 'to', 'on'],
      correctAnswerIndex: 0,
      marks: 1,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.medium,
    ),
    Question(
      questionText: 'Choose the sentence with correct punctuation:',
      options: [
        'She said "I will be late."',
        'She said, "I will be late."',
        'She said I will be late.',
        'She said: "I will be late"'
      ],
      correctAnswerIndex: 1,
      marks: 1,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.medium,
    ),
    Question(
      questionText: 'What part of speech is the word "quickly"?',
      options: ['Noun', 'Verb', 'Adjective', 'Adverb'],
      correctAnswerIndex: 3,
      marks: 1,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.medium,
    ),
    Question(
      questionText: 'Which sentence is in passive voice?',
      options: [
        'The cat chased the mouse.',
        'She is baking a cake.',
        'The letter was written by John.',
        'They will finish the project soon.'
      ],
      correctAnswerIndex: 2,
      marks: 1,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.medium,
    ),

    //Hard Language Questions
    Question(
      questionText: 'Identify the correct sentence:',
      options: [
        'He don’t know the answer.',
        'He doesn’t knows the answer.',
        'He doesn’t know the answer.',
        'He not knows the answer.'
      ],
      correctAnswerIndex: 2,
      marks: 3,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.hard,
    ),

    Question(
      questionText:
          'Choose the correct transformation: "Despite his wealth, he is unhappy."',
      options: [
        'Though he is wealthy, yet he is unhappy.',
        'Though he is wealthy, he is unhappy.',
        'Although he is wealthy, but he is unhappy.',
        'Though being wealthy, he is unhappy.'
      ],
      correctAnswerIndex: 1,
      marks: 3,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.hard,
    ),

    Question(
      questionText: 'What does the idiom "beat around the bush" mean?',
      options: [
        'Talk directly',
        'Avoid the main topic',
        'Get to the point',
        'Hit something repeatedly'
      ],
      correctAnswerIndex: 1,
      marks: 3,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.hard,
    ),

    Question(
      questionText:
          'Choose the correct form: "Neither of the answers ___ correct."',
      options: ['are', 'were', 'is', 'have been'],
      correctAnswerIndex: 2,
      marks: 3,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.hard,
    ),

    Question(
      questionText:
          'Identify the figure of speech: "The wind whispered through the trees."',
      options: ['Simile', 'Metaphor', 'Personification', 'Alliteration'],
      correctAnswerIndex: 2,
      marks: 3,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.hard,
    ),

    Question(
      questionText: 'Select the sentence with correct subject-verb agreement:',
      options: [
        'The bouquet of roses smell lovely.',
        'Neither the cat nor the dogs is hungry.',
        'Each of the students have a book.',
        'Either the principal or the teachers are attending.'
      ],
      correctAnswerIndex: 1,
      marks: 3,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.hard,
    ),

    Question(
      questionText:
          'Choose the correct passive form: "They will complete the project by tomorrow."',
      options: [
        'The project will complete by them tomorrow.',
        'The project will be completed by them by tomorrow.',
        'They will be completing the project tomorrow.',
        'The project is being completed by them tomorrow.'
      ],
      correctAnswerIndex: 1,
      marks: 3,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.hard,
    ),

    Question(
      questionText: 'What is the meaning of the word "mitigate"?',
      options: ['Destroy', 'Prevent', 'Lessen', 'Magnify'],
      correctAnswerIndex: 2,
      marks: 3,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.hard,
    ),

    Question(
      questionText: 'Which word is an antonym of "obscure"?',
      options: ['Clear', 'Vague', 'Hidden', 'Uncertain'],
      correctAnswerIndex: 0,
      marks: 3,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.hard,
    ),

    Question(
      questionText:
          'Choose the correct word to complete the sentence: "The committee has given its final ___ on the issue."',
      options: ['say', 'verdict', 'speak', 'speaking'],
      correctAnswerIndex: 1,
      marks: 3,
      category: QuestionCategory.language,
      difficulty: DifficultyLevel.hard,
    ),
  ];
}
