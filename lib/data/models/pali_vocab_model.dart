// Pure Dart — không Hive.
// Khi tích hợp VipLang: thêm @HiveType(typeId: 13) và extend HiveObject

import '../morphology/pali_enums.dart';
import '../morphology/pali_paradigm_engine.dart';

/// Model từ vựng Pāḷi — Pure Dart, không Hive.
/// Hive annotations sẽ được thêm khi tích hợp vào VipLang.
class PaliVocabModel {
  final String id;           // 'pv_L01_nara'
  final String root;         // 'nara' — căn từ không biến cách
  final String paradigmId;   // 'masc_a'
  final String wordVi;       // 'người đàn ông'
  final String wordEn;       // 'man'
  final String lessonId;     // 'lesson_01'
  final String pronunciation; // 'NAH-rah'
  final String? examplePali;
  final String? exampleVi;

  // SRS — in-memory, chưa persist
  int repetitionCount;
  double easeFactor;
  int intervalDays;
  DateTime? nextReview;

  PaliVocabModel({
    required this.id,
    required this.root,
    required this.paradigmId,
    required this.wordVi,
    required this.wordEn,
    required this.lessonId,
    required this.pronunciation,
    this.examplePali,
    this.exampleVi,
    this.repetitionCount = 0,
    this.easeFactor = 2.5,
    this.intervalDays = 1,
    this.nextReview,
  });

  /// Sinh hình thái biến cách qua PaliParadigmEngine
  String getForm(PaliCase c, PaliNumber n) =>
      PaliParadigmEngine.generate(paradigmId, root, c, n);

  /// Hình thức từ điển — Nom. singular
  String get nominativeSingular => PaliParadigmEngine.generate(
        paradigmId, root, PaliCase.nom, PaliNumber.singular);

  bool get isDueForReview =>
      nextReview == null || DateTime.now().isAfter(nextReview!);

  PaliVocabModel copyWith({
    int? repetitionCount,
    double? easeFactor,
    int? intervalDays,
    DateTime? nextReview,
  }) =>
      PaliVocabModel(
        id: id,
        root: root,
        paradigmId: paradigmId,
        wordVi: wordVi,
        wordEn: wordEn,
        lessonId: lessonId,
        pronunciation: pronunciation,
        examplePali: examplePali,
        exampleVi: exampleVi,
        repetitionCount: repetitionCount ?? this.repetitionCount,
        easeFactor: easeFactor ?? this.easeFactor,
        intervalDays: intervalDays ?? this.intervalDays,
        nextReview: nextReview ?? this.nextReview,
      );

  @override
  String toString() => 'PaliVocabModel($id: $root [$paradigmId])';
}

/// Analytics model — theo dõi mức độ thuộc từng grammar pattern.
/// In-memory. Khi tích hợp VipLang: thêm @HiveType(typeId: 14)
class GrammarProgressModel {
  final String userId;
  final String grammarKey; // 'nom_singular', 'acc_plural'
  int attemptCount;
  int correctCount;
  DateTime? lastAttempt;

  GrammarProgressModel({
    required this.userId,
    required this.grammarKey,
    this.attemptCount = 0,
    this.correctCount = 0,
    this.lastAttempt,
  });

  double get masteryScore => attemptCount == 0
      ? 0.0
      : (correctCount / attemptCount).clamp(0.0, 1.0);

  bool get isWeak => masteryScore < 0.6 && attemptCount >= 3;
  bool get isMastered => masteryScore >= 0.85 && attemptCount >= 5;

  void recordAttempt(bool correct) {
    attemptCount++;
    if (correct) correctCount++;
    lastAttempt = DateTime.now();
  }

  @override
  String toString() =>
      'GrammarProgress($grammarKey: ${(masteryScore * 100).toStringAsFixed(0)}%)';
}
