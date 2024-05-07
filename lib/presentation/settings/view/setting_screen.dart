import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/locale/bloc/language_bloc.dart';
import '../../common/locale/language.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
        ),
      ),
      body: BlocBuilder<LanguageBloc, LanguageState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: const Text(
                  'Language',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ...Language.languageList().map((language) {
                final isSelected = language.languageCode ==
                    state.selectedLanguage.languageCode;
                return InkWell(
                  key: Key(language.languageCode),
                  onTap: () {
                    context.read<LanguageBloc>().add(
                          ChangeLanguage(
                            selectedLanguage: language,
                          ),
                        );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? Colors.deepPurple.shade100
                          : Colors.transparent,
                      border: Border(
                        bottom: BorderSide(color: Colors.grey.shade200),
                        top: BorderSide(color: Colors.grey.shade200),
                      ),
                    ),
                    alignment: Alignment.topLeft,
                    child: Text(
                      language.name,
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                );
              }),
            ],
          );
        },
      ),
    );
  }
}
