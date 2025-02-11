import 'package:caliber_sense/main.dart';
import 'package:caliber_sense/widgets/question_card.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
      ),
      body: Stack(
        children: [
          const Center(
            child: SingleChildScrollView(
              child: QuestionCard(),
            ),
          ),
          Positioned(
            //For Skip Button
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                // Action to skip the question
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
    );
  }
}
