class LanguageModel {
  final String country;
  final String languageName;
  final String languageCode;

  LanguageModel({
    required this.country,
    required this.languageName,
    required this.languageCode,
  });

  static List<LanguageModel> languageList() {
    return <LanguageModel>[
      LanguageModel(
        country: "US",
        languageName: "English",
        languageCode: 'en',
      ),
      LanguageModel(
        country: "BR",
        languageName: "Portugues (Brasl)",
        languageCode: 'pt',
      ),
      LanguageModel(
        country: "FR",
        languageName: "Françes",
        languageCode: 'fr',
      ),
    ];
  }
}
