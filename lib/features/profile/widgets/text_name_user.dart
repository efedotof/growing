import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../Model/model.dart';

class TextNameUser extends StatelessWidget {
  const TextNameUser({super.key});

  @override
  Widget build(BuildContext context) {
    var userModal = context.watch<UserModel>();
    return Text(
              userModal.name,
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont('Bona Nova',textStyle:TextStyle(height: 0.9, color: Colors.white) ,fontSize: 35, fontWeight: FontWeight.bold, letterSpacing: 0.2, wordSpacing:0.3,),
            );
  }
}