import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freelingo/auth/application/auth_bloc.dart';
import 'package:freelingo/dictionary/application/dictionary_bloc.dart';
import 'package:freelingo/home/application/home_bloc.dart';
import 'package:freelingo/navigation/app_router.dart';
import 'package:freelingo/theme/colors.dart';
import 'package:get_it/get_it.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider<dynamic>>[
        BlocProvider<AuthBloc>(
          create: (BuildContext context) {
            return GetIt.I.get<AuthBloc>();
          },
        ),
        BlocProvider<HomeBloc>(
          create: (BuildContext context) {
            return GetIt.I.get<HomeBloc>();
          },
        ),
        BlocProvider<DictionaryBloc>(
          create: (BuildContext context) {
            return GetIt.I.get<DictionaryBloc>();
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: FlColors.primaryOrange),
          scaffoldBackgroundColor: FlColors.primaryGreen,
          textTheme: const TextTheme(
              bodyMedium: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              bodyLarge: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              )),
          colorScheme: const ColorScheme.light(
            primary: FlColors.primaryOrange,
          ),
        ),
        // localizationsDelegates: AppLocalizations.localizationsDelegates,
        // supportedLocales: AppLocalizations.supportedLocales,
        // home: const VideoPlayerScreen(),
      ),
    );
  }
}
