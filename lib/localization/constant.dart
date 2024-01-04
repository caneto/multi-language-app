import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

const String prefSelectedLanguageCode = "language";
const String prefSelectedCountry = "country";

Future<Locale> setLocale(String languageCode, String country) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(prefSelectedLanguageCode, languageCode);
  await prefs.setString(prefSelectedCountry, country);

  return _locale(languageCode, country);
}

Future<Locale> getLocale() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String languageCode = prefs.getString(prefSelectedLanguageCode) ?? "en";
  String country = prefs.getString(prefSelectedCountry) ?? "US";
  return _locale(languageCode, country);
}

Locale _locale(String languageCode, String country) {
  return languageCode.isNotEmpty
      ? Locale(languageCode, country)
      : const Locale('en', 'US');
}

void changeLanguage(
    BuildContext context, String selectedLanguageCode, String country) async {
  var locale = await setLocale(selectedLanguageCode, country);
  // ignore: use_build_context_synchronously
  MyApp.setLocale(context, locale);
}
