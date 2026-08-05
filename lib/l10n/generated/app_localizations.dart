import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_bo.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_km.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_lo.dart';
import 'app_localizations_mn.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_my.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_si.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('bo'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('km'),
    Locale('ko'),
    Locale('lo'),
    Locale('mn'),
    Locale('mr'),
    Locale('my'),
    Locale('pt'),
    Locale('ru'),
    Locale('si'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'TW'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In vi, this message translates to:
  /// **'Pāḷi Course'**
  String get appTitle;

  /// No description provided for @appTitleExample.
  ///
  /// In vi, this message translates to:
  /// **'Pāḷi Course — Ví dụ'**
  String get appTitleExample;

  /// Home app bar title with lesson count.
  ///
  /// In vi, this message translates to:
  /// **'Pāḷi Course — {count} bài học'**
  String courseTitleWithLessonCount(int count);

  /// No description provided for @brandName.
  ///
  /// In vi, this message translates to:
  /// **'PALINETI'**
  String get brandName;

  /// No description provided for @courseSubtitle.
  ///
  /// In vi, this message translates to:
  /// **'Khóa Pāḷi sơ cấp'**
  String get courseSubtitle;

  /// No description provided for @courseAuthor.
  ///
  /// In vi, this message translates to:
  /// **'Nārada Mahāthera'**
  String get courseAuthor;

  /// No description provided for @frameworkLabel.
  ///
  /// In vi, this message translates to:
  /// **'Khung: Phương pháp VipLang Mind Game'**
  String get frameworkLabel;

  /// Lesson label with number.
  ///
  /// In vi, this message translates to:
  /// **'Bài {number}'**
  String lessonLabel(int number);

  /// Uppercase lesson label with number.
  ///
  /// In vi, this message translates to:
  /// **'BÀI {number}'**
  String lessonUppercase(int number);

  /// No description provided for @dataReady.
  ///
  /// In vi, this message translates to:
  /// **'ĐÃ CÓ DỮ LIỆU'**
  String get dataReady;

  /// No description provided for @otherLessons.
  ///
  /// In vi, this message translates to:
  /// **'Các bài học khác'**
  String get otherLessons;

  /// No description provided for @comingSoonDataReady.
  ///
  /// In vi, this message translates to:
  /// **'Sắp ra mắt — cấu trúc dữ liệu đã sẵn sàng'**
  String get comingSoonDataReady;

  /// No description provided for @startLesson.
  ///
  /// In vi, this message translates to:
  /// **'Bắt đầu bài học'**
  String get startLesson;

  /// No description provided for @vocabAndGrammar.
  ///
  /// In vi, this message translates to:
  /// **'Từ vựng & Ngữ pháp'**
  String get vocabAndGrammar;

  /// No description provided for @lessonDetailHint.
  ///
  /// In vi, this message translates to:
  /// **'Nhấn Bắt đầu bài học để xem chi tiết từ vựng và ngữ pháp của bài này.'**
  String get lessonDetailHint;

  /// App bar title for selecting a study day.
  ///
  /// In vi, this message translates to:
  /// **'Bài {number} — Chọn ngày học'**
  String selectStudyDayTitle(int number);

  /// Day label with number.
  ///
  /// In vi, this message translates to:
  /// **'Ngày {number}'**
  String dayLabel(int number);

  /// No description provided for @startStudying.
  ///
  /// In vi, this message translates to:
  /// **'Bắt đầu học'**
  String get startStudying;

  /// No description provided for @readPhase.
  ///
  /// In vi, this message translates to:
  /// **'Đọc'**
  String get readPhase;

  /// No description provided for @mindGamePhase.
  ///
  /// In vi, this message translates to:
  /// **'Mind Game'**
  String get mindGamePhase;

  /// No description provided for @quizPhase.
  ///
  /// In vi, this message translates to:
  /// **'Quiz'**
  String get quizPhase;

  /// Current phase progress.
  ///
  /// In vi, this message translates to:
  /// **'Phase {current}/{total}'**
  String phaseProgress(int current, int total);

  /// Fallback message for an unknown phase type.
  ///
  /// In vi, this message translates to:
  /// **'Unknown phase type: {type}'**
  String unknownPhaseType(String type);

  /// No description provided for @completionTitle.
  ///
  /// In vi, this message translates to:
  /// **'🎉 Hoàn thành!'**
  String get completionTitle;

  /// Completion message with lesson/day title.
  ///
  /// In vi, this message translates to:
  /// **'Bạn đã hoàn thành {title}'**
  String completionMessage(String title);

  /// No description provided for @back.
  ///
  /// In vi, this message translates to:
  /// **'Quay lại'**
  String get back;

  /// No description provided for @previous.
  ///
  /// In vi, this message translates to:
  /// **'Trước'**
  String get previous;

  /// No description provided for @continueAction.
  ///
  /// In vi, this message translates to:
  /// **'Tiếp tục'**
  String get continueAction;

  /// No description provided for @noContent.
  ///
  /// In vi, this message translates to:
  /// **'Không có nội dung'**
  String get noContent;

  /// No description provided for @noQuestions.
  ///
  /// In vi, this message translates to:
  /// **'Không có câu hỏi'**
  String get noQuestions;

  /// No description provided for @mindGameTitle.
  ///
  /// In vi, this message translates to:
  /// **'Trò Chơi Tư Duy'**
  String get mindGameTitle;

  /// No description provided for @mindGameInstruction.
  ///
  /// In vi, this message translates to:
  /// **'💡 Nhấn vào đoạn gợi ý → Nói to tiếng Pāḷi → Nhấn lại để xem đáp án'**
  String get mindGameInstruction;

  /// No description provided for @revealAll.
  ///
  /// In vi, this message translates to:
  /// **'Hiện tất cả'**
  String get revealAll;

  /// No description provided for @importantVocabulary.
  ///
  /// In vi, this message translates to:
  /// **'📖 Từ Vựng Quan Trọng'**
  String get importantVocabulary;

  /// No description provided for @importantStructures.
  ///
  /// In vi, this message translates to:
  /// **'💡 Cấu Trúc Cần Nhớ'**
  String get importantStructures;

  /// No description provided for @quizResultsTitle.
  ///
  /// In vi, this message translates to:
  /// **'📊 Kết Quả'**
  String get quizResultsTitle;

  /// Quiz score label.
  ///
  /// In vi, this message translates to:
  /// **'{correct}/{total}'**
  String scoreLabel(int correct, int total);

  /// No description provided for @excellentFeedback.
  ///
  /// In vi, this message translates to:
  /// **'Xuất sắc! 🎉'**
  String get excellentFeedback;

  /// No description provided for @goodFeedback.
  ///
  /// In vi, this message translates to:
  /// **'Tốt lắm! 👍'**
  String get goodFeedback;

  /// No description provided for @tryHarderFeedback.
  ///
  /// In vi, this message translates to:
  /// **'Cần cố gắng thêm! 💪'**
  String get tryHarderFeedback;

  /// No description provided for @listeningQuizTitle.
  ///
  /// In vi, this message translates to:
  /// **'Listening Quiz'**
  String get listeningQuizTitle;

  /// Current quiz question progress.
  ///
  /// In vi, this message translates to:
  /// **'Câu {current}/{total}'**
  String questionProgress(int current, int total);

  /// No description provided for @transcript.
  ///
  /// In vi, this message translates to:
  /// **'Transcript'**
  String get transcript;

  /// No description provided for @correctAnswer.
  ///
  /// In vi, this message translates to:
  /// **'Chính xác!'**
  String get correctAnswer;

  /// No description provided for @explanation.
  ///
  /// In vi, this message translates to:
  /// **'Giải thích'**
  String get explanation;

  /// No description provided for @answersAndExplanation.
  ///
  /// In vi, this message translates to:
  /// **'📝 Đáp Án & Giải Thích'**
  String get answersAndExplanation;

  /// No description provided for @viewResults.
  ///
  /// In vi, this message translates to:
  /// **'Xem kết quả'**
  String get viewResults;

  /// No description provided for @nextQuestion.
  ///
  /// In vi, this message translates to:
  /// **'Câu tiếp'**
  String get nextQuestion;

  /// No description provided for @fullDeclensionTable.
  ///
  /// In vi, this message translates to:
  /// **'📚 Bảng Biến Cách Đầy Đủ'**
  String get fullDeclensionTable;

  /// No description provided for @examplesSection.
  ///
  /// In vi, this message translates to:
  /// **'📖 Ví Dụ Minh Họa'**
  String get examplesSection;

  /// No description provided for @declensionTableTitle.
  ///
  /// In vi, this message translates to:
  /// **'Bảng biến cách:'**
  String get declensionTableTitle;

  /// No description provided for @declensionCase.
  ///
  /// In vi, this message translates to:
  /// **'Biến cách'**
  String get declensionCase;

  /// No description provided for @singular.
  ///
  /// In vi, this message translates to:
  /// **'Số ít'**
  String get singular;

  /// No description provided for @plural.
  ///
  /// In vi, this message translates to:
  /// **'Số nhiều'**
  String get plural;

  /// No description provided for @notMastered.
  ///
  /// In vi, this message translates to:
  /// **'Chưa thuộc'**
  String get notMastered;

  /// No description provided for @mastered.
  ///
  /// In vi, this message translates to:
  /// **'Đã thuộc'**
  String get mastered;

  /// No description provided for @currentLesson.
  ///
  /// In vi, this message translates to:
  /// **'Bài đang học'**
  String get currentLesson;

  /// No description provided for @caseNomAbbr.
  ///
  /// In vi, this message translates to:
  /// **'CC'**
  String get caseNomAbbr;

  /// No description provided for @caseAccAbbr.
  ///
  /// In vi, this message translates to:
  /// **'ĐC'**
  String get caseAccAbbr;

  /// No description provided for @caseInsAbbr.
  ///
  /// In vi, this message translates to:
  /// **'SDC'**
  String get caseInsAbbr;

  /// No description provided for @caseDatAbbr.
  ///
  /// In vi, this message translates to:
  /// **'CĐC'**
  String get caseDatAbbr;

  /// No description provided for @caseAblAbbr.
  ///
  /// In vi, this message translates to:
  /// **'XXC'**
  String get caseAblAbbr;

  /// No description provided for @caseGenAbbr.
  ///
  /// In vi, this message translates to:
  /// **'STC'**
  String get caseGenAbbr;

  /// No description provided for @caseLocAbbr.
  ///
  /// In vi, this message translates to:
  /// **'ĐSC'**
  String get caseLocAbbr;

  /// No description provided for @caseVocAbbr.
  ///
  /// In vi, this message translates to:
  /// **'HC'**
  String get caseVocAbbr;

  /// No description provided for @caseNomName.
  ///
  /// In vi, this message translates to:
  /// **'Chủ cách'**
  String get caseNomName;

  /// No description provided for @caseAccName.
  ///
  /// In vi, this message translates to:
  /// **'Đối cách'**
  String get caseAccName;

  /// No description provided for @caseInsName.
  ///
  /// In vi, this message translates to:
  /// **'Sử dụng cách'**
  String get caseInsName;

  /// No description provided for @caseDatName.
  ///
  /// In vi, this message translates to:
  /// **'Cách dữ'**
  String get caseDatName;

  /// No description provided for @caseAblName.
  ///
  /// In vi, this message translates to:
  /// **'Xuất xứ cách'**
  String get caseAblName;

  /// No description provided for @caseGenName.
  ///
  /// In vi, this message translates to:
  /// **'Sở thuộc cách'**
  String get caseGenName;

  /// No description provided for @caseLocName.
  ///
  /// In vi, this message translates to:
  /// **'Định sở cách'**
  String get caseLocName;

  /// No description provided for @caseVocName.
  ///
  /// In vi, this message translates to:
  /// **'Hô cách'**
  String get caseVocName;

  /// No description provided for @singularAbbr.
  ///
  /// In vi, this message translates to:
  /// **'sg'**
  String get singularAbbr;

  /// No description provided for @pluralAbbr.
  ///
  /// In vi, this message translates to:
  /// **'pl'**
  String get pluralAbbr;

  /// Short grammar form label.
  ///
  /// In vi, this message translates to:
  /// **'{caseAbbr} {numberAbbr}'**
  String quickFormLabel(String caseAbbr, String numberAbbr);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'bn',
    'bo',
    'de',
    'en',
    'es',
    'fr',
    'hi',
    'id',
    'it',
    'ja',
    'km',
    'ko',
    'lo',
    'mn',
    'mr',
    'my',
    'pt',
    'ru',
    'si',
    'ta',
    'te',
    'th',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'bn':
      return AppLocalizationsBn();
    case 'bo':
      return AppLocalizationsBo();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'km':
      return AppLocalizationsKm();
    case 'ko':
      return AppLocalizationsKo();
    case 'lo':
      return AppLocalizationsLo();
    case 'mn':
      return AppLocalizationsMn();
    case 'mr':
      return AppLocalizationsMr();
    case 'my':
      return AppLocalizationsMy();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'si':
      return AppLocalizationsSi();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'th':
      return AppLocalizationsTh();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
