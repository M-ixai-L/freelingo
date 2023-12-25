// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/cupertino.dart' as _i15;
import 'package:flutter/material.dart' as _i13;
import 'package:freelingo/account/presentation/account_screen.dart' as _i1;
import 'package:freelingo/auth/presentation/auth_screen.dart' as _i3;
import 'package:freelingo/auth/presentation/register_screen.dart' as _i10;
import 'package:freelingo/cards_learn/presentation/cards_learn_screen.dart'
    as _i4;
import 'package:freelingo/core/models/fl_dictionary.dart' as _i14;
import 'package:freelingo/dictionary/presentation/dictionary_screen.dart'
    as _i6;
import 'package:freelingo/home/presentation/app_skeleton.dart' as _i2;
import 'package:freelingo/home/presentation/dashboard_screen.dart' as _i5;
import 'package:freelingo/home/presentation/home_screen.dart' as _i8;
import 'package:freelingo/learn/presentation/learn_screen.dart' as _i9;
import 'package:freelingo/navigation/router.dart' as _i7;
import 'package:freelingo/video_player/presentation/video_player_screen.dart'
    as _i11;

abstract class $EmptyRouterPage extends _i12.RootStackRouter {
  $EmptyRouterPage({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountScreen(),
      );
    },
    AppSkeletonRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AppSkeletonScreen(),
      );
    },
    AuthRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AuthScreen(),
      );
    },
    CardsLearnRoute.name: (routeData) {
      final args = routeData.argsAs<CardsLearnRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.CardsLearnScreen(
          key: args.key,
          dictionary: args.dictionary,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.DashboardScreen(),
      );
    },
    DictionaryRoute.name: (routeData) {
      final args = routeData.argsAs<DictionaryRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DictionaryScreen(
          key: args.key,
          dictionary: args.dictionary,
        ),
      );
    },
    EmptyRouter.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.HomeScreen(),
      );
    },
    LearnRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.LearnScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.RegisterScreen(),
      );
    },
    VideoPlayerRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.VideoPlayerScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountScreen]
class AccountRoute extends _i12.PageRouteInfo<void> {
  const AccountRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AppSkeletonScreen]
class AppSkeletonRoute extends _i12.PageRouteInfo<void> {
  const AppSkeletonRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AppSkeletonRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppSkeletonRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AuthScreen]
class AuthRoute extends _i12.PageRouteInfo<void> {
  const AuthRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CardsLearnScreen]
class CardsLearnRoute extends _i12.PageRouteInfo<CardsLearnRouteArgs> {
  CardsLearnRoute({
    _i13.Key? key,
    required _i14.FlDictionary dictionary,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          CardsLearnRoute.name,
          args: CardsLearnRouteArgs(
            key: key,
            dictionary: dictionary,
          ),
          initialChildren: children,
        );

  static const String name = 'CardsLearnRoute';

  static const _i12.PageInfo<CardsLearnRouteArgs> page =
      _i12.PageInfo<CardsLearnRouteArgs>(name);
}

class CardsLearnRouteArgs {
  const CardsLearnRouteArgs({
    this.key,
    required this.dictionary,
  });

  final _i13.Key? key;

  final _i14.FlDictionary dictionary;

  @override
  String toString() {
    return 'CardsLearnRouteArgs{key: $key, dictionary: $dictionary}';
  }
}

/// generated route for
/// [_i5.DashboardScreen]
class DashboardRoute extends _i12.PageRouteInfo<void> {
  const DashboardRoute({List<_i12.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.DictionaryScreen]
class DictionaryRoute extends _i12.PageRouteInfo<DictionaryRouteArgs> {
  DictionaryRoute({
    _i15.Key? key,
    required _i14.FlDictionary dictionary,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          DictionaryRoute.name,
          args: DictionaryRouteArgs(
            key: key,
            dictionary: dictionary,
          ),
          initialChildren: children,
        );

  static const String name = 'DictionaryRoute';

  static const _i12.PageInfo<DictionaryRouteArgs> page =
      _i12.PageInfo<DictionaryRouteArgs>(name);
}

class DictionaryRouteArgs {
  const DictionaryRouteArgs({
    this.key,
    required this.dictionary,
  });

  final _i15.Key? key;

  final _i14.FlDictionary dictionary;

  @override
  String toString() {
    return 'DictionaryRouteArgs{key: $key, dictionary: $dictionary}';
  }
}

/// generated route for
/// [_i7.EmptyRouterPage]
class EmptyRouter extends _i12.PageRouteInfo<void> {
  const EmptyRouter({List<_i12.PageRouteInfo>? children})
      : super(
          EmptyRouter.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRouter';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.HomeScreen]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.LearnScreen]
class LearnRoute extends _i12.PageRouteInfo<void> {
  const LearnRoute({List<_i12.PageRouteInfo>? children})
      : super(
          LearnRoute.name,
          initialChildren: children,
        );

  static const String name = 'LearnRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.RegisterScreen]
class RegisterRoute extends _i12.PageRouteInfo<void> {
  const RegisterRoute({List<_i12.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.VideoPlayerScreen]
class VideoPlayerRoute extends _i12.PageRouteInfo<void> {
  const VideoPlayerRoute({List<_i12.PageRouteInfo>? children})
      : super(
          VideoPlayerRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideoPlayerRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
