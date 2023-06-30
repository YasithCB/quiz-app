import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Subtitle1 extends StatelessWidget {
  const Subtitle1(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: GoogleFonts.roboto(
        color: const Color.fromARGB(226, 255, 255, 255),
        fontSize: 18,
      ),
    );
  }
}
