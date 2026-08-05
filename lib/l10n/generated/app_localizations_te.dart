// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Pāḷi కోర్సు — $count పాఠాలు';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'ప్రాథమిక Pāḷi కోర్సు';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'ఫ్రేమ్‌వర్క్: VipLang Mind Game పద్ధతి';

  @override
  String lessonLabel(int number) {
    return 'పాఠం $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'పాఠం $number';
  }

  @override
  String get dataReady => 'డేటా సిద్ధం';

  @override
  String get otherLessons => 'ఇతర పాఠాలు';

  @override
  String get comingSoonDataReady => 'త్వరలో — డేటా నిర్మాణం సిద్ధం';

  @override
  String get startLesson => 'పాఠం ప్రారంభించండి';

  @override
  String get vocabAndGrammar => 'పదసంపద & వ్యాకరణం';

  @override
  String get lessonDetailHint =>
      'ఈ పాఠంలోని పదసంపద, వ్యాకరణ వివరాలను చూడటానికి పాఠం ప్రారంభించండి నొక్కండి.';

  @override
  String selectStudyDayTitle(int number) {
    return 'పాఠం $number — అధ్యయన దినం ఎంచుకోండి';
  }

  @override
  String dayLabel(int number) {
    return 'రోజు $number';
  }

  @override
  String get startStudying => 'అధ్యయనం ప్రారంభించండి';

  @override
  String get readPhase => 'చదవండి';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'క్విజ్';

  @override
  String phaseProgress(int current, int total) {
    return 'దశ $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'Unknown phase type: $type';
  }

  @override
  String get completionTitle => '🎉 పూర్తయింది!';

  @override
  String completionMessage(String title) {
    return 'మీరు $title పూర్తి చేశారు';
  }

  @override
  String get back => 'వెనక్కి';

  @override
  String get previous => 'మునుపటి';

  @override
  String get continueAction => 'కొనసాగించండి';

  @override
  String get noContent => 'కంటెంట్ లేదు';

  @override
  String get noQuestions => 'ప్రశ్నలు లేవు';

  @override
  String get mindGameTitle => 'మైండ్ గేమ్';

  @override
  String get mindGameInstruction =>
      '💡 సూచన భాగాన్ని నొక్కండి → Pāḷi ని గట్టిగా చెప్పండి → సమాధానం చూపడానికి మళ్లీ నొక్కండి';

  @override
  String get revealAll => 'అన్నీ చూపండి';

  @override
  String get importantVocabulary => '📖 ముఖ్య పదసంపద';

  @override
  String get importantStructures => '💡 కీలక నిర్మాణాలు';

  @override
  String get quizResultsTitle => '📊 ఫలితాలు';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'అద్భుతం! 🎉';

  @override
  String get goodFeedback => 'బాగా చేశారు! 👍';

  @override
  String get tryHarderFeedback => 'అభ్యాసం కొనసాగించండి! 💪';

  @override
  String get listeningQuizTitle => 'వినికిడి క్విజ్';

  @override
  String questionProgress(int current, int total) {
    return 'ప్రశ్న $current/$total';
  }

  @override
  String get transcript => 'ప్రతిలిపి';

  @override
  String get correctAnswer => 'సరైంది!';

  @override
  String get explanation => 'వివరణ';

  @override
  String get answersAndExplanation => '📝 సమాధానాలు & వివరణ';

  @override
  String get viewResults => 'ఫలితాలు చూడండి';

  @override
  String get nextQuestion => 'తదుపరి ప్రశ్న';

  @override
  String get fullDeclensionTable => '📚 పూర్తి విభక్తి పట్టిక';

  @override
  String get examplesSection => '📖 ఉదాహరణలు';

  @override
  String get declensionTableTitle => 'విభక్తి పట్టిక:';

  @override
  String get declensionCase => 'విభక్తి';

  @override
  String get singular => 'ఏకవచనం';

  @override
  String get plural => 'బహువచనం';

  @override
  String get notMastered => 'ఇంకా సాధించలేదు';

  @override
  String get mastered => 'సాధించారు';

  @override
  String get currentLesson => 'ప్రస్తుత పాఠం';

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
