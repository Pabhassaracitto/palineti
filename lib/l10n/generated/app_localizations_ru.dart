// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Курс Pāḷi — $count уроков';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'Начальный курс Pāḷi';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'Фреймворк: метод VipLang Mind Game';

  @override
  String lessonLabel(int number) {
    return 'Урок $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'Урок $number';
  }

  @override
  String get dataReady => 'ДАННЫЕ ГОТОВЫ';

  @override
  String get otherLessons => 'Другие уроки';

  @override
  String get comingSoonDataReady => 'Скоро — структура данных готова';

  @override
  String get startLesson => 'Начать урок';

  @override
  String get vocabAndGrammar => 'Словарь и грамматика';

  @override
  String get lessonDetailHint =>
      'Нажмите Начать урок, чтобы посмотреть словарь и грамматику этого урока.';

  @override
  String selectStudyDayTitle(int number) {
    return 'Урок $number — Выберите день обучения';
  }

  @override
  String dayLabel(int number) {
    return 'День $number';
  }

  @override
  String get startStudying => 'Начать обучение';

  @override
  String get readPhase => 'Читать';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'Тест';

  @override
  String phaseProgress(int current, int total) {
    return 'Фаза $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'Unknown phase type: $type';
  }

  @override
  String get completionTitle => '🎉 Завершено!';

  @override
  String completionMessage(String title) {
    return 'Вы завершили $title';
  }

  @override
  String get back => 'Назад';

  @override
  String get previous => 'Предыдущий';

  @override
  String get continueAction => 'Продолжить';

  @override
  String get noContent => 'Нет содержимого';

  @override
  String get noQuestions => 'Нет вопросов';

  @override
  String get mindGameTitle => 'Игра ума';

  @override
  String get mindGameInstruction =>
      '💡 Нажмите подсказку → Произнесите Pāḷi вслух → Нажмите снова, чтобы открыть ответ';

  @override
  String get revealAll => 'Показать всё';

  @override
  String get importantVocabulary => '📖 Важная лексика';

  @override
  String get importantStructures => '💡 Ключевые структуры';

  @override
  String get quizResultsTitle => '📊 Результаты';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'Отлично! 🎉';

  @override
  String get goodFeedback => 'Хорошо! 👍';

  @override
  String get tryHarderFeedback => 'Продолжайте практиковаться! 💪';

  @override
  String get listeningQuizTitle => 'Аудирование';

  @override
  String questionProgress(int current, int total) {
    return 'Вопрос $current/$total';
  }

  @override
  String get transcript => 'Транскрипт';

  @override
  String get correctAnswer => 'Верно!';

  @override
  String get explanation => 'Объяснение';

  @override
  String get answersAndExplanation => '📝 Ответы и объяснение';

  @override
  String get viewResults => 'Посмотреть результаты';

  @override
  String get nextQuestion => 'Следующий вопрос';

  @override
  String get fullDeclensionTable => '📚 Полная таблица склонения';

  @override
  String get examplesSection => '📖 Примеры';

  @override
  String get declensionTableTitle => 'Таблица склонения:';

  @override
  String get declensionCase => 'Падеж';

  @override
  String get singular => 'Ед. число';

  @override
  String get plural => 'Мн. число';

  @override
  String get notMastered => 'Не освоено';

  @override
  String get mastered => 'Освоено';

  @override
  String get currentLesson => 'Текущий урок';

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
