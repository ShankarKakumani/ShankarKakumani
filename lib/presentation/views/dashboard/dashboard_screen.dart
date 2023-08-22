import 'package:flutter/material.dart';
import 'package:shankar_kakumani/presentation/manager/color_manager.dart';
import 'dart:math' as math;

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundColor,
      body: getScreenBody(),
    );
  }

  Widget getScreenBody() {
    return Column(
      children: [
        Container(
          color: ColorManager.backgroundColor,
          height: 100,
          width: double.infinity,
          child: getHeaderUI(),
        ),
        Expanded(
            child: ListView(
          children: [
            Container(
              height: 300,
              color: const Color(0xFFFF671F),
            ),
            Container(
              height: 300,
              color: Colors.white,
              child: Center(
                child: CustomPaint(
                  size: const Size(200, 200),
                  painter: AshokaChakraPainter(),
                ),
              ),
            ),
            Container(
              height: 300,
              color: const Color(0xFF046A38),
            )
          ],
        )),
      ],
    );
  }

  Widget getHeaderUI() {
    return const Row(
      children: [
        Spacer(),
        Text('Blogs', style: TextStyle(color: Colors.white)),
        SizedBox(width: 24),
        Text('Projects', style: TextStyle(color: Colors.white)),
        SizedBox(width: 72)
      ],
    );
  }
}

class AshokaChakraPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double radius = math.min(size.width / 2, size.height / 2);
    final Offset center = Offset(size.width / 2, size.height / 2);
    final Paint paint = Paint()
      ..color = const Color(0xFF06038D)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0;

    // Draw the circle
    canvas.drawCircle(center, radius, paint);

    // Draw the 24 spokes
    const double angle = 2 * math.pi / 24;
    for (int i = 0; i < 24; i++) {
      final double x = radius * math.cos(i * angle);
      final double y = radius * math.sin(i * angle);
      canvas.drawLine(center, center + Offset(x, y), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
