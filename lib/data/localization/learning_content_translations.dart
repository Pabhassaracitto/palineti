/// Sidecar translations for learning content (lesson meta / days / phases /
/// quiz questions).
///
/// Lesson data files keep canonical Vietnamese (+ partial English) inline.
/// This registry layers complete English on top and will later carry
/// Sinhala / Hindi / Chinese / Myanmar entries under their locale codes.
///
/// Quiz translations live in `quiz_translations/` (one file per lesson
/// group) and are merged into [quizQuestionTranslations] below.
import 'quiz_translations/quiz_en_lesson01.dart';
import 'quiz_translations/quiz_en_lesson02_04.dart';
import 'quiz_translations/quiz_en_lesson05_08.dart';
import 'quiz_translations/quiz_en_lesson09_12.dart';
import 'quiz_translations/quiz_en_lesson13_16.dart';
import 'quiz_translations/quiz_en_lesson17_20.dart';
import 'quiz_translations/quiz_en_lesson21_23.dart';
import 'quiz_translations/quiz_en_lesson24_26.dart';

class LocalizedLearningText {
  final String? title;
  final String? description;
  final String? content;

  const LocalizedLearningText({
    this.title,
    this.description,
    this.content,
  });
}

class LocalizedQuizQuestionText {
  final String questionText;
  final List<String> options;

  const LocalizedQuizQuestionText({
    required this.questionText,
    required this.options,
  });
}

const Map<String, Map<String, LocalizedLearningText>> lessonMetaTranslations = {
  'theme_01_masc_a_nom_acc': {
    'en': LocalizedLearningText(
      title: 'Masculine "-a": Nominative & Accusative',
      description:
          'Learn the first two noun cases and third-person present-tense verbs.',
    ),
  },
  'theme_02_lesson': {
    'en': LocalizedLearningText(
      description:
          'Instrumental (-ena / -ehi), Dative (-āya/-assa / -ānaṃ) and 2nd-person endings -si/-tha',
    ),
  },
  'theme_03_lesson': {
    'en': LocalizedLearningText(
      description:
          'Ablative (-ā/-amhā/-asmā / -ehi), Genitive (-assa / -ānaṃ) and 1st-person endings -āmi/-āma',
    ),
  },
  'theme_04_lesson': {
    'en': LocalizedLearningText(
      description:
          'Locative (-e/-amhi/-asmiṃ / -esu), Vocative (-a/-ā / -ā); the indeclinable saddhiṃ; sandhi so\'pi, aham\'pi',
    ),
  },
  'theme_05_neuter_a_8_cases': {
    'en': LocalizedLearningText(
      description:
          'Learn the 8 cases and apply them to neuter nouns ending in -a',
    ),
  },
  'theme_06_fem_a_infinitive': {
    'en': LocalizedLearningText(
      description:
          'Learn feminine nouns ending in -ā and the verbal infinitive',
    ),
  },
  'theme_07_lesson': {
    'en': LocalizedLearningText(
      description:
          'The Aorist (indefinite past) with the augment a- and endings -i/-ī/-uṃ/-isu/-o/-ittha/-iṃ/-imhā; genitive possessive pronouns of the personal pronouns.',
    ),
  },
  'theme_08_lesson': {
    'en': LocalizedLearningText(
      description:
          'Declension of -i-stem nouns (muni/aggi/atithi); the gerund (-tvā / -tvāna / -tūna) expressing an action performed before.',
    ),
  },
  'theme_09_fem_i_future': {
    'en': LocalizedLearningText(
      description:
          'Learn short-i feminine nouns and the conjugation of the future tense',
    ),
  },
  'theme_10_masc_fem_i_long': {
    'en': LocalizedLearningText(
      description:
          'Explore words ending in -ī and the rules for forming feminine nouns',
    ),
  },
  'theme_11_lesson': {
    'en': LocalizedLearningText(
      description:
          'Declension of -u/-ū-stem nouns (bhikkhu/āyu/dhenu/vadhū); -tar nouns (pitu/mātu/bhātu/satthu); the Imperative (Pañcamī) with endings -atu/-antu/-a/-āhi/-atha/-āmi/-āma; the prohibition particle mā; the yāva…tāva construction.',
    ),
  },
  'theme_12_pronouns_potential': {
    'en': LocalizedLearningText(
      description: 'The use of personal pronouns and the Optative mood',
    ),
  },
  'theme_13_lesson': {
    'en': LocalizedLearningText(
      description:
          'Declension of the relative pronoun "ya" (who/which), the demonstrative "ta/eta" (that/this) and the interrogative "ka" (who? what?); the correlating construction Yo…so…; the indefinite suffix "-ci"; 14 demonstrative adjectives.',
    ),
  },
  'theme_14_participles': {
    'en': LocalizedLearningText(
      description:
          'Present participle anta/māna, past participle ta/na, gerundive tabba/anīya/ya',
    ),
  },
  'theme_15_ima_amu_adjectives': {
    'en': LocalizedLearningText(
      description:
          'ima (this), amu (that), adjective agreement in gender-number-case, the suffixes vantu/mantu',
    ),
  },
  'theme_16_numerals': {
    'en': LocalizedLearningText(
      description: 'Learn counting and ordinal numbers in Pāḷi',
    ),
  },
  'theme_17_lesson': {
    'en': LocalizedLearningText(
      description:
          'Irregular declension of atta (self) and rāja (king); the 7 conjugations marked by -a, -ya, -ṇā/-nā, -o/-e; new verbs saṃkiḷissati/vihaññati/visujjhati; a Dhammapada quotation on atta.',
    ),
  },
  'theme_18_satthu_causal': {
    'en': LocalizedLearningText(
      description:
          'Declension of satthu/pitu/mātu; the Causal mood (Vuddhi) with -e/-aya/-āpe/-āpaya',
    ),
  },
  'theme_19_lesson': {
    'en': LocalizedLearningText(
      description:
          'Special declension of "go" (bull) and "mana" (mind) — the model paradigm for the 16 Mano-group nouns with the a→o rule; the Imperfect (Hīyattanī) with endings -a/-ā, -ū, -o, -attha, -a/-aṃ, -amhā; the Dhammapada verse "Manasā saṃvaro sādhu".',
    ),
  },
  'theme_20_compounds': {
    'en': LocalizedLearningText(
      description:
          'Study the Kammadhāraya compound structure and advanced grammar',
    ),
  },
  'theme_21_avyaya_upasagga': {
    'en': LocalizedLearningText(
      description:
          'Learn the 20 Pāḷi prefixes and the rules of reduplication and sound change',
    ),
  },
  'theme_22_taddhita': {
    'en': LocalizedLearningText(
      description:
          'Learn the 11 Taddhita noun-formation suffixes and the Vuddhi rule',
    ),
  },
  'theme_24_sandhi': {
    'en': LocalizedLearningText(
      description:
          'Learn the 24 sandhi rules: Sara, Vyañjana, Niggahita',
    ),
  },
  'theme_25_exercise_a': {
    'en': LocalizedLearningText(
      description: 'Practice translating complex Pāḷi sentences',
    ),
  },
  'theme_26_exercise_b': {
    'en': LocalizedLearningText(
      description: 'Final review of the course',
    ),
  },
};

const Map<String, Map<String, LocalizedLearningText>> lessonDayTranslations = {
  'lesson01_day1': {
    'en': LocalizedLearningText(
      title: 'Day 1: Masculine "-a" Nouns — Nominative & Accusative + Present Tense',
    ),
  },
  'lesson01_day2': {
    'en': LocalizedLearningText(
      title: 'Day 2: Translation Practice — Exercise 1 (40 sentences)',
    ),
  },
  'lesson02_day1': {
    'en': LocalizedLearningText(title: 'Day 1 — Theory & Vocabulary'),
  },
  'lesson02_day2': {
    'en': LocalizedLearningText(
        title: 'Day 2 — Exercises & Translation Quiz'),
  },
  'lesson03_day1': {
    'en': LocalizedLearningText(title: 'Day 1 — Theory & Vocabulary'),
  },
  'lesson03_day2': {
    'en': LocalizedLearningText(
        title: 'Day 2 — Exercises & Translation Quiz'),
  },
  'lesson04_day1': {
    'en': LocalizedLearningText(title: 'Day 1 — Theory & Vocabulary'),
  },
  'lesson04_day2': {
    'en': LocalizedLearningText(
        title: 'Day 2 — Exercises & Translation Quiz'),
  },
  'lesson05_day1': {
    'en': LocalizedLearningText(
        title: 'Day 1: 8 Cases & Neuter "-a" — Theory & Vocabulary'),
  },
  'lesson05_day2': {
    'en': LocalizedLearningText(
        title:
            'Day 2: Mind Game & Quiz Practice — 8 Cases & Neuter "-a"'),
  },
  'lesson06_day1': {
    'en': LocalizedLearningText(
        title: 'Day 1: Feminine "-ā" & Infinitive — Theory & Vocabulary'),
  },
  'lesson06_day2': {
    'en': LocalizedLearningText(
        title: 'Day 2: Mind Game & Quiz Practice — Feminine "-ā" & Infinitive'),
  },
  'lesson07_day1': {
    'en': LocalizedLearningText(title: 'Day 1 — Theory & Vocabulary'),
  },
  'lesson07_day2': {
    'en': LocalizedLearningText(
        title: 'Day 2 — Exercises & Translation Quiz'),
  },
  'lesson08_day1': {
    'en': LocalizedLearningText(title: 'Day 1 — Theory & Vocabulary'),
  },
  'lesson08_day2': {
    'en': LocalizedLearningText(
        title: 'Day 2 — Exercises & Translation Quiz'),
  },
  'lesson09_day1': {
    'en': LocalizedLearningText(
        title: 'Day 1: Feminine "-i" & Future Tense — Theory & Vocabulary'),
  },
  'lesson09_day2': {
    'en': LocalizedLearningText(
        title: 'Day 2: Mind Game & Quiz Practice — Feminine "-i" & Future Tense'),
  },
  'lesson10_day1': {
    'en': LocalizedLearningText(
        title:
            'Day 1: Masc./Fem. "-ī" & Forming Feminines — Theory & Vocabulary'),
  },
  'lesson10_day2': {
    'en': LocalizedLearningText(
        title:
            'Day 2: Mind Game & Quiz Practice — Masc./Fem. "-ī" & Forming Feminines'),
  },
  'lesson11_day1': {
    'en': LocalizedLearningText(title: 'Day 1 — Theory & Vocabulary'),
  },
  'lesson11_day2': {
    'en': LocalizedLearningText(
        title: 'Day 2 — Exercises & Translation Quiz'),
  },
  'lesson12_day1': {
    'en': LocalizedLearningText(
        title: 'Day 1: Pronouns & Optative — Theory & Vocabulary'),
  },
  'lesson12_day2': {
    'en': LocalizedLearningText(
        title: 'Day 2: Mind Game & Quiz Practice — Pronouns & Optative'),
  },
  'lesson13_day1': {
    'en': LocalizedLearningText(title: 'Day 1 — Theory & Vocabulary'),
  },
  'lesson13_day2': {
    'en': LocalizedLearningText(
        title: 'Day 2 — Exercises & Translation Quiz'),
  },
  'lesson_14_day_1': {
    'en': LocalizedLearningText(
        title: 'Day 1 – Present / Past / Gerundive Participles'),
  },
  'lesson_14_day_2': {
    'en': LocalizedLearningText(
        title: 'Day 2 – Translating Exercise 14 & Absolute Locative'),
  },
  'lesson_15_day_1': {
    'en': LocalizedLearningText(
        title: 'Day 1 – ima / amu & Adjectives – FabVocab'),
  },
  'lesson_15_day_2': {
    'en': LocalizedLearningText(
        title: 'Day 2 – Exercise 15 (50 sentences) & Adjective Quiz'),
  },
  'lesson16_day1': {
    'en': LocalizedLearningText(
        title: 'Day 1: Counting & Ordinal Numbers — Theory & Vocabulary'),
  },
  'lesson16_day2': {
    'en': LocalizedLearningText(
        title:
            'Day 2: Mind Game & Quiz Practice — Counting & Ordinal Numbers'),
  },
  'lesson17_day1': {
    'en': LocalizedLearningText(title: 'Day 1 — Theory & Vocabulary'),
  },
  'lesson17_day2': {
    'en': LocalizedLearningText(
        title: 'Day 2 — Exercises & Translation Quiz'),
  },
  'lesson_18_day_1': {
    'en': LocalizedLearningText(title: 'Day 1 – -tar Nouns & the Causal Mood'),
  },
  'lesson_18_day_2': {
    'en': LocalizedLearningText(title: 'Day 2 – Mind Game & Exercises'),
  },
  'lesson19_day1': {
    'en': LocalizedLearningText(title: 'Day 1 — Theory & Vocabulary'),
  },
  'lesson19_day2': {
    'en': LocalizedLearningText(
        title: 'Day 2 — Exercises & Translation Quiz'),
  },
  'lesson20_day1': {
    'en': LocalizedLearningText(
        title: 'Day 1: Compounds (Samāsa) — Theory & Vocabulary'),
  },
  'lesson20_day2': {
    'en': LocalizedLearningText(
        title: 'Day 2: Mind Game & Quiz Practice — Compounds (Samāsa)'),
  },
  'lesson21_day1': {
    'en': LocalizedLearningText(
        title: 'Day 1: Indeclinables — 20 Prefixes (Upasagga)'),
  },
  'lesson21_day2': {
    'en': LocalizedLearningText(
        title: 'Day 2: Translation Practice — Exercise 21 (30 sentences)'),
  },
  'lesson22_day1': {
    'en': LocalizedLearningText(
        title: 'Day 1: Nominal Formation — 11 Taddhita Suffixes'),
  },
  'lesson22_day2': {
    'en': LocalizedLearningText(
        title: 'Day 2: Translation Practice — Exercise 22 (28 sentences)'),
  },
  'lesson23_day1': {
    'en': LocalizedLearningText(
        title: 'Day 1: Kitaka — 8 Verbal Noun Suffixes'),
  },
  'lesson23_day2': {
    'en': LocalizedLearningText(
        title: 'Day 2: Translation Practice — Exercise 23 (28 sentences)'),
  },
  'lesson24_day1': {
    'en': LocalizedLearningText(
        title: 'Day 1: Sandhi (Euphonic Combination) — 3 Groups, 24 Rules'),
  },
  'lesson24_day2': {
    'en': LocalizedLearningText(
        title: 'Day 2: Sandhi Practice — Mind Game + Quiz'),
  },
  'lesson25_day1': {
    'en': LocalizedLearningText(title: 'Day 1: Usage of the Cases'),
  },
  'lesson25_day2': {
    'en': LocalizedLearningText(title: 'Day 2: Case Identification Practice'),
  },
  'lesson26_day1': {
    'en': LocalizedLearningText(
        title: 'Day 1: Passive Voice + the Verbs "hū"/"asa"'),
  },
  'lesson26_day2': {
    'en': LocalizedLearningText(
        title: 'Day 2: Passive Voice + hū/asa Practice'),
  },
};

const Map<String, Map<String, LocalizedLearningText>> lessonPhaseTranslations = {
  'lesson01_phase1': {
    'en': LocalizedLearningText(
        title: 'Reading: Masculine "-a" Declension and Present Tense'),
  },
  'lesson01_phase2': {
    'en': LocalizedLearningText(
        title: 'Mind Game: Memorize Declension Forms'),
  },
  'lesson01_phase3': {
    'en': LocalizedLearningText(
        title:
            'Practice 1: Identify Nominative & Accusative (Sentences 1–13)'),
  },
  'lesson01_phase4': {
    'en': LocalizedLearningText(title: 'Mind Game: Review Practice 1'),
  },
  'lesson01_phase5': {
    'en': LocalizedLearningText(
        title:
            'Practice 2: Full S-O-V Sentence Analysis (Sentences 14–27)'),
  },
  'lesson01_phase6': {
    'en': LocalizedLearningText(title: 'Mind Game: Review Practice 2'),
  },
  'lesson01_phase7': {
    'en': LocalizedLearningText(
        title:
            'Practice 3: Full Sentences & Consolidation (Sentences 28–40)'),
  },
  'lesson01_phase8': {
    'en': LocalizedLearningText(title: 'Mind Game: Review Practice 3'),
  },
  // ── Lesson 02 ─────────────────────────────────────────────────────
  'lesson02_phase1': {
    'en': LocalizedLearningText(
        title: '📘 Instrumental & Dative Cases + 2nd-Person Verbs'),
  },
  'lesson02_phase2': {
    'en': LocalizedLearningText(title: '🧠 Word Match: 11 New Nouns'),
  },
  'lesson02_phase3': {
    'en': LocalizedLearningText(
        title: '🎧 Quiz: Instrumental, Dative & 2nd Person'),
  },
  'lesson02_phase4': {
    'en': LocalizedLearningText(title: '📖 Reading: 4 Example Sentences'),
  },
  'lesson02_phase5': {
    'en': LocalizedLearningText(
        title: '🧠 Sentence Match: Translating 4 Example Sentences'),
  },
  'lesson02_phase6': {
    'en': LocalizedLearningText(
        title: '🎧 Quiz: Translating Pāḷi Sentences (Exercise 2)'),
  },
  // ── Lesson 03 ─────────────────────────────────────────────────────
  'lesson03_phase1': {
    'en': LocalizedLearningText(
        title: '📘 Ablative & Genitive Cases + 1st-Person Verbs'),
  },
  'lesson03_phase2': {
    'en': LocalizedLearningText(
        title: '🧠 Word Match: 12 Nouns + 11 New Verbs'),
  },
  'lesson03_phase3': {
    'en': LocalizedLearningText(
        title: '🎧 Quiz: Ablative, Genitive & 1st Person'),
  },
  'lesson03_phase4': {
    'en': LocalizedLearningText(title: '📖 Reading: 6 Example Sentences'),
  },
  'lesson03_phase5': {
    'en': LocalizedLearningText(
        title: '🧠 Sentence Match: 36 Sentences — Exercise 3'),
  },
  'lesson03_phase6': {
    'en': LocalizedLearningText(
        title: '🎧 Quiz: Translating Pāḷi Sentences (Exercise 3)'),
  },
  // ── Lesson 04 ─────────────────────────────────────────────────────
  'lesson04_phase1': {
    'en': LocalizedLearningText(
        title: '📘 Locative & Vocative Cases + Indeclinables'),
  },
  'lesson04_phase2': {
    'en': LocalizedLearningText(
        title: '🧠 Word Match: 12 Nouns + 6 Verbs + 15 Indeclinables'),
  },
  'lesson04_phase3': {
    'en': LocalizedLearningText(
        title: '🎧 Quiz: Locative, Vocative, Saddhiṃ & Sandhi'),
  },
  'lesson04_phase4': {
    'en': LocalizedLearningText(title: '📖 Reading: 4 Example Sentences'),
  },
  'lesson04_phase5': {
    'en': LocalizedLearningText(
        title: '🧠 Sentence Match: 36 Sentences — Exercise 4'),
  },
  'lesson04_phase6': {
    'en': LocalizedLearningText(
        title: '🎧 Quiz: Translating Pāḷi Sentences (Exercise 4)'),
  },
  // ── Lesson 05 ─────────────────────────────────────────────────────
  'lesson05_phase1': {
    'en': LocalizedLearningText(title: 'Reading: 8 Cases & Neuter "-a"'),
  },
  'lesson05_phase2': {
    'en': LocalizedLearningText(
        title: 'Lesson 5 Vocabulary — Neuter Nouns & New Verbs'),
  },
  'lesson05_phase3': {
    'en': LocalizedLearningText(title: 'Mind Game — Exercise 5'),
  },
  'lesson05_phase4': {
    'en': LocalizedLearningText(title: 'Quiz — Lesson 5 Knowledge Check'),
  },
  // ── Lesson 06 ─────────────────────────────────────────────────────
  'lesson06_phase1': {
    'en': LocalizedLearningText(title: 'Reading: Feminine "-ā" & Infinitive'),
  },
  'lesson06_phase2': {
    'en': LocalizedLearningText(
        title: 'Lesson 6 Vocabulary — Feminine "-ā" Nouns & Infinitive Verbs'),
  },
  'lesson06_phase3': {
    'en': LocalizedLearningText(title: 'Mind Game — Exercise 6'),
  },
  'lesson06_phase4': {
    'en': LocalizedLearningText(title: 'Quiz — Lesson 6 Knowledge Check'),
  },
  // ── Lesson 07 ─────────────────────────────────────────────────────
  'lesson07_phase1': {
    'en': LocalizedLearningText(
        title: '📘 The Ajjatanī Tense & Possessive Pronouns'),
  },
  'lesson07_phase2': {
    'en': LocalizedLearningText(
        title: '🧠 Word Match: 10 Words + 10 Possessive Pronouns'),
  },
  'lesson07_phase3': {
    'en': LocalizedLearningText(
        title: '🎧 Quiz: Ajjatanī Tense & Possessive Pronouns'),
  },
  'lesson07_phase4': {
    'en': LocalizedLearningText(
        title: '📖 Reading: Translation Hints for the 36 Sentences of Exercise 7'),
  },
  'lesson07_phase5': {
    'en': LocalizedLearningText(
        title: '🧠 Sentence Match: 36 Sentences — Exercise 7'),
  },
  'lesson07_phase6': {
    'en': LocalizedLearningText(
        title: '🎧 Quiz: Translating Pāḷi Sentences (Exercise 7)'),
  },
  // ── Lesson 08 ─────────────────────────────────────────────────────
  'lesson08_phase1': {
    'en': LocalizedLearningText(
        title: '📘 Masculine "-i" Noun Declension + Gerund'),
  },
  'lesson08_phase2': {
    'en': LocalizedLearningText(
        title: '🧠 Word Match: 12 Masculine "-i" Nouns'),
  },
  'lesson08_phase3': {
    'en': LocalizedLearningText(title: '🎧 Quiz: "-i" Declension & Gerund'),
  },
  'lesson08_phase4': {
    'en': LocalizedLearningText(
        title: '📖 Reading: Translation Hints for Exercise 8'),
  },
  'lesson08_phase5': {
    'en': LocalizedLearningText(
        title: '🧠 Sentence Match: 30 Sentences — Exercise 8'),
  },
  'lesson08_phase6': {
    'en': LocalizedLearningText(
        title: '🎧 Quiz: Translating Pāḷi Sentences (Exercise 8)'),
  },
  // ── Lesson 09 ─────────────────────────────────────────────────────
  'lesson09_phase1': {
    'en': LocalizedLearningText(
        title: 'Reading: Feminine "-i" & Future Tense'),
  },
  'lesson09_phase2': {
    'en': LocalizedLearningText(
        title: 'Lesson 9 Vocabulary — Feminine "-i", Masc./Neuter, Verbs'),
  },
  'lesson09_phase3': {
    'en': LocalizedLearningText(title: 'Mind Game — Exercise 9'),
  },
  'lesson09_phase4': {
    'en': LocalizedLearningText(title: 'Quiz — Lesson 9 Knowledge Check'),
  },
  // ── Lesson 10 ─────────────────────────────────────────────────────
  'lesson10_phase1': {
    'en': LocalizedLearningText(
        title: 'Reading: Masc./Fem. "-ī" & Forming Feminines'),
  },
  'lesson10_phase2': {
    'en': LocalizedLearningText(title: 'Lesson 10 Vocabulary'),
  },
  'lesson10_phase3': {
    'en': LocalizedLearningText(title: 'Mind Game — Exercise 10'),
  },
  'lesson10_phase4': {
    'en': LocalizedLearningText(title: 'Quiz — Lesson 10 Knowledge Check'),
  },
  // ── Lesson 11 ─────────────────────────────────────────────────────
  'lesson11_phase1': {
    'en': LocalizedLearningText(
        title: '📘 "-u/-ū" Declension + Imperative Mood'),
  },
  'lesson11_phase2': {
    'en': LocalizedLearningText(
        title: '🧠 Word Match: 33 New Words (Nouns + Verbs + Indeclinables)'),
  },
  'lesson11_phase3': {
    'en': LocalizedLearningText(
        title: '🎧 Quiz: Imperative Mood & Address (Vocative)'),
  },
  'lesson11_phase4': {
    'en': LocalizedLearningText(
        title: '📖 Reading: 32 Sentences — Exercise 11'),
  },
  'lesson11_phase5': {
    'en': LocalizedLearningText(
        title: '🧠 Sentence Match: 32 Sentences — Exercise 11'),
  },
  'lesson11_phase6': {
    'en': LocalizedLearningText(
        title: '🎧 Quiz: Translating Pāḷi Sentences (Exercise 11)'),
  },
  // ── Lesson 12 ─────────────────────────────────────────────────────
  'lesson12_phase1': {
    'en': LocalizedLearningText(title: 'Reading: Pronouns & Optative'),
  },
  'lesson12_phase2': {
    'en': LocalizedLearningText(title: 'Lesson 12 Vocabulary'),
  },
  'lesson12_phase3': {
    'en': LocalizedLearningText(title: 'Mind Game — Exercise 12'),
  },
  'lesson12_phase4': {
    'en': LocalizedLearningText(title: 'Quiz — Lesson 12 Knowledge Check'),
  },
  // ── Lesson 13 ─────────────────────────────────────────────────────
  'lesson13_phase1': {
    'en': LocalizedLearningText(
        title: '📘 Relative, Demonstrative & Interrogative Pronouns'),
  },
  'lesson13_phase2': {
    'en': LocalizedLearningText(
        title: '🧠 Word Match: Pronouns + Demonstrative Adjectives'),
  },
  'lesson13_phase3': {
    'en': LocalizedLearningText(
        title: '🎧 Quiz: Relative, Demonstrative & Interrogative Pronouns'),
  },
  'lesson13_phase4': {
    'en': LocalizedLearningText(
        title: '📖 Reading: Translation Hints for Exercise 13'),
  },
  'lesson13_phase5': {
    'en': LocalizedLearningText(
        title: '🧠 Sentence Match: 42 Sentences — Exercise 13'),
  },
  'lesson13_phase6': {
    'en': LocalizedLearningText(
        title: '🎧 Quiz: Translating Pāḷi Sentences (Exercise 13)'),
  },
  // ── Lesson 14 ─────────────────────────────────────────────────────
  'lesson14_phase1': {
    'en': LocalizedLearningText(
        title: '1. Present Active Participle – anta / māna'),
  },
  'lesson14_phase2': {
    'en': LocalizedLearningText(
        title: '2. Present Passive Participle – īyamāna'),
  },
  'lesson14_phase3': {
    'en': LocalizedLearningText(title: '3. Past Participle – ta / na'),
  },
  'lesson14_phase4': {
    'en': LocalizedLearningText(
        title: '4. Gerundive Participle – tabba / anīya / ya'),
  },
  'lesson14_phase5': {
    'en': LocalizedLearningText(title: '5. Master Verb Table – pp.134-136'),
  },
  'lesson14_phase6': {
    'en': LocalizedLearningText(
        title: 'Quiz – Distinguishing the 6 Types of Participle'),
  },
  'lesson14_phase7': {
    'en': LocalizedLearningText(
        title: 'Mind Game – Exercise 14 (Pāḷi ↔ English)'),
  },
  'lesson14_phase8': {
    'en': LocalizedLearningText(
        title: 'Quiz – Absolute Locative & Gerundive'),
  },
  // ── Lesson 15 ─────────────────────────────────────────────────────
  'lesson15_phase1': {
    'en': LocalizedLearningText(
        title: 'The Pronouns ima – amu & Adjective Agreement'),
  },
  'lesson15_phase2': {
    'en': LocalizedLearningText(
        title: 'Exercise 15 – 1…25 (Pāḷi → English)'),
  },
  'lesson15_phase3': {
    'en': LocalizedLearningText(
        title: 'Exercise 15 – 26…50 (English → Pāḷi)'),
  },
  'lesson15_phase4': {
    'en': LocalizedLearningText(
        title: 'Quiz – Adjective Agreement with Nouns'),
  },
  // ── Lesson 16 ─────────────────────────────────────────────────────
  'lesson16_phase1': {
    'en': LocalizedLearningText(
        title: 'Reading: Counting & Ordinal Numbers'),
  },
  'lesson16_phase2': {
    'en': LocalizedLearningText(
        title: 'Counting from 1 to koṭi + New Vocabulary'),
  },
  'lesson16_phase3': {
    'en': LocalizedLearningText(title: 'Mind Game — Exercise 16'),
  },
  'lesson16_phase4': {
    'en': LocalizedLearningText(title: 'Quiz — Lesson 16 Knowledge Check'),
  },
  // ── Lesson 17 ─────────────────────────────────────────────────────
  'lesson17_phase1': {
    'en': LocalizedLearningText(
        title: '📘 Irregular Masculine Nouns + the 7 Conjugations'),
  },
  'lesson17_phase2': {
    'en': LocalizedLearningText(
        title:
            '🧠 Word Match: 7 Nouns + 3 Verbs + 3 Indeclinables + 7 Conjugation Types'),
  },
  'lesson17_phase3': {
    'en': LocalizedLearningText(
        title: '🎧 Quiz: Irregular Nouns & the 7 Conjugations'),
  },
  'lesson17_phase4': {
    'en': LocalizedLearningText(
        title: '📖 Reading: Translation Hints for Exercise 17'),
  },
  'lesson17_phase5': {
    'en': LocalizedLearningText(
        title: '🧠 Sentence Match: 29 Sentences — Exercise 17'),
  },
  'lesson17_phase6': {
    'en': LocalizedLearningText(
        title: '🎧 Quiz: Translating Pāḷi Sentences (Exercise 17)'),
  },
  // ── Lesson 18 ─────────────────────────────────────────────────────
  'lesson_18_d1_p1': {
    'en': LocalizedLearningText(title: '1. -tar Nouns (satthu, pitu, mātu)'),
  },
  'lesson_18_d1_p2': {
    'en': LocalizedLearningText(
        title: '2. The Causal Mood (Kārita) – Vuddhi & the 4 Suffixes'),
  },
  'lesson_18_d2_p1': {
    'en': LocalizedLearningText(
        title: 'Mind Game – 28 Translation/Vocabulary Sentences'),
  },
  'lesson_18_d2_p2': {
    'en': LocalizedLearningText(
        title: 'Quiz – 8 Multiple-Choice Questions, Lesson 18'),
  },
  // ── Lesson 19 ─────────────────────────────────────────────────────
  'lesson19_phase1': {
    'en': LocalizedLearningText(
        title: '📘 Declension of "go" & "mana" + the Imperfect'),
  },
  'lesson19_phase2': {
    'en': LocalizedLearningText(
        title: '🧠 Word Match: 16 Mano-Group Nouns + 2 Special Nouns'),
  },
  'lesson19_phase3': {
    'en': LocalizedLearningText(
        title: '🎧 Quiz: "go/mana" Declension & the Imperfect'),
  },
  'lesson19_phase4': {
    'en': LocalizedLearningText(
        title: '📖 Reading: Translation Hints for Exercise 19'),
  },
  'lesson19_phase5': {
    'en': LocalizedLearningText(
        title: '🧠 Sentence Match: 29 Sentences — Exercise 19'),
  },
  'lesson19_phase6': {
    'en': LocalizedLearningText(
        title: '🎧 Quiz: Translating Pāḷi Sentences (Exercise 19)'),
  },
  // ── Lesson 20 ─────────────────────────────────────────────────────
  'lesson20_phase1': {
    'en': LocalizedLearningText(title: 'Reading: Compounds (Samāsa)'),
  },
  'lesson20_phase2': {
    'en': LocalizedLearningText(
        title: 'Typical Examples of Each Compound Type'),
  },
  'lesson20_phase3': {
    'en': LocalizedLearningText(
        title: 'Mind Game — Exercise 20 (Classics)'),
  },
  'lesson20_phase4': {
    'en': LocalizedLearningText(
        title: 'Quiz — Identifying Compound Types'),
  },
  // ── Lesson 21 ─────────────────────────────────────────────────────
  'lesson21_phase1': {
    'en': LocalizedLearningText(
        title: '📘 Indeclinables (Avyaya) — 20 Prefixes (Upasagga)'),
  },
  'lesson21_phase2': {
    'en': LocalizedLearningText(
        title: '🧠 Mind Game: Identifying the 20 Prefixes'),
  },
  'lesson21_phase3': {
    'en': LocalizedLearningText(
        title: '🎧 Quiz: Prefix Identification & Meaning'),
  },
  'lesson21_phase4': {
    'en': LocalizedLearningText(
        title: '📖 Reading: Sentences 1-15 (Exercise 21)'),
  },
  'lesson21_phase5': {
    'en': LocalizedLearningText(
        title: '🧠 Mind Game: Translating Sentences 1-10'),
  },
  'lesson21_phase6': {
    'en': LocalizedLearningText(title: '🎧 Quiz: Analyzing Sentences 1-15'),
  },
  'lesson21_phase7': {
    'en': LocalizedLearningText(
        title: '📖 Reading: Sentences 16-30 (Exercise 21)'),
  },
  'lesson21_phase8': {
    'en': LocalizedLearningText(
        title: '🧠 Mind Game: Translating Sentences 16-30'),
  },
  'lesson21_phase9': {
    'en': LocalizedLearningText(title: '🎧 Quiz: Analyzing Sentences 16-30'),
  },
  // ── Lesson 22 ─────────────────────────────────────────────────────
  'lesson22_phase1': {
    'en': LocalizedLearningText(
        title: '📘 Taddhita — 11 Noun-Formation Suffixes'),
  },
  'lesson22_phase2': {
    'en': LocalizedLearningText(
        title: '🧠 Mind Game: Identifying Suffixes'),
  },
  'lesson22_phase3': {
    'en': LocalizedLearningText(title: '🎧 Quiz: Taddhita Suffixes'),
  },
  'lesson22_phase4': {
    'en': LocalizedLearningText(
        title: '📖 Reading: Sentences 1-14 (Exercise 22)'),
  },
  'lesson22_phase5': {
    'en': LocalizedLearningText(
        title: '🧠 Mind Game: Translating Sentences 1-14'),
  },
  'lesson22_phase6': {
    'en': LocalizedLearningText(title: '🎧 Quiz: Analyzing Sentences 1-14'),
  },
  'lesson22_phase7': {
    'en': LocalizedLearningText(
        title: '📖 Reading: Sentences 15-28 (Exercise 22)'),
  },
  'lesson22_phase8': {
    'en': LocalizedLearningText(
        title: '🧠 Mind Game: Translating Sentences 15-28'),
  },
  'lesson22_phase9': {
    'en': LocalizedLearningText(title: '🎧 Quiz: Analyzing Sentences 15-28'),
  },
  // ── Lesson 23 ─────────────────────────────────────────────────────
  'lesson23_phase1': {
    'en': LocalizedLearningText(
        title: '📘 Kitaka — Formation of Verbal Nouns'),
  },
  'lesson23_phase2': {
    'en': LocalizedLearningText(
        title: '🧠 Mind Game: Identifying Kitaka'),
  },
  'lesson23_phase3': {
    'en': LocalizedLearningText(title: '🎧 Quiz: Kitaka Suffixes'),
  },
  'lesson23_phase4': {
    'en': LocalizedLearningText(
        title: '📖 Reading: Sentences 1-14 (Exercise 23)'),
  },
  'lesson23_phase5': {
    'en': LocalizedLearningText(
        title: '🧠 Mind Game: Translating Sentences 1-14'),
  },
  'lesson23_phase6': {
    'en': LocalizedLearningText(title: '🎧 Quiz: Analyzing Sentences 1-14'),
  },
  'lesson23_phase7': {
    'en': LocalizedLearningText(
        title: '📖 Reading: Sentences 15-28 (Exercise 23)'),
  },
  'lesson23_phase8': {
    'en': LocalizedLearningText(
        title: '🧠 Mind Game: Translating Sentences 15-28'),
  },
  'lesson23_phase9': {
    'en': LocalizedLearningText(title: '🎧 Quiz: Analyzing Sentences 15-28'),
  },
  // ── Lesson 24 ─────────────────────────────────────────────────────
  'lesson24_phase1': {
    'en': LocalizedLearningText(
        title: '📘 Sandhi — Euphonic Rules (Overview + Sara Sandhi)'),
  },
  'lesson24_phase2': {
    'en': LocalizedLearningText(
        title: '📘 Vyañjana Sandhi + Niggahita Sandhi'),
  },
  'lesson24_phase3': {
    'en': LocalizedLearningText(title: '🎧 Quiz: Identifying Sandhi Rules'),
  },
  'lesson24_phase4': {
    'en': LocalizedLearningText(
        title: '🧠 Mind Game: Sara Sandhi (11 Rules)'),
  },
  'lesson24_phase5': {
    'en': LocalizedLearningText(
        title: '🧠 Mind Game: Vyañjana + Niggahita Sandhi'),
  },
  'lesson24_phase6': {
    'en': LocalizedLearningText(title: '🎧 Final Quiz: Analyzing Sandhi'),
  },
  // ── Lesson 25 ─────────────────────────────────────────────────────
  'lesson25_phase1': {
    'en': LocalizedLearningText(
        title: '📘 Nominative + Vocative + Accusative'),
  },
  'lesson25_phase2': {
    'en': LocalizedLearningText(
        title: '📘 Instrumental + the Agent (Karaṇa) Usage'),
  },
  'lesson25_phase3': {
    'en': LocalizedLearningText(title: '🎧 Quiz: Case Identification'),
  },
  'lesson25_phase4': {
    'en': LocalizedLearningText(
        title: '🧠 Mind Game: Nominative + Vocative + Accusative'),
  },
  'lesson25_phase5': {
    'en': LocalizedLearningText(
        title: '🧠 Mind Game: Instrumental & Karaṇa (Agent)'),
  },
  'lesson25_phase6': {
    'en': LocalizedLearningText(
        title: '🎧 Final Quiz: Determining the Cases'),
  },
  // ── Lesson 26 ─────────────────────────────────────────────────────
  'lesson26_phase1': {
    'en': LocalizedLearningText(title: '📘 The Passive Voice'),
  },
  'lesson26_phase2': {
    'en': LocalizedLearningText(
        title: '📘 The Verbs "hū" & "asa" (to be, to become)'),
  },
  'lesson26_phase3': {
    'en': LocalizedLearningText(title: '🎧 Quiz: Passive Voice + hū/asa'),
  },
  'lesson26_phase4': {
    'en': LocalizedLearningText(title: '🧠 Mind Game: The Passive Voice'),
  },
  'lesson26_phase5': {
    'en': LocalizedLearningText(
        title: '🧠 Mind Game: The Verbs "hū" & "asa"'),
  },
  'lesson26_phase6': {
    'en': LocalizedLearningText(
        title: '🎧 Final Quiz: Passive + hū/asa + Application'),
  },
};

const Map<String, Map<String, LocalizedQuizQuestionText>> quizQuestionTranslations = {
  ...quizQuestionEnL01,
  ...quizQuestionEnL02_04,
  ...quizQuestionEnL05_08,
  ...quizQuestionEnL09_12,
  ...quizQuestionEnL13_16,
  ...quizQuestionEnL17_20,
  ...quizQuestionEnL21_23,
  ...quizQuestionEnL24_26,
};
