import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageSvg extends StatelessWidget {
  const ImageSvg({super.key,
       required this.asset
  
  });
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Container(
       width: MediaQuery.of(context).size.width * 0.6,
       height: MediaQuery.of(context).size.height * 0.5,
       child: Image.asset(asset, width: 40, height: 40,));
  }
}