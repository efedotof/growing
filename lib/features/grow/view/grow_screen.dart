import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

@RoutePage()
class GrowScreen extends StatefulWidget {
  const GrowScreen({super.key});

  @override
  State<GrowScreen> createState() => _GrowScreenState();
}

class _GrowScreenState extends State<GrowScreen> {

  List<String> names = [
    'Perfect day',
    'Good day',
    'Bad day',
  ];
  List<int> items = [
    4,5,7
  ];
  List<Color?> colors = [
    const Color(0xFFFEB3EF),
    const Color(0xFFB4EDFF),
    const Color(0xFFCBCBCB),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A19),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text('Grow', style: const TextStyle(color: Colors.white),),
        actions: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.035,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFFFFFFF),
            ),
          ),
          SizedBox(width: 15,),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.5,
       
                child: const ImageSvg(asset:'assets/icons/bootl.png'),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
              Column(
                children: List.generate(names.length, (index) => 
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.002),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: colors[index],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(names[index], style: const TextStyle(color: Colors.black),),
                          Text(items[index].toString(), style: const TextStyle(color: Colors.black),),
                        ],
                      ),
                    ),
                  )
                
                
                ),

                
              )

            ],
          )
        ),
      ),
    );
  }
}