import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:growing/Model/model.dart';
import 'package:growing/router/router.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    context.read<UserModel>().getDataToLocalStore(context);
    return Scaffold(
      body:  Center(child: Text('Center Splash')),
    );
  }
}