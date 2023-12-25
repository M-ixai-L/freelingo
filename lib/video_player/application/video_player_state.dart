part of 'video_player_bloc.dart';

@freezed
class VideoPlayerState with _$VideoPlayerState {
  const factory VideoPlayerState({
    FlDictionary? selectedDictionary,
  }) = _VideoPlayerState;
}
