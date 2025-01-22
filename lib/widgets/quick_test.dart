/// The `QuickTest` class in Dart represents a widget that displays a container with text and an image, allowing users to navigate to quick test question screen upon tapping.
library;

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
      child: Container(
        width: double.infinity,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 170, 140, 255),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color
              spreadRadius: 2, // How wide the shadow spreads
              blurRadius: 5, // Blurriness of the shadow
              offset: const Offset(0, 5), // Offset of the shadow (x, y)
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      'Get a Quick test and know the extent of your abilities',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        'assets/icons/qualification.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
