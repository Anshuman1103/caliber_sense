import 'package:caliber_sense/models/question.dart';

class AllQuestions {
  static final List<Question> questions = [
    Question(
      questionText:
          'If the time is 4:20 PM now, what will be the time after 150 minutes?',
      options: ['6:10 PM', '7:30 PM', '6:50 PM', '8:00 PM'],
      correctAnswerIndex: 2,
      marks: 5,
    ),
    Question(
      questionText:
          'A clock shows 6:00 AM. How many degrees will the minute hand rotate when the time is 8:00 AM?',
      options: ['180 degrees', '360 degrees', '540 degrees', '720 degrees'],
      correctAnswerIndex: 1,
      marks: 5,
    ),
    Question(
      questionText:
          'If a train leaves the station at 8:35 AM and reaches its destination at 11:50 AM, how long is the journey?',
      options: [
        '2 hours 45 minutes',
        '3 hours 15 minutes',
        '3 hours 30 minutes',
        '3 hours 25 minutes'
      ],
      correctAnswerIndex: 1,
      marks: 5,
    ),
    Question(
      questionText:
          'If it takes 45 minutes to bake a cake and you put it in the oven at 3:20 PM, at what time will it be ready?',
      options: ['3:55 PM', '4:05 PM', '4:10 PM', '4:15 PM'],
      correctAnswerIndex: 1,
      marks: 5,
    ),
    Question(
      questionText:
          'Two clocks start ticking together at 12:00 PM. One loses 2 seconds per hour, and the other gains 2 seconds per hour. When will they show the same time again?',
      options: ['6 months', '3 months', '1 year', 'Never'],
      correctAnswerIndex: 3,
      marks: 5,
    ),
  ];
}
