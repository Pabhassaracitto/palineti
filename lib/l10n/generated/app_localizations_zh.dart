// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Pāḷi 课程 — $count 课';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => '初级 Pāḷi 课程';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => '框架：VipLang Mind Game 方法';

  @override
  String lessonLabel(int number) {
    return '第 $number 课';
  }

  @override
  String lessonUppercase(int number) {
    return '第 $number 课';
  }

  @override
  String get dataReady => '数据已就绪';

  @override
  String get otherLessons => '其他课程';

  @override
  String get comingSoonDataReady => '即将推出 — 数据结构已就绪';

  @override
  String get startLesson => '开始课程';

  @override
  String get vocabAndGrammar => '词汇与语法';

  @override
  String get lessonDetailHint => '点击“开始课程”查看本课词汇和语法详情。';

  @override
  String selectStudyDayTitle(int number) {
    return '第 $number 课 — 选择学习日';
  }

  @override
  String dayLabel(int number) {
    return '第 $number 天';
  }

  @override
  String get startStudying => '开始学习';

  @override
  String get readPhase => '阅读';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => '测验';

  @override
  String phaseProgress(int current, int total) {
    return '阶段 $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return '未知阶段类型：$type';
  }

  @override
  String get completionTitle => '🎉 已完成！';

  @override
  String completionMessage(String title) {
    return '你已完成 $title';
  }

  @override
  String get back => '返回';

  @override
  String get previous => '上一步';

  @override
  String get continueAction => '继续';

  @override
  String get noContent => '没有内容';

  @override
  String get noQuestions => '没有问题';

  @override
  String get mindGameTitle => '思维游戏';

  @override
  String get mindGameInstruction => '💡 点击提示片段 → 大声说出 Pāḷi → 再次点击显示答案';

  @override
  String get revealAll => '显示全部';

  @override
  String get importantVocabulary => '📖 重要词汇';

  @override
  String get importantStructures => '💡 关键结构';

  @override
  String get quizResultsTitle => '📊 结果';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => '太棒了！🎉';

  @override
  String get goodFeedback => '做得好！👍';

  @override
  String get tryHarderFeedback => '继续练习！💪';

  @override
  String get listeningQuizTitle => '听力测验';

  @override
  String questionProgress(int current, int total) {
    return '题目 $current/$total';
  }

  @override
  String get transcript => '文本';

  @override
  String get correctAnswer => '正确！';

  @override
  String get explanation => '解释';

  @override
  String get answersAndExplanation => '📝 答案与解释';

  @override
  String get viewResults => '查看结果';

  @override
  String get nextQuestion => '下一题';

  @override
  String get fullDeclensionTable => '📚 完整变格表';

  @override
  String get examplesSection => '📖 示例';

  @override
  String get declensionTableTitle => '变格表：';

  @override
  String get declensionCase => '格';

  @override
  String get singular => '单数';

  @override
  String get plural => '复数';

  @override
  String get notMastered => '未掌握';

  @override
  String get mastered => '已掌握';

  @override
  String get currentLesson => '当前课程';

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
  String get singularAbbr => '单';

  @override
  String get pluralAbbr => '复';

  @override
  String quickFormLabel(String caseAbbr, String numberAbbr) {
    return '$caseAbbr $numberAbbr';
  }
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Pāḷi 課程 — $count 課';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => '初級 Pāḷi 課程';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => '框架：VipLang Mind Game 方法';

  @override
  String lessonLabel(int number) {
    return '第 $number 課';
  }

  @override
  String lessonUppercase(int number) {
    return '第 $number 課';
  }

  @override
  String get dataReady => '資料已就緒';

  @override
  String get otherLessons => '其他課程';

  @override
  String get comingSoonDataReady => '即將推出 — 資料結構已就緒';

  @override
  String get startLesson => '開始課程';

  @override
  String get vocabAndGrammar => '詞彙與語法';

  @override
  String get lessonDetailHint => '點選「開始課程」查看本課詞彙與語法詳情。';

  @override
  String selectStudyDayTitle(int number) {
    return '第 $number 課 — 選擇學習日';
  }

  @override
  String dayLabel(int number) {
    return '第 $number 天';
  }

  @override
  String get startStudying => '開始學習';

  @override
  String get readPhase => '閱讀';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => '測驗';

  @override
  String phaseProgress(int current, int total) {
    return '階段 $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return '未知階段類型：$type';
  }

  @override
  String get completionTitle => '🎉 已完成！';

  @override
  String completionMessage(String title) {
    return '你已完成 $title';
  }

  @override
  String get back => '返回';

  @override
  String get previous => '上一步';

  @override
  String get continueAction => '繼續';

  @override
  String get noContent => '沒有內容';

  @override
  String get noQuestions => '沒有問題';

  @override
  String get mindGameTitle => '思維遊戲';

  @override
  String get mindGameInstruction => '💡 點選提示片段 → 大聲說出 Pāḷi → 再次點選顯示答案';

  @override
  String get revealAll => '顯示全部';

  @override
  String get importantVocabulary => '📖 重要詞彙';

  @override
  String get importantStructures => '💡 關鍵結構';

  @override
  String get quizResultsTitle => '📊 結果';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => '太棒了！🎉';

  @override
  String get goodFeedback => '做得好！👍';

  @override
  String get tryHarderFeedback => '繼續練習！💪';

  @override
  String get listeningQuizTitle => '聽力測驗';

  @override
  String questionProgress(int current, int total) {
    return '題目 $current/$total';
  }

  @override
  String get transcript => '逐字稿';

  @override
  String get correctAnswer => '正確！';

  @override
  String get explanation => '解釋';

  @override
  String get answersAndExplanation => '📝 答案與解釋';

  @override
  String get viewResults => '查看結果';

  @override
  String get nextQuestion => '下一題';

  @override
  String get fullDeclensionTable => '📚 完整變格表';

  @override
  String get examplesSection => '📖 範例';

  @override
  String get declensionTableTitle => '變格表：';

  @override
  String get declensionCase => '格';

  @override
  String get singular => '單數';

  @override
  String get plural => '複數';

  @override
  String get notMastered => '未掌握';

  @override
  String get mastered => '已掌握';

  @override
  String get currentLesson => '目前課程';

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
  String get singularAbbr => '單';

  @override
  String get pluralAbbr => '複';

  @override
  String quickFormLabel(String caseAbbr, String numberAbbr) {
    return '$caseAbbr $numberAbbr';
  }
}
