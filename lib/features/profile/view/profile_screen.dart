import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/widgets.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A19),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: const Text('Profile',style: TextStyle(color: Colors.white),),
        actions: [
          GestureDetector(child: const Icon(Icons.settings, color:Color(0xFF707172))),
          const SizedBox(width: 15,),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            const Avatar(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            const TextNameUser(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            const ButtonText(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            const PaddingContainer(),
          ],
        ),
      ),
    );
  }
}