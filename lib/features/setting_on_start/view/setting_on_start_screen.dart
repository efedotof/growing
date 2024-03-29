import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:growing/Model/model.dart';
import 'package:growing/router/router.dart';
import 'package:provider/provider.dart';

import '../widget/widget.dart';

@RoutePage()
class SettingOnStartScreen extends StatefulWidget {
  const SettingOnStartScreen({super.key});

  @override
  State<SettingOnStartScreen> createState() => _SettingOnStartScreenState();
}

class _SettingOnStartScreenState extends State<SettingOnStartScreen> {


  @override
  Widget build(BuildContext context) {
    var userModel = context.watch<UserModel>();
    return AutoTabsRouter(
      routes: const [
        PersonalDataRoute(),
        ChoiceOfHabitsRoute(),
        BodyNeedsRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child,)  {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          backgroundColor: const Color(0xFF1A1A1A),
          body: child,
          bottomNavigationBar:userModel.getBool()?
            GestureDetector(
              onTap: () => userModel.nextPageStartPage(context, userModel.indexs() , userModel, tabsRouter),
              child: const ContinueButton())
          :null
        );
      },
    );
  }
}
