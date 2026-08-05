// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Burmese (`my`).
class AppLocalizationsMy extends AppLocalizations {
  AppLocalizationsMy([String locale = 'my']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Pāḷi သင်ခန်းစာ — သင်ခန်းစာ $count ခု';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'အခြေခံ Pāḷi သင်တန်း';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'မူဘောင်: VipLang Mind Game နည်းလမ်း';

  @override
  String lessonLabel(int number) {
    return 'သင်ခန်းစာ $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'သင်ခန်းစာ $number';
  }

  @override
  String get dataReady => 'ဒေတာ အသင့်';

  @override
  String get otherLessons => 'အခြားသင်ခန်းစာများ';

  @override
  String get comingSoonDataReady => 'မကြာမီ — ဒေတာဖွဲ့စည်းပုံ အသင့်';

  @override
  String get startLesson => 'သင်ခန်းစာ စတင်ရန်';

  @override
  String get vocabAndGrammar => 'ဝေါဟာရနှင့် သဒ္ဒါ';

  @override
  String get lessonDetailHint =>
      'ဤသင်ခန်းစာ၏ ဝေါဟာရနှင့် သဒ္ဒါအသေးစိတ်ကို ကြည့်ရန် သင်ခန်းစာ စတင်ရန် ကိုနှိပ်ပါ။';

  @override
  String selectStudyDayTitle(int number) {
    return 'သင်ခန်းစာ $number — လေ့လာမည့်နေ့ ရွေးပါ';
  }

  @override
  String dayLabel(int number) {
    return 'နေ့ $number';
  }

  @override
  String get startStudying => 'လေ့လာမှု စတင်ရန်';

  @override
  String get readPhase => 'ဖတ်ရန်';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'မေးခွန်းစစ်';

  @override
  String phaseProgress(int current, int total) {
    return 'အဆင့် $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'မသိသော အဆင့်အမျိုးအစား: $type';
  }

  @override
  String get completionTitle => '🎉 ပြီးဆုံးပါပြီ!';

  @override
  String completionMessage(String title) {
    return 'သင် $title ကိုပြီးဆုံးခဲ့ပါပြီ';
  }

  @override
  String get back => 'ပြန်သွားရန်';

  @override
  String get previous => 'ယခင်';

  @override
  String get continueAction => 'ဆက်ရန်';

  @override
  String get noContent => 'အကြောင်းအရာမရှိပါ';

  @override
  String get noQuestions => 'မေးခွန်းမရှိပါ';

  @override
  String get mindGameTitle => 'စိတ်ကစားနည်း';

  @override
  String get mindGameInstruction =>
      '💡 အရိပ်အမြွက်ပိုင်းကို နှိပ်ပါ → Pāḷi ကို အသံထွက်ပြောပါ → အဖြေပြရန် ထပ်နှိပ်ပါ';

  @override
  String get revealAll => 'အားလုံးပြရန်';

  @override
  String get importantVocabulary => '📖 အရေးကြီး ဝေါဟာရ';

  @override
  String get importantStructures => '💡 အဓိက တည်ဆောက်ပုံများ';

  @override
  String get quizResultsTitle => '📊 ရလဒ်များ';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'အလွန်ကောင်းသည်! 🎉';

  @override
  String get goodFeedback => 'ကောင်းပါတယ်! 👍';

  @override
  String get tryHarderFeedback => 'ဆက်လက်လေ့ကျင့်ပါ! 💪';

  @override
  String get listeningQuizTitle => 'နားထောင်မှု မေးခွန်းစစ်';

  @override
  String questionProgress(int current, int total) {
    return 'မေးခွန်း $current/$total';
  }

  @override
  String get transcript => 'စာသားမှတ်တမ်း';

  @override
  String get correctAnswer => 'မှန်ပါသည်!';

  @override
  String get explanation => 'ရှင်းလင်းချက်';

  @override
  String get answersAndExplanation => '📝 အဖြေများနှင့် ရှင်းလင်းချက်';

  @override
  String get viewResults => 'ရလဒ်ကြည့်ရန်';

  @override
  String get nextQuestion => 'နောက်မေးခွန်း';

  @override
  String get fullDeclensionTable => '📚 ပြည့်စုံသော ဝိဘတ်ဇယား';

  @override
  String get examplesSection => '📖 ဥပမာများ';

  @override
  String get declensionTableTitle => 'ဝိဘတ်ဇယား:';

  @override
  String get declensionCase => 'ဝိဘတ်';

  @override
  String get singular => 'အနည်းကိန်း';

  @override
  String get plural => 'အများကိန်း';

  @override
  String get notMastered => 'မကျွမ်းကျင်သေး';

  @override
  String get mastered => 'ကျွမ်းကျင်ပြီး';

  @override
  String get currentLesson => 'လက်ရှိသင်ခန်းစာ';

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
