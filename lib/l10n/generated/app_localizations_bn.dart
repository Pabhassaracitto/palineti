// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Pāḷi কোর্স — $count পাঠ';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'প্রাথমিক Pāḷi কোর্স';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'ফ্রেমওয়ার্ক: VipLang Mind Game পদ্ধতি';

  @override
  String lessonLabel(int number) {
    return 'পাঠ $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'পাঠ $number';
  }

  @override
  String get dataReady => 'ডেটা প্রস্তুত';

  @override
  String get otherLessons => 'অন্যান্য পাঠ';

  @override
  String get comingSoonDataReady => 'শীঘ্রই আসছে — ডেটা কাঠামো প্রস্তুত';

  @override
  String get startLesson => 'পাঠ শুরু করুন';

  @override
  String get vocabAndGrammar => 'শব্দভাণ্ডার ও ব্যাকরণ';

  @override
  String get lessonDetailHint =>
      'এই পাঠের শব্দভাণ্ডার ও ব্যাকরণ দেখতে পাঠ শুরু করুন চাপুন।';

  @override
  String selectStudyDayTitle(int number) {
    return 'পাঠ $number — অধ্যয়নের দিন বেছে নিন';
  }

  @override
  String dayLabel(int number) {
    return 'দিন $number';
  }

  @override
  String get startStudying => 'অধ্যয়ন শুরু করুন';

  @override
  String get readPhase => 'পড়ুন';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'কুইজ';

  @override
  String phaseProgress(int current, int total) {
    return 'পর্যায় $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'অজানা পর্যায়ের ধরন: $type';
  }

  @override
  String get completionTitle => '🎉 সম্পন্ন!';

  @override
  String completionMessage(String title) {
    return 'আপনি $title সম্পন্ন করেছেন';
  }

  @override
  String get back => 'ফিরে যান';

  @override
  String get previous => 'পূর্ববর্তী';

  @override
  String get continueAction => 'চালিয়ে যান';

  @override
  String get noContent => 'কোনো বিষয়বস্তু নেই';

  @override
  String get noQuestions => 'কোনো প্রশ্ন নেই';

  @override
  String get mindGameTitle => 'মাইন্ড গেম';

  @override
  String get mindGameInstruction =>
      '💡 ইঙ্গিত অংশে চাপুন → Pāḷi জোরে বলুন → উত্তর দেখাতে আবার চাপুন';

  @override
  String get revealAll => 'সব দেখান';

  @override
  String get importantVocabulary => '📖 গুরুত্বপূর্ণ শব্দভাণ্ডার';

  @override
  String get importantStructures => '💡 মূল গঠন';

  @override
  String get quizResultsTitle => '📊 ফলাফল';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'চমৎকার! 🎉';

  @override
  String get goodFeedback => 'ভালো হয়েছে! 👍';

  @override
  String get tryHarderFeedback => 'অনুশীলন চালিয়ে যান! 💪';

  @override
  String get listeningQuizTitle => 'শ্রবণ কুইজ';

  @override
  String questionProgress(int current, int total) {
    return 'প্রশ্ন $current/$total';
  }

  @override
  String get transcript => 'লিপি';

  @override
  String get correctAnswer => 'সঠিক!';

  @override
  String get explanation => 'ব্যাখ্যা';

  @override
  String get answersAndExplanation => '📝 উত্তর ও ব্যাখ্যা';

  @override
  String get viewResults => 'ফলাফল দেখুন';

  @override
  String get nextQuestion => 'পরবর্তী প্রশ্ন';

  @override
  String get fullDeclensionTable => '📚 পূর্ণ বিভক্তি তালিকা';

  @override
  String get examplesSection => '📖 উদাহরণ';

  @override
  String get declensionTableTitle => 'বিভক্তি তালিকা:';

  @override
  String get declensionCase => 'বিভক্তি';

  @override
  String get singular => 'একবচন';

  @override
  String get plural => 'বহুবচন';

  @override
  String get notMastered => 'এখনো আয়ত্ত নয়';

  @override
  String get mastered => 'আয়ত্ত';

  @override
  String get currentLesson => 'বর্তমান পাঠ';

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
