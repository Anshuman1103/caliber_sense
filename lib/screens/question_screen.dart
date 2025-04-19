// 📦 Importing all necessary packages and modules
import 'package:caliber_sense/data/all_questions.dart';
import 'package:caliber_sense/main.dart';
import 'package:caliber_sense/custom_widgets/question_card.dart';
import 'package:caliber_sense/models/question.dart';
import 'package:caliber_sense/screens/result_screen.dart';
import 'package:caliber_sense/utilities/score_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 🧠 Main question screen that displays one question at a time.
/// Uses Riverpod for state management and adapts difficulty based on user performance.
class QuestionScreen extends ConsumerStatefulWidget {
  const QuestionScreen({
    super.key,
    required this.questionCategory,
    required this.difficultyLevel,
    required this.aptitudeQuestions,
    required this.laguageQuestions,
    required this.memoryQuestions,
  });

  // Initial question settings passed to the screen
  final QuestionCategory questionCategory;
  final DifficultyLevel difficultyLevel;
  final int aptitudeQuestions;
  final int laguageQuestions;
  final int memoryQuestions;

  @override
  ConsumerState<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends ConsumerState<QuestionScreen> {
  // 🔢 Lists to hold questions by category
  late List<Question> _aptitudeQuestions;
  late List<Question> _languageQuestions;
  late List<Question> _memoryQuestions;

  // Index trackers for each category
  int _aptitudeIndex = 0;
  int _languageIndex = 0;
  int _memoryIndex = 0;

  // Selected option index for UI state
  int? _selectedOptionIndex;

  // Current question settings
  late QuestionCategory _questionCategory;
  late DifficultyLevel _difficultyLevel;

  @override
  void initState() {
    super.initState();
    _questionCategory = widget.questionCategory;
    _difficultyLevel = widget.difficultyLevel;

    // Fetch all questions by category
    _aptitudeQuestions =
        AllQuestions.getQuestions(category: QuestionCategory.aptitude);
    _languageQuestions =
        AllQuestions.getQuestions(category: QuestionCategory.language);
    _memoryQuestions =
        AllQuestions.getQuestions(category: QuestionCategory.memory);
  }

  /// 🎯 Gets the next question based on current category and difficulty
  Question? _getNextQuestion() {
    List<Question> pool;
    int index;

    switch (_questionCategory) {
      case QuestionCategory.aptitude:
        pool = _aptitudeQuestions
            .where((q) => q.difficulty == _difficultyLevel)
            .toList();
        index = _aptitudeIndex;
        break;
      case QuestionCategory.language:
        pool = _languageQuestions
            .where((q) => q.difficulty == _difficultyLevel)
            .toList();
        index = _languageIndex;
        break;
      case QuestionCategory.memory:
        pool = _memoryQuestions
            .where((q) => q.difficulty == _difficultyLevel)
            .toList();
        index = _memoryIndex;
        break;
    }

    // If the current index has questions left in that difficulty
    // print(pool.length);
    return index < pool.length ? pool[index] : null;
  }

  /// ⏭ Moves to the next question and adjusts difficulty based on correctness
  void _nextQuestion(bool correct) {
    setState(() {
      // 📈 Adjust difficulty
      if (correct) {
        if (_difficultyLevel == DifficultyLevel.easy) {
          _difficultyLevel = DifficultyLevel.medium;
        } else if (_difficultyLevel == DifficultyLevel.medium) {
          _difficultyLevel = DifficultyLevel.hard;
        }
      } else {
        if (_difficultyLevel == DifficultyLevel.hard) {
          _difficultyLevel = DifficultyLevel.medium;
        } else if (_difficultyLevel == DifficultyLevel.medium) {
          _difficultyLevel = DifficultyLevel.easy;
        }
      }

      // 🔄 Move to next category/question
      switch (_questionCategory) {
        case QuestionCategory.aptitude:
          _aptitudeIndex++;
          if (_aptitudeIndex >= widget.aptitudeQuestions) {
            _questionCategory = QuestionCategory.language;
            _difficultyLevel = widget.difficultyLevel;
          }
          break;
        case QuestionCategory.language:
          _languageIndex++;
          if (_languageIndex >= widget.laguageQuestions) {
            _questionCategory = QuestionCategory.memory;
            _difficultyLevel = widget.difficultyLevel;
          }
          break;
        case QuestionCategory.memory:
          _memoryIndex++;
          if (_memoryIndex >= widget.memoryQuestions) {
            // ✅ All questions completed, navigate to result screen
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const ResultScreen()),
            );
            return;
          }
          break;
      }

      _selectedOptionIndex = null;
    });
  }

  /// 🖱 Handles user selecting an option
  Future<void> _handleOptionSelected(int index) async {
    setState(() {
      _selectedOptionIndex = index;
    });

    Question? currentQuestion = _getNextQuestion();
    if (currentQuestion == null) return;

    // ✅ Check correctness
    bool correct = index == currentQuestion.correctAnswerIndex;
    int marks = correct ? currentQuestion.marks : 0;

    // 📝 Update score in provider
    updateScore(ref: ref, question: currentQuestion, gainedMarks: marks);

    // ⏳ Delay before transitioning to next question
    await Future.delayed(const Duration(milliseconds: 200));
    _nextQuestion(correct);
  }

  /// 🆙 Capitalizes string for display
  String capitalize(String text) => text[0].toUpperCase() + text.substring(1);

  @override
  Widget build(BuildContext context) {
    Question? currentQuestion = _getNextQuestion();

    // Show loading indicator if question is null
    if (currentQuestion == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
    print(currentQuestion.correctAnswerIndex);
    // Display category and difficulty for the user
    String questionType = capitalize(_questionCategory.name);
    String questionLevel = capitalize(_difficultyLevel.name);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
      ),
      body: Column(
        children: [
          const SizedBox(height: 5),
          Row(
            children: [
              const SizedBox(width: 8),
              Card(
                color: colorScheme.primary,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "$questionType : $questionLevel",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: colorScheme.onPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 55),
                      // 🃏 Display the current question card
                      QuestionCard(
                        question: currentQuestion,
                        selectedOptionIndex: _selectedOptionIndex,
                        currentQuestionIndex:
                            _aptitudeIndex + _languageIndex + _memoryIndex,
                        onOptionSelected: _handleOptionSelected,
                      ),
                    ],
                  ),
                ),
                // ⏭ Skip Button
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: FloatingActionButton(
                    onPressed: () {
                      _handleOptionSelected(-1); // -1 implies skip
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
