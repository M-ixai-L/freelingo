import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freelingo/core/models/fl_dictionary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_player_bloc.freezed.dart';
part 'video_player_event.dart';
part 'video_player_state.dart';

class VideoPlayerBloc extends Bloc<VideoPlayerEvent, VideoPlayerState> {
  VideoPlayerBloc() : super(const VideoPlayerState()) {
    on<_SelectDictionary>(_selectDictionary);
  }

  FutureOr<void> _selectDictionary(
      _SelectDictionary event, Emitter<VideoPlayerState> emit) {
    emit(state.copyWith(selectedDictionary: event.dictionary));
  }
}
