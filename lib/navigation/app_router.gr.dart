// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AccountScreen(),
      );
    },
    AppSkeletonRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AppSkeletonScreen(),
      );
    },
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthScreen(),
      );
    },
    CardsLearnRoute.name: (routeData) {
      final args = routeData.argsAs<CardsLearnRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CardsLearnScreen(
          key: args.key,
          dictionary: args.dictionary,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DashboardScreen(),
      );
    },
    DictionaryRoute.name: (routeData) {
      final args = routeData.argsAs<DictionaryRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DictionaryScreen(
          key: args.key,
          dictionary: args.dictionary,
        ),
      );
    },
    EmptyRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    LearnRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LearnScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterScreen(),
      );
    },
    VideoPlayerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VideoPlayerScreen(),
      );
    },
  };
}

/// generated route for
/// [AccountScreen]
class AccountRoute extends PageRouteInfo<void> {
  const AccountRoute({List<PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AppSkeletonScreen]
class AppSkeletonRoute extends PageRouteInfo<void> {
  const AppSkeletonRoute({List<PageRouteInfo>? children})
      : super(
          AppSkeletonRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppSkeletonRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AuthScreen]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CardsLearnScreen]
class CardsLearnRoute extends PageRouteInfo<CardsLearnRouteArgs> {
  CardsLearnRoute({
    Key? key,
    required FlDictionary dictionary,
    List<PageRouteInfo>? children,
  }) : super(
          CardsLearnRoute.name,
          args: CardsLearnRouteArgs(
            key: key,
            dictionary: dictionary,
          ),
          initialChildren: children,
        );

  static const String name = 'CardsLearnRoute';

  static const PageInfo<CardsLearnRouteArgs> page =
      PageInfo<CardsLearnRouteArgs>(name);
}

class CardsLearnRouteArgs {
  const CardsLearnRouteArgs({
    this.key,
    required this.dictionary,
  });

  final Key? key;

  final FlDictionary dictionary;

  @override
  String toString() {
    return 'CardsLearnRouteArgs{key: $key, dictionary: $dictionary}';
  }
}

/// generated route for
/// [DashboardScreen]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DictionaryScreen]
class DictionaryRoute extends PageRouteInfo<DictionaryRouteArgs> {
  DictionaryRoute({
    Key? key,
    required FlDictionary dictionary,
    List<PageRouteInfo>? children,
  }) : super(
          DictionaryRoute.name,
          args: DictionaryRouteArgs(
            key: key,
            dictionary: dictionary,
          ),
          initialChildren: children,
        );

  static const String name = 'DictionaryRoute';

  static const PageInfo<DictionaryRouteArgs> page =
      PageInfo<DictionaryRouteArgs>(name);
}

class DictionaryRouteArgs {
  const DictionaryRouteArgs({
    this.key,
    required this.dictionary,
  });

  final Key? key;

  final FlDictionary dictionary;

  @override
  String toString() {
    return 'DictionaryRouteArgs{key: $key, dictionary: $dictionary}';
  }
}

/// generated route for
/// [EmptyRouterPage]
class EmptyRouter extends PageRouteInfo<void> {
  const EmptyRouter({List<PageRouteInfo>? children})
      : super(
          EmptyRouter.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LearnScreen]
class LearnRoute extends PageRouteInfo<void> {
  const LearnRoute({List<PageRouteInfo>? children})
      : super(
          LearnRoute.name,
          initialChildren: children,
        );

  static const String name = 'LearnRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterScreen]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VideoPlayerScreen]
class VideoPlayerRoute extends PageRouteInfo<void> {
  const VideoPlayerRoute({List<PageRouteInfo>? children})
      : super(
          VideoPlayerRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideoPlayerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
