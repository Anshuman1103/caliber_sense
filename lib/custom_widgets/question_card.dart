import 'dart:async';

import 'package:caliber_sense/custom_widgets/option.dart';
import 'package:caliber_sense/main.dart';
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
  bool showImage = false;
  int secondsLeft = 10;
  Timer? countDownTimer;

  @override
  void didUpdateWidget(covariant QuestionCard oldWidget) {
    super.didUpdateWidget(oldWidget);

    // If question content has changed, restart the image logic
    if (widget.question.questionText != oldWidget.question.questionText ||
        widget.question.image != oldWidget.question.image) {
      _startImageTimer();
    }
  }

  void _startImageTimer() {
    if (widget.question.image != null) {
      setState(() {
        showImage = true;
        secondsLeft = 10;
      });

      countDownTimer?.cancel(); // Cancel any existing timer

      countDownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (secondsLeft == 0) {
          timer.cancel();
          setState(() {
            showImage = false;
          });
        } else {
          setState(() {
            secondsLeft--;
          });
        }
      });
    } else {
      showImage = false;
    }
  }

  @override
  void dispose() {
    countDownTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    currentQuestionNumber = widget.currentQuestionIndex;
    Widget display;

    Widget questionContent = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 20, 5, 20),
          child: Text(
            widget.question.questionText,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
          ),
        ),
        ...widget.question.options.asMap().entries.map((entry) {
          int idx = entry.key;
          String optionText = entry.value;
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Option(
              optionText: optionText,
              isSelected: widget.selectedOptionIndex == idx,
              onOptionSelected: () => widget.onOptionSelected(idx),
            ),
          );
        }),
      ],
    );

    if (showImage) {
      display = Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            widget.question.image!,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 10),
          Text(
            "Question will appear in $secondsLeft sec...",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: colorScheme.onSecondary,
                  fontWeight: FontWeight.bold,
                ),
          )
        ],
      );
    } else {
      display = questionContent;
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Card(
                elevation: 4,
                color: Theme.of(context).colorScheme.secondary,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: display,
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
                      color: Colors.white,
                    ),
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
