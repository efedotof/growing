import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextYourBodyDemands extends StatelessWidget {
  const TextYourBodyDemands({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
              'Your body\ndemands',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Bona Nova',textStyle:TextStyle(height: 0.9, color: Colors.white) ,fontSize: 35, fontWeight: FontWeight.bold, letterSpacing: 0.2, wordSpacing:0.3,),
            );
  }
}