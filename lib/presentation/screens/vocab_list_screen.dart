import 'package:flutter/material.dart';
import 'package:palineti/l10n/generated/app_localizations.dart';
import 'package:palineti/pali_course.dart';

import '../widgets/vocab_card_widget.dart';
import 'vocab_detail_screen.dart';

/// Danh sách đầy đủ từ vựng của một bài, lấy từ `kLessonNNVocab`.
///
/// Đây là màn hình đầu tiên đọc 892 mục `kLessonNNVocab` — trước đây chúng
/// là dữ liệu chết (xem `lib/data/lesson_vocab_index.dart`). Chạm vào một thẻ
/// để mở [VocabDetailScreen] (bảng biến cách + ví dụ).
class VocabListScreen extends StatelessWidget {
  final LessonMeta lesson;

  const VocabListScreen({required this.lesson, super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final vocab = vocabForLesson(lesson.lessonNumber);

    return Scaffold(
      backgroundColor: AppColors.paliBg,
      appBar: AppBar(
        backgroundColor: Color(lesson.colorValue),
        foregroundColor: Colors.white,
        title: Text(
          l10n.lessonLabel(lesson.lessonNumber),
          style: const TextStyle(fontSize: 16),
        ),
      ),
      body: vocab.isEmpty
          ? Center(
              child: Text(
                l10n.noContent,
                style: TextStyle(fontSize: 15, color: Colors.grey[600]),
              ),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context, vocab.length),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
                    itemCount: vocab.length,
                    itemBuilder: (context, index) {
                      final item = vocab[index];
                      return VocabCardWidget(
                        vocab: item,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => VocabDetailScreen(vocab: item),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }

  Widget _buildHeader(BuildContext context, int count) {
    final l10n = AppLocalizations.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
      ),
      child: Row(
        children: [
          Icon(Icons.menu_book, color: Color(lesson.colorValue)),
          const SizedBox(width: 8),
          Text(
            l10n.importantVocabulary,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.paliInk,
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            decoration: BoxDecoration(
              color: Color(lesson.colorValue).withOpacity(0.12),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              '$count',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color(lesson.colorValue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
