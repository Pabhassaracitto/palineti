// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Cours de Pāḷi — $count leçons';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'Cours élémentaire de Pāḷi';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'Cadre : méthode VipLang Mind Game';

  @override
  String lessonLabel(int number) {
    return 'Leçon $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'LEÇON $number';
  }

  @override
  String get dataReady => 'DONNÉES PRÊTES';

  @override
  String get otherLessons => 'Autres leçons';

  @override
  String get comingSoonDataReady =>
      'Bientôt disponible — structure de données prête';

  @override
  String get startLesson => 'Commencer la leçon';

  @override
  String get vocabAndGrammar => 'Vocabulaire et grammaire';

  @override
  String get lessonDetailHint =>
      'Touchez Commencer la leçon pour voir le vocabulaire et la grammaire de cette leçon.';

  @override
  String selectStudyDayTitle(int number) {
    return 'Leçon $number — Choisir le jour d’étude';
  }

  @override
  String dayLabel(int number) {
    return 'Jour $number';
  }

  @override
  String get startStudying => 'Commencer l’étude';

  @override
  String get readPhase => 'Lire';

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
    return 'Type de phase inconnu : $type';
  }

  @override
  String get completionTitle => '🎉 Terminé !';

  @override
  String completionMessage(String title) {
    return 'Vous avez terminé $title';
  }

  @override
  String get back => 'Retour';

  @override
  String get previous => 'Précédent';

  @override
  String get continueAction => 'Continuer';

  @override
  String get noContent => 'Aucun contenu';

  @override
  String get noQuestions => 'Aucune question';

  @override
  String get mindGameTitle => 'Jeu mental';

  @override
  String get mindGameInstruction =>
      '💡 Touchez un indice → Dites le Pāḷi à voix haute → Touchez encore pour révéler la réponse';

  @override
  String get revealAll => 'Tout révéler';

  @override
  String get importantVocabulary => '📖 Vocabulaire important';

  @override
  String get importantStructures => '💡 Structures clés';

  @override
  String get quizResultsTitle => '📊 Résultats';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'Excellent ! 🎉';

  @override
  String get goodFeedback => 'Bien joué ! 👍';

  @override
  String get tryHarderFeedback => 'Continuez à pratiquer ! 💪';

  @override
  String get listeningQuizTitle => 'Quiz d’écoute';

  @override
  String questionProgress(int current, int total) {
    return 'Question $current/$total';
  }

  @override
  String get transcript => 'Transcription';

  @override
  String get correctAnswer => 'Correct !';

  @override
  String get explanation => 'Explication';

  @override
  String get answersAndExplanation => '📝 Réponses et explication';

  @override
  String get viewResults => 'Voir les résultats';

  @override
  String get nextQuestion => 'Question suivante';

  @override
  String get fullDeclensionTable => '📚 Tableau complet de déclinaison';

  @override
  String get examplesSection => '📖 Exemples';

  @override
  String get declensionTableTitle => 'Tableau de déclinaison :';

  @override
  String get declensionCase => 'Cas';

  @override
  String get singular => 'Singulier';

  @override
  String get plural => 'Pluriel';

  @override
  String get notMastered => 'Non maîtrisé';

  @override
  String get mastered => 'Maîtrisé';

  @override
  String get currentLesson => 'Leçon actuelle';

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
