import 'package:caliber_sense/main.dart';
import 'package:caliber_sense/screens/question_screen.dart';
import 'package:caliber_sense/utilities/screen_size.dart';
import 'package:flutter/material.dart';

class TestTile extends StatelessWidget {
  const TestTile({
    super.key,
    required this.heading,
    required this.iconName,
    required this.subHeading,
  });

  final String heading;
  final String subHeading;
  final String iconName;

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
