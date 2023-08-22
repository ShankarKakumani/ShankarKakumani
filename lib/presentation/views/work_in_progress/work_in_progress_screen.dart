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
    return Scaffold(
      backgroundColor: ColorManager.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Lottie.asset(
              AssetManager.workingAnimation,
            ),
          ),
          DefaultTextStyle(
            style: GoogleFonts.workSans(
              fontSize: 30.0,
              color: Colors.white,
            ),
            child: AnimatedTextKit(
              totalRepeatCount: 1,
              animatedTexts: [
                TypewriterAnimatedText(
                  'Hello there! I\'m Shankar',
                  speed: const Duration(milliseconds: 150),
                ),
              ],
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
          const SizedBox(
            height: 50,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
