import 'package:flutter/widgets.dart';

class LanguageOption {
  final Locale? locale;
  final String nativeName;
  final String englishName;
  final String code;
  final List<String> aliases;
  final bool isSystemDefault;

  const LanguageOption({
    required this.locale,
    required this.nativeName,
    required this.englishName,
    required this.code,
    this.aliases = const [],
    this.isSystemDefault = false,
  });

  String get displayName {
    if (nativeName == englishName) {
      return '$englishName ($code)';
    }
    return '$nativeName · $englishName ($code)';
  }

  String get confirmationTargetName =>
      isSystemDefault ? 'Theo ngôn ngữ hệ thống / System default' : nativeName;

  bool matches(String query) {
    final normalizedQuery = query.trim().toLowerCase();
    if (normalizedQuery.isEmpty) return true;

    final haystack = <String>[
      nativeName,
      englishName,
      code,
      displayName,
      ...aliases,
    ].join(' ').toLowerCase();

    return haystack.contains(normalizedQuery);
  }
}

const systemLanguageOption = LanguageOption(
  locale: null,
  nativeName: 'Theo ngôn ngữ hệ thống',
  englishName: 'System default',
  code: 'AUTO',
  aliases: ['system', 'auto', 'default', 'device', 'máy', 'he thong', 'hệ thống'],
  isSystemDefault: true,
);

const supportedLanguageOptions = <LanguageOption>[
  systemLanguageOption,
  LanguageOption(
    locale: Locale('vi'),
    nativeName: 'Tiếng Việt',
    englishName: 'Vietnamese',
    code: 'VI',
    aliases: ['vi', 'vietnamese', 'tieng viet', 'tiếng việt'],
  ),
  LanguageOption(
    locale: Locale('en'),
    nativeName: 'English',
    englishName: 'English',
    code: 'EN',
    aliases: ['en', 'english'],
  ),
  LanguageOption(
    locale: Locale('zh'),
    nativeName: '简体中文',
    englishName: 'Simplified Chinese',
    code: 'ZH',
    aliases: ['zh', 'chinese', 'simplified', 'simplified chinese', 'mandarin'],
  ),
  LanguageOption(
    locale: Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'),
    nativeName: '繁體中文',
    englishName: 'Traditional Chinese',
    code: 'ZH-TW',
    aliases: ['zh-tw', 'zh_tw', 'traditional', 'traditional chinese', 'taiwan'],
  ),
  LanguageOption(
    locale: Locale('hi'),
    nativeName: 'हिन्दी',
    englishName: 'Hindi',
    code: 'HI',
    aliases: ['hi', 'hindi', 'india'],
  ),
  LanguageOption(
    locale: Locale('my'),
    nativeName: 'မြန်မာ',
    englishName: 'Myanmar',
    code: 'MY',
    aliases: ['my', 'myanmar', 'burmese', 'burma'],
  ),
  LanguageOption(
    locale: Locale('si'),
    nativeName: 'සිංහල',
    englishName: 'Sinhala',
    code: 'SI',
    aliases: ['si', 'sinhala', 'sinhalese', 'sri lanka'],
  ),
  LanguageOption(
    locale: Locale('ar'),
    nativeName: 'العربية',
    englishName: 'Arabic',
    code: 'AR',
    aliases: ['ar', 'arabic'],
  ),
  LanguageOption(
    locale: Locale('bn'),
    nativeName: 'বাংলা',
    englishName: 'Bengali',
    code: 'BN',
    aliases: ['bn', 'bengali', 'bangla'],
  ),
  LanguageOption(
    locale: Locale('bo'),
    nativeName: 'བོད་ཡིག',
    englishName: 'Tibetan',
    code: 'BO',
    aliases: ['bo', 'tibetan'],
  ),
  LanguageOption(
    locale: Locale('de'),
    nativeName: 'Deutsch',
    englishName: 'German',
    code: 'DE',
    aliases: ['de', 'german', 'deutsch'],
  ),
  LanguageOption(
    locale: Locale('es'),
    nativeName: 'Español',
    englishName: 'Spanish',
    code: 'ES',
    aliases: ['es', 'spanish', 'espanol', 'español'],
  ),
  LanguageOption(
    locale: Locale('fr'),
    nativeName: 'Français',
    englishName: 'French',
    code: 'FR',
    aliases: ['fr', 'french', 'francais', 'français'],
  ),
  LanguageOption(
    locale: Locale('id'),
    nativeName: 'Bahasa Indonesia',
    englishName: 'Indonesian',
    code: 'ID',
    aliases: ['id', 'indonesian', 'bahasa indonesia'],
  ),
  LanguageOption(
    locale: Locale('it'),
    nativeName: 'Italiano',
    englishName: 'Italian',
    code: 'IT',
    aliases: ['it', 'italian', 'italiano'],
  ),
  LanguageOption(
    locale: Locale('ja'),
    nativeName: '日本語',
    englishName: 'Japanese',
    code: 'JA',
    aliases: ['ja', 'japanese', 'nihongo'],
  ),
  LanguageOption(
    locale: Locale('km'),
    nativeName: 'ភាសាខ្មែរ',
    englishName: 'Khmer',
    code: 'KM',
    aliases: ['km', 'khmer', 'cambodian'],
  ),
  LanguageOption(
    locale: Locale('ko'),
    nativeName: '한국어',
    englishName: 'Korean',
    code: 'KO',
    aliases: ['ko', 'korean', 'hangul'],
  ),
  LanguageOption(
    locale: Locale('lo'),
    nativeName: 'ລາວ',
    englishName: 'Lao',
    code: 'LO',
    aliases: ['lo', 'lao', 'laotian'],
  ),
  LanguageOption(
    locale: Locale('mn'),
    nativeName: 'Монгол',
    englishName: 'Mongolian',
    code: 'MN',
    aliases: ['mn', 'mongolian', 'mongol'],
  ),
  LanguageOption(
    locale: Locale('mr'),
    nativeName: 'मराठी',
    englishName: 'Marathi',
    code: 'MR',
    aliases: ['mr', 'marathi'],
  ),
  LanguageOption(
    locale: Locale('pt'),
    nativeName: 'Português',
    englishName: 'Portuguese',
    code: 'PT',
    aliases: ['pt', 'portuguese', 'portugues', 'português'],
  ),
  LanguageOption(
    locale: Locale('ru'),
    nativeName: 'Русский',
    englishName: 'Russian',
    code: 'RU',
    aliases: ['ru', 'russian', 'russkiy'],
  ),
  LanguageOption(
    locale: Locale('ta'),
    nativeName: 'தமிழ்',
    englishName: 'Tamil',
    code: 'TA',
    aliases: ['ta', 'tamil'],
  ),
  LanguageOption(
    locale: Locale('te'),
    nativeName: 'తెలుగు',
    englishName: 'Telugu',
    code: 'TE',
    aliases: ['te', 'telugu'],
  ),
  LanguageOption(
    locale: Locale('th'),
    nativeName: 'ไทย',
    englishName: 'Thai',
    code: 'TH',
    aliases: ['th', 'thai'],
  ),
];

LanguageOption languageOptionForLocale(Locale? locale) {
  if (locale == null) return systemLanguageOption;

  for (final option in supportedLanguageOptions) {
    final optionLocale = option.locale;
    if (optionLocale == null) continue;
    if (optionLocale.languageCode == locale.languageCode &&
        optionLocale.countryCode == locale.countryCode) {
      return option;
    }
  }

  for (final option in supportedLanguageOptions) {
    final optionLocale = option.locale;
    if (optionLocale == null) continue;
    if (optionLocale.languageCode == locale.languageCode &&
        optionLocale.countryCode == null) {
      return option;
    }
  }

  return systemLanguageOption;
}
