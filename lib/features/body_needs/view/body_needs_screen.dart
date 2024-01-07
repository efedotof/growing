import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:growing/Model/application_files.dart';
import 'package:provider/provider.dart';

import '../widgets/widgets.dart';

@RoutePage()
class BodyNeedsScreen extends StatefulWidget {
  const BodyNeedsScreen({super.key});

  @override
  State<BodyNeedsScreen> createState() => _BodyNeedsScreenState();
}

class _BodyNeedsScreenState extends State<BodyNeedsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                      'Skip now',
                      style: TextStyle(
                        color: Color(0xFF565656),
                        decoration: TextDecoration.underline
                      ),
                  )
              )
        ],
      ),
      backgroundColor: const Color(0xFF1A1A1A),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              const TextYourBodyDemands(),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
              const ContainerListDemands(),
            ],
          ),
        ),
      ),
    );
  }
}