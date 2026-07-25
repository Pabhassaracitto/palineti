import 'pali_enums.dart';

/// Tag ngữ pháp nhẹ — dùng cho MixedSegment và GrammarProgress analytics.
/// Chỉ lưu thông tin cần thiết, không over-engineer.
class LightMorphTag {
  // Nominal fields (danh từ/tính từ/đại từ)
  final PaliCase? paliCase;
  final PaliNumber? number;

  // Verbal fields (động từ)
  final PaliTense? tense;
  final PaliPerson? person;

  // Constructor nominal (biến cách)
  const LightMorphTag.nominal(this.paliCase, this.number)
      : tense = null,
        person = null;

  // Constructor verbal (chia động từ)
  const LightMorphTag.verbal(this.tense, this.person, this.number)
      : paliCase = null;

  /// Key dùng cho GrammarProgressModel lookup
  /// Ví dụ: 'nom_singular', 'pres_3rd_plural'
  String get grammarKey {
    if (paliCase != null && number != null) {
      return '${paliCase!.name}_${number!.name}';
    }
    if (tense != null && person != null && number != null) {
      return '${tense!.name}_${person!.name}_${number!.name}';
    }
    return 'unknown';
  }

  /// Nhãn hiển thị tiếng Việt cho hint trong MixedSegment
  /// Ví dụ: '[CC số ít]', '[ĐC số nhiều]'
  String get hintVI {
    if (paliCase != null && number != null) {
      return '[${paliCase!.abbreviationVI} ${number!.nameVI}]';
    }
    if (tense != null && person != null && number != null) {
      final tenseStr = tense == PaliTense.present ? 'HT' : tense!.name;
      final personNum = _personNumber(person!, number!);
      return '[ĐT $tenseStr $personNum]';
    }
    return '';
  }

  String _personNumber(PaliPerson p, PaliNumber n) {
    final personMap = {
      PaliPerson.first: 'ngôi 1',
      PaliPerson.second: 'ngôi 2',
      PaliPerson.third: 'ngôi 3',
    };
    return '${personMap[p]} ${n.nameVI}';
  }

  @override
  String toString() => 'LightMorphTag($grammarKey)';
}
