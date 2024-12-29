import 'package:caliber_sense/screens/question_screen.dart';
import 'package:flutter/material.dart';

class TestTile extends StatelessWidget {
  const TestTile({
    super.key,
    required this.heading,
    required this.iconName,
    required this.subHeading,
    required this.tileColor,
  });

  final String heading;
  final String subHeading;
  final String iconName;
  final Color tileColor;

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
        height: 100,
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: tileColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(4, 4),
              blurRadius: 8,
            ),
          ],
        ),
        child: Center(
          child: ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            contentPadding: const EdgeInsets.all(8),
            leading: Image.asset(
              height: 60,
              width: 60,
              'assets/icons/$iconName.png',
            ),
            title: Text(
              heading,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 10,
                    offset: const Offset(4, 4),
                  )
                ],
              ),
            ),
            subtitle: Text(
              subHeading,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 10,
                    offset: const Offset(4, 4),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
