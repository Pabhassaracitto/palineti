// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tibetan (`bo`).
class AppLocalizationsBo extends AppLocalizations {
  AppLocalizationsBo([String locale = 'bo']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Pāḷi སློབ་ཚན — སློབ་ཚན $count';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'Pāḷi གཞི་རིམ་སློབ་ཚན';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'སྒྲོམ་གཞི། VipLang Mind Game ཐབས་ལམ';

  @override
  String lessonLabel(int number) {
    return 'སློབ་ཚན $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'སློབ་ཚན $number';
  }

  @override
  String get dataReady => 'གཞི་གྲངས་གྲ་སྒྲིག';

  @override
  String get otherLessons => 'སློབ་ཚན་གཞན';

  @override
  String get comingSoonDataReady =>
      'མགྱོགས་པོར་ཡོང — གཞི་གྲངས་སྒྲིག་གཞི་གྲ་སྒྲིག';

  @override
  String get startLesson => 'སློབ་ཚན་འགོ་འཛུགས';

  @override
  String get vocabAndGrammar => 'ཚིག་མཛོད་དང་བརྡ་སྤྲོད';

  @override
  String get lessonDetailHint =>
      'སློབ་ཚན་འདིའི་ཚིག་མཛོད་དང་བརྡ་སྤྲོད་ལ་བལྟ་ཕྱིར་སློབ་ཚན་འགོ་འཛུགས་ལ་རྡེབས།';

  @override
  String selectStudyDayTitle(int number) {
    return 'སློབ་ཚན $number — སློབ་ཉིན་འདེམས';
  }

  @override
  String dayLabel(int number) {
    return 'ཉིན $number';
  }

  @override
  String get startStudying => 'སློབ་འགོ་འཛུགས';

  @override
  String get readPhase => 'ཀློག';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'དྲི་བ';

  @override
  String phaseProgress(int current, int total) {
    return 'མཚམས $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'Unknown phase type: $type';
  }

  @override
  String get completionTitle => '🎉 ཚར་སོང་།';

  @override
  String completionMessage(String title) {
    return 'ཁྱེད་ཀྱིས $title ཚར་བྱས།';
  }

  @override
  String get back => 'ཕྱིར';

  @override
  String get previous => 'སྔོན་མ';

  @override
  String get continueAction => 'མུ་མཐུད';

  @override
  String get noContent => 'ནང་དོན་མེད';

  @override
  String get noQuestions => 'དྲི་བ་མེད';

  @override
  String get mindGameTitle => 'སེམས་རྩེད';

  @override
  String get mindGameInstruction =>
      '💡 གསལ་བཤད་ཆ་ཤས་ལ་རྡེབས → Pāḷi སྐད་ཆེན་པོས་བཤད → ལན་སྟོན་ཕྱིར་ཡང་རྡེབས';

  @override
  String get revealAll => 'ཚང་མ་སྟོན';

  @override
  String get importantVocabulary => '📖 གལ་ཆེའི་ཚིག་མཛོད';

  @override
  String get importantStructures => '💡 གནད་ཆེའི་སྒྲིག་གཞི';

  @override
  String get quizResultsTitle => '📊 འབྲས་བུ';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'ཡག་པོ་ཤིན་ཏུ! 🎉';

  @override
  String get goodFeedback => 'ལེགས་པོ! 👍';

  @override
  String get tryHarderFeedback => 'མུ་མཐུད་སྦྱངས། 💪';

  @override
  String get listeningQuizTitle => 'ཉན་སྦྱོང་དྲི་བ';

  @override
  String questionProgress(int current, int total) {
    return 'དྲི་བ $current/$total';
  }

  @override
  String get transcript => 'ཡི་གེ';

  @override
  String get correctAnswer => 'འགྲིག!';

  @override
  String get explanation => 'འགྲེལ་བཤད';

  @override
  String get answersAndExplanation => '📝 ལན་དང་འགྲེལ་བཤད';

  @override
  String get viewResults => 'འབྲས་བུ་ལ་བལྟ';

  @override
  String get nextQuestion => 'དྲི་བ་རྗེས་མ';

  @override
  String get fullDeclensionTable => '📚 རྣམ་དབྱེ་རེའུ་མིག་ཆ་ཚང';

  @override
  String get examplesSection => '📖 དཔེར་བརྗོད';

  @override
  String get declensionTableTitle => 'རྣམ་དབྱེ་རེའུ་མིག:';

  @override
  String get declensionCase => 'རྣམ་དབྱེ';

  @override
  String get singular => 'གཅིག་ཚིག';

  @override
  String get plural => 'མང་ཚིག';

  @override
  String get notMastered => 'ད་དུང་མ་ཤེས';

  @override
  String get mastered => 'ཤེས་ཟིན';

  @override
  String get currentLesson => 'ད་ལྟའི་སློབ་ཚན';

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
