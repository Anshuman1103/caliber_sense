/// The `ResultScoreCard` class is a Flutter widget that displays a card with an icon, title, and percentage value for a specific category.
library;

import 'package:caliber_sense/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScoreCard extends StatelessWidget {
  const ResultScoreCard({
    super.key,
    required this.testName,
    required this.score,
    required this.iconImage,
  });

  final String iconImage;
  final String testName;
  final double score;

  @override
  Widget build(BuildContext context) {
    var percentage = score.toInt().toString();
    return SizedBox(
      width: 300,
      height: 80,
      child: Card(
        color: colorScheme.surface,
        child: Center(
          child: ListTile(
            leading: Image.asset(iconImage),
            title: Text(
              testName,
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
            trailing: Text(
              '$percentage %',
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
