import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:growing/Model/model.dart';
import 'package:provider/provider.dart';

import 'widgets.dart';

class ContainerHabits extends StatefulWidget {
  const ContainerHabits({super.key});

  @override
  State<ContainerHabits> createState() => _ContainerHabitsState();
}

class _ContainerHabitsState extends State<ContainerHabits> {
  @override
  Widget build(BuildContext context) {
    var appFile =  context.watch<ApplicationFile>();
    var userModel =  context.watch<UserModel>();
    return Column(
      children: List.generate(
          appFile.colorsHabits.length,
          (index) => Padding(
                padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.004),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03,vertical: MediaQuery.of(context).size.height * 0.02,),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: appFile.colorsHabits[index],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(appFile.namesHabits[index],
                             style: GoogleFonts.getFont(
                              'Bona Nova',
                              textStyle:
                                const  TextStyle(height: 0.9, color: Colors.black),
                              fontSize: 20,
                              letterSpacing: 0.2,
                              wordSpacing: 0.3,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            
                            child: Text(userModel.habitans[index],
                             
                               style: GoogleFonts.getFont(
                                'Bona Nova',
                                
                                textStyle:
                                  const  TextStyle(height: 0.9, color: Color(0xFF626262)),
                                fontSize: 20,
                                letterSpacing: 0.2,
                                wordSpacing: 0.3,
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: (){
                          ShowBottomBars(
                              name: appFile.namesHabits[index],
                              hint: appFile.namesHabits[index],
                            ).showBottomModal(context);  
                        },
                        child: const Icon(Icons.settings)
                        
                        ),
                    ],
                  ),
                ),
          )
      ),
    );
  }
}