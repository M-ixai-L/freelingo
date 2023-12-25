import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freelingo/core/models/fl_dictionary.dart';
import 'package:freelingo/core/services/storage_service.dart';
import 'package:freelingo/home/application/home_bloc.dart';
import 'package:freelingo/theme/colors.dart';
import 'package:freelingo/video_player/presentation/widgets/controls_overlay.dart';
import 'package:freelingo/video_player/presentation/widgets/selectable_closed_caption.dart';
import 'package:freelingo/widgets/fl_text_field.dart';
import 'package:image_picker/image_picker.dart';
import 'package:learning_translate/learning_translate.dart';
import 'package:video_player/video_player.dart';

@RoutePage()
class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController? _controller;

  final TextEditingController wordController = TextEditingController();

  final TextEditingController translateController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  File? galleryFile;
  final picker = ImagePicker();
  final FocusNode subFocusNode = FocusNode();

  Future<ClosedCaptionFile> _loadCaptions() async {
    final String fileContents =
        await DefaultAssetBundle.of(context).loadString('assets/subtitles.srt');
    return SubRipCaptionFile(fileContents);
  }

  Translator translator = Translator(
    from: ENGLISH,
    to: UKRAINIAN,
  );

  @override
  void initState() {
    super.initState();
    checkInitialPath();
  }

  Future<void> checkInitialPath() async {
    final String? path = await StorageService().getVideoPath();
    if (path != null && path.isNotEmpty) {
      try {
        galleryFile = File(path);
        initializeCamera();
      } catch (e) {
        log(e.toString());
      }
    }
  }

  void initializeCamera() {
    if (galleryFile != null) {
      _controller = VideoPlayerController.file(
        galleryFile!,
        closedCaptionFile: _loadCaptions(),
        videoPlayerOptions: VideoPlayerOptions(
          mixWithOthers: true,
          allowBackgroundPlayback: true,
        ),
      );

      _controller!.addListener(() {
        setState(() {});
      });
      _controller!.initialize();
    }
  }

  String text = '';

  String selectedText = '';

  FlDictionary? selectedDictionary;

  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    if (_controller?.value.caption.text != null &&
        _controller!.value.caption.text.isNotEmpty) {
      text = _controller!.value.caption.text;
    }
    return SelectionArea(
      onSelectionChanged: (selectedContext) {
        if (selectedContext != null) {
          selectedText = selectedContext.plainText;
        }
      },
      contextMenuBuilder: (BuildContext context, SelectableRegionState state) {
        return AdaptiveTextSelectionToolbar.buttonItems(
          anchors: state.contextMenuAnchors,
          buttonItems: [
            ContextMenuButtonItem(
              onPressed: () async {
                String translatedText =
                    await translator.translate(selectedText);
                wordController.text = selectedText;
                translateController.text = translatedText;
                final dictionaries =
                    context.read<HomeBloc>().state.dictionaries;
                showDialog<void>(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                      },
                      child: CupertinoAlertDialog(
                        title: Text(
                          'Add new word',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        content: Column(
                          children: [
                            const SizedBox(height: 16),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Select dictionary',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              color: FlColors.transparent,
                              child: Column(
                                children: [
                                  DropdownButtonHideUnderline(
                                    child: ButtonTheme(
                                      alignedDropdown: true,
                                      child: DropdownButton2<FlDictionary>(
                                        isExpanded: true,
                                        value: /*widget.selectedUser*/ null,
                                        onMenuStateChange: (value) {
                                          if (isMenuOpen != value) {
                                            setState(() {
                                              isMenuOpen = value;
                                            });
                                          }
                                        },
                                        menuItemStyleData:
                                            const MenuItemStyleData(height: 36),

                                        customButton: Container(
                                          padding: const EdgeInsets.only(
                                            left: 24,
                                            right: 12,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              if (selectedDictionary == null)
                                                const Text(
                                                  'Select Dictionary',
                                                )
                                              else
                                                Text(
                                                  '${selectedDictionary?.name}',
                                                ),
                                              if (isMenuOpen)
                                                const Icon(
                                                    Icons.arrow_circle_up_sharp)
                                              else
                                                const Icon(Icons
                                                    .arrow_circle_down_sharp)
                                            ],
                                          ),
                                        ),
                                        // style: theme.dropdownMenuTheme.textStyle,
                                        iconStyleData: const IconStyleData(
                                          icon: Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: Icon(
                                                Icons.arrow_circle_down_sharp),
                                          ),
                                          openMenuIcon: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 10),
                                              child: Icon(
                                                  Icons.arrow_circle_up_sharp)),
                                        ),
                                        items: dictionaries.map(
                                          (FlDictionary item) {
                                            return DropdownMenuItem<
                                                FlDictionary>(
                                              value: item,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(height: 2),
                                                  Text(
                                                    '${item.name}',
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    // style: theme.dropdownMenuTheme.textStyle,
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        ).toList(),
                                        onChanged: (FlDictionary? newValue) {
                                          selectedDictionary = newValue;

                                          setState(() {});
                                        },
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  SizedBox(
                                    height: 48,
                                    child: FlTextField(
                                      controller: wordController,
                                      labelText: 'Word',
                                      filled: true,
                                      autofocus: true,
                                      onChanged: (word) async {
                                        String translatedText =
                                            await translator.translate(word);
                                        if (translatedText.isNotEmpty &&
                                            translatedText != '0' &&
                                            word.isNotEmpty) {
                                          translateController.text =
                                              translatedText;
                                        } else {
                                          translateController.text = '';
                                        }
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  SizedBox(
                                    height: 48,
                                    child: FlTextField(
                                      controller: translateController,
                                      labelText: 'Translate',
                                      filled: true,
                                      autofocus: true,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                      child: const Text('Clear'),
                                      onPressed: () {
                                        translateController.text = '';
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  SizedBox(
                                    height: 144,
                                    child: FlTextField(
                                      labelText: 'Description',
                                      expands: true,
                                      controller: descriptionController,
                                      filled: true,
                                      autofocus: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        actions: <Widget>[
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: Theme.of(context).textTheme.bodyMedium,
                            ),
                            child: const Text('Cancel'),
                            onPressed: () {
                              wordController.text = '';
                              translateController.text = '';
                              descriptionController.text = '';
                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: Theme.of(context).textTheme.bodyMedium,
                            ),
                            child: const Text('Save'),
                            onPressed: () {
                              // context.read<DictionaryBloc>().add(
                              //   DictionaryEvent.addWord(
                              //     dictionary:
                              //     widget.dictionary.copyWith(words: [
                              //       ...widget.dictionary.words,
                              //       FlWord(
                              //           translations: [
                              //             translateController.text
                              //           ],
                              //           description:
                              //           descriptionController.text,
                              //           title: wordController.text,
                              //           id: '',
                              //           createdAt: DateTime.now())
                              //     ]),
                              //   ),
                              // );
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              label: 'Add to dictionary',
            )
          ],
        );
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Learn English by video'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: _controller != null
                ? Column(
                    children: [
                      AspectRatio(
                        aspectRatio: _controller!.value.aspectRatio,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            VideoPlayer(_controller!),
                            ControlsOverlay(controller: _controller!),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      SelectableClosedCaption(
                        text: text,
                      ),
                    ],
                  )
                : const Center(
                    child: Text('Please select video'),
                  ),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (_controller != null) {
                    _controller!.value.isPlaying
                        ? _controller!.pause()
                        : _controller!.play();
                  }
                });
              },
              child: Icon(
                _controller == null || _controller!.value.isPlaying
                    ? Icons.pause
                    : Icons.play_arrow,
              ),
            ),
            const SizedBox(width: 20),
            FloatingActionButton(
              onPressed: () async {
                final pickedFile = await picker.pickVideo(
                  source: ImageSource.gallery,
                  preferredCameraDevice: CameraDevice.front,
                );
                XFile? xfilePick = pickedFile;
                setState(
                  () {
                    if (xfilePick != null) {
                      galleryFile = File(pickedFile!.path);
                      StorageService().saveVideoPath(pickedFile.path);
                      initializeCamera();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Nothing is selected')));
                    }
                  },
                );
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}
