import 'package:caliber_sense/main.dart';
import 'package:flutter/material.dart';

class ResultCardSection extends StatelessWidget {
  const ResultCardSection({
    super.key,
    required this.title,
    required this.percentage,
  });

  final String title;
  final String percentage;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: colorScheme.onPrimary),
            ),
            const SizedBox(height: 10),
            Text(
              percentage,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: colorScheme.onPrimary),
            ),
          ],
        ),
      ),
    );
  }
}
