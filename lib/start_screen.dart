import 'package:flutter/material.dart';
import 'package:quize_app/light_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Colors.white60,
          ),
          const SizedBox(height: 70),
          const LightText('Learn Flutter the fun way!'),
          const SizedBox(height: 70),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_right_alt),
          )
        ],
      ),
    );
  }
}
