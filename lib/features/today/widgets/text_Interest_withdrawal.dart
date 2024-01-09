import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:growing/Model/model.dart';
import 'package:provider/provider.dart';

class TextInterestwithdrawal extends StatelessWidget {
  const TextInterestwithdrawal({super.key,
  });


  @override
  Widget build(BuildContext context) {
    var userModel = context.watch<UserModel>();
    return Text(
              '${userModel.witchdrawal} %',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Bona Nova',textStyle:TextStyle(height: 0.9, color: Colors.white) ,fontSize: 50, fontWeight: FontWeight.bold, letterSpacing: 0.2, wordSpacing:0.3,),
            );
  }
}