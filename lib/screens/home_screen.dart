/// The `HomeScreen` class in Dart represents a screen with various test tiles for different types of tests.
library;

import 'package:caliber_sense/custom_widgets/test_tile.dart';
import 'package:caliber_sense/widgets/quick_test.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(
          'Hello Anshuman',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.onSurface),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const QuickTest(),
              const SizedBox(height: 15),
              Text(
                'More specific tests',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
              const SizedBox(height: 15),
              const TestTile(
                heading: 'Aptitude test',
                iconName: 'report',
                subHeading: 'Take comprehensive aptitude test',
              ),
              const SizedBox(height: 15),
              const TestTile(
                heading: 'Memory test',
                iconName: 'choices',
                subHeading: 'Test your memory retaintion power',
              ),
              const SizedBox(height: 15),
              const TestTile(
                heading: 'Language test',
                iconName: 'exam',
                subHeading: 'Take comprehensive aptitude test',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
