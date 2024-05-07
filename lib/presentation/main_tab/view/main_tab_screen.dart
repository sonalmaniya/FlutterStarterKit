import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../navigation/navigation.dart';

@RoutePage()
class MainTabScreen extends StatelessWidget {
  const MainTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      homeIndex: 1,
      routes: [
        const HomeScreenRoute(),
        NewsScreenRoute(),
        const SettingsScreenRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.newspaper),
                label: 'News',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
        );
      },
    );
  }
}
