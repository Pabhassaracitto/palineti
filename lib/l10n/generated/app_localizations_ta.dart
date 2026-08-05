// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Pāḷi பாடநெறி — $count பாடங்கள்';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'அடிப்படை Pāḷi பாடநெறி';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'வடிவமைப்பு: VipLang Mind Game முறை';

  @override
  String lessonLabel(int number) {
    return 'பாடம் $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'பாடம் $number';
  }

  @override
  String get dataReady => 'தரவு தயாராக உள்ளது';

  @override
  String get otherLessons => 'பிற பாடங்கள்';

  @override
  String get comingSoonDataReady => 'விரைவில் — தரவு அமைப்பு தயாராக உள்ளது';

  @override
  String get startLesson => 'பாடத்தை தொடங்கு';

  @override
  String get vocabAndGrammar => 'சொற்களஞ்சியம் & இலக்கணம்';

  @override
  String get lessonDetailHint =>
      'இந்தப் பாடத்தின் சொற்களஞ்சியம் மற்றும் இலக்கண விவரங்களைப் பார்க்க பாடத்தை தொடங்கு என்பதைத் தட்டவும்.';

  @override
  String selectStudyDayTitle(int number) {
    return 'பாடம் $number — படிப்பு நாளைத் தேர்வு செய்';
  }

  @override
  String dayLabel(int number) {
    return 'நாள் $number';
  }

  @override
  String get startStudying => 'படிப்பை தொடங்கு';

  @override
  String get readPhase => 'படி';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'வினாடி வினா';

  @override
  String phaseProgress(int current, int total) {
    return 'கட்டம் $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'Unknown phase type: $type';
  }

  @override
  String get completionTitle => '🎉 முடிந்தது!';

  @override
  String completionMessage(String title) {
    return 'நீங்கள் $title முடித்துள்ளீர்கள்';
  }

  @override
  String get back => 'பின்';

  @override
  String get previous => 'முந்தைய';

  @override
  String get continueAction => 'தொடர்க';

  @override
  String get noContent => 'உள்ளடக்கம் இல்லை';

  @override
  String get noQuestions => 'கேள்விகள் இல்லை';

  @override
  String get mindGameTitle => 'மன விளையாட்டு';

  @override
  String get mindGameInstruction =>
      '💡 குறிப்புப் பகுதியைத் தட்டவும் → Pāḷi-ஐ சத்தமாகச் சொல்லவும் → பதிலை காட்ட மீண்டும் தட்டவும்';

  @override
  String get revealAll => 'அனைத்தையும் காட்டு';

  @override
  String get importantVocabulary => '📖 முக்கிய சொற்களஞ்சியம்';

  @override
  String get importantStructures => '💡 முக்கிய அமைப்புகள்';

  @override
  String get quizResultsTitle => '📊 முடிவுகள்';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'சிறப்பு! 🎉';

  @override
  String get goodFeedback => 'நன்றாக செய்தீர்கள்! 👍';

  @override
  String get tryHarderFeedback => 'தொடர்ந்து பயிற்சி செய்யுங்கள்! 💪';

  @override
  String get listeningQuizTitle => 'கேட்புத் தேர்வு';

  @override
  String questionProgress(int current, int total) {
    return 'கேள்வி $current/$total';
  }

  @override
  String get transcript => 'உரை';

  @override
  String get correctAnswer => 'சரி!';

  @override
  String get explanation => 'விளக்கம்';

  @override
  String get answersAndExplanation => '📝 பதில்கள் & விளக்கம்';

  @override
  String get viewResults => 'முடிவுகளை காண்க';

  @override
  String get nextQuestion => 'அடுத்த கேள்வி';

  @override
  String get fullDeclensionTable => '📚 முழு வேற்றுமை அட்டவணை';

  @override
  String get examplesSection => '📖 உதாரணங்கள்';

  @override
  String get declensionTableTitle => 'வேற்றுமை அட்டவணை:';

  @override
  String get declensionCase => 'வேற்றுமை';

  @override
  String get singular => 'ஒருமை';

  @override
  String get plural => 'பன்மை';

  @override
  String get notMastered => 'இன்னும் கற்றிடவில்லை';

  @override
  String get mastered => 'கற்றது';

  @override
  String get currentLesson => 'தற்போதைய பாடம்';

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
