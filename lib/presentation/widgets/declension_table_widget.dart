import 'package:flutter/material.dart';
import 'package:palineti/l10n/generated/app_localizations.dart';
import '../../data/morphology/pali_enums.dart';
import '../../data/morphology/pali_paradigm_engine.dart';
import '../localization/pali_grammar_localizations.dart';
import 'morph_visual_widget.dart';

/// Bảng biến cách đầy đủ 8 hàng × 3 cột.
/// Highlight case đang học trong lesson hiện tại.
/// Dùng trong: FAB Sheet "Tủ sách", VocabDetailScreen
class DeclensionTableWidget extends StatelessWidget {
  final String root;
  final String paradigmId;
  final Set<PaliCase> highlightedCases; // Cases đang học trong lesson
  final Map<String, double> masteryMap; // grammarKey → masteryScore

  const DeclensionTableWidget({
    required this.root,
    required this.paradigmId,
    this.highlightedCases = const {},
    this.masteryMap = const {},
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        _buildHeader(l10n, root),
        const SizedBox(height: 8),
        // Table
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFFDAA520), width: 1),
          ),
          child: Column(
            children: [
              _buildTableHeader(l10n),
              const Divider(height: 1, color: Color(0xFFDAA520)),
              ...PaliCase.values.map((c) => _buildCaseRow(l10n, c)),
            ],
          ),
        ),
        const SizedBox(height: 8),
        _buildLegend(l10n),
      ],
    );
  }

  Widget _buildHeader(AppLocalizations l10n, String root) {
    return Row(
      children: [
        Text(
          '${l10n.declensionTableTitle} ',
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFF5D4037),
          ),
        ),
        Text(
          root,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: 'NotoSans',
            fontWeight: FontWeight.bold,
            color: Color(0xFF3E2723),
          ),
        ),
      ],
    );
  }

  Widget _buildTableHeader(AppLocalizations l10n) {
    return Container(
      color: const Color(0xFFF5E6C8),
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      child: Row(
        children: [
          _headerCell(l10n.declensionCase, flex: 2),
          _headerCell(l10n.singular, flex: 3),
          _headerCell(l10n.plural, flex: 3),
        ],
      ),
    );
  }

  Widget _headerCell(String text, {required int flex}) {
    return Expanded(
      flex: flex,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Color(0xFF5D4037),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildCaseRow(AppLocalizations l10n, PaliCase c) {
    final isHighlighted = highlightedCases.contains(c);
    final sgKey = '${c.name}_${PaliNumber.singular.name}';
    final plKey = '${c.name}_${PaliNumber.plural.name}';
    final sgForm = PaliParadigmEngine.generate(paradigmId, root, c, PaliNumber.singular);
    final plForm = PaliParadigmEngine.generate(paradigmId, root, c, PaliNumber.plural);
    final sgMastery = masteryMap[sgKey] ?? 0.0;
    final plMastery = masteryMap[plKey] ?? 0.0;

    return Container(
      color: isHighlighted
          ? const Color(0xFFFFF3E0) // Nền vàng nhạt khi highlight
          : Colors.transparent,
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      child: Row(
        children: [
          // Case abbreviation
          Expanded(
            flex: 2,
            child: Row(
              children: [
                if (isHighlighted)
                  const Icon(Icons.star, size: 12, color: Color(0xFFDAA520)),
                const SizedBox(width: 2),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      c.localizedAbbreviation(l10n),
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: isHighlighted
                            ? const Color(0xFFB8860B)
                            : const Color(0xFF5D4037),
                      ),
                    ),
                    Text(
                      c.localizedName(l10n),
                      style: const TextStyle(
                        fontSize: 9,
                        color: Color(0xFF8D6E63),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Singular form
          Expanded(
            flex: 3,
            child: Center(
              child: MorphVisualWidget.fromForm(
                root: root,
                fullForm: sgForm,
                masteryScore: sgMastery,
              ),
            ),
          ),
          // Plural form
          Expanded(
            flex: 3,
            child: Center(
              child: MorphVisualWidget.fromForm(
                root: root,
                fullForm: plForm,
                masteryScore: plMastery,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLegend(AppLocalizations l10n) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(width: 12, height: 12, color: const Color(0xFF8B0000)),
        const SizedBox(width: 4),
        Text(l10n.notMastered, style: const TextStyle(fontSize: 11)),
        const SizedBox(width: 12),
        Container(width: 12, height: 12, color: const Color(0xFFE65100)),
        const SizedBox(width: 4),
        Text(l10n.mastered, style: const TextStyle(fontSize: 11)),
        if (highlightedCases.isNotEmpty) ...[
          const SizedBox(width: 12),
          const Icon(Icons.star, size: 12, color: Color(0xFFDAA520)),
          const SizedBox(width: 4),
          Text(l10n.currentLesson, style: const TextStyle(fontSize: 11)),
        ],
      ],
    );
  }
}
