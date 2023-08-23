// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardState {
  PlayerState? get playerState => throw _privateConstructorUsedError;
  PlaybackEvent? get playbackEvent => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PlayerState? playerState, PlaybackEvent? playbackEvent)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlayerState? playerState, PlaybackEvent? playbackEvent)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlayerState? playerState, PlaybackEvent? playbackEvent)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call({PlayerState? playerState, PlaybackEvent? playbackEvent});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerState = freezed,
    Object? playbackEvent = freezed,
  }) {
    return _then(_value.copyWith(
      playerState: freezed == playerState
          ? _value.playerState
          : playerState // ignore: cast_nullable_to_non_nullable
              as PlayerState?,
      playbackEvent: freezed == playbackEvent
          ? _value.playbackEvent
          : playbackEvent // ignore: cast_nullable_to_non_nullable
              as PlaybackEvent?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlayerState? playerState, PlaybackEvent? playbackEvent});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerState = freezed,
    Object? playbackEvent = freezed,
  }) {
    return _then(_$_Initial(
      playerState: freezed == playerState
          ? _value.playerState
          : playerState // ignore: cast_nullable_to_non_nullable
              as PlayerState?,
      playbackEvent: freezed == playbackEvent
          ? _value.playbackEvent
          : playbackEvent // ignore: cast_nullable_to_non_nullable
              as PlaybackEvent?,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({this.playerState = null, this.playbackEvent = null})
      : super._();

  @override
  @JsonKey()
  final PlayerState? playerState;
  @override
  @JsonKey()
  final PlaybackEvent? playbackEvent;

  @override
  String toString() {
    return 'DashboardState.initial(playerState: $playerState, playbackEvent: $playbackEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.playerState, playerState) ||
                other.playerState == playerState) &&
            (identical(other.playbackEvent, playbackEvent) ||
                other.playbackEvent == playbackEvent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playerState, playbackEvent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PlayerState? playerState, PlaybackEvent? playbackEvent)
        initial,
  }) {
    return initial(playerState, playbackEvent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlayerState? playerState, PlaybackEvent? playbackEvent)?
        initial,
  }) {
    return initial?.call(playerState, playbackEvent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlayerState? playerState, PlaybackEvent? playbackEvent)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(playerState, playbackEvent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends DashboardState {
  const factory _Initial(
      {final PlayerState? playerState,
      final PlaybackEvent? playbackEvent}) = _$_Initial;
  const _Initial._() : super._();

  @override
  PlayerState? get playerState;
  @override
  PlaybackEvent? get playbackEvent;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
