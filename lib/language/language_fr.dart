import 'languages.dart';

class LanguageFr extends Languages {
  @override
  String get appName => "Application de démonstration";

  @override
  String get welcomeText => "Bienvenue";

  @override
  String get selectLanguage => "Choisissez votre langue";

  @override
  String get appDescription =>
      "Cette application vous aide à implémenter facilement le multilinguisme dans votre application Flutter.";
}
