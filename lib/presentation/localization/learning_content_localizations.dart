import 'package:flutter/widgets.dart';

import '../../data/localization/learning_content_translations.dart';
import '../../data/models/lesson_model.dart';
import '../../data/models/pali_vocab_model.dart';

bool prefersVietnameseLearningContent(BuildContext context) =>
    Localizations.localeOf(context).languageCode == 'vi';

bool _hasText(String? value) => value != null && value.trim().isNotEmpty;

String _localeNameOf(Locale locale) {
  final countryCode = locale.countryCode;
  if (countryCode == null || countryCode.isEmpty) {
    return locale.languageCode;
  }
  return '${locale.languageCode}_$countryCode';
}

List<String> _contentLocaleCandidates(BuildContext context) {
  final locale = Localizations.localeOf(context);
  final exact = _localeNameOf(locale);
  final language = locale.languageCode;
  final candidates = <String>[];

  void add(String code) {
    if (!candidates.contains(code)) {
      candidates.add(code);
    }
  }

  add(exact);
  add(language);

  if (language != 'vi') {
    add('en');
  }
  add('vi');

  return candidates;
}

T? _lookupSidecar<T>(
  BuildContext context,
  Map<String, Map<String, T>> registry,
  String id,
) {
  final translationsByLocale = registry[id];
  if (translationsByLocale == null) {
    return null;
  }

  for (final localeCode in _contentLocaleCandidates(context)) {
    final translation = translationsByLocale[localeCode];
    if (translation != null) {
      return translation;
    }
  }

  return null;
}

String localizedLearningText(
  BuildContext context, {
  required String vi,
  String? en,
}) {
  final preferVi = prefersVietnameseLearningContent(context);

  if (preferVi) {
    return _hasText(vi) ? vi : (en ?? vi);
  }

  return _hasText(en) ? en! : vi;
}

String? localizedOptionalLearningText(
  BuildContext context, {
  String? vi,
  String? en,
}) {
  final preferVi = prefersVietnameseLearningContent(context);

  if (preferVi) {
    if (_hasText(vi)) return vi;
    if (_hasText(en)) return en;
    return null;
  }

  if (_hasText(en)) return en;
  if (_hasText(vi)) return vi;
  return null;
}

extension LessonMetaLearningLocalization on LessonMeta {
  LocalizedLearningText? _sidecar(BuildContext context) =>
      _lookupSidecar(context, lessonMetaTranslations, id);

  String localizedTitle(BuildContext context) =>
      _sidecar(context)?.title ??
      localizedLearningText(
        context,
        vi: titleVi,
        en: titleEn,
      );

  String localizedSecondaryTitle(BuildContext context) =>
      prefersVietnameseLearningContent(context) ? titleEn : titleVi;

  String localizedDescription(BuildContext context) =>
      _sidecar(context)?.description ?? description;
}

extension LessonDayLearningLocalization on LessonDay {
  LocalizedLearningText? _sidecar(BuildContext context) =>
      _lookupSidecar(context, lessonDayTranslations, id);

  String localizedTitle(BuildContext context) =>
      _sidecar(context)?.title ?? titleVi;
}

extension LessonPhaseLearningLocalization on LessonPhase {
  LocalizedLearningText? _sidecar(BuildContext context) =>
      _lookupSidecar(context, lessonPhaseTranslations, id);

  String? localizedTitle(BuildContext context) => _sidecar(context)?.title ?? titleVi;

  String? localizedContent(BuildContext context) =>
      _sidecar(context)?.content ??
      localizedOptionalLearningText(
        context,
        vi: contentVi,
        en: contentEn,
      );
}

extension QuizQuestionLearningLocalization on QuizQuestion {
  LocalizedQuizQuestionText? _sidecar(BuildContext context) {
    final translation = _lookupSidecar(context, quizQuestionTranslations, id);
    if (translation == null || translation.options.length != options.length) {
      return null;
    }
    return translation;
  }

  String localizedQuestionText(BuildContext context) =>
      _sidecar(context)?.questionText ?? questionText;

  List<String> localizedOptions(BuildContext context) =>
      _sidecar(context)?.options ?? options;
}

extension FabVocabItemLearningLocalization on FabVocabItem {
  String localizedWord(BuildContext context) => localizedLearningText(
        context,
        vi: wordVi,
        en: wordEn,
      );

  String localizedSecondaryWord(BuildContext context) =>
      prefersVietnameseLearningContent(context) ? wordEn : wordVi;
}

extension FabAnswerItemLearningLocalization on FabAnswerItem {
  String localizedExplanation(BuildContext context) => localizedLearningText(
        context,
        vi: this.vi,
        en: this.en,
      );
}

extension PaliVocabLearningLocalization on PaliVocabModel {
  String localizedWord(BuildContext context) => localizedLearningText(
        context,
        vi: wordVi,
        en: wordEn,
      );

  String localizedSecondaryWord(BuildContext context) =>
      prefersVietnameseLearningContent(context) ? wordEn : wordVi;

  String? localizedExample(BuildContext _) => exampleVi;
}
