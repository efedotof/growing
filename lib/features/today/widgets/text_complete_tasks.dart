import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextCompleteTasks extends StatelessWidget {
  const TextCompleteTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
              'Complete tasks and\nimprove your day!',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Bona Nova',textStyle: const TextStyle(height: 0.9, color: Colors.white) ,fontSize: 20,  letterSpacing: 0.2, wordSpacing:0.3,),
            );
  }
}