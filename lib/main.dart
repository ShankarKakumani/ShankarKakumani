import 'package:flutter/material.dart';
import 'package:shankar_kakumani/presentation/manager/color_manager.dart';
import 'package:shankar_kakumani/presentation/views/work_in_porgress_screen.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorManager.backgroundColor,
        ),
        useMaterial3: true,
      ),
      home: const WorkInProgressScreen(),
    );
  }
}
