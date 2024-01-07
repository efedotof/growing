import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../Model/model.dart';
import 'widgets.dart';

class ContainerSetPhysicalCondition extends StatefulWidget {
  const ContainerSetPhysicalCondition({super.key});

  @override
  State<ContainerSetPhysicalCondition> createState() =>
      _ContainerSetPhysicalConditionState();
}

class _ContainerSetPhysicalConditionState
    extends State<ContainerSetPhysicalCondition> {
 

  @override
  Widget build(BuildContext context) {
    context.watch<UserModel>();
    var appFile =  context.watch<ApplicationFile>();
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: const Color(0xFFFEB3EF),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Stack(
          children: List.generate(appFile.colorsContainerSetPhysicalCondition.length, (index) {
            return Positioned(
              top: index * 70,
              left: 0,
              right: 0,
              child: GestureDetector(
                onTap: (){ ShowBottomBars(
                                        name: appFile.nameContainerSetPhysicalCondition[index],
                                        controller: appFile.controllersContainerSetPhysicalCondition[index],
                                        hint: appFile.nameContainerSetPhysicalCondition[index],
                                      ).showBottomModal(context);
                            },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: appFile.colorsContainerSetPhysicalCondition[index],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02,
                        vertical: MediaQuery.of(context).size.width * 0.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          appFile.nameContainerSetPhysicalCondition[index],
                          style: GoogleFonts.getFont(
                            'Bona Nova',
                            textStyle:
                              const  TextStyle(height: 0.9, color: Colors.black),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.2,
                            wordSpacing: 0.3,
                          ),
                        ),
                        Row(
                          children: [
                            Text(appFile.controllersContainerSetPhysicalCondition[index].text),
                            const SizedBox(width: 10,),
                            const Icon(Icons.arrow_forward_ios_outlined),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
//onEditingComplete:(){
                      //   switch(index){
                      //     case 0:
                      //       context.read<UserModel>().setName(controller[index].text);
                      //     case 1:
                      //       context.read<UserModel>().setAge(controller[index].text);
                      //     case 2:
                      //       context.read<UserModel>().setGender(controller[index].text);
                      //     case 3:
                      //       context.read<UserModel>().setHeigth(controller[index].text);
                      //     case 4:
                      //       context.read<UserModel>().setWeigth(controller[index].text);
                      //   }
                      // },