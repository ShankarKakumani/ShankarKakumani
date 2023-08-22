import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lottie/lottie.dart';
import 'package:shankar_kakumani/presentation/manager/asset_manager.dart';
import 'package:shankar_kakumani/presentation/manager/color_manager.dart';
import 'package:shankar_kakumani/presentation/manager/data_manager.dart';

class WorkInProgressScreen extends StatelessWidget {
  WorkInProgressScreen({super.key});

  final player = AudioPlayer()
    ..setUrl(DataManager.backgroundMusicUrl)
    ..setVolume(0.1);

  @override
  Widget build(BuildContext context) {
    return Title(
      title: "Shankar Kakumani",
      color: Colors.white,
      child: Scaffold(
        backgroundColor: ColorManager.backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SizedBox(
              child: Lottie.asset(
                AssetManager.workingAnimation,
              ),
            ),
            AnimatedTextKit(
              isRepeatingAnimation: false,
              animatedTexts: [
                TypewriterAnimatedText(
                  'Hello there! I\'m Shankar',
                  speed: const Duration(milliseconds: 150),
                  textStyle: GoogleFonts.workSans(
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
              onTap: () async {
                if (player.playing) {
                  player.pause();
                } else {
                  player.play();
                }
              },
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
