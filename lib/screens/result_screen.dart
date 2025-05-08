/// The `ResultScreen` class in Dart represents a screen displaying a result with a score cards and buttons for home and download options.
library;

import 'package:caliber_sense/main.dart';
import 'package:caliber_sense/provider/scores_provider.dart';
import 'package:caliber_sense/screens/tab.dart';
import 'package:caliber_sense/widgets/result_score_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends ConsumerWidget {
  const ResultScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gainedAptitudeScore = ref.read(scoresProvider).gainedAptitudeScore;
    final totalAptitudeScore = ref.read(scoresProvider).totalAptitudeScore;
    final gainedLanguageScore = ref.read(scoresProvider).gainedLanguageScore;
    final totalLanguageScore = ref.read(scoresProvider).totalLanguageScore;
    final gainedMemoryScore = ref.read(scoresProvider).gainedMemoryScore;
    final totalMemoryScore = ref.read(scoresProvider).totalMemoryScore;

    // ✅ Compute total and gained scores
    final int gainedScore =
        gainedAptitudeScore + gainedLanguageScore + gainedMemoryScore;
    var totalScore = totalAptitudeScore + totalLanguageScore + totalMemoryScore;

    //print(percentageScore);
    // print(gainedAptitudeScore);
    // print(totalAptitudeScore);
    // print(gainedLanguageScore);
    // print(totalLanguageScore);
    // print(gainedMemoryScore);
    // print(totalMemoryScore);

    // print(gainedScore);
    // print(totalScore);

// ✅ Safe percentage calculation
    final int percentageScore =
        (totalScore == 0) ? 100 : ((gainedScore / totalScore) * 100).round();

    void resetScore() {
      ref.read(scoresProvider.notifier).resetAllScore();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const TabScreen(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none, //Circular card outside is not clipped
            children: [
              SizedBox(
                height: 500,
                width: 350,
                child: Card(
                  elevation: 3,
                  color: Theme.of(context).colorScheme.secondary,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Text(
                                "Result",
                                style: GoogleFonts.roboto(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: colorScheme.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                        ResultScoreCard(
                          testName: "Aptitude",
                          score: (totalAptitudeScore == 0)
                              ? 0
                              : (gainedAptitudeScore / totalAptitudeScore) *
                                  100,
                          iconImage: 'assets/icons/mathematics.png',
                        ),
                        ResultScoreCard(
                          testName: "Language",
                          score: (totalLanguageScore == 0)
                              ? 0
                              : (gainedLanguageScore / totalLanguageScore) *
                                  100,
                          iconImage: 'assets/icons/language.png',
                        ),
                        ResultScoreCard(
                          testName: "Memory",
                          score: (totalMemoryScore == 0)
                              ? 0
                              : (gainedMemoryScore / totalMemoryScore) * 100,
                          iconImage: 'assets/icons/brain.png',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -70,
                left: 0,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(200)),
                  child: Container(
                    width: 150, // Width of the circular card
                    height:
                        150, // Height of the circular card (equal to width for a perfect circle)
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: colorScheme.primary,
                    ),
                    child: Text(
                      '$percentageScore %',
                      style: GoogleFonts.roboto(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: resetScore,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: colorScheme.primary),
                  child: Text(
                    "Home",
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  )),
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'This feature is currently not available.',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.white, // Customize text color
                              fontWeight:
                                  FontWeight.bold, // Optional for emphasis
                            ),
                      ),
                      backgroundColor:
                          Colors.red, // Optional: Customize background color
                      duration: const Duration(
                          seconds: 3), // Optional: Customize duration
                    ),
                  );
                },
                icon: Icon(
                  Icons.download,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                label: Text(
                  "Download",
                  style: GoogleFonts.roboto(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: colorScheme.primary),
              ),
            ],
          )
        ],
      ),
    );
  }
}
