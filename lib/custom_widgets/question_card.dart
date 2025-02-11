import 'package:caliber_sense/custom_widgets/option.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              //Padding for card to screen boundary
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              child: Card(
                elevation: 4,
                color: Theme.of(context).colorScheme.secondary,
                child: Padding(
                  //padding to elements inside the card
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 20,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 20, 5, 20),
                        child: Text(
                          'NBA score I want that the text field must not get inside a circular rounded card that is showing the number but when somehow the spin size change its sometime get inside of the card which make it not visible perfectly correct this error and so tell me how you corrected that',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary),
                        ),
                      ),
                      const Option(optionText: 'Option 1'),
                      const SizedBox(height: 8),
                      const Option(optionText: 'Option 2'),
                      const SizedBox(height: 8),
                      const Option(optionText: 'Option 3'),
                      const SizedBox(height: 8),
                      const Option(optionText: 'Option 4'),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: -50,
              left: (MediaQuery.of(context).size.width * 1) / 2 - 50,
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(200)),
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: Text(
                    "1",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
