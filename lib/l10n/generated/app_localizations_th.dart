// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'หลักสูตร Pāḷi — $count บทเรียน';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'หลักสูตร Pāḷi ขั้นพื้นฐาน';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'กรอบการเรียน: วิธี VipLang Mind Game';

  @override
  String lessonLabel(int number) {
    return 'บทเรียน $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'บทเรียน $number';
  }

  @override
  String get dataReady => 'ข้อมูลพร้อมแล้ว';

  @override
  String get otherLessons => 'บทเรียนอื่น';

  @override
  String get comingSoonDataReady => 'เร็ว ๆ นี้ — โครงสร้างข้อมูลพร้อมแล้ว';

  @override
  String get startLesson => 'เริ่มบทเรียน';

  @override
  String get vocabAndGrammar => 'คำศัพท์และไวยากรณ์';

  @override
  String get lessonDetailHint =>
      'แตะ เริ่มบทเรียน เพื่อดูรายละเอียดคำศัพท์และไวยากรณ์ของบทนี้';

  @override
  String selectStudyDayTitle(int number) {
    return 'บทเรียน $number — เลือกวันเรียน';
  }

  @override
  String dayLabel(int number) {
    return 'วันที่ $number';
  }

  @override
  String get startStudying => 'เริ่มเรียน';

  @override
  String get readPhase => 'อ่าน';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'ควิซ';

  @override
  String phaseProgress(int current, int total) {
    return 'ช่วง $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'Unknown phase type: $type';
  }

  @override
  String get completionTitle => '🎉 เสร็จแล้ว!';

  @override
  String completionMessage(String title) {
    return 'คุณเรียนจบ $title แล้ว';
  }

  @override
  String get back => 'กลับ';

  @override
  String get previous => 'ก่อนหน้า';

  @override
  String get continueAction => 'ดำเนินการต่อ';

  @override
  String get noContent => 'ไม่มีเนื้อหา';

  @override
  String get noQuestions => 'ไม่มีคำถาม';

  @override
  String get mindGameTitle => 'เกมความคิด';

  @override
  String get mindGameInstruction =>
      '💡 แตะส่วนคำใบ้ → พูด Pāḷi ออกเสียง → แตะอีกครั้งเพื่อดูคำตอบ';

  @override
  String get revealAll => 'แสดงทั้งหมด';

  @override
  String get importantVocabulary => '📖 คำศัพท์สำคัญ';

  @override
  String get importantStructures => '💡 โครงสร้างสำคัญ';

  @override
  String get quizResultsTitle => '📊 ผลลัพธ์';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'ยอดเยี่ยม! 🎉';

  @override
  String get goodFeedback => 'ทำได้ดี! 👍';

  @override
  String get tryHarderFeedback => 'ฝึกต่อไป! 💪';

  @override
  String get listeningQuizTitle => 'ควิซการฟัง';

  @override
  String questionProgress(int current, int total) {
    return 'คำถาม $current/$total';
  }

  @override
  String get transcript => 'ถอดความ';

  @override
  String get correctAnswer => 'ถูกต้อง!';

  @override
  String get explanation => 'คำอธิบาย';

  @override
  String get answersAndExplanation => '📝 คำตอบและคำอธิบาย';

  @override
  String get viewResults => 'ดูผลลัพธ์';

  @override
  String get nextQuestion => 'คำถามถัดไป';

  @override
  String get fullDeclensionTable => '📚 ตารางวิภัตติเต็ม';

  @override
  String get examplesSection => '📖 ตัวอย่าง';

  @override
  String get declensionTableTitle => 'ตารางวิภัตติ:';

  @override
  String get declensionCase => 'การก';

  @override
  String get singular => 'เอกพจน์';

  @override
  String get plural => 'พหูพจน์';

  @override
  String get notMastered => 'ยังไม่ชำนาญ';

  @override
  String get mastered => 'ชำนาญแล้ว';

  @override
  String get currentLesson => 'บทเรียนปัจจุบัน';

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
