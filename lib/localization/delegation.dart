import 'package:flutter/material.dart';
import 'package:multi_language_app/language/languages.dart';
import 'package:multi_language_app/language/language_en.dart';
import 'package:multi_language_app/language/language_fr.dart';
import 'package:multi_language_app/language/language_br.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<Languages> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      ['en', 'pt', 'fr'].contains(locale.languageCode);

  @override
  Future<Languages> load(Locale locale) => _load(locale);

  static Future<Languages> _load(Locale locale) async {
    switch (locale.languageCode) {
      case 'en':
        return LanguageEn();
      case 'pt':
        return LanguageBr();
      case 'fr':
        return LanguageFr();
      default:
        return LanguageEn();
    }
  }

  @override
  bool shouldReload(LocalizationsDelegate<Languages> old) => false;
}
