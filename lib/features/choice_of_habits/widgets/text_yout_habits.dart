import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextYourHabits extends StatelessWidget {
  const TextYourHabits({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
              'Your habits',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Bona Nova',textStyle: const TextStyle(height: 0.9, color: Colors.white) ,fontSize: 35, fontWeight: FontWeight.bold, letterSpacing: 0.2, wordSpacing:0.3,),
            );
  }
}