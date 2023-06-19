import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: questions.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            // height: 50,
            // color: Colors.amber,
            child: Center(
              child: Column(
                children: [
                  Text(
                    questions[index].question,
                  ),
                  for (int i = 0; i < questions[index].answers.length; i++)
                    Text(questions[index].answers[i]),
                ],
              ),
            ),
          );
        });
  }
}
