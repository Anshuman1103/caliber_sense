import 'package:caliber_sense/models/user_scores.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScoresNotifier extends StateNotifier<UserScores> {
  ScoresNotifier()
      : super(
          UserScores(
            totalAptitudeScore: 0,
            gainedAptitudeScore: 0,
            totalLanguageScore: 0,
            gainedLanguageScore: 0,
            totalMemoryScore: 0,
            gainedMemoryScore: 0,
          ),
        );

  void updateMemoryScore(int score, int totalScore) {
    state = UserScores(
      totalAptitudeScore: state.totalAptitudeScore,
      gainedAptitudeScore: state.gainedAptitudeScore,
      totalLanguageScore: state.totalLanguageScore,
      gainedLanguageScore: state.gainedLanguageScore,
      totalMemoryScore: totalScore,
      gainedMemoryScore: score,
    );
  }

  void updateAptitudeScore(int score, int totalScore) {
    state = UserScores(
      totalLanguageScore: state.totalLanguageScore,
      gainedLanguageScore: state.gainedLanguageScore,
      totalMemoryScore: state.totalMemoryScore,
      gainedMemoryScore: state.gainedMemoryScore,
      totalAptitudeScore: totalScore,
      gainedAptitudeScore: score,
    );
  }

  void updateLanguageScore(int score, int totalScore) {
    state = UserScores(
      totalAptitudeScore: state.totalAptitudeScore,
      gainedAptitudeScore: state.gainedAptitudeScore,
      totalLanguageScore: totalScore,
      gainedLanguageScore: score,
      totalMemoryScore: state.totalMemoryScore,
      gainedMemoryScore: state.gainedMemoryScore,
    );
  }

  void updateAllScore({
    required int totalAptitudeScore,
    required int gainedAptitudeScore,
    required int totalLanguageScore,
    required int gainedLanguageScore,
    required int totalMemoryScore,
    required int gainedMemoryScore,
  }) {
    state = UserScores(
      totalAptitudeScore: totalAptitudeScore,
      gainedAptitudeScore: gainedAptitudeScore,
      totalLanguageScore: totalLanguageScore,
      gainedLanguageScore: gainedLanguageScore,
      totalMemoryScore: totalMemoryScore,
      gainedMemoryScore: gainedMemoryScore,
    );
  }

  void resetAllScore() {
    state = UserScores(
      totalAptitudeScore: 0,
      gainedAptitudeScore: 0,
      totalLanguageScore: 0,
      gainedLanguageScore: 0,
      totalMemoryScore: 0,
      gainedMemoryScore: 0,
    );
  }
}

final scoresProvider = StateNotifierProvider<ScoresNotifier, UserScores>((ref) {
  return ScoresNotifier();
});
