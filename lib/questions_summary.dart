import 'package:flutter/material.dart';
import 'package:quiz/rounded_index.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: SizedBox(
        height: 300,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: summaryData.map(
              (data) {
                return Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        child: RoundedQuestionIndex(
                            isCorrect:
                                data['question_ans'] == data['chosen_ans'],
                            questionIndex:
                                ((data['question_index'] as int) + 1)),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              (data['question_text']) as String,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              (data['question_ans']) as String,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 47, 189, 52),
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              (data['chosen_ans']) as String,
                              style: const TextStyle(
                                color: Color.fromARGB(166, 255, 255, 255),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
