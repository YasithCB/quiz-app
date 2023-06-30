import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightText extends StatelessWidget {
  const LightText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.roboto(
        color: const Color.fromARGB(167, 255, 255, 255),
        fontSize: 23,
      ),
    );
  }
}
