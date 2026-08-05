// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Khmer Central Khmer (`km`).
class AppLocalizationsKm extends AppLocalizations {
  AppLocalizationsKm([String locale = 'km']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'វគ្គ Pāḷi — មេរៀន $count';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'វគ្គ Pāḷi កម្រិតដំបូង';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'ក្របខណ្ឌ៖ វិធី VipLang Mind Game';

  @override
  String lessonLabel(int number) {
    return 'មេរៀន $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'មេរៀន $number';
  }

  @override
  String get dataReady => 'ទិន្នន័យរួចរាល់';

  @override
  String get otherLessons => 'មេរៀនផ្សេងទៀត';

  @override
  String get comingSoonDataReady =>
      'នឹងមកដល់ឆាប់ៗ — រចនាសម្ព័ន្ធទិន្នន័យរួចរាល់';

  @override
  String get startLesson => 'ចាប់ផ្តើមមេរៀន';

  @override
  String get vocabAndGrammar => 'វាក្យសព្ទ និង វេយ្យាករណ៍';

  @override
  String get lessonDetailHint =>
      'ចុច ចាប់ផ្តើមមេរៀន ដើម្បីមើលវាក្យសព្ទ និងវេយ្យាករណ៍នៃមេរៀននេះ។';

  @override
  String selectStudyDayTitle(int number) {
    return 'មេរៀន $number — ជ្រើសថ្ងៃសិក្សា';
  }

  @override
  String dayLabel(int number) {
    return 'ថ្ងៃ $number';
  }

  @override
  String get startStudying => 'ចាប់ផ្តើមសិក្សា';

  @override
  String get readPhase => 'អាន';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'សំណួរ';

  @override
  String phaseProgress(int current, int total) {
    return 'ដំណាក់កាល $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'Unknown phase type: $type';
  }

  @override
  String get completionTitle => '🎉 បានបញ្ចប់!';

  @override
  String completionMessage(String title) {
    return 'អ្នកបានបញ្ចប់ $title';
  }

  @override
  String get back => 'ត្រឡប់';

  @override
  String get previous => 'មុន';

  @override
  String get continueAction => 'បន្ត';

  @override
  String get noContent => 'គ្មានមាតិកា';

  @override
  String get noQuestions => 'គ្មានសំណួរ';

  @override
  String get mindGameTitle => 'ហ្គេមគំនិត';

  @override
  String get mindGameInstruction =>
      '💡 ចុចផ្នែកជំនួយ → និយាយ Pāḷi ឲ្យឮ → ចុចម្តងទៀតដើម្បីបង្ហាញចម្លើយ';

  @override
  String get revealAll => 'បង្ហាញទាំងអស់';

  @override
  String get importantVocabulary => '📖 វាក្យសព្ទសំខាន់';

  @override
  String get importantStructures => '💡 រចនាសម្ព័ន្ធសំខាន់';

  @override
  String get quizResultsTitle => '📊 លទ្ធផល';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'ល្អឥតខ្ចោះ! 🎉';

  @override
  String get goodFeedback => 'ល្អណាស់! 👍';

  @override
  String get tryHarderFeedback => 'បន្តហាត់! 💪';

  @override
  String get listeningQuizTitle => 'សំណួរស្តាប់';

  @override
  String questionProgress(int current, int total) {
    return 'សំណួរ $current/$total';
  }

  @override
  String get transcript => 'អត្ថបទ';

  @override
  String get correctAnswer => 'ត្រឹមត្រូវ!';

  @override
  String get explanation => 'ការពន្យល់';

  @override
  String get answersAndExplanation => '📝 ចម្លើយ និងការពន្យល់';

  @override
  String get viewResults => 'មើលលទ្ធផល';

  @override
  String get nextQuestion => 'សំណួរបន្ទាប់';

  @override
  String get fullDeclensionTable => '📚 តារាងបំប្លែងពេញលេញ';

  @override
  String get examplesSection => '📖 ឧទាហរណ៍';

  @override
  String get declensionTableTitle => 'តារាងបំប្លែង:';

  @override
  String get declensionCase => 'ករណី';

  @override
  String get singular => 'ឯកវចនៈ';

  @override
  String get plural => 'ពហុវចនៈ';

  @override
  String get notMastered => 'មិនទាន់ចេះ';

  @override
  String get mastered => 'ចេះហើយ';

  @override
  String get currentLesson => 'មេរៀនបច្ចុប្បន្ន';

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
