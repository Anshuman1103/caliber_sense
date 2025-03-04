import 'package:caliber_sense/data/all_questions.dart';
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
  final List<Question> _questions =
      AllQuestions.questions; //The list of question is fetch by this

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
