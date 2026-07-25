// Model tối giản cho pali_course package — Pure Dart, không Hive.
// Khi tích hợp VipLang: map sang VipLang's LessonDay/LessonPhase/QuizQuestion

/// Đoạn văn trộn Pāḷi-Việt cho Mind Game
class MixedSegment {
  final String text;
  final bool isVietnamese;
  final String? answer; // Chỉ có khi isVietnamese = true

  const MixedSegment({
    required this.text,
    this.isVietnamese = false,
    this.answer,
  });

  // Convenience constructors
  const MixedSegment.pali(String text)
      : this(text: text, isVietnamese: false);

  const MixedSegment.vietnamese(String text, String answer)
      : this(text: text, isVietnamese: true, answer: answer);
}

/// Câu hỏi trắc nghiệm
class QuizQuestion {
  final String id;              // 'lesson01_q01'
  final String questionText;    // Câu hỏi tiếng Việt
  final List<String> options;   // 4 lựa chọn
  final int correctIndex;       // 0-3
  final String practiceNumber;  // 'practice1', 'practice2', 'practice3'

  const QuizQuestion({
    required this.id,
    required this.questionText,
    required this.options,
    required this.correctIndex,
    required this.practiceNumber,
  });
}

/// Item trong FAB Vocab sheet
class FabVocabItem {
  final String wordEn;
  final String wordVi;
  final String pronunciation;
  final String partOfSpeech;

  const FabVocabItem({
    required this.wordEn,
    required this.wordVi,
    required this.pronunciation,
    required this.partOfSpeech,
  });
}

/// Item trong FAB Phrase sheet
class FabPhraseItem {
  final String phrase;
  final String meaning;

  const FabPhraseItem({
    required this.phrase,
    required this.meaning,
  });
}

/// Item trong FAB Answer sheet (chỉ cho listening_quiz)
class FabAnswerItem {
  final String en; // 'Q1 → B: ...'
  final String vi; // Giải thích tiếng Việt

  const FabAnswerItem({
    required this.en,
    required this.vi,
  });
}

/// Một phase trong lesson (read_listen / mind_game / listening_quiz)
class LessonPhase {
  final String id;
  final String phaseTypeStr; // 'read_listen' | 'mind_game' | 'listening_quiz'
  final String? titleVi;
  final String? contentVi;
  final String? contentEn;
  final List<MixedSegment>? mixedSegments;
  final List<QuizQuestion>? questions;
  final List<FabVocabItem>? fabVocab;
  final List<FabPhraseItem>? fabPhrases;
  final List<FabAnswerItem>? fabAnswers;

  // Runtime state — không persist ở package level
  bool isCompleted;

  LessonPhase({
    required this.id,
    required this.phaseTypeStr,
    this.titleVi,
    this.contentVi,
    this.contentEn,
    this.mixedSegments,
    this.questions,
    this.fabVocab,
    this.fabPhrases,
    this.fabAnswers,
    this.isCompleted = false,
  });

  PhaseType get phaseType {
    switch (phaseTypeStr) {
      case 'read_listen':    return PhaseType.readListen;
      case 'mind_game':      return PhaseType.mindGame;
      case 'listening_quiz': return PhaseType.listeningQuiz;
      default:               return PhaseType.readListen;
    }
  }
}

enum PhaseType { readListen, mindGame, listeningQuiz }

/// Một ngày học (Day 1 hoặc Day 2)
class LessonDay {
  final String id;           // 'lesson01_day1'
  final int dayNumber;       // 1 hoặc 2
  final String themeId;      // 'theme_01_masc_a_nom_acc'
  final String titleVi;
  final List<LessonPhase> phases;

  // Runtime state
  bool isCompleted;
  int currentPhaseIndex;

  LessonDay({
    required this.id,
    required this.dayNumber,
    required this.themeId,
    required this.titleVi,
    required this.phases,
    this.isCompleted = false,
    this.currentPhaseIndex = 0,
  });

  double get progressPercent => phases.isEmpty
      ? 0.0
      : phases.where((p) => p.isCompleted).length / phases.length;
}

/// Metadata của một Lesson (26 lessons)
class LessonMeta {
  final String id;         // 'theme_01_masc_a_nom_acc'
  final int lessonNumber;  // 1-26
  final String titleVi;
  final String titleEn;
  final String iconEmoji;
  final int colorValue;    // Color hex value
  final String description;

  const LessonMeta({
    required this.id,
    required this.lessonNumber,
    required this.titleVi,
    required this.titleEn,
    required this.iconEmoji,
    required this.colorValue,
    required this.description,
  });
}
