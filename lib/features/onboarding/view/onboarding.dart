import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

@RoutePage()
class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEB3EF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Column(
              children: [
                const TextWelcomeToGrowing(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                const TextBecomeTheBestVersion(),
              ],
            ),
            const ImageLayer1(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            const ButtonContinue(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
