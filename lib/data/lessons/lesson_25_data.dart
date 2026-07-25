// =============================================================================
// LESSON 25 DATA
// =============================================================================

import '../models/lesson_model.dart';

LessonMeta getLesson25Meta() => const LessonMeta(
      id: 'lesson_25',
      lessonNumber: 25,
      titleVi: 'Cách dùng các Biến cách',
      titleEn: 'Cách dùng các Biến cách',
      iconEmoji: '📔',
      colorValue: 0xFF5D4037,
      description: 'Học về cách dùng chính xác các biến cách trong Pāḷi.',
    );

LessonDay getLesson25Day1() => LessonDay(
      id: 'lesson25_day1',
      dayNumber: 1,
      themeId: 'theme_25_cases_usage',
      titleVi: 'Ngày 1: Biến cách',
      phases: [],
    );

LessonDay getLesson25Day2() => LessonDay(
      id: 'lesson25_day2',
      dayNumber: 2,
      themeId: 'theme_25_cases_usage',
      titleVi: 'Ngày 2: Biến cách',
      phases: [],
    );
