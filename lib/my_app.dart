import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shankar_kakumani/presentation/manager/color_manager.dart';
import 'package:shankar_kakumani/presentation/manager/route_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorManager.backgroundColor,
        ),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.initialRoute,
      getPages: RouteManager.getRoutes(),
    );
  }
}
