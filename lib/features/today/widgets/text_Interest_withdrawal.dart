import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextInterestwithdrawal extends StatelessWidget {
  const TextInterestwithdrawal({super.key,
    required this.witchdrawal,
  });

  final int witchdrawal;

  @override
  Widget build(BuildContext context) {
    return Text(
              '${witchdrawal} %',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Bona Nova',textStyle:TextStyle(height: 0.9, color: Colors.white) ,fontSize: 50, fontWeight: FontWeight.bold, letterSpacing: 0.2, wordSpacing:0.3,),
            );
  }
}