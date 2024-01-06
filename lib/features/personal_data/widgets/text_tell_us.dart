<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextTellUs extends StatelessWidget {
  const TextTellUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
              'Tell us a little\nabout yourself',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Bona Nova',textStyle:TextStyle(height: 0.9, color: Colors.white) ,fontSize: 35, fontWeight: FontWeight.bold, letterSpacing: 0.2, wordSpacing:0.3,),
            );
  }
=======
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextTellUs extends StatelessWidget {
  const TextTellUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
              'Tell us a little\nabout yourself',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Bona Nova',textStyle:TextStyle(height: 0.9, color: Colors.white) ,fontSize: 35, fontWeight: FontWeight.bold, letterSpacing: 0.2, wordSpacing:0.3,),
            );
  }
>>>>>>> eaf69a42d3fb2641b7896640dd815ad1a54beaab
}