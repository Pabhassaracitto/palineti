import '../pali_enums.dart';

/// Paradigm biến cách cho danh từ Nam tánh tận cùng "-a"
/// Áp dụng: Lesson 1-5, một phần Lesson 17
///
/// Stem rule: Nếu root tận cùng 'a' → drop 'a' trước suffix
/// Ví dụ: nara → nar + o = naro ✅
///         Buddha → Buddh + o = Buddho ✅
///
/// Testable: flutter test test/morphology/masc_a_test.dart
class MascAParadigm {
  // Bảng suffix đầy đủ — nguồn: Nārada Mahāthera, Lesson 1-4
  static const Map<String, String> _suffixes = {
    // Nominative (CC)
    'nom_singular': 'o',
    'nom_plural': 'ā',
    // Accusative (ĐC)
    'acc_singular': 'aṃ',
    'acc_plural': 'e',
    // Instrumental (SDC)
    'ins_singular': 'ena',
    'ins_plural': 'ehi',   // also: ebhi (archaic)
    // Dative (CĐC)
    'dat_singular': 'assa', // also: āya (less common)
    'dat_plural': 'ānaṃ',
    // Ablative (XXC) — same as ins_plural for plural
    'abl_singular': 'ā',   // also: asmā, amhā
    'abl_plural': 'ehi',
    // Genitive (STC) — same as dative
    'gen_singular': 'assa',
    'gen_plural': 'ānaṃ',
    // Locative (ĐSC)
    'loc_singular': 'e',   // also: asmiṃ, amhi
    'loc_plural': 'esu',
    // Vocative (HC)
    'voc_singular': 'a',
    'voc_plural': 'ā',
  };

  /// Sinh hình thái biến cách từ root, case, number
  static String generate(String root, PaliCase c, PaliNumber n) {
    final key = '${c.name}_${n.name}';
    final suffix = _suffixes[key] ?? '';
    final stem = _getStem(root);
    return stem + suffix;
  }

  /// Lấy stem: drop ký tự cuối nếu là 'a' (lowercase hoặc uppercase giữ nguyên)
  static String _getStem(String root) {
    if (root.isEmpty) return root;
    if (root.endsWith('a')) {
      return root.substring(0, root.length - 1);
    }
    // Root đã là stem (không tận cùng 'a')
    return root;
  }

  /// Sinh toàn bộ bảng biến cách — dùng cho DeclensionTableWidget
  static Map<String, String> generateFullTable(String root) {
    final table = <String, String>{};
    for (final c in PaliCase.values) {
      for (final n in PaliNumber.values) {
        final key = '${c.name}_${n.name}';
        table[key] = generate(root, c, n);
      }
    }
    return table;
  }

  /// Suffix thuần (không gắn stem) — dùng cho MorphVisualWidget
  static String getSuffix(PaliCase c, PaliNumber n) {
    return _suffixes['${c.name}_${n.name}'] ?? '';
  }
}
