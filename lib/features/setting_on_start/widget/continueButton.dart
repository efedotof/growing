<<<<<<< HEAD
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContinueButton extends StatefulWidget {
  const ContinueButton({super.key,
  required this.tabsRouter,
  required this.index,
  });
  final TabsRouter tabsRouter;
  final int index;
  @override
  State<ContinueButton> createState() => _ContinueButtonState();
}

class _ContinueButtonState extends State<ContinueButton> {
  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          isClick = true;
          
        });
        widget.tabsRouter.setActiveIndex(widget.index);   
      },
      child: Padding(
        padding: EdgeInsets.all(9),
        child: AnimatedContainer(
            duration: Duration(microseconds: 500),
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color:isClick?Colors.black :Colors.white,
              ),
              alignment: Alignment.center,
            child: Text('Continue',  style: GoogleFonts.getFont('Bona Nova',textStyle:TextStyle(height: 0.9, color:isClick?  Colors.white:Colors.black) ,fontSize: 20,  letterSpacing: 0.2, wordSpacing:0.3,),),
          ),
      ),
    );
  }
=======
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContinueButton extends StatefulWidget {
  const ContinueButton({super.key,
  required this.tabsRouter,
  required this.index,
  });
  final TabsRouter tabsRouter;
  final int index;
  @override
  State<ContinueButton> createState() => _ContinueButtonState();
}

class _ContinueButtonState extends State<ContinueButton> {
  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          isClick = true;
          
        });
        widget.tabsRouter.setActiveIndex(widget.index);   
      },
      child: Padding(
        padding: EdgeInsets.all(9),
        child: AnimatedContainer(
            duration: Duration(microseconds: 500),
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color:isClick?Colors.black :Colors.white,
              ),
              alignment: Alignment.center,
            child: Text('Continue',  style: GoogleFonts.getFont('Bona Nova',textStyle:TextStyle(height: 0.9, color:isClick?  Colors.white:Colors.black) ,fontSize: 20,  letterSpacing: 0.2, wordSpacing:0.3,),),
          ),
      ),
    );
  }
>>>>>>> eaf69a42d3fb2641b7896640dd815ad1a54beaab
}