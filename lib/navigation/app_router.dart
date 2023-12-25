import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:freelingo/account/presentation/account_screen.dart';
import 'package:freelingo/auth/presentation/auth_screen.dart';
import 'package:freelingo/auth/presentation/register_screen.dart';
import 'package:freelingo/cards_learn/presentation/cards_learn_screen.dart';
import 'package:freelingo/core/models/fl_dictionary.dart';
import 'package:freelingo/dictionary/presentation/dictionary_screen.dart';
import 'package:freelingo/home/presentation/app_skeleton.dart';
import 'package:freelingo/home/presentation/dashboard_screen.dart';
import 'package:freelingo/home/presentation/home_screen.dart';
import 'package:freelingo/learn/presentation/learn_screen.dart';
import 'package:freelingo/navigation/router.dart';
import 'package:freelingo/video_player/presentation/video_player_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AuthRoute.page, initial: true),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(
          page: AppSkeletonRoute.page,
          path: '/app_skeleton',
          children: <AutoRoute>[
            RedirectRoute(path: '', redirectTo: 'dashboard'),
            AutoRoute(
              path: 'dashboard',
              page: DashboardRoute.page,
              children: [
                AutoRoute(
                  path: '',
                  page: HomeRoute.page,
                ),
                AutoRoute(
                  path: 'dictionary',
                  page: DictionaryRoute.page,
                ),
                AutoRoute(
                  path: 'cards-learn',
                  page: CardsLearnRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'learn',
              page: EmptyRouter.page,
              children: [
                AutoRoute(
                  path: '',
                  page: LearnRoute.page,
                ),
                AutoRoute(
                  path: 'video-player',
                  page: VideoPlayerRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'account',
              page: AccountRoute.page,
            ),
          ],
        ),
      ];
}
