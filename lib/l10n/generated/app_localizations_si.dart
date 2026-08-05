// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sinhala Sinhalese (`si`).
class AppLocalizationsSi extends AppLocalizations {
  AppLocalizationsSi([String locale = 'si']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Pāḷi පාඨමාලාව — පාඩම් $count';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'මූලික Pāḷi පාඨමාලාව';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'රාමුව: VipLang Mind Game ක්‍රමය';

  @override
  String lessonLabel(int number) {
    return 'පාඩම $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'පාඩම $number';
  }

  @override
  String get dataReady => 'දත්ත සූදානම්';

  @override
  String get otherLessons => 'වෙනත් පාඩම්';

  @override
  String get comingSoonDataReady => 'ළඟදීම — දත්ත ව්‍යුහය සූදානම්';

  @override
  String get startLesson => 'පාඩම ආරම්භ කරන්න';

  @override
  String get vocabAndGrammar => 'වචන මාලාව සහ ව්‍යාකරණ';

  @override
  String get lessonDetailHint =>
      'මෙම පාඩමේ වචන මාලාව හා ව්‍යාකරණ විස්තර බලන්න පාඩම ආරම්භ කරන්න තට්ටු කරන්න.';

  @override
  String selectStudyDayTitle(int number) {
    return 'පාඩම $number — ඉගෙනුම් දිනය තෝරන්න';
  }

  @override
  String dayLabel(int number) {
    return 'දිනය $number';
  }

  @override
  String get startStudying => 'ඉගෙනීම ආරම්භ කරන්න';

  @override
  String get readPhase => 'කියවන්න';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'ප්‍රශ්නාවලිය';

  @override
  String phaseProgress(int current, int total) {
    return 'අදියර $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'නොදන්නා අදියර වර්ගය: $type';
  }

  @override
  String get completionTitle => '🎉 සම්පූර්ණයි!';

  @override
  String completionMessage(String title) {
    return 'ඔබ $title සම්පූර්ණ කර ඇත';
  }

  @override
  String get back => 'ආපසු';

  @override
  String get previous => 'පෙර';

  @override
  String get continueAction => 'ඉදිරියට';

  @override
  String get noContent => 'අන්තර්ගතයක් නැත';

  @override
  String get noQuestions => 'ප්‍රශ්න නැත';

  @override
  String get mindGameTitle => 'මනස් ක්‍රීඩාව';

  @override
  String get mindGameInstruction =>
      '💡 ඉඟි කොටස තට්ටු කරන්න → Pāḷi හඬින් කියන්න → පිළිතුර පෙන්වීමට නැවත තට්ටු කරන්න';

  @override
  String get revealAll => 'සියල්ල පෙන්වන්න';

  @override
  String get importantVocabulary => '📖 වැදගත් වචන මාලාව';

  @override
  String get importantStructures => '💡 ප්‍රධාන ව්‍යුහ';

  @override
  String get quizResultsTitle => '📊 ප්‍රතිඵල';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'විශිෂ්ටයි! 🎉';

  @override
  String get goodFeedback => 'හොඳයි! 👍';

  @override
  String get tryHarderFeedback => 'තවදුරටත් පුහුණු වන්න! 💪';

  @override
  String get listeningQuizTitle => 'ඇහුම්කන් ප්‍රශ්නාවලිය';

  @override
  String questionProgress(int current, int total) {
    return 'ප්‍රශ්නය $current/$total';
  }

  @override
  String get transcript => 'පෙළ';

  @override
  String get correctAnswer => 'නිවැරදියි!';

  @override
  String get explanation => 'විස්තරය';

  @override
  String get answersAndExplanation => '📝 පිළිතුරු සහ විස්තර';

  @override
  String get viewResults => 'ප්‍රතිඵල බලන්න';

  @override
  String get nextQuestion => 'ඊළඟ ප්‍රශ්නය';

  @override
  String get fullDeclensionTable => '📚 සම්පූර්ණ විභක්ති වගුව';

  @override
  String get examplesSection => '📖 උදාහරණ';

  @override
  String get declensionTableTitle => 'විභක්ති වගුව:';

  @override
  String get declensionCase => 'විභක්තිය';

  @override
  String get singular => 'ඒක වචන';

  @override
  String get plural => 'බහු වචන';

  @override
  String get notMastered => 'තවම නොදත්';

  @override
  String get mastered => 'දත්';

  @override
  String get currentLesson => 'වත්මන් පාඩම';

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
