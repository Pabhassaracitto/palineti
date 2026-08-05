// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Pāḷi अभ्यासक्रम — $count धडे';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'प्राथमिक Pāḷi अभ्यासक्रम';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'आराखडा: VipLang Mind Game पद्धत';

  @override
  String lessonLabel(int number) {
    return 'धडा $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'धडा $number';
  }

  @override
  String get dataReady => 'डेटा तयार';

  @override
  String get otherLessons => 'इतर धडे';

  @override
  String get comingSoonDataReady => 'लवकरच — डेटा संरचना तयार';

  @override
  String get startLesson => 'धडा सुरू करा';

  @override
  String get vocabAndGrammar => 'शब्दसंग्रह आणि व्याकरण';

  @override
  String get lessonDetailHint =>
      'या धड्याचा शब्दसंग्रह आणि व्याकरण पाहण्यासाठी धडा सुरू करा वर टॅप करा.';

  @override
  String selectStudyDayTitle(int number) {
    return 'धडा $number — अभ्यासाचा दिवस निवडा';
  }

  @override
  String dayLabel(int number) {
    return 'दिवस $number';
  }

  @override
  String get startStudying => 'अभ्यास सुरू करा';

  @override
  String get readPhase => 'वाचा';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'क्विझ';

  @override
  String phaseProgress(int current, int total) {
    return 'टप्पा $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'Unknown phase type: $type';
  }

  @override
  String get completionTitle => '🎉 पूर्ण झाले!';

  @override
  String completionMessage(String title) {
    return 'तुम्ही $title पूर्ण केले आहे';
  }

  @override
  String get back => 'मागे';

  @override
  String get previous => 'मागील';

  @override
  String get continueAction => 'सुरू ठेवा';

  @override
  String get noContent => 'मजकूर नाही';

  @override
  String get noQuestions => 'प्रश्न नाहीत';

  @override
  String get mindGameTitle => 'माइंड गेम';

  @override
  String get mindGameInstruction =>
      '💡 संकेत भागावर टॅप करा → Pāḷi मोठ्याने म्हणा → उत्तर दाखवण्यासाठी पुन्हा टॅप करा';

  @override
  String get revealAll => 'सर्व दाखवा';

  @override
  String get importantVocabulary => '📖 महत्त्वाचा शब्दसंग्रह';

  @override
  String get importantStructures => '💡 मुख्य रचना';

  @override
  String get quizResultsTitle => '📊 निकाल';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'उत्कृष्ट! 🎉';

  @override
  String get goodFeedback => 'छान! 👍';

  @override
  String get tryHarderFeedback => 'सराव सुरू ठेवा! 💪';

  @override
  String get listeningQuizTitle => 'ऐकण्याची क्विझ';

  @override
  String questionProgress(int current, int total) {
    return 'प्रश्न $current/$total';
  }

  @override
  String get transcript => 'प्रतिलेख';

  @override
  String get correctAnswer => 'बरोबर!';

  @override
  String get explanation => 'स्पष्टीकरण';

  @override
  String get answersAndExplanation => '📝 उत्तरे आणि स्पष्टीकरण';

  @override
  String get viewResults => 'निकाल पहा';

  @override
  String get nextQuestion => 'पुढील प्रश्न';

  @override
  String get fullDeclensionTable => '📚 पूर्ण विभक्ती तक्ता';

  @override
  String get examplesSection => '📖 उदाहरणे';

  @override
  String get declensionTableTitle => 'विभक्ती तक्ता:';

  @override
  String get declensionCase => 'विभक्ती';

  @override
  String get singular => 'एकवचन';

  @override
  String get plural => 'अनेकवचन';

  @override
  String get notMastered => 'अजून आत्मसात नाही';

  @override
  String get mastered => 'आत्मसात';

  @override
  String get currentLesson => 'सध्याचा धडा';

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
