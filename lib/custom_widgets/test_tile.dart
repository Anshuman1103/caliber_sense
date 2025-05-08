import 'package:caliber_sense/main.dart';
import 'package:caliber_sense/models/question.dart';
import 'package:caliber_sense/screens/question_screen.dart';
import 'package:flutter/material.dart';

class TestTile extends StatelessWidget {
  const TestTile({
    super.key,
    required this.heading,
    required this.iconName,
    required this.subHeading,
    required this.numberOfAptitudeQuestions,
    required this.numberOfLanguageQuestions,
    required this.numberOfMemoryQuestions,
    required this.currQuestionCategory,
  });

  final String heading;
  final String subHeading;
  final String iconName;
  final int numberOfAptitudeQuestions;
  final int numberOfLanguageQuestions;
  final int numberOfMemoryQuestions;
  final QuestionCategory currQuestionCategory;

  @override
  Widget build(BuildContext context) {
    void questionScreen() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => QuestionScreen(
            questionCategory: currQuestionCategory,
            difficultyLevel: DifficultyLevel.easy,
            aptitudeQuestions: numberOfAptitudeQuestions,
            languageQuestions: numberOfLanguageQuestions,
            memoryQuestions: numberOfMemoryQuestions,
          ),
        ),
      );
    }

    return InkWell(
      onTap: () {
        questionScreen();
      },
      child: Card(
        elevation: 3,
        color: colorScheme.secondary,
        child: Center(
          child: ListTile(
            contentPadding: const EdgeInsets.all(10),
            leading: Image.asset(
              height: 60,
              width: 60,
              'assets/icons/$iconName.png',
            ),
            title: Text(
              heading,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
            ),
            subtitle: Text(
              subHeading,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
