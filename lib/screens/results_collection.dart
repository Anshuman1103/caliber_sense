import 'package:flutter/material.dart';

class ResultsCollection extends StatelessWidget {
  const ResultsCollection({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Result',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
      body: Center(
        child: Image.asset(
          'assets/icons/coming-soon.png',
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
