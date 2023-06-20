class QuizQuestion {
  final String question;
  final List<String> answers;

  List<String> getShuffled() {
    final List<String> shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }

  const QuizQuestion(this.question, this.answers);
}
