import 'package:flutter/material.dart';

class WorkInProgressScreen extends StatelessWidget {
  const WorkInProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text('Work In Progress ...', style: TextStyle(color: Colors.white, fontSize: 20),),
      ),
    );
  }
}
