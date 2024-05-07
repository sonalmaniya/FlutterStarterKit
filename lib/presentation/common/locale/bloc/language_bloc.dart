import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants/constants.dart' show AppPreferences;
import '../../../../utils/shared_prefs.dart';
import '../language.dart';

part './language_state.dart';

part './language_event.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(LanguageState()) {
    on<ChangeLanguage>(_onChangeLanguage);
    on<GetLanguage>(_onGetLanguage);
  }

  dynamic _onChangeLanguage(
    ChangeLanguage event,
    Emitter<LanguageState> emit,
  ) async {
    emit(state.copyWith(selectedLanguage: event.selectedLanguage));
    await SharedPreferencesUtil().setString(
      AppPreferences.languageCode,
      event.selectedLanguage.languageCode,
    );
  }

  dynamic _onGetLanguage(
    GetLanguage event,
    Emitter<LanguageState> emit,
  ) async {
    final selectedLanguage = await SharedPreferencesUtil().getStringF(
      AppPreferences.languageCode,
    );
    emit(
      state.copyWith(
        selectedLanguage: selectedLanguage.isNotEmpty
            ? Language.languageList()
                .where(
                  (item) => item.languageCode == selectedLanguage,
                )
                .first
            : Language.defaultLanguage,
      ),
    );
  }
}
