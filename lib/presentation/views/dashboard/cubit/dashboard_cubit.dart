import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';

part 'dashboard_state.dart';

part 'dashboard_cubit.freezed.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(const DashboardState.initial()) {
    setupListenersForAudioPlayer();
  }

  final player = AudioPlayer()..setVolume(0.25);

  void setupListenersForAudioPlayer() {
    player.playerStateStream.listen((value) {
      emit(state.copyWith(playerState: value));
    });

    player.playbackEventStream.listen((value) {
      emit(state.copyWith(playbackEvent: value));
    });
  }
}
