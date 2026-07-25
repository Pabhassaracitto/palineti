// =============================================================================
// LESSON 23 DATA
// =============================================================================

import '../models/lesson_model.dart';

LessonMeta getLesson23Meta() => const LessonMeta(
  id: 'lesson_23',
  lessonNumber: 23,
  titleVi: 'Động danh từ (Kitaka)',
  titleEn: 'Động danh từ (Kitaka)',
  iconEmoji: '⚙️',
  colorValue: 0xFF546E7A,
  description: 'Học về cách tạo động danh từ Kitaka.',
);

LessonDay getLesson23Day1() => LessonDay(
  id: 'lesson23_day1',
  dayNumber: 1,
  themeId: 'theme_23_verbal_deriv',
  titleVi: 'Ngày 1: Động danh từ',
  phases: [],
);

LessonDay getLesson23Day2() => LessonDay(
  id: 'lesson23_day2',
  dayNumber: 2,
  themeId: 'theme_23_verbal_deriv',
  titleVi: 'Ngày 2: Động danh từ',
  phases: [],
);
