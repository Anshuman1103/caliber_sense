/// The `AllQuestions` class provides a method to retrieve a list of questions based on the specified category.
library;

import 'package:caliber_sense/data/aptitude_question.dart';
import 'package:caliber_sense/data/language_question.dart';
import 'package:caliber_sense/data/memory_questions.dart';
import '../models/question.dart';

class AllQuestions {
  static List<Question> getQuestions({
    required QuestionCategory category,
    //required DifficultyLevel difficulty,
  }) {
    List<Question> all;

    switch (category) {
      case QuestionCategory.aptitude:
        all = AptitudeQuestion.questions;
        break;
      case QuestionCategory.language:
        all = LanguageQuestion.questions;
        break;
      case QuestionCategory.memory:
        all = MemoryQuestions.questions;
        break;
    }
    //print(all.toList().length);
    return all.toList();
  }
}
