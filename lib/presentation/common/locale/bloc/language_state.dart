part of 'language_bloc.dart';

@immutable
class LanguageState extends Equatable {
  LanguageState({
    Language? selectedLanguage,
  }) : selectedLanguage = selectedLanguage ?? Language.defaultLanguage;
  final Language selectedLanguage;

  @override
  List<Object?> get props => [selectedLanguage];

  LanguageState copyWith({Language? selectedLanguage}) {
    return LanguageState(
      selectedLanguage: selectedLanguage ?? this.selectedLanguage,
    );
  }
}
