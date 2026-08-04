import 'package:flutter/material.dart';
import 'package:palineti/pali_course.dart';

class ReadListenScreen extends StatelessWidget {
  final LessonPhase phase;
  final VoidCallback onNext;

  const ReadListenScreen({
    required this.phase,
    required this.onNext,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              // Title
              if (phase.titleVi != null) ...[
                Text(
                  phase.titleVi!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.paliInk,
                  ),
                ),
                const SizedBox(height: 16),
              ],

              // Content VI
              if (phase.contentVi != null) ...[
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: AppColors.paliGold.withOpacity(0.3),
                    ),
                  ),
                  child: SelectableText(
                    phase.contentVi!,
                    style: const TextStyle(
                      fontSize: 14,
                      height: 1.6,
                      color: AppColors.paliInk,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
              ],

              // Paradigm Table (V0.2) - Render bảng biến cách tương tác nếu có paradigmId
              if (phase.paradigmId != null && phase.paradigmRoot != null) ...[
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF8E1),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: AppColors.paliGold.withOpacity(0.5),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.table_chart, size: 16, color: AppColors.paliGold),
                          const SizedBox(width: 6),
                          Text(
                            'Bảng biến cách: ${phase.paradigmRoot} (${phase.paradigmId})',
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: AppColors.paliInk,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      _buildParadigmTable(phase),

                    ],
                  ),
                ),
                const SizedBox(height: 16),
              ],

              // FAB Vocab
              if (phase.fabVocab != null && phase.fabVocab!.isNotEmpty) ...[
                _buildFabSection(
                  '📖 Từ Vựng Quan Trọng',
                  phase.fabVocab!.map((item) => _buildVocabItem(item)).toList(),
                ),
                const SizedBox(height: 16),
              ],

              // FAB Phrases
              if (phase.fabPhrases != null && phase.fabPhrases!.isNotEmpty) ...[
                _buildFabSection(
                  '💡 Cấu Trúc Cần Nhớ',
                  phase.fabPhrases!
                      .map((item) => _buildPhraseItem(item))
                      .toList(),
                ),
              ],
            ],
          ),
        ),

        // Bottom button
        _buildBottomButton(context),
      ],
    ));
  }

  Widget _buildFabSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: AppColors.paliGold.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: AppColors.paliInk,
            ),
          ),
        ),
        const SizedBox(height: 8),
        ...children,
      ],
    );
  }

  Widget _buildVocabItem(FabVocabItem item) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.paliBg,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.paliDivider),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: item.wordEn,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.paliInk,
                        ),
                      ),
                      TextSpan(
                        text: ' /${item.pronunciation}/',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  item.wordVi,
                  style: const TextStyle(
                    fontSize: 13,
                    color: AppColors.paliSaffron,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: AppColors.paliGold.withOpacity(0.2),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              item.partOfSpeech,
              style: const TextStyle(
                fontSize: 10,
                color: AppColors.paliGold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildParadigmTable(LessonPhase phase) {
    // Convert List<String> highlightedCases (vd: ['ins','dat']) sang Set<PaliCase>
    final Set<PaliCase> highlighted = {};
    if (phase.highlightedCases != null) {
      for (final c in phase.highlightedCases!) {
        final lower = c.toLowerCase();
        // Map các tên thông dụng về enum
        switch (lower) {
          case 'nom':
          case 'nominative':
          case 'cc':
          case 'chủ cách':
            highlighted.add(PaliCase.nom);
            break;
          case 'acc':
          case 'accusative':
          case 'đc':
          case 'đối cách':
            highlighted.add(PaliCase.acc);
            break;
          case 'ins':
          case 'instrumental':
          case 'sdc':
          case 'sử dụng cách':
            highlighted.add(PaliCase.ins);
            break;
          case 'dat':
          case 'dative':
          case 'cđc':
          case 'cách dữ':
            highlighted.add(PaliCase.dat);
            break;
          case 'abl':
          case 'ablative':
          case 'xxc':
          case 'xuất xứ cách':
            highlighted.add(PaliCase.abl);
            break;
          case 'gen':
          case 'genitive':
          case 'stc':
          case 'sở thuộc cách':
            highlighted.add(PaliCase.gen);
            break;
          case 'loc':
          case 'locative':
          case 'đsc':
          case 'định sở cách':
            highlighted.add(PaliCase.loc);
            break;
          case 'voc':
          case 'vocative':
          case 'hc':
          case 'hô cách':
            highlighted.add(PaliCase.voc);
            break;
        }
      }
    }

    return DeclensionTableWidget(
      root: phase.paradigmRoot!,
      paradigmId: phase.paradigmId!,
      highlightedCases: highlighted,
    );
  }

  Widget _buildPhraseItem(FabPhraseItem item) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.paliSaffron.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.phrase,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: AppColors.paliInk,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            item.meaning,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onNext,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.paliGold,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tiếp tục',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 8),
              Icon(Icons.arrow_forward, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
