// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'Pāḷi Course';

  @override
  String get appTitleExample => 'Pāḷi Course — Example';

  @override
  String courseTitleWithLessonCount(int count) {
    return 'Pāḷi पाठ्यक्रम — $count पाठ';
  }

  @override
  String get brandName => 'PALINETI';

  @override
  String get courseSubtitle => 'प्रारंभिक Pāḷi पाठ्यक्रम';

  @override
  String get courseAuthor => 'Nārada Mahāthera';

  @override
  String get frameworkLabel => 'ढाँचा: VipLang Mind Game विधि';

  @override
  String lessonLabel(int number) {
    return 'पाठ $number';
  }

  @override
  String lessonUppercase(int number) {
    return 'पाठ $number';
  }

  @override
  String get dataReady => 'डेटा तैयार';

  @override
  String get otherLessons => 'अन्य पाठ';

  @override
  String get comingSoonDataReady => 'जल्द आ रहा है — डेटा संरचना तैयार है';

  @override
  String get startLesson => 'पाठ शुरू करें';

  @override
  String get vocabAndGrammar => 'शब्दावली और व्याकरण';

  @override
  String get lessonDetailHint =>
      'इस पाठ की शब्दावली और व्याकरण देखने के लिए पाठ शुरू करें पर टैप करें।';

  @override
  String selectStudyDayTitle(int number) {
    return 'पाठ $number — अध्ययन दिवस चुनें';
  }

  @override
  String dayLabel(int number) {
    return 'दिन $number';
  }

  @override
  String get startStudying => 'अध्ययन शुरू करें';

  @override
  String get readPhase => 'पढ़ें';

  @override
  String get mindGamePhase => 'Mind Game';

  @override
  String get quizPhase => 'क्विज़';

  @override
  String phaseProgress(int current, int total) {
    return 'चरण $current/$total';
  }

  @override
  String unknownPhaseType(String type) {
    return 'अज्ञात चरण प्रकार: $type';
  }

  @override
  String get completionTitle => '🎉 पूर्ण हुआ!';

  @override
  String completionMessage(String title) {
    return 'आपने $title पूरा कर लिया है';
  }

  @override
  String get back => 'वापस';

  @override
  String get previous => 'पिछला';

  @override
  String get continueAction => 'जारी रखें';

  @override
  String get noContent => 'कोई सामग्री नहीं';

  @override
  String get noQuestions => 'कोई प्रश्न नहीं';

  @override
  String get mindGameTitle => 'माइंड गेम';

  @override
  String get mindGameInstruction =>
      '💡 संकेत खंड पर टैप करें → Pāḷi को ज़ोर से बोलें → उत्तर दिखाने के लिए फिर टैप करें';

  @override
  String get revealAll => 'सभी दिखाएँ';

  @override
  String get importantVocabulary => '📖 महत्वपूर्ण शब्दावली';

  @override
  String get importantStructures => '💡 मुख्य संरचनाएँ';

  @override
  String get quizResultsTitle => '📊 परिणाम';

  @override
  String scoreLabel(int correct, int total) {
    return '$correct/$total';
  }

  @override
  String get excellentFeedback => 'उत्कृष्ट! 🎉';

  @override
  String get goodFeedback => 'बहुत अच्छा! 👍';

  @override
  String get tryHarderFeedback => 'अभ्यास जारी रखें! 💪';

  @override
  String get listeningQuizTitle => 'श्रवण क्विज़';

  @override
  String questionProgress(int current, int total) {
    return 'प्रश्न $current/$total';
  }

  @override
  String get transcript => 'लिप्यंतरण';

  @override
  String get correctAnswer => 'सही!';

  @override
  String get explanation => 'व्याख्या';

  @override
  String get answersAndExplanation => '📝 उत्तर और व्याख्या';

  @override
  String get viewResults => 'परिणाम देखें';

  @override
  String get nextQuestion => 'अगला प्रश्न';

  @override
  String get fullDeclensionTable => '📚 पूर्ण विभक्ति तालिका';

  @override
  String get examplesSection => '📖 उदाहरण';

  @override
  String get declensionTableTitle => 'विभक्ति तालिका:';

  @override
  String get declensionCase => 'विभक्ति';

  @override
  String get singular => 'एकवचन';

  @override
  String get plural => 'बहुवचन';

  @override
  String get notMastered => 'अभी याद नहीं';

  @override
  String get mastered => 'याद हो गया';

  @override
  String get currentLesson => 'वर्तमान पाठ';

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
  String get singularAbbr => 'एक';

  @override
  String get pluralAbbr => 'बहु';

  @override
  String quickFormLabel(String caseAbbr, String numberAbbr) {
    return '$caseAbbr $numberAbbr';
  }
}
