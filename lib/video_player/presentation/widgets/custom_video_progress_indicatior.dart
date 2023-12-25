import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CustomVideoProgressIndicator extends StatefulWidget {
  const CustomVideoProgressIndicator({
    super.key,
    required this.controller,
  });

  final VideoPlayerController controller;

  @override
  State<CustomVideoProgressIndicator> createState() =>
      _CustomVideoProgressIndicatorState();
}

class _CustomVideoProgressIndicatorState
    extends State<CustomVideoProgressIndicator> {
  _CustomVideoProgressIndicatorState() {
    listener = () {
      if (!mounted) {
        return;
      }
      setState(() {});
    };
  }

  late VoidCallback listener;

  VideoPlayerController get controller => widget.controller;

  @override
  void initState() {
    super.initState();
    controller.addListener(listener);
  }

  @override
  void deactivate() {
    controller.removeListener(listener);
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    int maxBuffering = 0;
    for (final DurationRange range in controller.value.buffered) {
      final int end = range.end.inMilliseconds;
      if (end > maxBuffering) {
        maxBuffering = end;
      }
    }

    return ProgressBar(
      progress: controller.value.position,
      buffered: Duration(milliseconds: maxBuffering),
      total: controller.value.duration,
      progressBarColor: Colors.red,
      baseBarColor: Colors.white.withOpacity(0.24),
      bufferedBarColor: Colors.white.withOpacity(0.24),
      thumbColor: Colors.white,
      barHeight: 3.0,
      thumbRadius: 5.0,
      onSeek: (duration) {
        controller.seekTo(duration);
        //_player.seek(duration);
      },
    );
  }
}
