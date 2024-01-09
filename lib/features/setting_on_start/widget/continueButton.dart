import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContinueButton extends StatefulWidget {
  const ContinueButton({super.key,
  });

  @override
  State<ContinueButton> createState() => _ContinueButtonState();
}

class _ContinueButtonState extends State<ContinueButton> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9),
      child: AnimatedContainer(
          duration: const Duration(microseconds: 500),
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color:Colors.white,
            ),
            alignment: Alignment.center,
          child: Text('Continue',  style: GoogleFonts.getFont('Bona Nova',textStyle: const TextStyle(height: 0.9, color:Colors.black) ,fontSize: 20,  letterSpacing: 0.2, wordSpacing:0.3,),),
        ),
    );
  }
}