import 'package:flutter/material.dart';
import 'package:quize_app/subtitle_1.dart';
import 'package:quize_app/questions_summary/answer_on_summary.dart';
import 'package:quize_app/questions_summary/question_number.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuestionNumber(
                    ((data['question_index'] as int) + 1).toString(),
                    data['selected_answer'] == data['correct_answer'],
                  ),
                  const SizedBox(width: 25),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Subtitle1(data['question'] as String),
                        const SizedBox(height: 5),
                        AnswerOnSummary(data['correct_answer'] as String,
                            const Color.fromARGB(255, 135, 240, 175)),
                        AnswerOnSummary(data['selected_answer'] as String,
                            const Color.fromARGB(125, 255, 255, 255)),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
