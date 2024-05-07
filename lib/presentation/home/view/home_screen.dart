import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/constants.dart';
import '../../../navigation/navigation.dart';
import '../../../navigation/routes/app_router_imports.gr.dart';
import '../../common/internet/cubit/internet_cubit.dart';
import '../../common/locale/bloc/language_bloc.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              AutoRouter.of(context).navigate(NewsScreenRoute());
            },
            icon: const Icon(Icons.newspaper),
            color: Colors.deepPurple,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              AppImages.imgDesk,
              height: MediaQuery.of(context).size.height / 3,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            BlocBuilder<InternetCubit, InternetState>(
              builder: (context, state) {
                if (state is InternetConnected) {
                  return Text('Connection Type: ${state.connectionType}');
                } else if (state is InternetDisconnected) {
                  return const Text('Internet Disconnected');
                }
                return const Padding(
                  padding: EdgeInsets.all(8),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            BlocBuilder<LanguageBloc, LanguageState>(
              builder: (context, state) {
                return Text(
                  'Selected ${state.selectedLanguage}',
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                );
              },
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Text(
                translation(context).welcome_message,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
