import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FluffyCloud extends StatefulWidget {
  final double fillPercentage;

  const FluffyCloud({Key? key, required this.fillPercentage}) : super(key: key);

  @override
  _FluffyCloudState createState() => _FluffyCloudState();
}

class _FluffyCloudState extends State<FluffyCloud> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 120,
      child: Stack(
        children: [
          SvgPicture.asset(
            'assets/fluff.svg', // Замените 'assets/cloud.svg' на путь к вашему SVG-файлу
            color: Colors.blue, // Цвет облака
          ),
          ClipRect(
            clipper: _FluffyClipper(widget.fillPercentage),
            child: SvgPicture.asset(
              'assets/fluff.svg', 
              color: Colors.white, 
            ),
          ),
        ],
      ),
    );
  }
}

class _FluffyClipper extends CustomClipper<Rect> {
  final double fillPercentage;

  _FluffyClipper(this.fillPercentage);

  @override
  Rect getClip(Size size) {
    double height = size.height * fillPercentage;
    return Rect.fromLTRB(0, size.height - height, size.width, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}