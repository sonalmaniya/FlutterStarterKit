import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'di/service_locator.dart';

import 'navigation/navigation.dart' show AppRouter;
import 'presentation/my_app.dart';

void main() async {
  // Load Environment Variables
  await dotenv.load(); // .env file
  await initAppModule();
  final appRouter = AppRouter();
  final connectivity = Connectivity();

  runApp(
    MyApp(
      appRouter: appRouter,
      connectivity: connectivity,
    ),
  );
}
