import 'package:flutter/material.dart';

class AppNavigatorObserver extends NavigatorObserver {
  AppNavigatorObserver();

  static const _enableLog = true;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    if (_enableLog) {
      debugPrint('didPush from ${previousRoute?.settings.name} '
          'to ${route.settings.name}');
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if (_enableLog) {
      debugPrint('didPop ${route.settings.name}, '
          'back to ${previousRoute?.settings.name}');
    }
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    if (_enableLog) {
      debugPrint('didRemove ${route.settings.name}, '
          'back to ${previousRoute?.settings.name}');
    }
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (_enableLog) {
      debugPrint('didReplace ${oldRoute?.settings.name} '
          'by ${newRoute?.settings.name}');
    }
  }
}
