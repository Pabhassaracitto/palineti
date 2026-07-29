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
      description: 'Learn the first two noun cases and third-person present-tense verbs.',
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
};

const Map<String, Map<String, LocalizedLearningText>> lessonPhaseTranslations = {
  'lesson01_phase1': {
    'en': LocalizedLearningText(
      title: 'Reading: Masculine "-a" Declension and Present Tense',
    ),
  },
  'lesson01_phase2': {
    'en': LocalizedLearningText(
      title: 'Mind Game: Memorize Declension Forms',
    ),
  },
  'lesson01_phase3': {
    'en': LocalizedLearningText(
      title: 'Practice 1: Identify Nominative & Accusative (Sentences 1–13)',
    ),
  },
  'lesson01_phase4': {
    'en': LocalizedLearningText(
      title: 'Mind Game: Review Practice 1',
    ),
  },
  'lesson01_phase5': {
    'en': LocalizedLearningText(
      title: 'Practice 2: Full S-O-V Sentence Analysis (Sentences 14–27)',
    ),
  },
  'lesson01_phase6': {
    'en': LocalizedLearningText(
      title: 'Mind Game: Review Practice 2',
    ),
  },
  'lesson01_phase7': {
    'en': LocalizedLearningText(
      title: 'Practice 3: Full Sentences & Consolidation (Sentences 28–40)',
    ),
  },
  'lesson01_phase8': {
    'en': LocalizedLearningText(
      title: 'Mind Game: Review Practice 3',
    ),
  },
};

const Map<String, Map<String, LocalizedQuizQuestionText>> quizQuestionTranslations = {
  'lesson01_q01': {
    'en': LocalizedQuizQuestionText(
      questionText: '"Buddho vadati" — Which analysis is correct?',
      options: [
        'A. Buddho = accusative singular; vadati = 2nd person singular',
        'B. Buddho = nominative singular (subject); vadati = 3rd person singular',
        'C. Buddho = nominative plural; vadati = 3rd person plural',
        'D. Buddho = accusative plural; vadati = 1st person singular',
      ],
    ),
  },
  'lesson01_q02': {
    'en': LocalizedQuizQuestionText(
      questionText: 'How should "Sūdā pacanti" be translated?',
      options: [
        'A. The cook is cooking',
        'B. The cook is washing',
        'C. The cooks are washing',
        'D. The cooks are cooking',
      ],
    ),
  },
  'lesson01_q03': {
    'en': LocalizedQuizQuestionText(
      questionText: 'In "Dārakā Buddhaṃ vandanti", what is the role of "Buddhaṃ"?',
      options: [
        'A. Singular subject — the Buddha is saluting',
        'B. Plural subject — Buddhas are saluting',
        'C. Singular object — the Buddha is being saluted',
        'D. Plural object — Buddhas are being saluted',
      ],
    ),
  },
  'lesson01_q04': {
    'en': LocalizedQuizQuestionText(
      questionText: '"Puttā janake vandanti" — Who salutes whom?',
      options: [
        'A. The father (singular) salutes the sons (plural)',
        'B. The sons salute the fathers',
        'C. The fathers salute the sons',
        'D. The son (singular) salutes the father (singular)',
      ],
    ),
  },
  'lesson01_q05': {
    'en': LocalizedQuizQuestionText(
      questionText: 'What is the correct translation of "Buddhā dhammaṃ vadanti"?',
      options: [
        'A. The Buddha speaks the Dhamma',
        'B. The Dhamma speaks to the Buddha',
        'C. The Buddhas preach the Dhamma',
        'D. The Buddha hears the Dhamma',
      ],
    ),
  },
  'lesson01_q06': {
    'en': LocalizedQuizQuestionText(
      questionText: 'Which Pāḷi form is the nominative plural of "gāma" (village)?',
      options: [
        'A. gāmo',
        'B. gāmaṃ',
        'C. gāme',
        'D. gāmā',
      ],
    ),
  },
  'lesson01_q07': {
    'en': LocalizedQuizQuestionText(
      questionText: 'What is the correct translation of "Janakā nare rakkhanti"?',
      options: [
        'A. The men protect the fathers',
        'B. The father protects the man',
        'C. The fathers protect the men',
        'D. The man protects the father',
      ],
    ),
  },
  'lesson01_q08': {
    'en': LocalizedQuizQuestionText(
      questionText: 'How are "ghaṭaṃ" (sentence 39) and "ghaṭe" (sentence 36) different?',
      options: [
        'A. ghaṭaṃ = nominative singular | ghaṭe = nominative plural',
        'B. ghaṭaṃ = accusative singular (one pot) | ghaṭe = accusative plural (many pots)',
        'C. ghaṭaṃ = accusative plural | ghaṭe = accusative singular',
        'D. Both are accusative singular; there is no difference',
      ],
    ),
  },
  'lesson01_q09': {
    'en': LocalizedQuizQuestionText(
      questionText: 'Fill in the blank: "Sūdo ___ pacati." (rice — accusative singular)',
      options: [
        'A. odano',
        'B. odanā',
        'C. odanaṃ',
        'D. odane',
      ],
    ),
  },
};
