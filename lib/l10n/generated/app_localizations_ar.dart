// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'دورة Pāḷi — $count دروس';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'دورة Pāḷi ابتدائية';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'الإطار: طريقة VipLang Mind Game';

  @override
  String lessonLabel(int number) {
    return 'الدرس $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'الدرس $number';
  }

  @override
  String get dataReady => 'البيانات جاهزة';

  @override
  String get otherLessons => 'دروس أخرى';

  @override
  String get comingSoonDataReady => 'قريبًا — بنية البيانات جاهزة';

  @override
  String get startLesson => 'ابدأ الدرس';

  @override
  String get vocabAndGrammar => 'المفردات والقواعد';

  @override
  String get lessonDetailHint =>
      'اضغط على ابدأ الدرس لعرض تفاصيل المفردات والقواعد لهذا الدرس.';

  @override
  String selectStudyDayTitle(int number) {
    return 'الدرس $number — اختر يوم الدراسة';
  }

  @override
  String dayLabel(int number) {
    return 'اليوم $number';
  }

  @override
  String get startStudying => 'ابدأ الدراسة';

  @override
  String get readPhase => 'اقرأ';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'اختبار';

  @override
  String phaseProgress(int current, int total) {
    return 'المرحلة $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'نوع مرحلة غير معروف: $type';
  }

  @override
  String get completionTitle => '🎉 اكتمل!';

  @override
  String completionMessage(String title) {
    return 'لقد أكملت $title';
  }

  @override
  String get back => 'رجوع';

  @override
  String get previous => 'السابق';

  @override
  String get continueAction => 'متابعة';

  @override
  String get noContent => 'لا يوجد محتوى';

  @override
  String get noQuestions => 'لا توجد أسئلة';

  @override
  String get mindGameTitle => 'لعبة ذهنية';

  @override
  String get mindGameInstruction =>
      '💡 اضغط على مقطع التلميح ← انطق Pāḷi بصوت عالٍ ← اضغط مرة أخرى لإظهار الإجابة';

  @override
  String get revealAll => 'إظهار الكل';

  @override
  String get importantVocabulary => '📖 مفردات مهمة';

  @override
  String get importantStructures => '💡 تراكيب أساسية';

  @override
  String get quizResultsTitle => '📊 النتائج';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'ممتاز! 🎉';

  @override
  String get goodFeedback => 'أحسنت! 👍';

  @override
  String get tryHarderFeedback => 'واصل التمرين! 💪';

  @override
  String get listeningQuizTitle => 'اختبار الاستماع';

  @override
  String questionProgress(int current, int total) {
    return 'السؤال $current/$total';
  }

  @override
  String get transcript => 'النص';

  @override
  String get correctAnswer => 'صحيح!';

  @override
  String get explanation => 'الشرح';

  @override
  String get answersAndExplanation => '📝 الإجابات والشرح';

  @override
  String get viewResults => 'عرض النتائج';

  @override
  String get nextQuestion => 'السؤال التالي';

  @override
  String get fullDeclensionTable => '📚 جدول الإعراب الكامل';

  @override
  String get examplesSection => '📖 أمثلة';

  @override
  String get declensionTableTitle => 'جدول الإعراب:';

  @override
  String get declensionCase => 'الحالة';

  @override
  String get singular => 'مفرد';

  @override
  String get plural => 'جمع';

  @override
  String get notMastered => 'غير متقن';

  @override
  String get mastered => 'متقن';

  @override
  String get currentLesson => 'الدرس الحالي';

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
