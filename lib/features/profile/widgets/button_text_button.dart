import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  const ButtonText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
              child: TextButton(onPressed: (){}, child: const Text('Change', style:  TextStyle(color:  Color(0xFF555555), fontSize: 22),)),
            );
  }
}