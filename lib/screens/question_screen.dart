import 'package:caliber_sense/widgets/option.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 80),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 102, 6, 247)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Q1. First question will display here',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Theme.of(context).colorScheme.primary)),
              const SizedBox(height: 50),
              const Option(optionText: 'Option 1'),
              const SizedBox(height: 20),
              const Option(optionText: 'Option 2'),
              const SizedBox(height: 20),
              const Option(optionText: 'Option 3'),
              const SizedBox(height: 20),
              const Option(optionText: 'Option 4'),
            ],
          ),
        ),
      ),
    );
  }
}
