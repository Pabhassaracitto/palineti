// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Pāḷi-Kurs — $count Lektionen';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'Ein elementarer Pāḷi-Kurs';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'Framework: VipLang Mind Game Methode';

  @override
  String lessonLabel(int number) {
    return 'Lektion $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'LEKTION $number';
  }

  @override
  String get dataReady => 'DATEN BEREIT';

  @override
  String get otherLessons => 'Weitere Lektionen';

  @override
  String get comingSoonDataReady => 'Demnächst — Datenstruktur bereit';

  @override
  String get startLesson => 'Lektion starten';

  @override
  String get vocabAndGrammar => 'Wortschatz & Grammatik';

  @override
  String get lessonDetailHint =>
      'Tippe auf Lektion starten, um Wortschatz und Grammatik dieser Lektion zu sehen.';

  @override
  String selectStudyDayTitle(int number) {
    return 'Lektion $number — Lerntag wählen';
  }

  @override
  String dayLabel(int number) {
    return 'Tag $number';
  }

  @override
  String get startStudying => 'Lernen starten';

  @override
  String get readPhase => 'Lesen';

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
    return 'Unbekannter Phasentyp: $type';
  }

  @override
  String get completionTitle => '🎉 Abgeschlossen!';

  @override
  String completionMessage(String title) {
    return 'Du hast $title abgeschlossen';
  }

  @override
  String get back => 'Zurück';

  @override
  String get previous => 'Zurück';

  @override
  String get continueAction => 'Weiter';

  @override
  String get noContent => 'Kein Inhalt';

  @override
  String get noQuestions => 'Keine Fragen';

  @override
  String get mindGameTitle => 'Mind Game';

  @override
  String get mindGameInstruction =>
      '💡 Tippe auf einen Hinweis → Sprich Pāḷi laut → Tippe erneut, um die Antwort zu zeigen';

  @override
  String get revealAll => 'Alle anzeigen';

  @override
  String get importantVocabulary => '📖 Wichtiger Wortschatz';

  @override
  String get importantStructures => '💡 Wichtige Strukturen';

  @override
  String get quizResultsTitle => '📊 Ergebnisse';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'Ausgezeichnet! 🎉';

  @override
  String get goodFeedback => 'Gut gemacht! 👍';

  @override
  String get tryHarderFeedback => 'Weiter üben! 💪';

  @override
  String get listeningQuizTitle => 'Hörquiz';

  @override
  String questionProgress(int current, int total) {
    return 'Frage $current/$total';
  }

  @override
  String get transcript => 'Transkript';

  @override
  String get correctAnswer => 'Richtig!';

  @override
  String get explanation => 'Erklärung';

  @override
  String get answersAndExplanation => '📝 Antworten & Erklärung';

  @override
  String get viewResults => 'Ergebnisse ansehen';

  @override
  String get nextQuestion => 'Nächste Frage';

  @override
  String get fullDeclensionTable => '📚 Vollständige Deklinationstabelle';

  @override
  String get examplesSection => '📖 Beispiele';

  @override
  String get declensionTableTitle => 'Deklinationstabelle:';

  @override
  String get declensionCase => 'Kasus';

  @override
  String get singular => 'Singular';

  @override
  String get plural => 'Plural';

  @override
  String get notMastered => 'Nicht gelernt';

  @override
  String get mastered => 'Gelernt';

  @override
  String get currentLesson => 'Aktuelle Lektion';

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
