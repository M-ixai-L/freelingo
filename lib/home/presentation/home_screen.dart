import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freelingo/core/models/fl_dictionary.dart';
import 'package:freelingo/core/models/fl_user.dart';
import 'package:freelingo/home/application/home_bloc.dart';
import 'package:freelingo/navigation/app_router.dart';
import 'package:freelingo/widgets/fl_text_field.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController dictionaryNameController =
      TextEditingController();

  late final HomeBloc _homeBloc = context.read<HomeBloc>();

  @override
  void initState() {
    super.initState();
    _homeBloc.add(const HomeEvent.listenUser());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      final FlUser? user = state.user;
      return Scaffold(
        body: CustomScrollView(
          slivers: [
            appBar(context),
            // if (user != null)
            //   const SliverAppBar(
            //     collapsedHeight: 6,
            //     toolbarHeight: 0,
            //     expandedHeight: 6,
            //     pinned: true,
            //   ),
            user == null || state.dictionaries.isEmpty
                ? const SliverToBoxAdapter(
                    child: Center(
                      child: Text('Oops... Something we went wrong'),
                    ),
                  )
                : SliverList.builder(
                    itemCount: state.dictionaries.length,
                    itemBuilder: (_, index) {
                      return InkWell(
                        onTap: () {
                          context.pushRoute(DictionaryRoute(
                            dictionary: state.dictionaries[index],
                          ));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: ListTile(
                            title: Text(state.dictionaries[index].name),
                            subtitle: Text(
                                'words: ${state.dictionaries[index].words.length}'),
                            trailing:
                                const Icon(Icons.arrow_forward_ios_outlined),
                          ),
                        ),
                      );
                    },
                  ),
          ],
        ),
      );
    });
  }

  SliverAppBar appBar(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      title: Text(
        'Dictionaries',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      actions: [
        IconButton(
            onPressed: () {
              showDialog<void>(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return BlocListener<HomeBloc, HomeState>(
                    listener: (context, state) {
                      if (state.isDictionarySaved) {
                        dictionaryNameController.text = '';
                      }
                    },
                    child: GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                      },
                      child: CupertinoAlertDialog(
                        title: Text(
                          'Create new dictionary',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        content: Column(
                          children: [
                            Text(
                              'Write dictionary name',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const SizedBox(height: 16),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              child: SizedBox(
                                height: 48,
                                child: FlTextField(
                                  controller: dictionaryNameController,
                                  autofocus: true,
                                ),
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
                              dictionaryNameController.text = '';
                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: Theme.of(context).textTheme.bodyMedium,
                            ),
                            child: const Text('Save'),
                            onPressed: () {
                              context.read<HomeBloc>().add(
                                    HomeEvent.addDictionary(
                                      dictionary: FlDictionary(
                                        id: '',
                                        name: dictionaryNameController.text,
                                        createdAt: DateTime.now(),
                                        lastUpdatedAt: DateTime.now(),
                                        words: [],
                                      ),
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
        SizedBox(width: 10),
      ],
    );
  }
}
