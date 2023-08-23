import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:shankar_kakumani/common/injection.dart';
import 'package:shankar_kakumani/presentation/manager/icon_manager.dart';
import 'package:shankar_kakumani/presentation/manager/json_manager.dart';
import 'package:shankar_kakumani/presentation/manager/color_manager.dart';
import 'package:shankar_kakumani/presentation/manager/data_manager.dart';
import 'package:shankar_kakumani/presentation/views/dashboard/cubit/dashboard_cubit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  final cubit = getIt<DashboardCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) {
        cubit.player.setUrl(DataManager.backgroundMusicUrl);
        return cubit;
      },
      child: Title(
        title: "Shankar Kakumani",
        color: Colors.white,
        child: getScreenUI(),
      ),
    );
  }

  Widget getScreenUI() {
    return Scaffold(
      backgroundColor: ColorManager.backgroundColor,
      body: getPageOne(),
    );
  }

  Widget getPageOne() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        SvgPicture.asset(IconManager.icLinkedIn),
        BlocBuilder<DashboardCubit, DashboardState>(
          buildWhen: (p, c) {
            return p.playerState != c.playerState;
          },
          builder: (context, state) {
            return SizedBox(
              child: Lottie.asset(
                JsonManager.workingAnimation,
                animate: state.playerState?.playing ?? false,
              ),
            );
          },
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
            if (cubit.player.playing) {
              cubit.player.pause();
            } else {
              cubit.player.play();
            }
          },
        ),
        const SizedBox(
          height: 150,
          width: double.infinity,
        )
      ],
    );
  }
}
