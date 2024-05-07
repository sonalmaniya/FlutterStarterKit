part of 'app_router_imports.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  // Override the defaultRouteType to use adaptive routing
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        // Define the main tab screen route as the initial route
        AutoRoute(
          page: MainTabScreenRoute.page,
          initial: true,
          path: '/',
          // Define children routes within the main tab screen
          children: [
            AutoRoute(
              page: HomeScreenRoute.page,
            ),
            // Define the News navigation route with nested children routes
            AutoRoute(
              page: NewsNavigationScreenRoute.page,
              children: [
                AutoRoute(
                  page: NewsScreenRoute.page,
                  initial: true,
                ),
                AutoRoute(
                  page: NewsDetailScreenRoute.page,
                ),
              ],
            ),
            AutoRoute(page: SettingsScreenRoute.page),
          ],
        ),
      ];
}
