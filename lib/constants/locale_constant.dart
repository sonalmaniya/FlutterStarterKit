import 'package:flutter/material.dart';

import '../l10n/l10n.dart';

//languages code
const String english = 'en';
const String hindi = 'hi';
const String spanish = 'es';
const String french = 'fr';

// Default language
const String defaultLocaleCode = english;

AppLocalizations translation(BuildContext context) {
  return AppLocalizations.of(context)!;
}
