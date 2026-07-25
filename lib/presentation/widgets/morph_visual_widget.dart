import 'package:flutter/material.dart';

/// Widget hiển thị hình thái Pāḷi với màu phân biệt root/suffix.
/// Suffix đổi màu theo masteryScore: đỏ tối (chưa thuộc) → cam saffron (thuộc rồi).
///
/// Dùng trong: DeclensionTableWidget, FabVocabSheet, MixedTextWidget
class MorphVisualWidget extends StatelessWidget {
  final String root;
  final String suffix;
  final double masteryScore; // 0.0 → 1.0

  const MorphVisualWidget({
    required this.root,
    required this.suffix,
    this.masteryScore = 0.0,
    super.key,
  });

  /// Factory: tự tách root/suffix từ hình thái đầy đủ + root gốc
  factory MorphVisualWidget.fromForm({
    required String root,
    required String fullForm,
    double masteryScore = 0.0,
    Key? key,
  }) {
    // Xác định stem (bỏ 'a' cuối nếu root tận cùng 'a')
    final stem = root.endsWith('a')
        ? root.substring(0, root.length - 1)
        : root;

    String suffix = '';
    String displayRoot = fullForm;

    if (fullForm.startsWith(stem)) {
      suffix = fullForm.substring(stem.length);
      displayRoot = stem;
    }

    return MorphVisualWidget(
      root: displayRoot,
      suffix: suffix,
      masteryScore: masteryScore,
      key: key,
    );
  }

  /// Màu suffix: đỏ tối (mastery=0) → cam saffron (mastery=1)
  Color get _suffixColor {
    final t = masteryScore.clamp(0.0, 1.0);
    return Color.lerp(
      const Color(0xFF8B0000), // Đỏ tối — chưa thuộc
      const Color(0xFFE65100), // Cam saffron — thuộc rồi
      t,
    )!;
  }

  /// Màu root: luôn là màu mực cổ
  static const Color _rootColor = Color(0xFF3E2723);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          // Root / Stem — màu mực cổ, ổn định
          TextSpan(
            text: root,
            style: const TextStyle(
              color: _rootColor,
              fontSize: 18,
              fontFamily: 'NotoSans',
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          ),
          // Suffix — màu thay đổi theo mastery
          if (suffix.isNotEmpty)
            TextSpan(
              text: suffix,
              style: TextStyle(
                color: _suffixColor,
                fontSize: 18,
                fontFamily: 'NotoSans',
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
        ],
      ),
    );
  }
}

/// Compact version dùng trong list/chip
class MorphChipWidget extends StatelessWidget {
  final String form;
  final String? caseLabel; // 'CC', 'ĐC', v.v.
  final double masteryScore;

  const MorphChipWidget({
    required this.form,
    this.caseLabel,
    this.masteryScore = 0.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF8E7),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: const Color(0xFFDAA520), width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (caseLabel != null) ...[
            Text(
              caseLabel!,
              style: const TextStyle(
                color: Color(0xFF8B6914),
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 4),
          ],
          Text(
            form,
            style: const TextStyle(
              color: Color(0xFF3E2723),
              fontSize: 14,
              fontFamily: 'NotoSans',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
