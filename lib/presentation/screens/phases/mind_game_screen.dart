// packages/pali_course/example/lib/screens/phases/mind_game_screen.dart
import 'package:flutter/material.dart';
import 'package:pali_course/pali_course.dart';

class MindGameScreen extends StatefulWidget {
  final LessonPhase phase;
  final VoidCallback onNext;

  const MindGameScreen({
    required this.phase,
    required this.onNext,
    super.key,
  });

  @override
  State<MindGameScreen> createState() => _MindGameScreenState();
}

class _MindGameScreenState extends State<MindGameScreen> {
  final Set<int> _revealedIndices = {};
  bool _allRevealed = false;

  void _toggleSegment(int index) {
    setState(() {
      if (_revealedIndices.contains(index)) {
        _revealedIndices.remove(index);
      } else {
        _revealedIndices.add(index);
      }
      _checkAllRevealed();
    });
  }

  void _revealAll() {
    setState(() {
      final segments = widget.phase.mixedSegments ?? [];
      for (int i = 0; i < segments.length; i++) {
        if (segments[i].isVietnamese) {
          _revealedIndices.add(i);
        }
      }
      _checkAllRevealed();
    });
  }

  void _checkAllRevealed() {
    final segments = widget.phase.mixedSegments ?? [];
    final viSegmentsCount = segments.where((s) => s.isVietnamese).length;
    _allRevealed = _revealedIndices.length >= viSegmentsCount;
  }

  @override
  Widget build(BuildContext context) {
    final segments = widget.phase.mixedSegments ?? [];

    if (segments.isEmpty) {
      return const Center(child: Text('No content'));
    }

    return SafeArea(
      // ← THÊM SafeArea
      child: Column(
        children: [
          // Instructions
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.paliSaffron.withOpacity(0.1),
              border: Border(
                bottom: BorderSide(
                  color: AppColors.paliSaffron.withOpacity(0.3),
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.psychology,
                      color: AppColors.paliSaffron,
                      size: 24,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Trò Chơi Tư Duy',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.paliInk,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  '💡 Nhấn vào đoạn tiếng Việt → Nói to tiếng Pāḷi → Nhấn lại để xem đáp án',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),

          // Content
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Wrap(
                  spacing: 4,
                  runSpacing: 4,
                  children: List.generate(segments.length, (index) {
                    final segment = segments[index];
                    return _buildSegmentChip(segment, index);
                  }),
                ),
              ],
            ),
          ),

          // Bottom actions
          _buildBottomActions(),
        ],
      ),
    );
  }

  Widget _buildSegmentChip(MixedSegment segment, int index) {
    final isRevealed = _revealedIndices.contains(index);

    if (!segment.isVietnamese) {
      // Pāḷi text — always visible
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Text(
          segment.text,
          style: const TextStyle(
            fontSize: 15,
            color: AppColors.paliInk,
            height: 1.5,
          ),
        ),
      );
    }

    // Vietnamese segment — tappable
    return GestureDetector(
      onTap: () => _toggleSegment(index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: isRevealed
              ? AppColors.paliSaffron.withOpacity(0.2)
              : AppColors.paliBg,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isRevealed
                ? AppColors.paliSaffron
                : AppColors.paliGold.withOpacity(0.5),
            width: 1.5,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Vietnamese text (always visible)
            Text(
              segment.text,
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey[700],
                fontStyle: FontStyle.italic,
              ),
            ),
            // Pāḷi answer (revealed)
            if (isRevealed && segment.answer != null) ...[
              const SizedBox(height: 4),
              Text(
                segment.answer!,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: AppColors.paliSaffron,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildBottomActions() {
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Progress indicator
          Row(
            children: [
              Expanded(
                child: LinearProgressIndicator(
                  value: (widget.phase.mixedSegments
                                  ?.where((s) => s.isVietnamese)
                                  .length ??
                              1) >
                          0
                      ? _revealedIndices.length /
                          (widget.phase.mixedSegments!
                              .where((s) => s.isVietnamese)
                              .length)
                      : 0,
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation<Color>(
                    _allRevealed ? Colors.green : AppColors.paliSaffron,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                '${_revealedIndices.length}/${widget.phase.mixedSegments?.where((s) => s.isVietnamese).length ?? 0}',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Buttons
          Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: _revealedIndices.isEmpty ? null : _revealAll,
                  icon: const Icon(Icons.visibility, size: 18),
                  label: const Text('Hiện tất cả'),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.paliGold,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  onPressed: _allRevealed ? widget.onNext : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        _allRevealed ? AppColors.paliSaffron : Colors.grey,
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
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward, size: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
