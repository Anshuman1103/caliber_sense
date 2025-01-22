import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScoreCard extends StatelessWidget {
  const ResultScoreCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      child: Card(
        color: Color.fromARGB(255, 255, 199, 30),
        child: Center(
          child: ListTile(
            leading: Icon(
              Icons.class_,
              size: 40,
            ),
            title: Text(
              "Aptitude",
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            trailing: Text(
              "50%",
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
