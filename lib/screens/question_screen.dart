// 📦 Importing all necessary packages and modules
import 'package:caliber_sense/data/all_questions.dart';
import 'package:caliber_sense/main.dart';
import 'package:caliber_sense/custom_widgets/question_card.dart';
import 'package:caliber_sense/models/question.dart';
import 'package:caliber_sense/provider/scores_provider.dart';
import 'package:caliber_sense/screens/result_generater_splash.dart';
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
    required this.languageQuestions,
    required this.memoryQuestions,
  });

  // Initial question settings passed to the screen
  final QuestionCategory questionCategory;
  final DifficultyLevel difficultyLevel;
  final int aptitudeQuestions;
  final int languageQuestions;
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
    while (true) {
      List<Question> pool;
      int index;
      int totalQuestions;

      switch (_questionCategory) {
        case QuestionCategory.aptitude:
          totalQuestions = widget.aptitudeQuestions;
          if (totalQuestions == 0 || _aptitudeIndex >= totalQuestions) {
            if (!_moveToNextCategory()) return null;
            continue;
          }
          pool = _aptitudeQuestions
              .where((q) => q.difficulty == _difficultyLevel)
              .toList();
          index = _aptitudeIndex;
          break;
        case QuestionCategory.language:
          totalQuestions = widget.languageQuestions;
          if (totalQuestions == 0 || _languageIndex >= totalQuestions) {
            if (!_moveToNextCategory()) return null;
            continue;
          }
          pool = _languageQuestions
              .where((q) => q.difficulty == _difficultyLevel)
              .toList();
          index = _languageIndex;
          break;
        case QuestionCategory.memory:
          totalQuestions = widget.memoryQuestions;
          if (totalQuestions == 0 || _memoryIndex >= totalQuestions) {
            if (!_moveToNextCategory()) return null;
            continue;
          }
          pool = _memoryQuestions
              .where((q) => q.difficulty == _difficultyLevel)
              .toList();
          index = _memoryIndex;
          break;
      }

      return index < pool.length ? pool[index] : null;
    }
  }

  /// ⏭ Moves to the next question and adjusts difficulty based on correctness
  bool _moveToNextCategory() {
    switch (_questionCategory) {
      case QuestionCategory.aptitude:
        _questionCategory = QuestionCategory.language;
        _difficultyLevel = widget.difficultyLevel;
        if (widget.languageQuestions > 0) return true;
        return _moveToNextCategory(); // 🔁 Recursively move to memory
      case QuestionCategory.language:
        _questionCategory = QuestionCategory.memory;
        _difficultyLevel = widget.difficultyLevel;
        if (widget.memoryQuestions > 0) return true;
        return _moveToNextCategory(); // 🔁 If 0, go to result
      case QuestionCategory.memory:
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _showResult(); // ✅ Always called if this is reached
        });
        return false;
    }
  }

  void _nextQuestion(bool correct) {
    setState(() {
      // Adjust difficulty
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

      // Increment index for current category
      switch (_questionCategory) {
        case QuestionCategory.aptitude:
          _aptitudeIndex++;
          break;
        case QuestionCategory.language:
          _languageIndex++;
          break;
        case QuestionCategory.memory:
          _memoryIndex++;
          break;
      }

      _selectedOptionIndex = null;
    });
  }

  void _showResult() {
    final scores = ref.read(scoresProvider);
    print("Aptitude Score: ${scores.totalAptitudeScore}");
    print("Language Score: ${scores.totalLanguageScore}");
    print("Memory Score: ${scores.totalMemoryScore}");
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const ResultGeneraterSplash()),
    );
  }

  /// 🖱 Handles user selecting an option
  Future<void> _handleOptionSelected(int index) async {
    setState(() {
      _selectedOptionIndex = index;
    });
  }

  void _submit() {
    Question? currentQuestion = _getNextQuestion();
    if (currentQuestion == null) return;

    // ✅ Check correctness
    bool correct = _selectedOptionIndex == currentQuestion.correctAnswerIndex;
    int marks = correct ? currentQuestion.marks : 0;

    // 📝 Update score in provider
    updateScore(ref: ref, question: currentQuestion, gainedMarks: marks);

    //Jumping to next question
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
    print("Correct answer index: ${currentQuestion.correctAnswerIndex}");
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
                    onPressed: _submit,
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
