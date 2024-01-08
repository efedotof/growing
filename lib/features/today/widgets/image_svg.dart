import 'package:flutter/material.dart';

class ImageSvg extends StatelessWidget {
  const ImageSvg({super.key,

  
  });


  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/icons/pers.png', fit: BoxFit.fill,);
  }
}