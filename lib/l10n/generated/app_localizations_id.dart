// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Kursus Pāḷi — $count pelajaran';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'Kursus Pāḷi Dasar';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'Kerangka: Metode VipLang Mind Game';

  @override
  String lessonLabel(int number) {
    return 'Pelajaran $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'PELAJARAN $number';
  }

  @override
  String get dataReady => 'DATA SIAP';

  @override
  String get otherLessons => 'Pelajaran lain';

  @override
  String get comingSoonDataReady => 'Segera hadir — struktur data siap';

  @override
  String get startLesson => 'Mulai pelajaran';

  @override
  String get vocabAndGrammar => 'Kosakata & Tata Bahasa';

  @override
  String get lessonDetailHint =>
      'Ketuk Mulai pelajaran untuk melihat kosakata dan tata bahasa pelajaran ini.';

  @override
  String selectStudyDayTitle(int number) {
    return 'Pelajaran $number — Pilih Hari Belajar';
  }

  @override
  String dayLabel(int number) {
    return 'Hari $number';
  }

  @override
  String get startStudying => 'Mulai belajar';

  @override
  String get readPhase => 'Baca';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'Kuis';

  @override
  String phaseProgress(int current, int total) {
    return 'Fase $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'Jenis fase tidak dikenal: $type';
  }

  @override
  String get completionTitle => '🎉 Selesai!';

  @override
  String completionMessage(String title) {
    return 'Anda telah menyelesaikan $title';
  }

  @override
  String get back => 'Kembali';

  @override
  String get previous => 'Sebelumnya';

  @override
  String get continueAction => 'Lanjutkan';

  @override
  String get noContent => 'Tidak ada konten';

  @override
  String get noQuestions => 'Tidak ada pertanyaan';

  @override
  String get mindGameTitle => 'Mind Game';

  @override
  String get mindGameInstruction =>
      '💡 Ketuk bagian petunjuk → Ucapkan Pāḷi dengan lantang → Ketuk lagi untuk menampilkan jawaban';

  @override
  String get revealAll => 'Tampilkan semua';

  @override
  String get importantVocabulary => '📖 Kosakata Penting';

  @override
  String get importantStructures => '💡 Struktur Kunci';

  @override
  String get quizResultsTitle => '📊 Hasil';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'Luar biasa! 🎉';

  @override
  String get goodFeedback => 'Bagus! 👍';

  @override
  String get tryHarderFeedback => 'Terus berlatih! 💪';

  @override
  String get listeningQuizTitle => 'Kuis Mendengarkan';

  @override
  String questionProgress(int current, int total) {
    return 'Pertanyaan $current/$total';
  }

  @override
  String get transcript => 'Transkrip';

  @override
  String get correctAnswer => 'Benar!';

  @override
  String get explanation => 'Penjelasan';

  @override
  String get answersAndExplanation => '📝 Jawaban & Penjelasan';

  @override
  String get viewResults => 'Lihat hasil';

  @override
  String get nextQuestion => 'Pertanyaan berikutnya';

  @override
  String get fullDeclensionTable => '📚 Tabel Deklinasi Lengkap';

  @override
  String get examplesSection => '📖 Contoh';

  @override
  String get declensionTableTitle => 'Tabel deklinasi:';

  @override
  String get declensionCase => 'Kasus';

  @override
  String get singular => 'Tunggal';

  @override
  String get plural => 'Jamak';

  @override
  String get notMastered => 'Belum dikuasai';

  @override
  String get mastered => 'Dikuasai';

  @override
  String get currentLesson => 'Pelajaran saat ini';

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
