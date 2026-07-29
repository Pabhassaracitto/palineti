import 'package:flutter/material.dart';
import 'package:palineti/l10n/generated/app_localizations.dart';
import 'package:palineti/pali_course.dart';

import 'presentation/screens/home_screen.dart';

void main() {
  runApp(const PaliCourseExampleApp());
}

class PaliCourseExampleApp extends StatelessWidget {
  const PaliCourseExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      localeResolutionCallback: (locale, supportedLocales) {
        if (locale == null) {
          return const Locale('vi');
        }

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

        return const Locale('vi');
      },
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
      home: const HomeScreen(),
    );
  }
}
