import 'package:flutter/material.dart';

class QuestionNumber extends StatelessWidget {
  const QuestionNumber(this.number, this.isCorrect, {super.key});

  final String number;
  final bool isCorrect;

  @override
  Widget build(context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: isCorrect ? const Color.fromARGB(124, 135, 240, 175) : const Color.fromARGB(124, 236, 144, 144), // Replace with your desired background color
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(10), // Add the desired padding
      child: Text(
        number,
        style: const TextStyle(
          fontSize: 12,
          color: Color.fromARGB(255, 0, 0, 0),
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
