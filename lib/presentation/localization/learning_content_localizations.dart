import 'package:flutter/widgets.dart';

import '../../data/models/lesson_model.dart';
import '../../data/models/pali_vocab_model.dart';

bool prefersVietnameseLearningContent(BuildContext context) =>
    Localizations.localeOf(context).languageCode == 'vi';

bool _hasText(String? value) => value != null && value.trim().isNotEmpty;

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
  String localizedTitle(BuildContext context) => localizedLearningText(
        context,
        vi: titleVi,
        en: titleEn,
      );

  String localizedSecondaryTitle(BuildContext context) =>
      prefersVietnameseLearningContent(context) ? titleEn : titleVi;

  String localizedDescription(BuildContext _) => description;
}

extension LessonDayLearningLocalization on LessonDay {
  String localizedTitle(BuildContext _) => titleVi;
}

extension LessonPhaseLearningLocalization on LessonPhase {
  String? localizedTitle(BuildContext _) => titleVi;

  String? localizedContent(BuildContext context) => localizedOptionalLearningText(
        context,
        vi: contentVi,
        en: contentEn,
      );
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
