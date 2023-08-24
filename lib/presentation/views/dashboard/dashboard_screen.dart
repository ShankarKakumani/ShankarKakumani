import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_constraintlayout/flutter_constraintlayout.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:shankar_kakumani/common/injection.dart';
import 'package:shankar_kakumani/common/utils/screen_utils.dart';
import 'package:shankar_kakumani/presentation/manager/json_manager.dart';
import 'package:shankar_kakumani/presentation/manager/color_manager.dart';
import 'package:shankar_kakumani/presentation/manager/data_manager.dart';
import 'package:shankar_kakumani/presentation/views/dashboard/cubit/dashboard_cubit.dart';

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
        child: getScreenUI(context),
      ),
    );
  }

  Widget getScreenUI(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundColor,
      body: getPageOne(context),
    );
  }

  Widget getPageOne(BuildContext context) {
    var centerAnimation = ConstraintId('centerAnimation');
    var fireAnimation = ConstraintId('fireAnimation');
    return ConstraintLayout(
      height: double.infinity,
      childConstraints: [
        Constraint(
          id: centerAnimation,
          centerTo: parent,
          height: ScreenUtils.screenHeight(context),
        ),
        Constraint(
          id: fireAnimation,
          bottomLeftTo: parent.bottomMargin(25).leftMargin(20),
        )
      ],
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<DashboardCubit, DashboardState>(
              buildWhen: (p, c) {
                return p.playerState != c.playerState;
              },
              builder: (context, state) {
                return Container(
                  height: 500,
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
          ],
        ).applyConstraintId(id: centerAnimation),
        getFire().applyConstraintId(id: fireAnimation),
      ],
    );
  }

  Widget getFire() {
    return SizedBox(
      height: 100,
      child: BlocBuilder<DashboardCubit, DashboardState>(
        buildWhen: (p, c) {
          return p.playerState != c.playerState;
        },
        builder: (context, state) {
          return InkWell(
            onTap: () {},
            child: Lottie.asset(
              JsonManager.fireAnimation,
              animate: state.playerState?.playing ?? false,
            ),
          );
        },
      ),
    );
  }
}
