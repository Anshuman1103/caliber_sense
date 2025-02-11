import 'package:caliber_sense/main.dart';
import 'package:caliber_sense/custom_widgets/question_card.dart';
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
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                const Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          //Helps to make circular card visible
                          height: 55,
                        ),
                        QuestionCard(),
                      ],
                    ),
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
          ),
        ],
      ),
    );
  }
}
