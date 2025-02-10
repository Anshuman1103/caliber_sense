import 'package:caliber_sense/main.dart';
import 'package:caliber_sense/custom_widgets/result_score_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 500,
                  width: 350,
                  child: Card(
                    elevation: 10,
                    color: Theme.of(context).colorScheme.secondary,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Very Good",
                            textAlign: TextAlign.right,
                            style: GoogleFonts.roboto(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: colorScheme.primary,
                            ),
                          ),
                          const ResultScoreCard(),
                          const ResultScoreCard(),
                          const ResultScoreCard(),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -10,
                  child: Card(
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
                        "80%",
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
                    onPressed: () {},
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
      ),
    );
  }
}
