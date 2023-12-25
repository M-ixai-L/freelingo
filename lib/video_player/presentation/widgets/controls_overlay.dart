import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freelingo/video_player/presentation/widgets/custom_video_progress_indicatior.dart';
import 'package:video_player/video_player.dart';

class ControlsOverlay extends StatefulWidget {
  const ControlsOverlay({required this.controller});

  static const List<Duration> _exampleCaptionOffsets = <Duration>[
    Duration(seconds: -10),
    Duration(seconds: -3),
    Duration(seconds: -1, milliseconds: -500),
    Duration(milliseconds: -250),
    Duration.zero,
    Duration(milliseconds: 250),
    Duration(seconds: 1, milliseconds: 500),
    Duration(seconds: 3),
    Duration(seconds: 10),
  ];
  static const List<double> _examplePlaybackRates = <double>[
    0.25,
    0.5,
    0.75,
    1.0,
    1.5,
    2.0,
    2.5,
  ];

  final VideoPlayerController controller;

  @override
  State<ControlsOverlay> createState() => _ControlsOverlayState();
}

class _ControlsOverlayState extends State<ControlsOverlay> {
  late bool isShowProgressBar = widget.controller.value.isPlaying;

  late bool isShowItems = widget.controller.value.isPlaying;

  @override
  void didUpdateWidget(covariant ControlsOverlay oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (isShowProgressBar == widget.controller.value.isPlaying) {
      setState(() {
        isShowProgressBar = widget.controller.value.isPlaying;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              isShowItems = !isShowItems;
              Timer(Duration(milliseconds: 1500), () {
                setState(() {
                  if (widget.controller.value.isPlaying) {
                    isShowItems = !isShowItems;
                  }
                });
              });
            });
          },
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 100),
          reverseDuration: const Duration(milliseconds: 100),
          child: isShowItems || !widget.controller.value.isPlaying
              ? Container(
                  color: Colors.black26,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        if (widget.controller.value.isPlaying) {
                          widget.controller.pause();
                          setState(() {
                            isShowProgressBar = true;
                          });
                        } else {
                          widget.controller.play();
                          Timer(Duration(milliseconds: 100), () {
                            setState(() {
                              isShowProgressBar = false;
                              isShowItems = !isShowItems;
                            });
                          });
                        }
                      },
                      child: AbsorbPointer(
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 100.0,
                          semanticLabel: 'Play',
                        ),
                      ),
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 100),
          reverseDuration: const Duration(milliseconds: 100),
          child: isShowProgressBar || isShowItems
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        // SystemChrome.setPreferredOrientations([
                        //   DeviceOrientation.landscapeLeft,
                        //   DeviceOrientation.landscapeRight,
                        // ]);
                        SystemChrome.setPreferredOrientations([
                          DeviceOrientation.portraitUp,
                        ]);
                        // widget.controller.value.rotationCorrection;
                      },
                      icon: const Icon(
                        Icons.fullscreen_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: CustomVideoProgressIndicator(
                        controller: widget.controller,
                      ),
                    ),
                  ],
                )
              : const SizedBox.shrink(),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: PopupMenuButton<Duration>(
            initialValue: widget.controller.value.captionOffset,
            tooltip: 'Caption Offset',
            onSelected: (Duration delay) {
              widget.controller.setCaptionOffset(delay);
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<Duration>>[
                for (final Duration offsetDuration
                    in ControlsOverlay._exampleCaptionOffsets)
                  PopupMenuItem<Duration>(
                    value: offsetDuration,
                    child: Text('${offsetDuration.inMilliseconds}ms'),
                  )
              ];
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                // Using less vertical padding as the text is also longer
                // horizontally, so it feels like it would need more spacing
                // horizontally (matching the aspect ratio of the video).
                vertical: 12,
                horizontal: 16,
              ),
              child: Text(
                  '${widget.controller.value.captionOffset.inMilliseconds}ms'),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: PopupMenuButton<double>(
            initialValue: widget.controller.value.playbackSpeed,
            tooltip: 'Playback speed',
            onSelected: (double speed) {
              widget.controller.setPlaybackSpeed(speed);
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<double>>[
                for (final double speed
                    in ControlsOverlay._examplePlaybackRates)
                  PopupMenuItem<double>(
                    value: speed,
                    child: Text('${speed}x'),
                  )
              ];
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                // Using less vertical padding as the text is also longer
                // horizontally, so it feels like it would need more spacing
                // horizontally (matching the aspect ratio of the video).
                vertical: 12,
                horizontal: 16,
              ),
              child: Text('${widget.controller.value.playbackSpeed}x'),
            ),
          ),
        ),
      ],
    );
  }
}
