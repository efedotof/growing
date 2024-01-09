import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Image.asset(
            image,
            fit: BoxFit.fill,
          ),
    );
  }

}