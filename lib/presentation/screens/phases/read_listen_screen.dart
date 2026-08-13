import 'package:flutter/material.dart';
import 'package:palineti/l10n/generated/app_localizations.dart';
import 'package:palineti/pali_course.dart';

import '../../localization/learning_content_localizations.dart';

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
    final l10n = AppLocalizations.of(context);
    final title = phase.localizedTitle(context);
    final content = phase.localizedContent(context);

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // Title
                if (title != null) ...[
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.paliInk,
                    ),
                  ),
                  const SizedBox(height: 16),
                ],

                // Localized learning content
                if (content != null) ...[
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
                      content,
                      style: const TextStyle(
                        fontSize: 14,
                        height: 1.6,
                        color: AppColors.paliInk,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],

                // FAB Vocab
                if (phase.fabVocab != null && phase.fabVocab!.isNotEmpty) ...[
                  _buildFabSection(
                    l10n.importantVocabulary,
                    phase.fabVocab!
                        .map((item) => _buildVocabItem(context, item))
                        .toList(),
                  ),
                  const SizedBox(height: 16),
                ],

                // FAB Phrases
                if (phase.fabPhrases != null &&
                    phase.fabPhrases!.isNotEmpty) ...[
                  _buildFabSection(
                    l10n.importantStructures,
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
      ),
    );
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

  Widget _buildVocabItem(BuildContext context, FabVocabItem item) {
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
                        text: item.localizedWord(context),
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
                  item.localizedSecondaryWord(context),
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
              style: const TextStyle(fontSize: 10, color: AppColors.paliGold),
            ),
          ),
        ],
      ),
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
            style: TextStyle(fontSize: 12, color: Colors.grey[700]),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context).continueAction,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.arrow_forward, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
