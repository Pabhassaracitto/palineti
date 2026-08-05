// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Ví dụ';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Pāḷi Course — $count bài học';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'Khóa Pāḷi sơ cấp';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'Khung: Phương pháp VipLang Mind Game';

  @override
  String lessonLabel(int number) {
    return 'Bài $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'BÀI $number';
  }

  @override
  String get dataReady => 'ĐÃ CÓ DỮ LIỆU';

  @override
  String get otherLessons => 'Các bài học khác';

  @override
  String get comingSoonDataReady => 'Sắp ra mắt — cấu trúc dữ liệu đã sẵn sàng';

  @override
  String get startLesson => 'Bắt đầu bài học';

  @override
  String get vocabAndGrammar => 'Từ vựng & Ngữ pháp';

  @override
  String get lessonDetailHint =>
      'Nhấn Bắt đầu bài học để xem chi tiết từ vựng và ngữ pháp của bài này.';

  @override
  String selectStudyDayTitle(int number) {
    return 'Bài $number — Chọn ngày học';
  }

  @override
  String dayLabel(int number) {
    return 'Ngày $number';
  }

  @override
  String get startStudying => 'Bắt đầu học';

  @override
  String get readPhase => 'Đọc';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'Quiz';

  @override
  String phaseProgress(int current, int total) {
    return 'Phase $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'Unknown phase type: $type';
  }

  @override
  String get completionTitle => '🎉 Hoàn thành!';

  @override
  String completionMessage(String title) {
    return 'Bạn đã hoàn thành $title';
  }

  @override
  String get back => 'Quay lại';

  @override
  String get previous => 'Trước';

  @override
  String get continueAction => 'Tiếp tục';

  @override
  String get noContent => 'Không có nội dung';

  @override
  String get noQuestions => 'Không có câu hỏi';

  @override
  String get mindGameTitle => 'Trò Chơi Tư Duy';

  @override
  String get mindGameInstruction =>
      '💡 Nhấn vào đoạn gợi ý → Nói to tiếng Pāḷi → Nhấn lại để xem đáp án';

  @override
  String get revealAll => 'Hiện tất cả';

  @override
  String get importantVocabulary => '📖 Từ Vựng Quan Trọng';

  @override
  String get importantStructures => '💡 Cấu Trúc Cần Nhớ';

  @override
  String get quizResultsTitle => '📊 Kết Quả';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'Xuất sắc! 🎉';

  @override
  String get goodFeedback => 'Tốt lắm! 👍';

  @override
  String get tryHarderFeedback => 'Cần cố gắng thêm! 💪';

  @override
  String get listeningQuizTitle => 'Listening Quiz';

  @override
  String questionProgress(int current, int total) {
    return 'Câu $current/$total';
  }

  @override
  String get transcript => 'Transcript';

  @override
  String get correctAnswer => 'Chính xác!';

  @override
  String get explanation => 'Giải thích';

  @override
  String get answersAndExplanation => '📝 Đáp Án & Giải Thích';

  @override
  String get viewResults => 'Xem kết quả';

  @override
  String get nextQuestion => 'Câu tiếp';

  @override
  String get fullDeclensionTable => '📚 Bảng Biến Cách Đầy Đủ';

  @override
  String get examplesSection => '📖 Ví Dụ Minh Họa';

  @override
  String get declensionTableTitle => 'Bảng biến cách:';

  @override
  String get declensionCase => 'Biến cách';

  @override
  String get singular => 'Số ít';

  @override
  String get plural => 'Số nhiều';

  @override
  String get notMastered => 'Chưa thuộc';

  @override
  String get mastered => 'Đã thuộc';

  @override
  String get currentLesson => 'Bài đang học';

  @override
  String get caseNomAbbr => 'CC';

  @override
  String get caseAccAbbr => 'ĐC';

  @override
  String get caseInsAbbr => 'SDC';

  @override
  String get caseDatAbbr => 'CĐC';

  @override
  String get caseAblAbbr => 'XXC';

  @override
  String get caseGenAbbr => 'STC';

  @override
  String get caseLocAbbr => 'ĐSC';

  @override
  String get caseVocAbbr => 'HC';

  @override
  String get caseNomName => 'Chủ cách';

  @override
  String get caseAccName => 'Đối cách';

  @override
  String get caseInsName => 'Sử dụng cách';

  @override
  String get caseDatName => 'Cách dữ';

  @override
  String get caseAblName => 'Xuất xứ cách';

  @override
  String get caseGenName => 'Sở thuộc cách';

  @override
  String get caseLocName => 'Định sở cách';

  @override
  String get caseVocName => 'Hô cách';

  @override
  String get singularAbbr => 'sg';

  @override
  String get pluralAbbr => 'pl';

  @override
  String quickFormLabel(String caseAbbr, String numberAbbr) {
    return '$caseAbbr $numberAbbr';
  }
}
