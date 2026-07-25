import 'package:flutter_test/flutter_test.dart';

// ✅ SỬA: package name đúng
import 'package:pali_course/data/morphology/pali_enums.dart';
import 'package:pali_course/data/morphology/paradigms/masc_a_paradigm.dart';
import 'package:pali_course/data/morphology/pali_paradigm_engine.dart';
import 'package:pali_course/data/models/pali_vocab_model.dart';
import 'package:pali_course/data/lessons/lesson_01_data.dart';

// Toàn bộ test body giữ nguyên — không sửa gì khác
void main() {
  group('MascAParadigm: nara', () {
    test('nom_sg = naro', () =>
        expect(MascAParadigm.generate('nara', PaliCase.nom, PaliNumber.singular), 'naro'));
    test('nom_pl = narā', () =>
        expect(MascAParadigm.generate('nara', PaliCase.nom, PaliNumber.plural), 'narā'));
    test('acc_sg = naraṃ', () =>
        expect(MascAParadigm.generate('nara', PaliCase.acc, PaliNumber.singular), 'naraṃ'));
    test('acc_pl = nare', () =>
        expect(MascAParadigm.generate('nara', PaliCase.acc, PaliNumber.plural), 'nare'));
    test('ins_sg = narena', () =>
        expect(MascAParadigm.generate('nara', PaliCase.ins, PaliNumber.singular), 'narena'));
    test('dat_sg = narassa', () =>
        expect(MascAParadigm.generate('nara', PaliCase.dat, PaliNumber.singular), 'narassa'));
    test('gen_pl = narānaṃ', () =>
        expect(MascAParadigm.generate('nara', PaliCase.gen, PaliNumber.plural), 'narānaṃ'));
    test('loc_sg = nare', () =>
        expect(MascAParadigm.generate('nara', PaliCase.loc, PaliNumber.singular), 'nare'));
    test('voc_sg = nara', () =>
        expect(MascAParadigm.generate('nara', PaliCase.voc, PaliNumber.singular), 'nara'));
    test('voc_pl = narā', () =>
        expect(MascAParadigm.generate('nara', PaliCase.voc, PaliNumber.plural), 'narā'));
  });

  group('MascAParadigm: Buddha', () {
    test('nom_sg = Buddho', () =>
        expect(MascAParadigm.generate('Buddha', PaliCase.nom, PaliNumber.singular), 'Buddho'));
    test('acc_sg = Buddhaṃ', () =>
        expect(MascAParadigm.generate('Buddha', PaliCase.acc, PaliNumber.singular), 'Buddhaṃ'));
    test('nom_pl = Buddhā', () =>
        expect(MascAParadigm.generate('Buddha', PaliCase.nom, PaliNumber.plural), 'Buddhā'));
    test('acc_pl = Buddhe', () =>
        expect(MascAParadigm.generate('Buddha', PaliCase.acc, PaliNumber.plural), 'Buddhe'));
  });

  group('MascAParadigm: gāma', () {
    test('nom_sg = gāmo', () =>
        expect(MascAParadigm.generate('gāma', PaliCase.nom, PaliNumber.singular), 'gāmo'));
    test('acc_sg = gāmaṃ', () =>
        expect(MascAParadigm.generate('gāma', PaliCase.acc, PaliNumber.singular), 'gāmaṃ'));
    test('nom_pl = gāmā', () =>
        expect(MascAParadigm.generate('gāma', PaliCase.nom, PaliNumber.plural), 'gāmā'));
    test('acc_pl = gāme', () =>
        expect(MascAParadigm.generate('gāma', PaliCase.acc, PaliNumber.plural), 'gāme'));
  });

  group('MascAParadigm: generateFullTable', () {
    test('nara full table has 16 entries', () {
      final table = MascAParadigm.generateFullTable('nara');
      expect(table.length, 16);
    });
    test('nara full table contains all cases', () {
      final table = MascAParadigm.generateFullTable('nara');
      for (final c in PaliCase.values) {
        for (final n in PaliNumber.values) {
          expect(table.containsKey('${c.name}_${n.name}'), true,
              reason: 'Missing: ${c.name}_${n.name}');
        }
      }
    });
  });

  group('PaliParadigmEngine', () {
    test('masc_a: nara nom_sg = naro', () =>
        expect(PaliParadigmEngine.generate('masc_a', 'nara', PaliCase.nom, PaliNumber.singular), 'naro'));
    test('masc_a: Dhamma acc_sg = Dhammaṃ', () =>
        expect(PaliParadigmEngine.generate('masc_a', 'Dhamma', PaliCase.acc, PaliNumber.singular), 'Dhammaṃ'));
    test('unknown paradigmId falls back to root', () =>
        expect(PaliParadigmEngine.generate('unknown', 'test', PaliCase.nom, PaliNumber.singular), 'test'));
  });

  group('GrammarProgressModel', () {
    test('masteryScore = 0.0 khi chưa có attempt', () {
      final m = GrammarProgressModel(userId: 'u1', grammarKey: 'nom_singular');
      expect(m.masteryScore, 0.0);
    });
    test('masteryScore = 1.0 sau 5 lần đúng', () {
      final m = GrammarProgressModel(userId: 'u1', grammarKey: 'acc_singular');
      for (int i = 0; i < 5; i++) m.recordAttempt(true);
      expect(m.masteryScore, 1.0);
    });
    test('isWeak = true sau 3 lần sai', () {
      final m = GrammarProgressModel(userId: 'u1', grammarKey: 'acc_plural');
      m.recordAttempt(false);
      m.recordAttempt(false);
      m.recordAttempt(false);
      expect(m.isWeak, true);
    });
    test('isWeak = false khi attemptCount < 3', () {
      final m = GrammarProgressModel(userId: 'u1', grammarKey: 'dat_singular');
      m.recordAttempt(false);
      m.recordAttempt(false);
      expect(m.isWeak, false);
    });
    test('isMastered sau 5 lần đúng', () {
      final m = GrammarProgressModel(userId: 'u1', grammarKey: 'nom_plural');
      for (int i = 0; i < 5; i++) m.recordAttempt(true);
      expect(m.isMastered, true);
    });
    test('masteryScore tính đúng 3/5', () {
      final m = GrammarProgressModel(userId: 'u1', grammarKey: 'gen_singular');
      m.recordAttempt(true);
      m.recordAttempt(false);
      m.recordAttempt(true);
      m.recordAttempt(false);
      m.recordAttempt(true);
      expect(m.masteryScore, closeTo(0.6, 0.001));
    });
  });

  group('PaliVocabModel', () {
    final nara = PaliVocabModel(
      id: 'pv_L01_nara',
      root: 'nara',
      paradigmId: 'masc_a',
      wordVi: 'người đàn ông',
      wordEn: 'man',
      lessonId: 'lesson_01',
      pronunciation: 'NAH-rah',
    );
    test('getForm nom_sg = naro', () =>
        expect(nara.getForm(PaliCase.nom, PaliNumber.singular), 'naro'));
    test('getForm acc_pl = nare', () =>
        expect(nara.getForm(PaliCase.acc, PaliNumber.plural), 'nare'));
    test('nominativeSingular = naro', () =>
        expect(nara.nominativeSingular, 'naro'));
    test('isDueForReview = true khi nextReview = null', () =>
        expect(nara.isDueForReview, true));
  });

  group('Lesson 01 Data integrity', () {
    test('vocab list has 16 items', () =>
        expect(kLesson01Vocab.length, 16));
    test('all vocab have non-empty root', () {
      for (final v in kLesson01Vocab) {
        expect(v.root.isNotEmpty, true, reason: '${v.id} has empty root');
      }
    });
    test('all vocab have pronunciation', () {
      for (final v in kLesson01Vocab) {
        expect(v.pronunciation.isNotEmpty, true, reason: '${v.id} missing pronunciation');
      }
    });
    test('Day 1 has exactly 2 phases', () {
      expect(getLesson01Day1().phases.length, 2);
    });
    test('Day 1 phases: read_listen + mind_game', () {
      final phases = getLesson01Day1().phases;
      expect(phases[0].phaseTypeStr, 'read_listen');
      expect(phases[1].phaseTypeStr, 'mind_game');
    });
    test('Day 2 has exactly 6 phases', () {
      expect(getLesson01Day2().phases.length, 6);
    });
    test('Day 2 phases alternate quiz/mind_game', () {
      final types = getLesson01Day2().phases.map((p) => p.phaseTypeStr).toList();
      expect(types, [
        'listening_quiz', 'mind_game',
        'listening_quiz', 'mind_game',
        'listening_quiz', 'mind_game',
      ]);
    });
    test('Each quiz phase has exactly 3 questions', () {
      for (final phase in getLesson01Day2().phases) {
        if (phase.phaseTypeStr == 'listening_quiz') {
          expect(phase.questions?.length, 3, reason: '${phase.id} needs 3 questions');
        }
      }
    });
    test('correctIndex in range 0-3', () {
      for (final phase in getLesson01Day2().phases) {
        for (final q in phase.questions ?? []) {
          expect(q.correctIndex >= 0 && q.correctIndex <= 3, true,
              reason: '${q.id}: correctIndex out of range');
        }
      }
    });
    test('MindGame Vietnamese segments have answers', () {
      final viSegs = kLesson01MindGameSegments.where((s) => s.isVietnamese).toList();
      expect(viSegs.isNotEmpty, true);
      for (final seg in viSegs) {
        expect(seg.answer?.isNotEmpty, true,
            reason: '"${seg.text}" missing answer');
      }
    });
  });
}
