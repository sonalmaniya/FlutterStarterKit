// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i9;
import 'package:flutter_starter_kit/presentation/home/view/home_screen.dart'
    as _i1;
import 'package:flutter_starter_kit/presentation/main_tab/view/main_tab_screen.dart'
    as _i2;
import 'package:flutter_starter_kit/presentation/news/models/news_model.dart'
    as _i8;
import 'package:flutter_starter_kit/presentation/news/view/news_detail_screen.dart'
    as _i3;
import 'package:flutter_starter_kit/presentation/news/view/news_navigation_screen.dart'
    as _i4;
import 'package:flutter_starter_kit/presentation/news/view/news_screen.dart'
    as _i5;
import 'package:flutter_starter_kit/presentation/settings/view/setting_screen.dart'
    as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    MainTabScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MainTabScreen(),
      );
    },
    NewsDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<NewsDetailScreenRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.NewsDetailScreen(
          news: args.news,
          key: args.key,
        ),
      );
    },
    NewsNavigationScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.NewsNavigationScreen(),
      );
    },
    NewsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<NewsScreenRouteArgs>(
          orElse: () => const NewsScreenRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.NewsScreen(key: args.key),
      );
    },
    SettingsScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SettingsScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreenRoute extends _i7.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MainTabScreen]
class MainTabScreenRoute extends _i7.PageRouteInfo<void> {
  const MainTabScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MainTabScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainTabScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.NewsDetailScreen]
class NewsDetailScreenRoute
    extends _i7.PageRouteInfo<NewsDetailScreenRouteArgs> {
  NewsDetailScreenRoute({
    required _i8.NewsModel news,
    _i9.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          NewsDetailScreenRoute.name,
          args: NewsDetailScreenRouteArgs(
            news: news,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsDetailScreenRoute';

  static const _i7.PageInfo<NewsDetailScreenRouteArgs> page =
      _i7.PageInfo<NewsDetailScreenRouteArgs>(name);
}

class NewsDetailScreenRouteArgs {
  const NewsDetailScreenRouteArgs({
    required this.news,
    this.key,
  });

  final _i8.NewsModel news;

  final _i9.Key? key;

  @override
  String toString() {
    return 'NewsDetailScreenRouteArgs{news: $news, key: $key}';
  }
}

/// generated route for
/// [_i4.NewsNavigationScreen]
class NewsNavigationScreenRoute extends _i7.PageRouteInfo<void> {
  const NewsNavigationScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          NewsNavigationScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsNavigationScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.NewsScreen]
class NewsScreenRoute extends _i7.PageRouteInfo<NewsScreenRouteArgs> {
  NewsScreenRoute({
    _i9.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          NewsScreenRoute.name,
          args: NewsScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'NewsScreenRoute';

  static const _i7.PageInfo<NewsScreenRouteArgs> page =
      _i7.PageInfo<NewsScreenRouteArgs>(name);
}

class NewsScreenRouteArgs {
  const NewsScreenRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'NewsScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.SettingsScreen]
class SettingsScreenRoute extends _i7.PageRouteInfo<void> {
  const SettingsScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SettingsScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
