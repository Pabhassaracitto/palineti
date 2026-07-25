import 'package:flutter/material.dart';
import 'package:pali_course/data/lessons/lesson_11_data.dart';
import 'package:pali_course/pali_course.dart';
import 'lesson_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Load all metadata from actual lessons
  static final _lessons = <LessonMeta>[
    getLesson05Meta(),
    getLesson06Meta(),
    getLesson09Meta(),
    getLesson10Meta(),
    getLesson12Meta(),
    getLesson16Meta(),
    getLesson20Meta(),
    // Lesson 1 - currently doesn't have getLesson01Meta in pali_course.dart so we keep the hardcoded meta
    const LessonMeta(
      id: 'theme_01_masc_a_nom_acc',
      lessonNumber: 1,
      titleVi: 'Danh từ Nam "-a": CC & ĐC',
      titleEn: 'Masculine "-a": Nominative & Accusative',
      iconEmoji: '📗',
      colorValue: 0xFFB8860B,
      description: 'Học 2 biến cách đầu tiên + Thì Hiện tại Ngôi 3',
    ),
    getLesson02Meta(),
    getLesson03Meta(),
    getLesson04Meta(),
    getLesson07Meta(),
    getLesson08Meta(),
    getLesson11Meta(),
    getLesson13Meta(),
    getLesson14Meta(),
    getLesson15Meta(),
    getLesson17Meta(),
    getLesson18Meta(),
    getLesson19Meta(),
  ];

  @override
  Widget build(BuildContext context) {
    // Sort just to be safe
    final sortedLessons = List<LessonMeta>.from(_lessons)
      ..sort((a, b) => a.lessonNumber.compareTo(b.lessonNumber));

    return Scaffold(
      backgroundColor: AppColors.paliBg,
      appBar: AppBar(
        backgroundColor: AppColors.paliGold,
        foregroundColor: Colors.white,
        title: const Text(
          'Pāḷi Course — 26 Lessons',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Header
          _buildHeader(),
          const SizedBox(height: 16),

          // Lesson cards
          ...sortedLessons.map((lesson) => _buildLessonCard(context, lesson)),

          // Placeholder cho lessons chưa có data
          _buildComingSoonCard(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.paliGold.withOpacity(0.2),
            AppColors.paliSaffron.withOpacity(0.2),
          ],
        ),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.paliGold),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                '🙏',
                style: TextStyle(fontSize: 32),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'An Elementary Pāḷi Course',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.paliInk,
                      ),
                    ),
                    Text(
                      'Nārada Mahāthera',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            'Framework: VipLang Mind Game Method',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLessonCard(BuildContext context, LessonMeta lesson) {
    // Treat all lessons initialized here as having data
    final hasData = true;
    final color = Color(lesson.colorValue);

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: color.withOpacity(0.3)),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: hasData
            ? () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LessonDetailScreen(lesson: lesson),
                  ),
                )
            : null,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // Icon
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    lesson.iconEmoji,
                    style: const TextStyle(fontSize: 28),
                  ),
                ),
              ),
              const SizedBox(width: 16),

              // Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            'Lesson ${lesson.lessonNumber}',
                            style: const TextStyle(
                              fontSize: 11,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        if (hasData)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.paliSaffron.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color: AppColors.paliSaffron,
                              ),
                            ),
                            child: const Text(
                              'DATA READY',
                              style: TextStyle(
                                fontSize: 9,
                                color: AppColors.paliSaffron,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      lesson.titleVi,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: AppColors.paliInk,
                      ),
                    ),
                    Text(
                      lesson.titleEn,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      lesson.description,
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey[500],
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),

              // Arrow
              Icon(
                hasData ? Icons.arrow_forward_ios : Icons.lock_outline,
                size: 16,
                color: hasData ? color : Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildComingSoonCard() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Row(
        children: [
          Icon(Icons.pending_outlined, color: Colors.grey[600]),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Other Lessons',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
                Text(
                  'Coming soon — data structure ready',
                  style: TextStyle(
                    fontSize: 12,
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
}
