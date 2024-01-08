import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/widgets.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {


  List<String> assets = [
    'assets/icons/star_checkmark.svg',
    'assets/icons/darts.svg',
    'assets/icons/fluffy_bad.svg',
    'assets/icons/sun.svg',
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A19),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text('Profile',style: const TextStyle(color: Colors.white),),
        actions: [
          Icon(Icons.settings, color:Color(0xFF707172)),
          SizedBox(width: 15,),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            CircleAvatar(
              maxRadius: 60,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            const TextNameUser(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            
            
            Center(
              child: TextButton(onPressed: (){}, child: const Text('Change', style:  TextStyle(color:  Color(0xFF555555), fontSize: 22),)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Padding(
             padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
              child: Wrap(
                children: List.generate(4, (index) => 
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.008,horizontal: MediaQuery.of(context).size.width * 0.008),
                    child: Stack(
                      children: [
                        Container(
                          padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.008,horizontal: MediaQuery.of(context).size.width * 0.03),
                          width: MediaQuery.of(context).size.width * 0.35,
                          height: MediaQuery.of(context).size.height * 0.13,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color(0xFFF4F378)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ImageSvg(asset: assets[index]),
                              const SizedBox(height: 6,),
                              Text('4',style: GoogleFonts.getFont('Bona Nova',textStyle:TextStyle(height: 0.9, color: Colors.black) ,fontSize: 20, fontWeight: FontWeight.w600, letterSpacing: 0.2, wordSpacing:0.3,),),
                              const SizedBox(height: 10,),
                              Text('daily habits', style: GoogleFonts.getFont('Bona Nova',textStyle:TextStyle(height: 0.9, color: Colors.black) ,fontSize: 15, letterSpacing: 0.2, wordSpacing:0.3,),)
                            ],
                          ),
                        ),
                      Positioned(
                        right: 3,
                        top: 3,
                        child: Transform.rotate(angle: 40 ,child: Icon(Icons.arrow_back))
                      )

                      ],
                       
                    ),

                    
                  )
                
                
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}