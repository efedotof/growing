<<<<<<< HEAD
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../router/router.dart';

class ButtonContinue extends StatelessWidget {
  const ButtonContinue({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
       AutoRouter.of(context).push(const SettingOnStartRoute());
      },
      child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.black
                ),
                alignment: Alignment.center,
                child: Text(
                'Continue',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont('Bona Nova',textStyle:TextStyle(height: 0.9, color: Colors.white) ,fontSize: 20,  letterSpacing: 2.4, wordSpacing:0.3,),
              ),
              ),
    );
  }
=======
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../router/router.dart';

class ButtonContinue extends StatelessWidget {
  const ButtonContinue({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
       AutoRouter.of(context).push(const SettingOnStartRoute());
      },
      child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.black
                ),
                alignment: Alignment.center,
                child: Text(
                'Continue',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont('Bona Nova',textStyle:TextStyle(height: 0.9, color: Colors.white) ,fontSize: 20,  letterSpacing: 2.4, wordSpacing:0.3,),
              ),
              ),
    );
  }
>>>>>>> eaf69a42d3fb2641b7896640dd815ad1a54beaab
}