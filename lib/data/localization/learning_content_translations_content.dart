/// English (and later si/hi/zh/my) translations for LessonPhase content.
///
/// Fills in `contentEn` for read_listen phases whose inline contentEn is
/// missing (Lesson 5, 6, 9, 10, 12, 16, 20 — Day 2).
///
/// Lookup order (see learning_content_localizations.dart):
///   1. lessonPhaseTranslations sidecar (title/description/content)
///   2. phaseContentTranslations (this file)
///   3. inline contentEn / contentVi
import 'learning_content_translations.dart';

/// locale -> phase id -> LocalizedLearningText
const Map<String, Map<String, LocalizedLearningText>> phaseContentTranslations = {
  'en': {
    // Filled in as the English content is completed (L5, L6, L9, L10,
    // L12, L16, L20 Day-2 read_listen phases).
  },
};
