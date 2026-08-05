// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Pāḷi 코스 — $count개 레슨';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => '초급 Pāḷi 코스';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => '프레임워크: VipLang Mind Game 방법';

  @override
  String lessonLabel(int number) {
    return '레슨 $number';
  }

  @override
  String lessonUppercase(int number) {
    return '레슨 $number';
  }

  @override
  String get dataReady => '데이터 준비됨';

  @override
  String get otherLessons => '다른 레슨';

  @override
  String get comingSoonDataReady => '곧 제공 — 데이터 구조 준비됨';

  @override
  String get startLesson => '레슨 시작';

  @override
  String get vocabAndGrammar => '어휘 및 문법';

  @override
  String get lessonDetailHint => '이 레슨의 어휘와 문법을 보려면 레슨 시작을 탭하세요.';

  @override
  String selectStudyDayTitle(int number) {
    return '레슨 $number — 학습일 선택';
  }

  @override
  String dayLabel(int number) {
    return 'Day $number';
  }

  @override
  String get startStudying => '학습 시작';

  @override
  String get readPhase => '읽기';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => '퀴즈';

  @override
  String phaseProgress(int current, int total) {
    return '단계 $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'Unknown phase type: $type';
  }

  @override
  String get completionTitle => '🎉 완료!';

  @override
  String completionMessage(String title) {
    return '$title을(를) 완료했습니다';
  }

  @override
  String get back => '뒤로';

  @override
  String get previous => '이전';

  @override
  String get continueAction => '계속';

  @override
  String get noContent => '콘텐츠 없음';

  @override
  String get noQuestions => '질문 없음';

  @override
  String get mindGameTitle => '마인드 게임';

  @override
  String get mindGameInstruction => '💡 힌트 조각 탭 → Pāḷi를 소리 내어 말하기 → 다시 탭해 답 보기';

  @override
  String get revealAll => '모두 보기';

  @override
  String get importantVocabulary => '📖 중요 어휘';

  @override
  String get importantStructures => '💡 핵심 구조';

  @override
  String get quizResultsTitle => '📊 결과';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => '훌륭해요! 🎉';

  @override
  String get goodFeedback => '잘했어요! 👍';

  @override
  String get tryHarderFeedback => '계속 연습하세요! 💪';

  @override
  String get listeningQuizTitle => '듣기 퀴즈';

  @override
  String questionProgress(int current, int total) {
    return '문제 $current/$total';
  }

  @override
  String get transcript => '스크립트';

  @override
  String get correctAnswer => '정답!';

  @override
  String get explanation => '설명';

  @override
  String get answersAndExplanation => '📝 답과 설명';

  @override
  String get viewResults => '결과 보기';

  @override
  String get nextQuestion => '다음 문제';

  @override
  String get fullDeclensionTable => '📚 전체 격변화 표';

  @override
  String get examplesSection => '📖 예문';

  @override
  String get declensionTableTitle => '격변화 표:';

  @override
  String get declensionCase => '격';

  @override
  String get singular => '단수';

  @override
  String get plural => '복수';

  @override
  String get notMastered => '미숙달';

  @override
  String get mastered => '숙달';

  @override
  String get currentLesson => '현재 레슨';

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
