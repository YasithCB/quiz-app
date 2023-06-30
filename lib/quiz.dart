import 'package:flutter/material.dart';
import 'package:quize_app/data/questions.dart';
import 'package:quize_app/questions_screen.dart';
import 'package:quize_app/questions_summary/result_screen.dart';
import 'package:quize_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  List<String> _selectedAnswers = [];

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void restartQuiz() {
    setState(() {
      _selectedAnswers = [];
      activeScreen = StartScreen(switchScreen);
    });
  }

  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);

    if (_selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(
          selectedAnswers: _selectedAnswers,
          restartQuiz: restartQuiz,
        );
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 49, 2, 136),
                Color.fromARGB(255, 99, 28, 230),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
