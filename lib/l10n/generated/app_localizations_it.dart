// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Corso di Pāḷi — $count lezioni';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'Corso elementare di Pāḷi';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'Framework: metodo VipLang Mind Game';

  @override
  String lessonLabel(int number) {
    return 'Lezione $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'LEZIONE $number';
  }

  @override
  String get dataReady => 'DATI PRONTI';

  @override
  String get otherLessons => 'Altre lezioni';

  @override
  String get comingSoonDataReady => 'In arrivo — struttura dati pronta';

  @override
  String get startLesson => 'Inizia lezione';

  @override
  String get vocabAndGrammar => 'Vocabolario e grammatica';

  @override
  String get lessonDetailHint =>
      'Tocca Inizia lezione per vedere vocabolario e grammatica di questa lezione.';

  @override
  String selectStudyDayTitle(int number) {
    return 'Lezione $number — Scegli giorno di studio';
  }

  @override
  String dayLabel(int number) {
    return 'Giorno $number';
  }

  @override
  String get startStudying => 'Inizia a studiare';

  @override
  String get readPhase => 'Leggi';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'Quiz';

  @override
  String phaseProgress(int current, int total) {
    return 'Fase $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'Tipo di fase sconosciuto: $type';
  }

  @override
  String get completionTitle => '🎉 Completato!';

  @override
  String completionMessage(String title) {
    return 'Hai completato $title';
  }

  @override
  String get back => 'Indietro';

  @override
  String get previous => 'Precedente';

  @override
  String get continueAction => 'Continua';

  @override
  String get noContent => 'Nessun contenuto';

  @override
  String get noQuestions => 'Nessuna domanda';

  @override
  String get mindGameTitle => 'Gioco mentale';

  @override
  String get mindGameInstruction =>
      '💡 Tocca un suggerimento → Pronuncia Pāḷi ad alta voce → Tocca di nuovo per mostrare la risposta';

  @override
  String get revealAll => 'Mostra tutto';

  @override
  String get importantVocabulary => '📖 Vocabolario importante';

  @override
  String get importantStructures => '💡 Strutture chiave';

  @override
  String get quizResultsTitle => '📊 Risultati';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'Eccellente! 🎉';

  @override
  String get goodFeedback => 'Ben fatto! 👍';

  @override
  String get tryHarderFeedback => 'Continua a esercitarti! 💪';

  @override
  String get listeningQuizTitle => 'Quiz di ascolto';

  @override
  String questionProgress(int current, int total) {
    return 'Domanda $current/$total';
  }

  @override
  String get transcript => 'Trascrizione';

  @override
  String get correctAnswer => 'Corretto!';

  @override
  String get explanation => 'Spiegazione';

  @override
  String get answersAndExplanation => '📝 Risposte e spiegazione';

  @override
  String get viewResults => 'Vedi risultati';

  @override
  String get nextQuestion => 'Domanda successiva';

  @override
  String get fullDeclensionTable => '📚 Tabella completa delle declinazioni';

  @override
  String get examplesSection => '📖 Esempi';

  @override
  String get declensionTableTitle => 'Tabella delle declinazioni:';

  @override
  String get declensionCase => 'Caso';

  @override
  String get singular => 'Singolare';

  @override
  String get plural => 'Plurale';

  @override
  String get notMastered => 'Non acquisito';

  @override
  String get mastered => 'Acquisito';

  @override
  String get currentLesson => 'Lezione attuale';

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
