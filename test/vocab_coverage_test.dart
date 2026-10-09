import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:palineti/l10n/generated/app_localizations.dart';
import 'package:palineti/pali_course.dart';
import 'package:palineti/presentation/screens/vocab_list_screen.dart';

Future<void> _loadSystemFontsIfAvailable() async {
  final regular = File('/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf');
  final bold = File('/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf');
  if (regular.existsSync()) {
    final regBytes = regular.readAsBytesSync();
    final boldBytes = bold.existsSync() ? bold.readAsBytesSync() : null;
    for (final family in ['Roboto', 'Ahem']) {
      final loader = FontLoader(family)
        ..addFont(Future.value(ByteData.view(regBytes.buffer)));
      if (boldBytes != null) {
        loader.addFont(Future.value(ByteData.view(boldBytes.buffer)));
      }
      await loader.load();
    }
  }

  final flutterRoot = Platform.environment['FLUTTER_ROOT'];
  if (flutterRoot != null) {
    final iconFile = File(
      '$flutterRoot/bin/cache/artifacts/material_fonts/MaterialIcons-Regular.otf',
    );
    if (iconFile.existsSync()) {
      final bytes = iconFile.readAsBytesSync();
      final loader = FontLoader('MaterialIcons')
        ..addFont(Future.value(ByteData.view(bytes.buffer)));
      await loader.load();
    }
  }
}

Future<void> _verifyAndCaptureVocabScreen(
  WidgetTester tester, {
  required LessonMeta lesson,
  required int expectedCount,
  required String screenshotPath,
}) async {
  final repaintKey = GlobalKey();

  await tester.runAsync(() async {
    await _loadSystemFontsIfAvailable();
  });

  await tester.binding.setSurfaceSize(const Size(460, 2850));
  addTearDown(() => tester.binding.setSurfaceSize(null));

  await tester.pumpWidget(
    RepaintBoundary(
      key: repaintKey,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: const Locale('vi'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: VocabListScreen(lesson: lesson),
      ),
    ),
  );
  await tester.pumpAndSettle();

  expect(find.text('Bài ${lesson.lessonNumber}'), findsOneWidget);
  expect(find.text('📖 Từ Vựng Quan Trọng'), findsOneWidget);
  expect(find.text('$expectedCount'), findsOneWidget);

  if (Platform.environment['CAPTURE_VOCAB_SCREENSHOTS'] == '1') {
    await tester.runAsync(() async {
      final boundary = repaintKey.currentContext?.findRenderObject()
          as RenderRepaintBoundary?;
      if (boundary != null) {
        final image = await boundary.toImage(pixelRatio: 1.5);
        final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
        if (byteData != null) {
          File(screenshotPath).writeAsBytesSync(byteData.buffer.asUint8List());
        }
      }
    });
  }

  final items = vocabForLesson(lesson.lessonNumber);
  expect(items.length, expectedCount);

  for (final item in items) {
    await tester.scrollUntilVisible(
      find.text(item.nominativeSingular),
      200,
      scrollable: find.descendant(
        of: find.byType(ListView),
        matching: find.byType(Scrollable),
      ),
    );
    expect(find.text(item.nominativeSingular), findsWidgets);
  }
}

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
        final expected = 'lesson_${n.toString().padLeft(2, '0')}';
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

  group('VocabListScreen UI verification', () {
    testWidgets('Lesson 13 displays all 17 vocabulary entries', (tester) async {
      await _verifyAndCaptureVocabScreen(
        tester,
        lesson: getLesson13Meta(),
        expectedCount: 17,
        screenshotPath: '/tmp/vocab_lesson_13.png',
      );
    });

    testWidgets('Lesson 19 displays all 18 vocabulary entries', (tester) async {
      await _verifyAndCaptureVocabScreen(
        tester,
        lesson: getLesson19Meta(),
        expectedCount: 18,
        screenshotPath: '/tmp/vocab_lesson_19.png',
      );
    });
  });
}
