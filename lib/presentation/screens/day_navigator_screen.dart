import 'package:flutter/material.dart';
import 'package:palineti/l10n/generated/app_localizations.dart';
import 'package:palineti/pali_course.dart';

import '../localization/learning_content_localizations.dart';
import 'phase_navigator_screen.dart';

class DayNavigatorScreen extends StatelessWidget {
  final LessonMeta lesson;

  const DayNavigatorScreen({required this.lesson, super.key});

  LessonDay _getDay(int lessonNum, int dayNum) {
    if (lessonNum == 1)
      return dayNum == 1 ? getLesson01Day1() : getLesson01Day2();
    if (lessonNum == 2)
      return dayNum == 1 ? getLesson02Day1() : getLesson02Day2();
    if (lessonNum == 3)
      return dayNum == 1 ? getLesson03Day1() : getLesson03Day2();
    if (lessonNum == 4)
      return dayNum == 1 ? getLesson04Day1() : getLesson04Day2();
    if (lessonNum == 5)
      return dayNum == 1 ? getLesson05Day1() : getLesson05Day2();
    if (lessonNum == 6)
      return dayNum == 1 ? getLesson06Day1() : getLesson06Day2();
    if (lessonNum == 7)
      return dayNum == 1 ? getLesson07Day1() : getLesson07Day2();
    if (lessonNum == 8)
      return dayNum == 1 ? getLesson08Day1() : getLesson08Day2();
    if (lessonNum == 9)
      return dayNum == 1 ? getLesson09Day1() : getLesson09Day2();
    if (lessonNum == 10)
      return dayNum == 1 ? getLesson10Day1() : getLesson10Day2();
    if (lessonNum == 11)
      return dayNum == 1 ? getLesson11Day1() : getLesson11Day2();
    if (lessonNum == 12)
      return dayNum == 1 ? getLesson12Day1() : getLesson12Day2();
    if (lessonNum == 13)
      return dayNum == 1 ? getLesson13Day1() : getLesson13Day2();
    if (lessonNum == 14)
      return dayNum == 1 ? getLesson14Day1() : getLesson14Day2();
    if (lessonNum == 15)
      return dayNum == 1 ? getLesson15Day1() : getLesson15Day2();
    if (lessonNum == 16)
      return dayNum == 1 ? getLesson16Day1() : getLesson16Day2();
    if (lessonNum == 17)
      return dayNum == 1 ? getLesson17Day1() : getLesson17Day2();
    if (lessonNum == 18)
      return dayNum == 1 ? getLesson18Day1() : getLesson18Day2();
    if (lessonNum == 19)
      return dayNum == 1 ? getLesson19Day1() : getLesson19Day2();
    if (lessonNum == 20)
      return dayNum == 1 ? getLesson20Day1() : getLesson20Day2();
    if (lessonNum == 21)
      return dayNum == 1 ? getLesson21Day1() : getLesson21Day2();
    if (lessonNum == 22)
      return dayNum == 1 ? getLesson22Day1() : getLesson22Day2();
    if (lessonNum == 23)
      return dayNum == 1 ? getLesson23Day1() : getLesson23Day2();
    if (lessonNum == 24)
      return dayNum == 1 ? getLesson24Day1() : getLesson24Day2();
    if (lessonNum == 25)
      return dayNum == 1 ? getLesson25Day1() : getLesson25Day2();
    if (lessonNum == 26)
      return dayNum == 1 ? getLesson26Day1() : getLesson26Day2();

    // Fallback if not found yet
    return getLesson01Day1();
  }

  @override
  Widget build(BuildContext context) {
    final day1 = _getDay(lesson.lessonNumber, 1);
    final day2 = _getDay(lesson.lessonNumber, 2);
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: AppColors.paliBg,
      appBar: AppBar(
        backgroundColor: Color(lesson.colorValue),
        foregroundColor: Colors.white,
        title: Text(
          l10n.selectStudyDayTitle(lesson.lessonNumber),
          style: const TextStyle(fontSize: 16),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildDayCard(context, day1, 1),
          const SizedBox(height: 16),
          _buildDayCard(context, day2, 2),
        ],
      ),
    );
  }

  Widget _buildDayCard(BuildContext context, LessonDay day, int dayNum) {
    final l10n = AppLocalizations.of(context);
    final color = dayNum == 1 ? AppColors.paliGold : AppColors.paliSaffron;

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: color.withOpacity(0.3), width: 2),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) =>
                PhaseNavigatorScreen(lessonDay: day, lessonMeta: lesson),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [color.withOpacity(0.1), color.withOpacity(0.05)],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      l10n.dayLabel(dayNum),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: color),
                    ),
                    child: Text(
                      '${day.phases.length}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: color,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Title
              Text(
                day.localizedTitle(context),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.paliInk,
                ),
              ),
              const SizedBox(height: 12),

              // Phases preview
              Wrap(
                spacing: 6,
                runSpacing: 6,
                children: day.phases.map((phase) {
                  return _buildPhaseChip(context, phase);
                }).toList(),
              ),
              const SizedBox(height: 12),

              // CTA
              Row(
                children: [
                  Icon(Icons.play_circle_outline, color: color, size: 20),
                  const SizedBox(width: 6),
                  Text(
                    l10n.startStudying,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: color,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPhaseChip(BuildContext context, LessonPhase phase) {
    final info = _getPhaseInfo(context, phase.phaseTypeStr);
    final icon = info[0] as IconData;
    final label = info[1] as String;
    final color = info[2] as Color;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: color.withOpacity(0.5)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12, color: color),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  List<dynamic> _getPhaseInfo(BuildContext context, String type) {
    final l10n = AppLocalizations.of(context);
    switch (type) {
      case 'read_listen':
        return [Icons.menu_book, l10n.readPhase, AppColors.paliJade];
      case 'mind_game':
        return [Icons.psychology, l10n.mindGamePhase, AppColors.paliSaffron];
      case 'listening_quiz':
        return [Icons.quiz, l10n.quizPhase, AppColors.paliMaroon];
      default:
        return [Icons.circle, type, Colors.grey];
    }
  }
}
