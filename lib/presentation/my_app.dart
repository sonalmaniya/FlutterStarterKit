import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../l10n/l10n.dart';
import '../navigation/navigation.dart';
import 'common/internet/cubit/internet_cubit.dart';
import 'common/locale/bloc/language_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    required this.appRouter,
    required this.connectivity,
    super.key,
  });

  final AppRouter appRouter;
  final Connectivity connectivity;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => InternetCubit(connectivity: connectivity),
        ),
        BlocProvider(
          create: (context) => LanguageBloc()
            ..add(
              GetLanguage(),
            ),
        ),
      ],
      child: BlocBuilder<LanguageBloc, LanguageState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Flutter Starter App',
            routerDelegate: appRouter.delegate(
              navigatorObservers: () => [
                AppNavigatorObserver(),
              ],
            ),
            routeInformationParser: appRouter.defaultRouteParser(),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: Locale(state.selectedLanguage.languageCode),
          );
        },
      ),
    );
  }
}
