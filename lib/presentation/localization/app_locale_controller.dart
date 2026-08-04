import 'package:flutter/widgets.dart';
import 'package:palineti/l10n/generated/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLocaleController extends ChangeNotifier {
  static const _localePreferenceKey = 'palineti.locale_override';
  static const _systemValue = 'system';

  Locale? _locale;
  bool _isLoaded = false;

  Locale? get locale => _locale;
  bool get isLoaded => _isLoaded;
  bool get usesSystemLocale => _locale == null;

  Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();
    final savedValue = prefs.getString(_localePreferenceKey);

    if (savedValue == null || savedValue == _systemValue) {
      _locale = null;
    } else {
      final savedLocale = _parseSupportedLocale(savedValue);
      if (savedLocale == null) {
        await prefs.remove(_localePreferenceKey);
        _locale = null;
      } else {
        _locale = savedLocale;
      }
    }

    _isLoaded = true;
    notifyListeners();
  }

  Future<void> applyLocale(Locale? locale) async {
    _locale = locale;
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    if (locale == null) {
      await prefs.setString(_localePreferenceKey, _systemValue);
    } else {
      await prefs.setString(_localePreferenceKey, _localeToTag(locale));
    }
  }

  Future<void> useSystemLocale() => applyLocale(null);

  static Locale? _parseSupportedLocale(String rawValue) {
    final normalized = rawValue.replaceAll('-', '_');
    final parts = normalized.split('_');
    if (parts.isEmpty || parts.first.isEmpty) {
      return null;
    }

    final candidate = parts.length > 1 && parts[1].isNotEmpty
        ? Locale.fromSubtags(
            languageCode: parts[0],
            countryCode: parts[1].toUpperCase(),
          )
        : Locale(parts[0]);

    return _isSupported(candidate) ? candidate : null;
  }

  static bool _isSupported(Locale locale) {
    for (final supportedLocale in AppLocalizations.supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode &&
          supportedLocale.countryCode == locale.countryCode) {
        return true;
      }
    }
    return false;
  }

  static String _localeToTag(Locale locale) {
    final countryCode = locale.countryCode;
    if (countryCode == null || countryCode.isEmpty) {
      return locale.languageCode;
    }
    return '${locale.languageCode}_$countryCode';
  }
}
