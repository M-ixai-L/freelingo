import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:freelingo/navigation/app_router.dart';

@RoutePage()
class AppSkeletonScreen extends StatefulWidget {
  const AppSkeletonScreen({super.key});

  @override
  State<AppSkeletonScreen> createState() => _AppSkeletonScreenState();
}

class _AppSkeletonScreenState extends State<AppSkeletonScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const <PageRouteInfo>[
        HomeRoute(),
        LearnRoute(children: [VideoPlayerRoute()]),
        AccountRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
                label: 'Home', icon: Icon(Icons.home_outlined)),
            BottomNavigationBarItem(
                label: 'Learn', icon: Icon(Icons.menu_book_outlined)),
            BottomNavigationBarItem(
                label: 'Account', icon: Icon(Icons.account_circle_outlined)),
          ],
        );
      },
    );
  }
}
