import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBecomeTheBestVersion extends StatelessWidget {
  const TextBecomeTheBestVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
              'Become the best version\nof yourself',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Bona Nova',textStyle:TextStyle(height: 0.9) ,fontSize: 20,  letterSpacing: 0.2, wordSpacing:0.3,),
            );
  }
}