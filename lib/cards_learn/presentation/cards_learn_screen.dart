import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:freelingo/cards_learn/presentation/widgets/fl_word_card.dart';
import 'package:freelingo/core/models/fl_dictionary.dart';
import 'package:freelingo/core/models/fl_word.dart';

@RoutePage()
class CardsLearnScreen extends StatefulWidget {
  const CardsLearnScreen({
    Key? key,
    required this.dictionary,
  }) : super(key: key);

  final FlDictionary dictionary;
  @override
  State<CardsLearnScreen> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<CardsLearnScreen> {
  final AppinioSwiperController controller = AppinioSwiperController();
  late List<bool> isShowTranslate =
      List.filled(widget.dictionary.words.length, false);

  bool isShowHelp = false;

  bool isShowEnd = false;

  late List<Map<FlWord, AxisDirection>> results = widget.dictionary.words
      .map((word) => {word: AxisDirection.down})
      .toList();

  late final List<FlWord> words = [...widget.dictionary.words];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swipe card'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isShowHelp = !isShowHelp;
              });
            },
            icon: const Icon(Icons.info_outline),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {
              controller.unswipe();
            },
            icon: const Icon(Icons.settings_backup_restore),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    right: 25,
                    top: 25,
                    bottom: 40,
                  ),
                  child: AppinioSwiper(
                    invertAngleOnBottomDrag: true,
                    backgroundCardCount: 2,
                    swipeOptions: const SwipeOptions.only(
                      left: true,
                      right: true,
                      up: true,
                      down: false,
                    ),
                    onEnd: () {
                      setState(() {
                        isShowEnd = true;
                      });
                    },
                    onUnSwipe: (_) {
                      setState(() {
                        isShowEnd = false;
                      });
                    },
                    onSwipeEnd: (revision, target, swipeActivity) {
                      // if (swipeActivity.direction == AxisDirection.up) {
                      //   setState(() {
                      //     results.removeWhere((element) =>
                      //         element.containsKey(words[revision]));
                      //     words.removeAt(revision);
                      //   });
                      //
                      //   return;
                      // }
                      if (revision < target) {
                        setState(() {
                          results
                              .firstWhere((element) =>
                                  element.containsKey(words[revision]))
                              .update(words[revision],
                                  (value) => swipeActivity.direction);
                        });
                      }
                    },
                    controller: controller,
                    cardCount: words.length,
                    cardBuilder: (BuildContext context, int index) {
                      return FlWordCard(
                        candidate: words[index],
                        isShowTranslate: isShowTranslate[index],
                        onTap: () {
                          setState(
                            () {
                              isShowTranslate[index] = !isShowTranslate[index];
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              )
            ],
          ),
          if (isShowEnd)
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'RESULTS:',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Know: ${results.where(
                            (element) => element.containsValue(
                              AxisDirection.left,
                            ),
                          ).length}',
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  'Don\'t: ${results.where(
                        (element) => element.containsValue(
                          AxisDirection.right,
                        ),
                      ).length}',
                ),
                SizedBox(height: 16),
                Text(
                  'Don\'t show again:${results.where(
                        (element) => element.containsValue(
                          AxisDirection.up,
                        ),
                      ).length}',
                ),
              ],
            ),
          if (isShowHelp)
            GestureDetector(
              onTap: () {
                setState(() {
                  isShowHelp = !isShowHelp;
                });
              },
              child: Container(
                color: Colors.black26,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.arrow_upward_outlined,
                          size: 48,
                          color: Colors.white,
                        ),
                        Text(
                          'Don\'t show again',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_back,
                              size: 48,
                              color: Colors.white,
                            ),
                            Text(
                              'Know',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Don\'t know',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 48,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
