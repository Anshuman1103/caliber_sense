import 'package:caliber_sense/custom_widgets/option.dart';
import 'package:caliber_sense/models/question.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionCard extends StatefulWidget {
  const QuestionCard({
    super.key,
    required this.question,
    required this.onOptionSelected,
    required this.selectedOptionIndex,
    required this.currentQuestionIndex,
  });

  final Question question;
  final Function(int) onOptionSelected;
  final int? selectedOptionIndex;
  final int currentQuestionIndex;

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  late int currentQuestionNumber;

  @override
  Widget build(BuildContext context) {
    currentQuestionNumber = widget.currentQuestionIndex;
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
                          widget.question.questionText,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
                              ),
                        ),
                      ),
                      //To display options here
                      ...widget.question.options.asMap().entries.map((entry) {
                        int idx = entry.key;
                        String optionText = entry.value;
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Option(
                              optionText: optionText,
                              isSelected: widget.selectedOptionIndex == idx,
                              onOptionSelected: () =>
                                  widget.onOptionSelected(idx)),
                        );
                      }),
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
                    (currentQuestionNumber + 1).toString(),
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
