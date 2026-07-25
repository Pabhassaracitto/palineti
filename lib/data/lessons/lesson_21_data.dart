import '../models/lesson_model.dart';

// =============================================================================
// PHẦN 5: HÀM TIỆN ÍCH — Trả về cả Day 1 + Day 2
// =============================================================================

LessonMeta getLesson21Meta() => const LessonMeta(
  id: 'lesson_21',
  lessonNumber: 21,
  titleVi: 'Avyaya: Tiền tố (Upasagga)',
  titleEn: 'Avyaya: Upasagga',
  iconEmoji: '🔄',
  colorValue: 0xFF4CAF50,
  description: 'Học về các từ không biến cách (Avyaya) và tiền tố (Upasagga).',
);

LessonDay getLesson21Day1() => LessonDay(
  id: 'lesson21_day1',
  dayNumber: 1,
  themeId: 'theme_21_indeclinables',
  titleVi: 'Ngày 1: Avyaya (Tiền tố)',
  phases: [],
);

LessonDay getLesson21Day2() => LessonDay(
  id: 'lesson21_day2',
  dayNumber: 2,
  themeId: 'theme_21_indeclinables',
  titleVi: 'Ngày 2: Avyaya (Tiền tố)',
  phases: [],
);

({LessonDay day1, LessonDay day2}) getLesson21Data() {
  return (day1: getLesson21Day1(), day2: getLesson21Day2());
}
