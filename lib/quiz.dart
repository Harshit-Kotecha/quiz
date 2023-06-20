import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/results_screen.dart';
import 'package:quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  final List<String> selectedAnswersList = [];

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(
        selectedAnswers: addChosenAnswer,
      );
    });
  }

  void addChosenAnswer(String ans) {
    // Reset to start screen iff all answered

    selectedAnswersList.add(ans);

    if (selectedAnswersList.length >= questions.length) {
      // selectedAnswersList.clear();

      setState(() {
        activeScreen = ResultsScreen(
          selectedAnswers: selectedAnswersList,
          restartQuiz: restartQuiz,
        );
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswersList.clear();
      activeScreen = StartScreen(switchScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: activeScreen,
      ),
    );
  }
}
