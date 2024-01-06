import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

@RoutePage()
class PersonalDataScreen extends StatefulWidget {
  const PersonalDataScreen({super.key});

  @override
  State<PersonalDataScreen> createState() => _PersonalDataScreenState();
}

class _PersonalDataScreenState extends State<PersonalDataScreen> {
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
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Column(
                  children: [
                    const TextTellUs(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const TextThisWay(),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                const ContainerSetPhysicalCondition(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
