import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static const Color textHint = Color(0xFF9E9E9E); // Màu xám nhạt
  // Primary Palette
  static const Color primary = Color(0xFF1565C0);
  static const Color primaryLight = Color(0xFF1E88E5);
  static const Color primaryDark = Color(0xFF0D47A1);
  static const Color primarySurface = Color(0xFFE3F2FD);

  // Secondary - Energy/Action
  static const Color secondary = Color(0xFFFF6F00);
  static const Color secondaryLight = Color(0xFFFF9800);
  static const Color secondarySurface = Color(0xFFFFF3E0);

  // Semantic Colors
  static const Color success = Color(0xFF2E7D32);
  static const Color successLight = Color(0xFF4CAF50);
  static const Color successSurface = Color(0xFFE8F5E9);

  static const Color warning = Color(0xFFF57F17);
  static const Color warningSurface = Color(0xFFFFFDE7);

  static const Color error = Color(0xFFC62828);
  static const Color errorLight = Color(0xFFEF5350);
  static const Color errorSurface = Color(0xFFFFEBEE);

  // Mixed Language Colors (CORE FEATURE)
  static const Color viChip = Color(0xFFFFF59D); // Vàng nhạt - từ tiếng Việt
  static const Color viChipBorder = Color(0xFFF9A825); // Viền vàng
  static const Color viChipText = Color(0xFF5D4037); // Text nâu
  static const Color enReveal = Color(0xFFE8F5E9); // Xanh nhạt - đáp án EN
  static const Color enRevealBorder = Color(0xFF43A047);
  static const Color enRevealText = Color(0xFF1B5E20);

  // Neutral
  static const Color background = Color(0xFFF8FAFC);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceVariant = Color(0xFFF1F5F9);
  static const Color border = Color(0xFFE2E8F0);
  static const Color divider = Color(0xFFEEF2F7);

  // Text
  static const Color textPrimary = Color(0xFF0F172A);
  static const Color textSecondary = Color(0xFF475569);
  static const Color textTertiary = Color(0xFF94A3B8);
  static const Color textDisabled = Color(0xFFCBD5E1);
  static const Color textInverse = Color(0xFFFFFFFF);

  // Theme Colors (13 chủ đề)
  static const List<Color> themeColors = [
    Color(0xFF1565C0), // 01 Offices - Xanh dương
    Color(0xFF2E7D32), // 02 General Business - Xanh lá
    Color(0xFF6A1B9A), // 03 Technical - Tím
    Color(0xFFE65100), // 04 Travel - Cam đậm
    Color(0xFFC62828), // 05 Entertainment - Đỏ
    Color(0xFF00695C), // 06 Purchasing - Xanh ngọc
    Color(0xFF558B2F), // 07 Dining - Xanh olive
    Color(0xFF283593), // 08 Personnel - Chàm
    Color(0xFF37474F), // 09 Finance - Xám xanh
    Color(0xFF4527A0), // 10 Corporate - Tím đậm
    Color(0xFF4E342E), // 11 Manufacturing - Nâu
    Color(0xFF00838F), // 12 Housing - Cyan
    Color(0xFFAD1457), // 13 Health - Hồng đậm
  ];

  // Gradient
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF1565C0), Color(0xFF1E88E5)],
  );

  static const LinearGradient successGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF2E7D32), Color(0xFF43A047)],
  );
  // THÊM VÀO CUỐI lib/core/constants/app_colors.dart
  // (Giữ nguyên toàn bộ màu VipLang đã có)

  // ═══════════════════════════════════════════════════════════
  // PALIVIP COLORS — Màu đặc trưng Pāḷi/Phật giáo
  // ═══════════════════════════════════════════════════════════

  // Màu nhấn chính
  static const Color paliGold = Color(0xFFB8860B); // Vàng Sa-môn đậm
  static const Color paliSaffron = Color(0xFFFF8C00); // Cam nghệ — y áo
  static const Color paliMaroon = Color(0xFF800020); // Đỏ tía — y Tây Tạng
  static const Color paliJade = Color(0xFF00695C); // Xanh ngọc — Pháp bảo
  static const Color paliInk = Color(0xFF3E2723); // Nâu mực — text Pāḷi
  static const Color paliBg = Color(0xFFFFF8E7); // Kem nhạt — giấy cổ
  static const Color paliDivider = Color(0xFFDAA520); // Vàng nhạt — đường kẻ

  // MorphVisual colors
  static const Color morphSuffixWeak = Color(0xFF8B0000); // Chưa thuộc
  static const Color morphSuffixStrong = Color(0xFFE65100); // Thuộc rồi
  static const Color morphRoot = Color(0xFF3E2723); // Root/stem

  // 26 Lesson colors (nhóm theo chủ đề ngữ pháp)
  static const Color lesson01Color = Color(0xFFB8860B); // Nom/Acc — Vàng đậm
  static const Color lesson02Color = Color(0xFFCD853F); // Ins/Dat — Vàng nâu
  static const Color lesson03Color = Color(0xFFD2691E); // Abl/Gen — Cam nâu
  static const Color lesson04Color = Color(0xFFDAA520); // Loc/Voc — Vàng kim
  static const Color lesson05Color = Color(0xFFB8860B); // Full decl — Vàng đậm
  static const Color lesson06Color = Color(0xFFFF8C00); // Fem -ā — Cam
  static const Color lesson07Color = Color(0xFF2E7D32); // Aorist — Xanh lá
  static const Color lesson08Color = Color(0xFF1B5E20); // Masc -i — Xanh đậm
  static const Color lesson09Color = Color(0xFF00695C); // Future — Ngọc
  static const Color lesson10Color = Color(0xFF006064); // -ī nouns — Cyan đậm
  static const Color lesson11Color = Color(0xFF01579B); // -u/-ū — Xanh dương
  static const Color lesson12Color = Color(0xFF4A148C); // Pronouns — Tím đậm
  static const Color lesson13Color = Color(0xFF6A1B9A); // Rel. pron. — Tím
  static const Color lesson14Color = Color(0xFF7B1FA2); // Participles — Violet
  static const Color lesson15Color = Color(0xFF880E4F); // Adj. — Hồng tối
  static const Color lesson16Color = Color(0xFFAD1457); // Numerals — Hồng
  static const Color lesson17Color = Color(0xFFC62828); // Irregular — Đỏ
  static const Color lesson18Color = Color(0xFFD84315); // Satthu — Cam đỏ
  static const Color lesson19Color = Color(0xFFBF360C); // Imperfect — Nâu đỏ
  static const Color lesson20Color = Color(0xFF4E342E); // Compounds — Nâu
  static const Color lesson21Color = Color(0xFF37474F); // Indecl. — Xám xanh
  static const Color lesson22Color = Color(0xFF455A64); // Taddhita — Xám
  static const Color lesson23Color = Color(0xFF546E7A); // Kitaka — Xám nhạt
  static const Color lesson24Color = Color(0xFF78909C); // Sandhi — Bạc
  static const Color lesson25Color = Color(0xFF5D4037); // Cases — Nâu
  static const Color lesson26Color = Color(0xFF4527A0); // Passive — Indigo
}
