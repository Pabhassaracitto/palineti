import 'pali_enums.dart';

/// Lookup table cho các hình thái bất quy tắc.
/// Dùng cho Lesson 17-19 và các từ đặc biệt.
/// Không cần Paradigm class riêng — đủ đơn giản để hardcode.
class IrregularForms {
  static const Map<String, Map<String, String>> _forms = {
    // ─── "go" (con bò) — Lesson 19 ──────────────────────────────
    'go': {
      'nom_singular': 'gavo',   'nom_plural': 'gāvo',
      'acc_singular': 'gāvaṃ',  'acc_plural': 'gāve',
      'ins_singular': 'gavena',  'ins_plural': 'gobhi',
      'dat_singular': 'gavassa', 'dat_plural': 'gunnaṃ',
      'abl_singular': 'gavā',   'abl_plural': 'gobhi',
      'gen_singular': 'gavassa', 'gen_plural': 'gunnaṃ',
      'loc_singular': 'gave',   'loc_plural': 'gosu',
      'voc_singular': 'go',     'voc_plural': 'gāvo',
    },
    // ─── "satthu" (bậc Thầy/Đức Phật) — Lesson 18 ───────────────
    'satthu': {
      'nom_singular': 'satthā',  'nom_plural': 'satthāro',
      'acc_singular': 'satthāraṃ','acc_plural': 'satthāre',
      'ins_singular': 'satthārā', 'ins_plural': 'satthārehi',
      'dat_singular': 'satthu',  'dat_plural': 'satthūnaṃ',
      'abl_singular': 'satthārā', 'abl_plural': 'satthārehi',
      'gen_singular': 'satthu',  'gen_plural': 'satthūnaṃ',
      'loc_singular': 'satthari', 'loc_plural': 'satthāresu',
      'voc_singular': 'sattha',  'voc_plural': 'satthāro',
    },
    // ─── "atta" (bản thân) — Lesson 15 ──────────────────────────
    // Thêm dần khi đến Lesson tương ứng
  };

  /// Tra cứu hình thái bất quy tắc.
  /// Trả về null nếu không tìm thấy → caller fallback về regular paradigm.
  static String? lookup(String root, PaliCase c, PaliNumber n) {
    final key = '${c.name}_${n.name}';
    return _forms[root.toLowerCase()]?[key];
  }

  /// Kiểm tra root có trong danh sách bất quy tắc không
  static bool isIrregular(String root) =>
      _forms.containsKey(root.toLowerCase());

  /// Sinh toàn bộ bảng — cho DeclensionTableWidget
  static Map<String, String>? getFullTable(String root) =>
      _forms[root.toLowerCase()];
}
