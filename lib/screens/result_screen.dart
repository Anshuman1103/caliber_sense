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
    final gainedAptitudeScore = ref.watch(scoresProvider).gainedAptitudeScore;
    final totalAptitudeScore = ref.watch(scoresProvider).totalAptitudeScore;
    final gainedLanguageScore = ref.watch(scoresProvider).gainedLanguageScore;
    final totalLanguageScore = ref.watch(scoresProvider).totalLanguageScore;
    final gainedMemoryScore = ref.watch(scoresProvider).gainedMemoryScore;
    //final totalMemoryScore = ref.watch(scoresProvider).totalMemoryScore;

    const totalMemoryScore =
        10; // Assuming a fixed total memory score for demonstration
    // This should be replaced with the actual total memory score from your provider

    int precentageScore = (((gainedAptitudeScore +
                    gainedLanguageScore +
                    gainedMemoryScore) /
                (totalAptitudeScore + totalLanguageScore + gainedMemoryScore)) *
            100)
        .toInt();
    // print(precentageScore);
    // print(gainedAptitudeScore);
    // print(totalAptitudeScore);
    // print(gainedLanguageScore);
    // print(totalLanguageScore);
    // print(gainedMemoryScore);
    // print(totalMemoryScore);

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
                                "Very Good",
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
                          score:
                              (gainedAptitudeScore / totalAptitudeScore) * 100,
                          iconImage: 'assets/icons/mathematics.png',
                        ),
                        ResultScoreCard(
                          testName: "Language",
                          score: (gainedLanguageScore / totalMemoryScore) * 100,
                          iconImage: 'assets/icons/language.png',
                        ),
                        ResultScoreCard(
                          testName: "Memory",
                          score: (gainedMemoryScore / totalMemoryScore) * 100,
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
                      '$precentageScore%',
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
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TabScreen()));
                  },
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
                onPressed: () {},
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
