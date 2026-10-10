import 'package:flutter_test/flutter_test.dart';
import 'package:palineti/pali_course.dart';

// Guard rails around lib/data/lesson_vocab_index.dart.
//
// The 892+ kLessonNNVocab entries used to be dead data -- nothing outside
// lib/data referenced them, so there was no definition of "what has this
// lesson taught" and therefore nothing to check exercise vocabulary against
// (see tools/audit_vocab_coverage.py).  These tests keep the registry honest
// now that the UI reads it.
void main() {
  group('vocabForLesson', () {
    test('every lesson 1-26 declares vocabulary', () {
      for (var n = 1; n <= 26; n++) {
        expect(vocabForLesson(n).isNotEmpty, isTrue,
            reason: 'lesson $n declares no vocabulary');
      }
    });

    test('out-of-range lessons return an empty list', () {
      expect(vocabForLesson(0), isEmpty);
      expect(vocabForLesson(27), isEmpty);
      expect(vocabForLesson(-1), isEmpty);
    });

    test('vocabulary ids are unique across the whole course', () {
      final seen = <String>{};
      for (var n = 1; n <= 26; n++) {
        for (final v in vocabForLesson(n)) {
          expect(seen.add(v.id), isTrue,
              reason: 'duplicate vocabulary id ${v.id}');
        }
      }
      expect(seen.length, greaterThan(890));
    });

    test('every entry points back at the lesson that declares it', () {
      for (var n = 1; n <= 26; n++) {
        final expected = 'lesson_' + n.toString().padLeft(2, '0');
        for (final v in vocabForLesson(n)) {
          expect(v.lessonId, expected,
              reason: '${v.id} is declared by lesson $n');
        }
      }
    });

    test('vocabCountForLesson agrees with vocabForLesson', () {
      for (var n = 1; n <= 26; n++) {
        expect(vocabCountForLesson(n), vocabForLesson(n).length);
      }
    });

    test('every entry carries a meaning', () {
      for (var n = 1; n <= 26; n++) {
        for (final v in vocabForLesson(n)) {
          expect(v.wordVi.isNotEmpty || v.wordEn.isNotEmpty, isTrue,
              reason: '${v.id} has no meaning');
        }
      }
    });
  });
}
