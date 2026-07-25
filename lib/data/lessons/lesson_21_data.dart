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

// Placeholder cho getLesson21Data nếu cần thiết
// ({LessonDay day1, LessonDay day2}) getLesson21Data() {
//   return (
//     day1: getLesson21Day1(),
//     day2: getLesson21Day2(),
//   );
// }
