import 'package:equatable/equatable.dart';

import '../../../constants/constants.dart';

class Language extends Equatable {
  const Language(this.name, this.languageCode);
  final String name;
  final String languageCode;

  static Language defaultLanguage = const Language('English', english);

  static List<Language> languageList() {
    return <Language>[
      const Language('English', english),
      const Language('French', french),
      const Language('Spanish', spanish),
      const Language('Hindi', hindi),
    ];
  }

  @override
  List<Object?> get props => [name, languageCode];

  @override
  bool get stringify => true;
}
