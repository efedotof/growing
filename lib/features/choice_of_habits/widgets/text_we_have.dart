import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWeHave extends StatelessWidget {
  const TextWeHave({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
              'We have already calculated\nthe necessary goals for your\nbody, but you can always set\nthem up ypurself',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Bona Nova',textStyle:TextStyle(height: 0.9, color: Colors.white) ,fontSize: 20,  letterSpacing: 0.2, wordSpacing:0.3,),
            );
  }
}