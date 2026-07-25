import 'package:flutter/material.dart';
import 'package:palineti/pali_course.dart';

class VocabDetailScreen extends StatelessWidget {
  final PaliVocabModel vocab;

  const VocabDetailScreen({required this.vocab, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.paliBg,
      appBar: AppBar(
        backgroundColor: AppColors.paliGold,
        foregroundColor: Colors.white,
        title: Text(
          vocab.nominativeSingular,
          style: const TextStyle(fontSize: 18),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Main info
          _buildMainInfo(),
          const SizedBox(height: 24),

          // Declension table
          _buildSectionTitle('📚 Bảng Biến Cách Đầy Đủ'),
          const SizedBox(height: 8),
          DeclensionTableWidget(
            root: vocab.root,
            paradigmId: vocab.paradigmId,
          ),
          const SizedBox(height: 24),

          // Examples
          if (vocab.examplePali != null) ...[
            _buildSectionTitle('📖 Ví Dụ Minh Họa'),
            const SizedBox(height: 8),
            _buildExampleCard(),
          ],
        ],
      ),
    );
  }

  Widget _buildMainInfo() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.paliGold.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Root + Paradigm
          Row(
            children: [
              Text(
                vocab.root,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.paliInk,
                ),
              ),
              const SizedBox(width: 12),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.paliGold.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  vocab.paradigmId,
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.paliGold,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),

          // Pronunciation
          Text(
            '/${vocab.pronunciation}/',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 12),
          const Divider(),
          const SizedBox(height: 12),

          // Meaning
          Text(
            vocab.wordVi,
            style: const TextStyle(
              fontSize: 18,
              color: AppColors.paliSaffron,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            vocab.wordEn,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.paliGold.withOpacity(0.15),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.paliGold.withOpacity(0.4),
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: AppColors.paliInk,
        ),
      ),
    );
  }

  Widget _buildExampleCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            vocab.examplePali!,
            style: const TextStyle(
              fontSize: 15,
              color: AppColors.paliInk,
              fontStyle: FontStyle.italic,
              height: 1.5,
            ),
          ),
          if (vocab.exampleVi != null) ...[
            const SizedBox(height: 8),
            Text(
              vocab.exampleVi!,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
                height: 1.5,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
