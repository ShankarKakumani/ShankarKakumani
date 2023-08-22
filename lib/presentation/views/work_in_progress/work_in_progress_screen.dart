import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:shankar_kakumani/presentation/manager/asset_manager.dart';
import 'package:shankar_kakumani/presentation/manager/color_manager.dart';

class WorkInProgressScreen extends StatelessWidget {
  const WorkInProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Title(
      title: "Shankar Kakumani | Dashboard",
      color: Colors.white,
      child: Scaffold(
        backgroundColor: ColorManager.backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            SizedBox(
              child: Lottie.asset(
                AssetManager.workingAnimation,
              ),
            ),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Hello there! I\'m Shankar',
                  speed: const Duration(milliseconds: 150),
                  textStyle: GoogleFonts.workSans(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 150,
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
