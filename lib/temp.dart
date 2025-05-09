import 'dart:async';
import 'package:caliber_sense/main.dart';
import 'package:flutter/material.dart';

class ResultGeneraterSplash extends StatefulWidget {
  const ResultGeneraterSplash({super.key});

  @override
  State<ResultGeneraterSplash> createState() => _ResultGeneraterSplash();
}

class _ResultGeneraterSplash extends State<ResultGeneraterSplash> {
  String displayText = 'Analyzing your answer...';
  double progress = 0.0;
  Timer? timer;

  @override
  void initState() {
    super.initState();

    int secondsPassed = 0;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        secondsPassed++;
        progress = secondsPassed / 5;

        if (secondsPassed == 2) {
          displayText = 'Generating score card';
        } else if (secondsPassed == 4) {
          displayText = 'Displaying the results';
        }

        if (secondsPassed >= 5) {
          timer.cancel();
          // Optionally navigate to another screen here
        }
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Progress bar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: colorScheme.onPrimary.withOpacity(0.2),
                valueColor:
                    AlwaysStoppedAnimation<Color>(colorScheme.onPrimary),
                minHeight: 10,
              ),
            ),

            const SizedBox(height: 30),

            // Animated text
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 600),
              transitionBuilder: (child, animation) => FadeTransition(
                opacity: animation,
                child: child,
              ),
              child: Text(
                displayText,
                key: ValueKey<String>(displayText),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: colorScheme.onPrimary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
