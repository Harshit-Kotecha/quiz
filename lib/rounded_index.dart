import 'package:flutter/material.dart';

class RoundedQuestionIndex extends StatelessWidget {
  const RoundedQuestionIndex(
      {super.key, required this.isCorrect, required this.questionIndex});

  final bool isCorrect;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCorrect ? Colors.green[400] : Colors.red[300],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          questionIndex.toString(),
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
