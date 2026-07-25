import 'pali_enums.dart';
import 'paradigms/masc_a_paradigm.dart';
import 'irregular_forms.dart';

/// Dispatcher trung tâm — ánh xạ paradigmId → Paradigm class tương ứng.
/// Thêm case mới theo từng lesson, không cần sửa code cũ.
class PaliParadigmEngine {
  /// Sinh hình thái Pāḷi từ paradigmId + root + case + number
  static String generate(
    String paradigmId,
    String root,
    PaliCase c,
    PaliNumber n,
  ) {
    switch (paradigmId) {
      // ─── Lesson 1-5: Nam tánh "-a" ───────────────────────────
      case 'masc_a':
        return MascAParadigm.generate(root, c, n);

      // ─── Lesson 6: Nữ tánh "-ā" ──────────────────────────────
      // case 'fem_aa':
      //   return FemAaParadigm.generate(root, c, n);

      // ─── Lesson 5: Trung tánh "-a" ────────────────────────────
      // case 'neut_a':
      //   return NeutAParadigm.generate(root, c, n);

      // ─── Lesson 8: Nam tánh "-i" ──────────────────────────────
      // case 'masc_i':
      //   return MascIParadigm.generate(root, c, n);

      // ─── Lesson 17-19: Bất quy tắc ───────────────────────────
      case 'irregular':
        return IrregularForms.lookup(root, c, n) ?? root;

      default:
        // Fallback an toàn: thử IrregularForms trước, sau đó trả root
        return IrregularForms.lookup(root, c, n) ?? root;
    }
  }

  /// Sinh toàn bộ bảng biến cách — cho DeclensionTableWidget
  static Map<String, String> generateFullTable(
    String paradigmId,
    String root,
  ) {
    final table = <String, String>{};
    for (final c in PaliCase.values) {
      for (final n in PaliNumber.values) {
        final key = '${c.name}_${n.name}';
        table[key] = generate(paradigmId, root, c, n);
      }
    }
    return table;
  }

  /// Lấy suffix thuần — cho MorphVisualWidget
  static String getSuffix(String paradigmId, PaliCase c, PaliNumber n) {
    switch (paradigmId) {
      case 'masc_a':
        return MascAParadigm.getSuffix(c, n);
      default:
        return '';
    }
  }
}
