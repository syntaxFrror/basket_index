class CheckScoreBrain {
  final int finalScore;
  final int scoreSelected;

  CheckScoreBrain({this.finalScore, this.scoreSelected});

  bool checkScore(int finalScore, int scoreSelected) {
    return (finalScore == scoreSelected);
  }
}
