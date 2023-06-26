import 'package:flutter/material.dart';
import 'package:shankar_kakumani/presentation/manager/color_manager.dart';

class WorkInProgressScreen extends StatelessWidget {
  const WorkInProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.backgroundColor,
      body: Center(
        child: Text(
          'Work In Progress ...',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
