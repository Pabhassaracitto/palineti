// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Pāḷi Course — $count Lessons';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'An Elementary Pāḷi Course';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'Framework: VipLang Mind Game Method';

  @override
  String lessonLabel(int number) {
    return 'Lesson $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'LESSON $number';
  }

  @override
  String get dataReady => 'DATA READY';

  @override
  String get otherLessons => 'Other Lessons';

  @override
  String get comingSoonDataReady => 'Coming soon — data structure ready';

  @override
  String get startLesson => 'Start lesson';

  @override
  String get vocabAndGrammar => 'Vocabulary & Grammar';

  @override
  String get lessonDetailHint =>
      'Tap Start lesson to view the vocabulary and grammar details for this lesson.';

  @override
  String selectStudyDayTitle(int number) {
    return 'Lesson $number — Choose Study Day';
  }

  @override
  String dayLabel(int number) {
    return 'Day $number';
  }

  @override
  String get startStudying => 'Start studying';

  @override
  String get readPhase => 'Read';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'Quiz';

  @override
  String phaseProgress(int current, int total) {
    return 'Phase $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'Unknown phase type: $type';
  }

  @override
  String get completionTitle => '🎉 Completed!';

  @override
  String completionMessage(String title) {
    return 'You have completed $title';
  }

  @override
  String get back => 'Back';

  @override
  String get previous => 'Previous';

  @override
  String get continueAction => 'Continue';

  @override
  String get noContent => 'No content';

  @override
  String get noQuestions => 'No questions';

  @override
  String get mindGameTitle => 'Mind Game';

  @override
  String get mindGameInstruction =>
      '💡 Tap a prompt segment → Say the Pāḷi aloud → Tap again to reveal the answer';

  @override
  String get revealAll => 'Reveal all';

  @override
  String get importantVocabulary => '📖 Important Vocabulary';

  @override
  String get importantStructures => '💡 Key Structures';

  @override
  String get quizResultsTitle => '📊 Results';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'Excellent! 🎉';

  @override
  String get goodFeedback => 'Well done! 👍';

  @override
  String get tryHarderFeedback => 'Keep practicing! 💪';

  @override
  String get listeningQuizTitle => 'Listening Quiz';

  @override
  String questionProgress(int current, int total) {
    return 'Question $current/$total';
  }

  @override
  String get transcript => 'Transcript';

  @override
  String get correctAnswer => 'Correct!';

  @override
  String get explanation => 'Explanation';

  @override
  String get answersAndExplanation => '📝 Answers & Explanation';

  @override
  String get viewResults => 'View results';

  @override
  String get nextQuestion => 'Next question';

  @override
  String get fullDeclensionTable => '📚 Full Declension Table';

  @override
  String get examplesSection => '📖 Examples';

  @override
  String get declensionTableTitle => 'Declension table:';

  @override
  String get declensionCase => 'Case';

  @override
  String get singular => 'Singular';

  @override
  String get plural => 'Plural';

  @override
  String get notMastered => 'Not mastered';

  @override
  String get mastered => 'Mastered';

  @override
  String get currentLesson => 'Current lesson';

  @override
  String get caseNomAbbr => 'Nom';

  @override
  String get caseAccAbbr => 'Acc';

  @override
  String get caseInsAbbr => 'Ins';

  @override
  String get caseDatAbbr => 'Dat';

  @override
  String get caseAblAbbr => 'Abl';

  @override
  String get caseGenAbbr => 'Gen';

  @override
  String get caseLocAbbr => 'Loc';

  @override
  String get caseVocAbbr => 'Voc';

  @override
  String get caseNomName => 'Nominative';

  @override
  String get caseAccName => 'Accusative';

  @override
  String get caseInsName => 'Instrumental';

  @override
  String get caseDatName => 'Dative';

  @override
  String get caseAblName => 'Ablative';

  @override
  String get caseGenName => 'Genitive';

  @override
  String get caseLocName => 'Locative';

  @override
  String get caseVocName => 'Vocative';

  @override
  String get singularAbbr => 'sg';

  @override
  String get pluralAbbr => 'pl';

  @override
  String quickFormLabel(String caseAbbr, String numberAbbr) {
    return '$caseAbbr $numberAbbr';
  }
}
