import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextComicNeue extends StatelessWidget {
  const TextComicNeue({super.key, required this.text, required this.size});

  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.getFont('Comic Neue', fontSize: size),
    );
  }
}
