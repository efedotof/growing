import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

@RoutePage()
class ChoiceOfHabitsScreen extends StatefulWidget {
  const ChoiceOfHabitsScreen({super.key});

  @override
  State<ChoiceOfHabitsScreen> createState() => _ChoiceOfHabitsScreenState();
}

class _ChoiceOfHabitsScreenState extends State<ChoiceOfHabitsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF1A1A1A),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal:  MediaQuery.of(context).size.width * 0.1),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                Column(
                  children: [
                    const TextYourHabits(),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                    const TextWeHave(),
                  ],
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                const ContainerHabits(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}