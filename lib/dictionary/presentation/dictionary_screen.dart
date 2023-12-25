import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freelingo/core/models/fl_dictionary.dart';
import 'package:freelingo/core/models/fl_word.dart';
import 'package:freelingo/dictionary/application/dictionary_bloc.dart';
import 'package:freelingo/navigation/app_router.dart';
import 'package:freelingo/theme/colors.dart';
import 'package:freelingo/widgets/fl_text_field.dart';
import 'package:learning_translate/learning_translate.dart';

@RoutePage()
class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({super.key, required this.dictionary});

  final FlDictionary dictionary;

  @override
  State<DictionaryScreen> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  final TextEditingController wordController = TextEditingController();

  final TextEditingController translateController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  late final List<FlWord> words = [...widget.dictionary.words];

  @override
  void initState() {
    super.initState();
    context.read<DictionaryBloc>().add(
        DictionaryEvent.listenDictionary(dictionaryId: widget.dictionary.id));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DictionaryBloc, DictionaryState>(
        builder: (context, state) {
      final List<FlWord>? words = [...?state.dictionary?.words];
      return Scaffold(
        appBar: appBar(context, state.dictionary),
        body: words == null || words.isEmpty
            ? const Center(
                child: Text('You haven\'t any words in this dictionary'),
              )
            : ReorderableListView.builder(
                onReorder: (int oldIndex, int newIndex) {
                  setState(() {
                    if (oldIndex < newIndex) {
                      newIndex -= 1;
                    }
                    final FlWord item = words.removeAt(oldIndex);
                    words.insert(newIndex, item);
                  });
                },
                itemCount: words.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    key: ValueKey(words[index]),
                    title: Text(
                        '${words[index].title}: ${words[index].translations}'),
                    subtitle: Text(words[index].description),
                  );
                },
              ),
      );
    });
  }

  AppBar appBar(BuildContext context, FlDictionary? dictionary) {
    return AppBar(
      title: Text(
        widget.dictionary.name,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      actions: [
        IconButton(
            onPressed: () {
              showDialog<void>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return BlocListener<DictionaryBloc, DictionaryState>(
                    listener: (context, state) {},
                    child: GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                      },
                      child: CupertinoAlertDialog(
                        title: Text(
                          'Add new dictionary',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        content: Column(
                          children: [
                            Text(
                              'Write word info',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const SizedBox(height: 16),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              color: FlColors.transparent,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 48,
                                    child: FlTextField(
                                      controller: wordController,
                                      labelText: 'Word',
                                      filled: true,
                                      autofocus: true,
                                      onChanged: (word) async {
                                        Translator translator = Translator(
                                          from: ENGLISH,
                                          to: UKRAINIAN,
                                        );
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
                              context.read<DictionaryBloc>().add(
                                    DictionaryEvent.addWord(
                                      dictionary:
                                          widget.dictionary.copyWith(words: [
                                        ...widget.dictionary.words,
                                        FlWord(
                                            translations: [
                                              translateController.text
                                            ],
                                            description:
                                                descriptionController.text,
                                            title: wordController.text,
                                            id: '',
                                            createdAt: DateTime.now())
                                      ]),
                                    ),
                                  );
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            icon: const Icon(Icons.add)),
        const SizedBox(width: 5),
        if (dictionary != null)
          IconButton(
              onPressed: () {
                context.pushRoute(CardsLearnRoute(
                  dictionary: dictionary,
                ));
              },
              icon: const Icon(Icons.play_arrow)),
        if (dictionary != null) const SizedBox(width: 10),
      ],
    );
  }
}
