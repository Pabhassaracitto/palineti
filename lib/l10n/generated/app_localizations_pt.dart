// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Curso de Pāḷi — $count lições';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'Curso elementar de Pāḷi';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'Estrutura: método VipLang Mind Game';

  @override
  String lessonLabel(int number) {
    return 'Lição $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'Lição $number';
  }

  @override
  String get dataReady => 'DADOS PRONTOS';

  @override
  String get otherLessons => 'Outras lições';

  @override
  String get comingSoonDataReady => 'Em breve — estrutura de dados pronta';

  @override
  String get startLesson => 'Começar lição';

  @override
  String get vocabAndGrammar => 'Vocabulário e gramática';

  @override
  String get lessonDetailHint =>
      'Toque em Começar lição para ver o vocabulário e a gramática desta lição.';

  @override
  String selectStudyDayTitle(int number) {
    return 'Lição $number — Escolha o dia de estudo';
  }

  @override
  String dayLabel(int number) {
    return 'Dia $number';
  }

  @override
  String get startStudying => 'Começar a estudar';

  @override
  String get readPhase => 'Ler';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'Quiz';

  @override
  String phaseProgress(int current, int total) {
    return 'Fase $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'Unknown phase type: $type';
  }

  @override
  String get completionTitle => '🎉 Concluído!';

  @override
  String completionMessage(String title) {
    return 'Você concluiu $title';
  }

  @override
  String get back => 'Voltar';

  @override
  String get previous => 'Anterior';

  @override
  String get continueAction => 'Continuar';

  @override
  String get noContent => 'Sem conteúdo';

  @override
  String get noQuestions => 'Sem perguntas';

  @override
  String get mindGameTitle => 'Jogo mental';

  @override
  String get mindGameInstruction =>
      '💡 Toque em uma dica → Diga Pāḷi em voz alta → Toque novamente para revelar a resposta';

  @override
  String get revealAll => 'Mostrar tudo';

  @override
  String get importantVocabulary => '📖 Vocabulário importante';

  @override
  String get importantStructures => '💡 Estruturas-chave';

  @override
  String get quizResultsTitle => '📊 Resultados';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'Excelente! 🎉';

  @override
  String get goodFeedback => 'Muito bem! 👍';

  @override
  String get tryHarderFeedback => 'Continue praticando! 💪';

  @override
  String get listeningQuizTitle => 'Quiz de escuta';

  @override
  String questionProgress(int current, int total) {
    return 'Pergunta $current/$total';
  }

  @override
  String get transcript => 'Transcrição';

  @override
  String get correctAnswer => 'Correto!';

  @override
  String get explanation => 'Explicação';

  @override
  String get answersAndExplanation => '📝 Respostas e explicação';

  @override
  String get viewResults => 'Ver resultados';

  @override
  String get nextQuestion => 'Próxima pergunta';

  @override
  String get fullDeclensionTable => '📚 Tabela completa de declinação';

  @override
  String get examplesSection => '📖 Exemplos';

  @override
  String get declensionTableTitle => 'Tabela de declinação:';

  @override
  String get declensionCase => 'Caso';

  @override
  String get singular => 'Singular';

  @override
  String get plural => 'Plural';

  @override
  String get notMastered => 'Não dominado';

  @override
  String get mastered => 'Dominado';

  @override
  String get currentLesson => 'Lição atual';

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
