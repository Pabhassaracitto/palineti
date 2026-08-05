// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Mongolian (`mn`).
class AppLocalizationsMn extends AppLocalizations {
  AppLocalizationsMn([String locale = 'mn']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Pāḷi курс — $count хичээл';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'Анхан шатны Pāḷi курс';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'Хүрээ: VipLang Mind Game арга';

  @override
  String lessonLabel(int number) {
    return 'Хичээл $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'Хичээл $number';
  }

  @override
  String get dataReady => 'Өгөгдөл бэлэн';

  @override
  String get otherLessons => 'Бусад хичээл';

  @override
  String get comingSoonDataReady => 'Удахгүй — өгөгдлийн бүтэц бэлэн';

  @override
  String get startLesson => 'Хичээл эхлэх';

  @override
  String get vocabAndGrammar => 'Үгийн сан ба дүрэм';

  @override
  String get lessonDetailHint =>
      'Энэ хичээлийн үгийн сан, дүрмийг үзэхийн тулд Хичээл эхлэхийг дарна уу.';

  @override
  String selectStudyDayTitle(int number) {
    return 'Хичээл $number — Суралцах өдрөө сонго';
  }

  @override
  String dayLabel(int number) {
    return 'Өдөр $number';
  }

  @override
  String get startStudying => 'Суралцаж эхлэх';

  @override
  String get readPhase => 'Унших';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'Асуулт';

  @override
  String phaseProgress(int current, int total) {
    return 'Үе $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'Unknown phase type: $type';
  }

  @override
  String get completionTitle => '🎉 Дууслаа!';

  @override
  String completionMessage(String title) {
    return 'Та $title-г дуусгалаа';
  }

  @override
  String get back => 'Буцах';

  @override
  String get previous => 'Өмнөх';

  @override
  String get continueAction => 'Үргэлжлүүлэх';

  @override
  String get noContent => 'Агуулга алга';

  @override
  String get noQuestions => 'Асуулт алга';

  @override
  String get mindGameTitle => 'Оюуны тоглоом';

  @override
  String get mindGameInstruction =>
      '💡 Сануулгын хэсгийг дар → Pāḷi-г чангаар хэл → Хариуг үзэхийн тулд дахин дар';

  @override
  String get revealAll => 'Бүгдийг харуулах';

  @override
  String get importantVocabulary => '📖 Чухал үгийн сан';

  @override
  String get importantStructures => '💡 Гол бүтэц';

  @override
  String get quizResultsTitle => '📊 Үр дүн';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'Гайхалтай! 🎉';

  @override
  String get goodFeedback => 'Сайн байна! 👍';

  @override
  String get tryHarderFeedback => 'Дадлагаа үргэлжлүүлээрэй! 💪';

  @override
  String get listeningQuizTitle => 'Сонсголын асуулт';

  @override
  String questionProgress(int current, int total) {
    return 'Асуулт $current/$total';
  }

  @override
  String get transcript => 'Транскрипт';

  @override
  String get correctAnswer => 'Зөв!';

  @override
  String get explanation => 'Тайлбар';

  @override
  String get answersAndExplanation => '📝 Хариулт ба тайлбар';

  @override
  String get viewResults => 'Үр дүнг үзэх';

  @override
  String get nextQuestion => 'Дараагийн асуулт';

  @override
  String get fullDeclensionTable => '📚 Бүрэн хувиллын хүснэгт';

  @override
  String get examplesSection => '📖 Жишээ';

  @override
  String get declensionTableTitle => 'Хувиллын хүснэгт:';

  @override
  String get declensionCase => 'Тийн ялгал';

  @override
  String get singular => 'Ганц тоо';

  @override
  String get plural => 'Олон тоо';

  @override
  String get notMastered => 'Эзэмшээгүй';

  @override
  String get mastered => 'Эзэмшсэн';

  @override
  String get currentLesson => 'Одоогийн хичээл';

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
