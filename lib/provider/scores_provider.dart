import 'package:caliber_sense/models/user_scores.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScoresNotifier extends StateNotifier<UserScores> {
  ScoresNotifier()
      : super(
          UserScores(
            aptitudeScore: 0,
            languageScore: 0,
            memoryScore: 0,
          ),
        );

  void updateMemoryScore(int score) {
    state = UserScores(
      aptitudeScore: state.aptitudeScore,
      languageScore: state.languageScore,
      memoryScore: score,
    );
  }

  void updateAptitudeScore(int score) {
    state = UserScores(
      aptitudeScore: score,
      languageScore: state.languageScore,
      memoryScore: state.memoryScore,
    );
  }

  void updateLanguageScore(int score) {
    state = UserScores(
      aptitudeScore: state.aptitudeScore,
      languageScore: score,
      memoryScore: state.memoryScore,
    );
  }

  void updateAllScore({
    required int memoryScore,
    required int aptitudeScore,
    required int languageScore,
  }) {
    state = UserScores(
      aptitudeScore: aptitudeScore,
      languageScore: languageScore,
      memoryScore: memoryScore,
    );
  }
}

final scoresProvider = StateNotifierProvider<ScoresNotifier, UserScores>((ref) {
  return ScoresNotifier();
});
