import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerOnSummary extends StatelessWidget {
  const AnswerOnSummary(this.text, this.color, {super.key});

  final String text;
  final Color color;

  @override
  Widget build(context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: GoogleFonts.roboto(
        color: color,
        fontSize: 13,
      ),
    );
  }
}
