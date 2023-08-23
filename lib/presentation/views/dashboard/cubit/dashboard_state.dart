part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const DashboardState._();

  const factory DashboardState.initial({
    @Default(null) PlayerState? playerState,
    @Default(null) PlaybackEvent? playbackEvent,
  }) = _Initial;
}
