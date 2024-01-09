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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A19),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: const Text('Grow', style: TextStyle(color: Colors.white),),
        actions: const [
          ContainerSelectMonth(),
          SizedBox(width: 15,),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
              const ImageSvg(asset:'assets/icons/bootl.png'),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
              const ElementDisplayData(),
            ],
          )
        ),
      ),
    );
  }
}