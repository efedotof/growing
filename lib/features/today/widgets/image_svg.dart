import 'package:flutter/material.dart';

class ImageSvg extends StatelessWidget {
  const ImageSvg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.2,
        child: Image.asset(
          'assets/icons/pers.png',
          fit: BoxFit.fill,
        ));
  }
}
