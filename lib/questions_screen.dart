import 'package:flutter/material.dart';
import 'package:quize_app/answer_button.dart';
import 'package:quize_app/data/questions.dart';
import 'package:quize_app/light_text.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    setState(() {
      widget.onSelectAnswer(answer);
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    var currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LightText(currentQuestion.text),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.shuffledAnswers.map((answer) {
              return AnswerButton(answer, () {
                answerQuestion(answer);
              });
            }),
          ],
        ),
      ),
    );
  }
}
