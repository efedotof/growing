import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:growing/Model/model.dart';
import 'package:provider/provider.dart';

import 'widget.dart';

class ContainerChange extends StatefulWidget {
  const ContainerChange({super.key});

  @override
  State<ContainerChange> createState() => _ContainerChangeState();
}

class _ContainerChangeState extends State<ContainerChange> {
  @override
  Widget build(BuildContext context) {
    var appFile = context.watch<ApplicationFile>();
    var userModel = context.watch<UserModel>();
    return Wrap(
      children: List.generate(appFile.nameContainerChange.length, (index) => 
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.01, vertical: MediaQuery.of(context).size.height * 0.01),
        child: Container(
          padding:const EdgeInsets.only(left: 10, bottom: 10),
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: index % 3 == 0? const Color(0xFFFEB3EF) : const Color(0xFFF4F378),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF29292A),
                ),
                alignment: Alignment.center,
                child: Text(appFile.nameContainerChange[index], style: const TextStyle(color: Colors.white),),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Images(image:appFile.imagesContainerChange[index]),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              if(appFile.nameContainerChange[index] == 'water') Text(userModel.drinkWater.toString() + ' ml',  style: GoogleFonts.getFont('Bona Nova',textStyle: const TextStyle(height: 0.9, color: Colors.black) ,fontSize: 28, fontWeight: FontWeight.bold,  letterSpacing: 0.2, wordSpacing:0.3,),),
              if(appFile.nameContainerChange[index] == 'steps') Text(userModel.CountSteps.toString(),  style: GoogleFonts.getFont('Bona Nova',textStyle: const TextStyle(height: 0.9, color: Colors.black) ,fontSize: 28, fontWeight: FontWeight.bold,  letterSpacing: 0.2, wordSpacing:0.3,),),
              if(appFile.nameContainerChange[index] == 'sport')Text(userModel.hoursminSport,  style: GoogleFonts.getFont('Bona Nova',textStyle: const TextStyle(height: 0.9, color: Colors.black) ,fontSize: 28, fontWeight: FontWeight.bold,  letterSpacing: 0.2, wordSpacing:0.3,),),
              if(appFile.nameContainerChange[index] == 'reading')  Text(userModel.hoursminRead,  style: GoogleFonts.getFont('Bona Nova',textStyle: const TextStyle(height: 0.9, color: Colors.black) ,fontSize: 28, fontWeight: FontWeight.bold,  letterSpacing: 0.2, wordSpacing:0.3,),),
              if(appFile.nameContainerChange[index] == 'sleep') Text(userModel.hoursminSleep,  style: GoogleFonts.getFont('Bona Nova',textStyle: const TextStyle(height: 0.9, color: Colors.black) ,fontSize: 28, fontWeight: FontWeight.bold,  letterSpacing: 0.2, wordSpacing:0.3,),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            ],  
          ),
        ),
      ),
      )
    );
  }
}