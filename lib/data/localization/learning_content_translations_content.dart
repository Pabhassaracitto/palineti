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
part 'learning_content_translations_content_locales.dart';

/// locale -> phase id -> LocalizedLearningText
const Map<String, Map<String, LocalizedLearningText>> _englishPhaseContentTranslations = {
  'en': {
    // Day-2 read_listen phases (vocabulary review) for the seven
    // lessons that had no inline contentEn.
    'lesson05_phase2': LocalizedLearningText(
      content:
          'All the neuter "-a" nouns and the new verbs of Lesson 5. Note: the two words "mitta" (friend) and "pāda" (foot) can be declined as masculine OR neuter (m./n.).',
    ),
    'lesson06_phase2': LocalizedLearningText(
      content:
          'Memorize the feminine nouns ending in "-ā" (except "sā" = dog, which is masculine) and the infinitive forms in the Verb Table.',
    ),
    'lesson09_phase2': LocalizedLearningText(
      content:
          'Memorize the new words below. Note: FEMININE "-i" nouns decline according to the "bhūmi" table; MASCULINE nouns ending in "-i" (e.g. agni — fire, learned in Lesson 8) decline according to a DIFFERENT table (singular endings -i / -iṃ but oblique -inā, -ino…).',
    ),
    'lesson10_phase2': LocalizedLearningText(
      content:
          'Memorize the following new words (masculine/feminine "-ī" nouns, neuter nouns, adjectives, indeclinable words) and the masculine/feminine pairs illustrating the feminine-formation rule.',
    ),
    'lesson12_phase2': LocalizedLearningText(
      content:
          'All the new words according to the book (pp. 108-110) and the forms of the personal pronouns. Study the enclitics "me/te/vo/no" and their meanings in a sentence carefully.',
    ),
    'lesson16_phase2': LocalizedLearningText(
      content:
          'Memorize the list of numbers from 1 → 1 billion and the new vocabulary (divasa, ito, māsa…). Numbers from 19 onwards are annotated with gender / declension.',
    ),
    'lesson20_phase2': LocalizedLearningText(
      content:
          'Below are the classic examples for all 5 compound types (including the Digu sub-type and mixed compounds). Memorize them in order to recognize them when reading a sentence.',
    ),
  },
};
