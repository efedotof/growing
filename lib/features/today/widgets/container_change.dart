import 'package:flutter/material.dart';

class ContainerChange extends StatefulWidget {
  const ContainerChange({super.key});

  @override
  State<ContainerChange> createState() => _ContainerChangeState();
}

class _ContainerChangeState extends State<ContainerChange> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.01, vertical: MediaQuery.of(context).size.height * 0.01),
      child: Container(
        padding:const EdgeInsets.all(6),
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: const Color(0xFFF4F378),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF29292A),

              ),
              alignment: Alignment.center,
              child: Text('Steps', style: const TextStyle(color: Colors.white),),
            ),
            Icon(Icons.dark_mode, color:Color(0xFF484847), size: 34, ),
            Text('6h 15min', style: const TextStyle(color: Colors.black),),
            Text('1h 45min less\n then your norm', style: const TextStyle(color: Colors.black),),
          ],  
        ),
      ),
    );
  }
}