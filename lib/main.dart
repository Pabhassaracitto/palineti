import 'package:flutter/material.dart';
import 'package:palineti/l10n/generated/app_localizations.dart';
import 'package:palineti/pali_course.dart';

import 'presentation/localization/app_locale_controller.dart';
import 'presentation/screens/home_screen.dart';

void main() {
  runApp(const PaliCourseExampleApp());
}

class PaliCourseExampleApp extends StatefulWidget {
  const PaliCourseExampleApp({super.key});

  @override
  State<PaliCourseExampleApp> createState() => _PaliCourseExampleAppState();
}

class _PaliCourseExampleAppState extends State<PaliCourseExampleApp> {
  late final AppLocaleController _localeController;

  @override
  void initState() {
    super.initState();
    _localeController = AppLocaleController()..load();
  }

  @override
  void dispose() {
    _localeController.dispose();
    super.dispose();
  }

  Locale _resolveLocale(Locale? locale, Iterable<Locale> supportedLocales) {
    if (locale != null) {
      for (final supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode &&
            supportedLocale.countryCode == locale.countryCode) {
          return supportedLocale;
        }
      }

      for (final supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode &&
            supportedLocale.countryCode == null) {
          return supportedLocale;
        }
      }
    }

    return const Locale('en');
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _localeController,
      builder: (context, _) {
        return MaterialApp(
          locale: _localeController.locale,
          onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          localeResolutionCallback: _resolveLocale,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: AppColors.paliGold,
              brightness: Brightness.light,
            ),
            scaffoldBackgroundColor: AppColors.paliBg,
            useMaterial3: true,
            fontFamily: 'Roboto',
            fontFamilyFallback: const [
              'Noto Sans',
              'Noto Sans Arabic',
              'Noto Naskh Arabic',
              'Noto Sans Bengali',
              'Noto Sans Devanagari',
              'Noto Sans Sinhala',
              'Noto Sans Myanmar',
              'Noto Sans Tibetan',
              'Noto Sans Khmer',
              'Noto Sans Lao',
              'Noto Sans Thai',
              'Noto Sans Tamil',
              'Noto Sans Telugu',
              'Noto Sans Mongolian',
              'Noto Sans CJK SC',
              'Noto Sans CJK TC',
              'Noto Sans JP',
              'Noto Sans KR',
              'Arial Unicode MS',
            ],
          ),
          home: HomeScreen(localeController: _localeController),
        );
      },
    );
  }
}
