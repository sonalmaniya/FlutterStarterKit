import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NewsNavigationScreen extends StatelessWidget {
  const NewsNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
