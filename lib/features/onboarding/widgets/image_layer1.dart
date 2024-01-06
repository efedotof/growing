<<<<<<< HEAD
import 'package:flutter/material.dart';

class ImageLayer1 extends StatelessWidget {
  const ImageLayer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/Layer1.png',width: MediaQuery.of(context).size.width * 0.9, height: MediaQuery.of(context).size.height * 0.3,fit: BoxFit.fill,);
  }
=======
import 'package:flutter/material.dart';

class ImageLayer1 extends StatelessWidget {
  const ImageLayer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/Layer1.png',width: MediaQuery.of(context).size.width * 0.9, height: MediaQuery.of(context).size.height * 0.3,fit: BoxFit.fill,);
  }
>>>>>>> eaf69a42d3fb2641b7896640dd815ad1a54beaab
}