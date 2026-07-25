// =============================================================================
// LESSON 24 DATA
// =============================================================================

import '../models/lesson_model.dart';

LessonMeta getLesson24Meta() => const LessonMeta(
  id: 'lesson_24',
  lessonNumber: 24,
  titleVi: 'Luật Hài Âm (Sandhi)',
  titleEn: 'Luật Hài Âm (Sandhi)',
  iconEmoji: '🛡️',
  colorValue: 0xFF78909C,
  description: 'Học về các quy tắc Sandhi trong Pāḷi.',
);

LessonDay getLesson24Day1() => LessonDay(
  id: 'lesson24_day1',
  dayNumber: 1,
  themeId: 'theme_24_sandhi',
  titleVi: 'Ngày 1: Sandhi',
  phases: [],
);

LessonDay getLesson24Day2() => LessonDay(
  id: 'lesson24_day2',
  dayNumber: 2,
  themeId: 'theme_24_sandhi',
  titleVi: 'Ngày 2: Sandhi',
  phases: [],
);
