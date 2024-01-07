import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:growing/Model/userModel.dart';
import 'package:provider/provider.dart';

import 'widgets.dart';

class ContainerSetPhysicalCondition extends StatefulWidget {
  const ContainerSetPhysicalCondition({super.key});

  @override
  State<ContainerSetPhysicalCondition> createState() =>
      _ContainerSetPhysicalConditionState();
}

class _ContainerSetPhysicalConditionState
    extends State<ContainerSetPhysicalCondition> {
  List<Color?> colors = [
    const Color(0xFFFEB3EF),
    const Color(0xFFFAC8F0),
    const Color(0xFFFBE1F8),
    const Color(0xFFBFECFB),
    const Color(0xFF9DDEF2),
  ];
  List<String> name = ['Name', 'Age', 'Gender', 'Heigth', 'Weigth'];
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();
  final TextEditingController _controller5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<TextEditingController> controllers =[
      _controller1,
      _controller2,
      _controller3,
      _controller4,
      _controller5
    ];


    context.watch<UserModel>();
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
          children: List.generate(colors.length, (index) {
            return Positioned(
              top: index * 70,
              left: 0,
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: colors[index],
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
                        name[index],
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
                          Text(controllers[index].text),
                          const SizedBox(width: 10,),
                          GestureDetector(
                            onTap: (){ ShowBottomBars(
                                        name: name[index],
                                        controller: controllers[index],
                                        hint: name[index],
                                      ).showBottomModal(context);
                            },
                    child: const Icon(Icons.arrow_forward_ios_outlined)),
                        ],
                      )
                    ],
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