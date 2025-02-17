import 'package:caliber_sense/main.dart';
import 'package:caliber_sense/custom_widgets/question_card.dart';
import 'package:caliber_sense/models/question.dart';
import 'package:caliber_sense/screens/result_screen.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final List<Question> _questions = [
    Question(
      questionText:
          'If the time is 4:20 PM now, what will be the time after 150 minutes?',
      options: ['6:10 PM', '7:30 PM', '6:50 PM', '8:00 PM'],
      correctAnswerIndex: 2,
    ),
    Question(
      questionText:
          'A clock shows 6:00 AM. How many degrees will the minute hand rotate when the time is 8:00 AM?',
      options: ['180 degrees', '360 degrees', '540 degrees', '720 degrees'],
      correctAnswerIndex: 1,
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
    ),
    Question(
      questionText:
          'If it takes 45 minutes to bake a cake and you put it in the oven at 3:20 PM, at what time will it be ready?',
      options: ['3:55 PM', '4:05 PM', '4:10 PM', '4:15 PM'],
      correctAnswerIndex: 1,
    ),
    Question(
      questionText:
          'Two clocks start ticking together at 12:00 PM. One loses 2 seconds per hour, and the other gains 2 seconds per hour. When will they show the same time again?',
      options: ['6 months', '3 months', '1 year', 'Never'],
      correctAnswerIndex: 3,
    ),
  ];

  int _currentQuestionIndex = 0;
  int? _selectedOptionIndex;

  void _nextQuestion() {
    setState(() {
      _selectedOptionIndex = null;
      if (_currentQuestionIndex < _questions.length - 1) {
        //jumping to next question
        _currentQuestionIndex++;
      } else {
        //Ends the test and show result
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const ResultScreen()));
      }
    });
  }

  Future<void> _handleOptionSelected(int index) async {
    setState(() {
      _selectedOptionIndex = index;
    });
    // Perform any validation or scoring logic here

    // Delay before moving to the next question
    await Future.delayed(const Duration(milliseconds: 300));
    // Move to the next question
    _nextQuestion();
  }

  @override
  Widget build(BuildContext context) {
    Question currentQuestion = _questions[_currentQuestionIndex];

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        //Helps to make circular card visible
                        height: 55,
                      ),
                      QuestionCard(
                        question: currentQuestion,
                        selectedOptionIndex: _selectedOptionIndex,
                        currentQuestionIndex: _currentQuestionIndex,
                        onOptionSelected: _handleOptionSelected,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  //For Skip Button
                  bottom: 20,
                  right: 20,
                  child: FloatingActionButton(
                    onPressed: () {
                      // Action to skip the question
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Question skipped'),
                          duration: Duration(seconds: 1),
                        ),
                      );
                    },
                    child: const Icon(Icons.skip_next),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
