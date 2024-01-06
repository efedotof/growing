<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThisWay extends StatelessWidget {
  const TextThisWay({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
              'This way we can\ncalculate the norms for\nyour physical condition',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Bona Nova',textStyle:TextStyle(height: 0.9, color: Colors.white) ,fontSize: 20,  letterSpacing: 0.2, wordSpacing:0.3,),
            );
  }
=======
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThisWay extends StatelessWidget {
  const TextThisWay({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
              'This way we can\ncalculate the norms for\nyour physical condition',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Bona Nova',textStyle:TextStyle(height: 0.9, color: Colors.white) ,fontSize: 20,  letterSpacing: 0.2, wordSpacing:0.3,),
            );
  }
>>>>>>> eaf69a42d3fb2641b7896640dd815ad1a54beaab
}