// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lao (`lo`).
class AppLocalizationsLo extends AppLocalizations {
  AppLocalizationsLo([String locale = 'lo']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'ຫຼັກສູດ Pāḷi — $count ບົດຮຽນ';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'ຫຼັກສູດ Pāḷi ພື້ນຖານ';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'ກອບ: ວິທີ VipLang Mind Game';

  @override
  String lessonLabel(int number) {
    return 'ບົດຮຽນ $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'ບົດຮຽນ $number';
  }

  @override
  String get dataReady => 'ຂໍ້ມູນພ້ອມ';

  @override
  String get otherLessons => 'ບົດຮຽນອື່ນ';

  @override
  String get comingSoonDataReady => 'ຈະມາໄວໆນີ້ — ໂຄງສ້າງຂໍ້ມູນພ້ອມ';

  @override
  String get startLesson => 'ເລີ່ມບົດຮຽນ';

  @override
  String get vocabAndGrammar => 'ຄຳສັບ ແລະ ໄວຍາກອນ';

  @override
  String get lessonDetailHint =>
      'ແຕະ ເລີ່ມບົດຮຽນ ເພື່ອເບິ່ງຄຳສັບ ແລະ ໄວຍາກອນຂອງບົດນີ້.';

  @override
  String selectStudyDayTitle(int number) {
    return 'ບົດຮຽນ $number — ເລືອກມື້ຮຽນ';
  }

  @override
  String dayLabel(int number) {
    return 'ມື້ $number';
  }

  @override
  String get startStudying => 'ເລີ່ມຮຽນ';

  @override
  String get readPhase => 'ອ່ານ';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'ຄິວຊ໌';

  @override
  String phaseProgress(int current, int total) {
    return 'ໄລຍະ $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'Unknown phase type: $type';
  }

  @override
  String get completionTitle => '🎉 ສຳເລັດ!';

  @override
  String completionMessage(String title) {
    return 'ທ່ານໄດ້ສຳເລັດ $title';
  }

  @override
  String get back => 'ກັບຄືນ';

  @override
  String get previous => 'ກ່ອນໜ້າ';

  @override
  String get continueAction => 'ດຳເນີນຕໍ່';

  @override
  String get noContent => 'ບໍ່ມີເນື້ອຫາ';

  @override
  String get noQuestions => 'ບໍ່ມີຄຳຖາມ';

  @override
  String get mindGameTitle => 'ເກມຄວາມຄິດ';

  @override
  String get mindGameInstruction =>
      '💡 ແຕະສ່ວນຄຳແນະນຳ → ເວົ້າ Pāḷi ດັງໆ → ແຕະອີກເພື່ອເບິ່ງຄຳຕອບ';

  @override
  String get revealAll => 'ສະແດງທັງໝົດ';

  @override
  String get importantVocabulary => '📖 ຄຳສັບສຳຄັນ';

  @override
  String get importantStructures => '💡 ໂຄງສ້າງສຳຄັນ';

  @override
  String get quizResultsTitle => '📊 ຜົນ';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'ດີເລີດ! 🎉';

  @override
  String get goodFeedback => 'ດີຫຼາຍ! 👍';

  @override
  String get tryHarderFeedback => 'ຝຶກຕໍ່ໄປ! 💪';

  @override
  String get listeningQuizTitle => 'ຄິວຊ໌ການຟັງ';

  @override
  String questionProgress(int current, int total) {
    return 'ຄຳຖາມ $current/$total';
  }

  @override
  String get transcript => 'ບົດຖອດຄວາມ';

  @override
  String get correctAnswer => 'ຖືກຕ້ອງ!';

  @override
  String get explanation => 'ຄຳອະທິບາຍ';

  @override
  String get answersAndExplanation => '📝 ຄຳຕອບ ແລະ ຄຳອະທິບາຍ';

  @override
  String get viewResults => 'ເບິ່ງຜົນ';

  @override
  String get nextQuestion => 'ຄຳຖາມຕໍ່ໄປ';

  @override
  String get fullDeclensionTable => '📚 ຕາຕະລາງຜັນຄຳເຕັມ';

  @override
  String get examplesSection => '📖 ຕົວຢ່າງ';

  @override
  String get declensionTableTitle => 'ຕາຕະລາງຜັນຄຳ:';

  @override
  String get declensionCase => 'ກໍລະນີ';

  @override
  String get singular => 'ເອກະພົດ';

  @override
  String get plural => 'ພະຫຸພົດ';

  @override
  String get notMastered => 'ຍັງບໍ່ຊຳນານ';

  @override
  String get mastered => 'ຊຳນານ';

  @override
  String get currentLesson => 'ບົດຮຽນປັດຈຸບັນ';

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
