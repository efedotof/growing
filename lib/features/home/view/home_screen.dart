import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:growing/router/router.dart';
import '../widgets/widgets.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectPageIndex = 0;

  void _openPage(int index, TabsRouter tabsRouter){
    setState (() => _selectPageIndex = index);
    tabsRouter.setActiveIndex(index);
  }
  
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   final config = Configuration.local([Item.schema]);
  //   final realm = Realm(config);
  //   var myItem = realm.all<Item>();
  //   log(myItem.toString());
  // }


  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        TodayRoute(),
        GrowRoute(),
        ProfileRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          backgroundColor: const Color(0xFF1A1A19),
          body: Stack(
            children: [
              Positioned.fill(
                child: child,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0, left: 8.0, right: 8.0),
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF3A3A3A),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildIcon(Icons.wb_sunny_rounded, 0, tabsRouter, _openPage,_selectPageIndex),
                        buildIcon(Icons.star, 1, tabsRouter, _openPage,_selectPageIndex),
                        buildIcon(Icons.person, 2, tabsRouter, _openPage,_selectPageIndex),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ));
        },
      );
  }
}
