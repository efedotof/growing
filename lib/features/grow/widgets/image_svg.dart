import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageSvg extends StatelessWidget {
  const ImageSvg({super.key,
       required this.asset
  
  });
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Image.asset(asset, width: 40, height: 40,);
  }
}