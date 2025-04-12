import 'package:caliber_sense/custom_widgets/result_list_card.dart';
import 'package:flutter/material.dart';

class ResultsCollection extends StatelessWidget {
  const ResultsCollection({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Results',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
      body: const Center(
        child: ResultListCard(),
      ),
    );
  }
}
