/// The `QuickTest` class in Dart represents a widget that displays a container with text and an image, allowing users to navigate to quick test question screen upon tapping.
library;

import 'package:caliber_sense/main.dart';
import 'package:caliber_sense/screens/question_screen.dart';
import 'package:flutter/material.dart';

class QuickTest extends StatelessWidget {
  const QuickTest({super.key});

  @override
  Widget build(BuildContext context) {
    void questionScreen() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => const QuestionScreen()));
    }

    return InkWell(
      onTap: () {
        questionScreen();
      },
      child: Card(
        color: colorScheme.primary,
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Row(
            children: [
              SizedBox(
                width: 200,
                child: Text(
                  'Get a Quick test and know the extent of your abilities',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Theme.of(context).colorScheme.onPrimary),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Image.asset(
                  'assets/icons/qualification.png',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
