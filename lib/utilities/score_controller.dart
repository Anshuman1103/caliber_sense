import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:caliber_sense/models/question.dart';
import 'package:caliber_sense/provider/scores_provider.dart';

void updateScore({
  required WidgetRef ref,
  required Question question,
  required int gainedMarks,
}) {
  switch (question.category) {
    case QuestionCategory.aptitude:
      ref.read(scoresProvider.notifier).updateAptitudeScore(
          ref.read(scoresProvider).gainedAptitudeScore + gainedMarks,
          ref.read(scoresProvider).totalAptitudeScore + question.marks);
      break;
    case QuestionCategory.language:
      ref.read(scoresProvider.notifier).updateLanguageScore(
          ref.read(scoresProvider).gainedLanguageScore + gainedMarks,
          ref.read(scoresProvider).totalLanguageScore + question.marks);
      break;
    case QuestionCategory.memory:
      ref.read(scoresProvider.notifier).updateMemoryScore(
          ref.read(scoresProvider).gainedMemoryScore + gainedMarks,
          ref.read(scoresProvider).totalMemoryScore + question.marks);
      break;
  }
  print(gainedMarks);
}
