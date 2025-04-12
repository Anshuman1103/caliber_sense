import 'package:caliber_sense/custom_widgets/result_card_section.dart';
import 'package:caliber_sense/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultListCard extends ConsumerWidget {
  const ResultListCard({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
      width: double.infinity,
      child: Card(
        color: colorScheme.secondary,
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    'Quick Test',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: colorScheme.onSecondary,
                        ),
                    textAlign: TextAlign.start,
                  ),
                  const Spacer(),
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(200)),
                    child: Container(
                      width: 80, // Width of the circular card
                      height:
                          80, // Height of the circular card (equal to width for a perfect circle)
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colorScheme.primary,
                      ),
                      child: Text(
                        "80%",
                        style: GoogleFonts.roboto(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ResultCardSection(title: 'Aptitude', percentage: '50%'),
                  ResultCardSection(title: 'Memory', percentage: '50%'),
                  ResultCardSection(title: 'Language', percentage: '50%'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
