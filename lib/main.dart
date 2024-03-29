import 'package:flutter/material.dart';
import 'package:growing/router/router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'Model/model.dart';


void main() async {
  await Hive.initFlutter();
  runApp(MultiProvider(
     providers: [
      ChangeNotifierProvider(create:  (_) => UserModel()),
      ChangeNotifierProvider(create:  (_) => ApplicationFile()),
     ],
    
    child: const GrowingApp()));
}

class GrowingApp extends StatefulWidget {
  const GrowingApp({super.key});

  @override
  State<GrowingApp> createState() => _GrowingAppState();
}

class _GrowingAppState extends State<GrowingApp> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routerConfig: _router.config(),
    );
  }
}




















