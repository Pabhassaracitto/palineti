// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Curso de Pāḷi — $count lecciones';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'Curso elemental de Pāḷi';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'Marco: método VipLang Mind Game';

  @override
  String lessonLabel(int number) {
    return 'Lección $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'LECCIÓN $number';
  }

  @override
  String get dataReady => 'DATOS LISTOS';

  @override
  String get otherLessons => 'Otras lecciones';

  @override
  String get comingSoonDataReady => 'Próximamente — estructura de datos lista';

  @override
  String get startLesson => 'Comenzar lección';

  @override
  String get vocabAndGrammar => 'Vocabulario y gramática';

  @override
  String get lessonDetailHint =>
      'Toca Comenzar lección para ver el vocabulario y la gramática de esta lección.';

  @override
  String selectStudyDayTitle(int number) {
    return 'Lección $number — Elige día de estudio';
  }

  @override
  String dayLabel(int number) {
    return 'Día $number';
  }

  @override
  String get startStudying => 'Comenzar a estudiar';

  @override
  String get readPhase => 'Leer';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'Cuestionario';

  @override
  String phaseProgress(int current, int total) {
    return 'Fase $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'Tipo de fase desconocido: $type';
  }

  @override
  String get completionTitle => '🎉 ¡Completado!';

  @override
  String completionMessage(String title) {
    return 'Has completado $title';
  }

  @override
  String get back => 'Volver';

  @override
  String get previous => 'Anterior';

  @override
  String get continueAction => 'Continuar';

  @override
  String get noContent => 'Sin contenido';

  @override
  String get noQuestions => 'Sin preguntas';

  @override
  String get mindGameTitle => 'Juego mental';

  @override
  String get mindGameInstruction =>
      '💡 Toca una pista → Di Pāḷi en voz alta → Toca de nuevo para revelar la respuesta';

  @override
  String get revealAll => 'Mostrar todo';

  @override
  String get importantVocabulary => '📖 Vocabulario importante';

  @override
  String get importantStructures => '💡 Estructuras clave';

  @override
  String get quizResultsTitle => '📊 Resultados';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => '¡Excelente! 🎉';

  @override
  String get goodFeedback => '¡Bien hecho! 👍';

  @override
  String get tryHarderFeedback => '¡Sigue practicando! 💪';

  @override
  String get listeningQuizTitle => 'Cuestionario de escucha';

  @override
  String questionProgress(int current, int total) {
    return 'Pregunta $current/$total';
  }

  @override
  String get transcript => 'Transcripción';

  @override
  String get correctAnswer => '¡Correcto!';

  @override
  String get explanation => 'Explicación';

  @override
  String get answersAndExplanation => '📝 Respuestas y explicación';

  @override
  String get viewResults => 'Ver resultados';

  @override
  String get nextQuestion => 'Siguiente pregunta';

  @override
  String get fullDeclensionTable => '📚 Tabla completa de declinación';

  @override
  String get examplesSection => '📖 Ejemplos';

  @override
  String get declensionTableTitle => 'Tabla de declinación:';

  @override
  String get declensionCase => 'Caso';

  @override
  String get singular => 'Singular';

  @override
  String get plural => 'Plural';

  @override
  String get notMastered => 'No dominado';

  @override
  String get mastered => 'Dominado';

  @override
  String get currentLesson => 'Lección actual';

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
