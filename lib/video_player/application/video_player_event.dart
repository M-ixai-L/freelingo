part of 'video_player_bloc.dart';

@freezed
class VideoPlayerEvent with _$VideoPlayerEvent {
  const factory VideoPlayerEvent.selectDictionary({FlDictionary? dictionary}) =
      _SelectDictionary;
}
