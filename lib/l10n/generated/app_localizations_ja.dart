// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Pāḷi コース — $count レッスン';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => '初級 Pāḷi コース';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'フレームワーク: VipLang Mind Game メソッド';

  @override
  String lessonLabel(int number) {
    return 'レッスン $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'レッスン $number';
  }

  @override
  String get dataReady => 'データ準備完了';

  @override
  String get otherLessons => 'その他のレッスン';

  @override
  String get comingSoonDataReady => 'まもなく公開 — データ構造は準備済み';

  @override
  String get startLesson => 'レッスンを開始';

  @override
  String get vocabAndGrammar => '語彙と文法';

  @override
  String get lessonDetailHint => 'レッスンを開始をタップして、このレッスンの語彙と文法を確認します。';

  @override
  String selectStudyDayTitle(int number) {
    return 'レッスン $number — 学習日を選択';
  }

  @override
  String dayLabel(int number) {
    return '日 $number';
  }

  @override
  String get startStudying => '学習を開始';

  @override
  String get readPhase => '読む';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'クイズ';

  @override
  String phaseProgress(int current, int total) {
    return 'フェーズ $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'Unknown phase type: $type';
  }

  @override
  String get completionTitle => '🎉 完了！';

  @override
  String completionMessage(String title) {
    return '$title を完了しました';
  }

  @override
  String get back => '戻る';

  @override
  String get previous => '前へ';

  @override
  String get continueAction => '続ける';

  @override
  String get noContent => 'コンテンツがありません';

  @override
  String get noQuestions => '質問がありません';

  @override
  String get mindGameTitle => 'マインドゲーム';

  @override
  String get mindGameInstruction => '💡 ヒントをタップ → Pāḷi を声に出す → もう一度タップして答えを表示';

  @override
  String get revealAll => 'すべて表示';

  @override
  String get importantVocabulary => '📖 重要語彙';

  @override
  String get importantStructures => '💡 重要構文';

  @override
  String get quizResultsTitle => '📊 結果';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'すばらしい！🎉';

  @override
  String get goodFeedback => 'よくできました！👍';

  @override
  String get tryHarderFeedback => '練習を続けましょう！💪';

  @override
  String get listeningQuizTitle => 'リスニングクイズ';

  @override
  String questionProgress(int current, int total) {
    return '質問 $current/$total';
  }

  @override
  String get transcript => '文字起こし';

  @override
  String get correctAnswer => '正解！';

  @override
  String get explanation => '説明';

  @override
  String get answersAndExplanation => '📝 答えと説明';

  @override
  String get viewResults => '結果を見る';

  @override
  String get nextQuestion => '次の質問';

  @override
  String get fullDeclensionTable => '📚 完全な語形変化表';

  @override
  String get examplesSection => '📖 例';

  @override
  String get declensionTableTitle => '語形変化表:';

  @override
  String get declensionCase => '格';

  @override
  String get singular => '単数';

  @override
  String get plural => '複数';

  @override
  String get notMastered => '未習得';

  @override
  String get mastered => '習得済み';

  @override
  String get currentLesson => '現在のレッスン';

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
