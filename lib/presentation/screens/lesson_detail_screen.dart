import 'package:flutter/material.dart';
import 'package:pali_course/pali_course.dart';
import 'day_navigator_screen.dart';

class LessonDetailScreen extends StatelessWidget {
  final LessonMeta lesson;

  const LessonDetailScreen({required this.lesson, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.paliBg,
      appBar: AppBar(
        backgroundColor: Color(lesson.colorValue),
        foregroundColor: Colors.white,
        title: Text(
          'Lesson ${lesson.lessonNumber}',
          style: const TextStyle(fontSize: 16),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Header
          _buildLessonHeader(),
          const SizedBox(height: 24),
          // CTA button to start lesson
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DayNavigatorScreen(lesson: lesson),
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(lesson.colorValue),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              icon: const Icon(Icons.play_circle_fill),
              label: const Text(
                'Bắt đầu bài học',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          
          // Show vocabulary hint
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey[200]!),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.menu_book, color: Color(lesson.colorValue)),
                    const SizedBox(width: 8),
                    const Text(
                      'Từ vựng & Ngữ pháp',
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
                  'Nhấn Bắt đầu bài học để xem chi tiết từ vựng và ngữ pháp của bài này.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLessonHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: Color(lesson.colorValue).withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color(lesson.colorValue)),
          ),
          child: Text(
            'LESSON ${lesson.lessonNumber}',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(lesson.colorValue),
              letterSpacing: 1,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          lesson.titleVi,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.paliInk,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          lesson.titleEn,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          lesson.description,
          style: const TextStyle(
            fontSize: 15,
            color: AppColors.paliInk,
            height: 1.4,
          ),
        ),
      ],
    );
  }
}
