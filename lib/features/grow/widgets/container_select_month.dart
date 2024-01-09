import 'package:flutter/material.dart';

class ContainerSelectMonth extends StatelessWidget {
  const ContainerSelectMonth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.035,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFFFFFFF),
      ),
    );
  }
}
