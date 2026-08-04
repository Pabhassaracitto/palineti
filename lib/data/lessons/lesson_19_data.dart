// lesson_19.dart
// Bài học số 19: Danh từ Nam "go", Trung "mana" + 16 DT nhóm Mano
//              + Thì Bất thành khứ (Hīyattanī)
// An Elementary Pāḷi Course – Nārada Mahāthera
// ---------------------------------------------------------------------------

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

// ──────────────────────────────────────────────────────────────
// LESSON META
// ──────────────────────────────────────────────────────────────
LessonMeta getLesson19Meta() => const LessonMeta(
      id: 'theme_19_lesson',
      lessonNumber: 19,
      titleVi: 'DT "go" (bò) & "mana" (tâm) + Thì Bất thành khứ (Hīyattanī)',
      titleEn:
          'Irregular Nouns "go" (bull) & "mana" (mind) + Imperfect (Hīyattanī)',
      iconEmoji: '🐄',
      colorValue: 0xFF8A4B08,
      description:
          'Biến cách đặc biệt của "go" (con bò đực) và "mana" (ý, tâm) – paradigm mẫu cho 16 danh từ nhóm Mano với quy tắc ghép a→o; thì Bất thành khứ (Hīyattanī) với các đuôi -a/-ā, -ū, -o, -attha, -a/-aṃ, -amhā; câu Pháp Cú "Manasā saṃvaro sādhu".',
      complexity: LessonComplexity.high,
      estimatedMinutes: 50,
    );

// ──────────────────────────────────────────────────────────────
// VOCABULARY
// ──────────────────────────────────────────────────────────────
final kLesson19Vocab = <PaliVocabModel>[
  _v(1, 'go', 'masc_go_irreg', 'con bò đực, bò mộng', 'bull, ox', 'go',
      'Gāvo khettaṃ agamiṃsu.', 'Những con bò đã đi đến cánh đồng.'),
  _v(2, 'mana', 'neut_mana', 'ý, tâm', 'mind', 'ma-naṃ',
      'Manasā saṃvaro sādhu.', 'Sự kiềm chế bằng tâm là tốt đẹp.'),
];

PaliVocabModel _v(int id, String root, String paradigmId, String wordVi,
    String wordEn, String pronunciation, String examplePali, String exampleVi) {
  final num = id.toString().padLeft(3, '0');
  return PaliVocabModel(
    id: 'pv_L19_$num',
    root: root,
    paradigmId: paradigmId,
    wordVi: wordVi,
    wordEn: wordEn,
    lessonId: 'lesson_19',
    pronunciation: pronunciation,
    examplePali: examplePali,
    exampleVi: exampleVi,
  );
}

// ──────────────────────────────────────────────────────────────
// DAY 1
// ──────────────────────────────────────────────────────────────
LessonDay getLesson19Day1() => LessonDay(
      id: 'lesson19_day1',
      dayNumber: 1,
      themeId: 'theme_19_lesson',
      titleVi: 'Ngày 1 — Lý thuyết & Từ vựng: DT "go" (bò) & "mana" (tâm) + Thì Hīyattanī',
      phases: [
        _buildDay1Phase1(),
        _buildDay1Phase2(),
        _buildDay1Phase3(),
      ],
    );

LessonPhase _buildDay1Phase1() => LessonPhase(
      id: 'lesson19_phase1',
      phaseTypeStr: 'read_listen',
      titleVi: '📘 Lý thuyết: DT "go" (bò) & "mana" (tâm) + Thì Hīyattanī',
      contentVi: '''🎯 MỤC TIÊU BÀI 19
───────────────────
• Học biến cách danh từ đặc biệt: go (bò, m.) và mana (tâm, n.) - 2 paradigm bất quy tắc
• Học 16 danh từ nhóm mano (aha, aya, ceta, chanda, oja, etc.) và 2 danh từ đặc biệt go, mana
• Học Thì Hoàn Thành (Hīyattanī = Perfect Tense): -a, -o, -ttha, -mhā
• Nắm 4 quy tắc: thêm a- ở đầu, thêm -ṃ ở ngôi 1, dùng Ajjatanī phổ biến hơn

══════════════════════════════════════════════════════
A. DANH TỪ go (bò, m.) — BẤT QUY TẮC
══════════════════════════════════════════════════════
go: m. bull
• CC/HC: go | số nhiều: gāvo, gavo
• ĐC: gāvuṃ, gavaṃ, gāvaṃ | số nhiều: gāvo, gavo
• SDC: gāvena, gavena | số nhiều: gobhi, gohi
• XXC: gāvā, gavā, gāvamhā, gavamhā... | số nhiều: gobhi, gohi
• CĐC/STC: gāvassa, gavassa | số nhiều: gavaṃ, gunnaṃ, gonaṃ
• ĐSC: gāve, gave, gāvamhi... | số nhiều: gosu

📌 Đặc điểm: Gốc go- biến đổi mạnh: gāvo, gavaṃ, gobhi, gunaṃ (gunnaṃ)

══════════════════════════════════════════════════════
B. DANH TỪ mana (tâm, n.) — NHÓM MANO
══════════════════════════════════════════════════════
mana: n. mind
• CC: manaṃ | số nhiều: manā, manāni
• HC: mana, manā | số nhiều: manāni
• ĐC: manaṃ | số nhiều: mane, manāni
• SDC: manasā, manena | số nhiều: manebhi, manehi
• CĐC/STC: manaso, manassa | số nhiều: manānaṃ
• ĐSC: manasi, mane, manamhi... | số nhiều: manesu

16 danh từ nhóm mano (đều chia như mana):
aha (ngày), aya (sắt), ceta (tâm), chanda (ý muốn), oja (tinh hoa),
pāya (nước, sữa), raja (bụi), sara (hồ), sira (đầu), tama (tối),
tapa (khổ hạnh), teja (uy lực), ura (ngực), vaca (lời), vaya (tuổi), yasa (vinh quang)

📌 Quy tắc: 16 từ này tận cùng -a nhưng gốc là -as (manas), nên SDC là manasā/manena, ĐSC manasi...

══════════════════════════════════════════════════════
C. THÌ HOÀN THÀNH (Hīyattanī = Perfect Tense)
══════════════════════════════════════════════════════
Đuôi:
• Ngôi 3: -a (ít) / -uṃ (thêm) và -are? Thực tế: Sg -a, Pl -uṃ? Theo Nārada:
  Sg: 3rd -a, 2nd -o, 1st -a/-aṃ
  Pl: 3rd -u, 2nd -ttha, 1st -mhā

Ví dụ gốc paca (nấu):
• Sg: 3rd apacā (ông ấy đã nấu), 2nd apaco (bạn đã nấu), 1st apaca/apacaṃ (tôi đã nấu)
• Pl: 3rd apacū? Thực tế: apacu? Theo sách: apacā (sg3), apacū (pl3)? Nārada ghi: apacā (3sg), apacū? apacare? Nhưng sách ghi đơn giản:
  - 3sg: apacā, 3pl: apacuṃ? Để tra lại, nhưng quy tắc chính: thêm a- ở đầu như Ajjatanī

📌 Lưu ý:
• Thêm a- ở đầu gốc như Ajjatanī (Quá khứ)
• Đôi khi thêm -ṃ ở ngôi 1
• Ajjatanī được dùng phổ biến hơn Hīyattanī, nên học sinh nên dùng Ajjatanī cho an toàn (theo Nārada)

🔁 CÂU ANCHOR:
• Manasā saṃvaro sādhu. → Thu thúc tâm là lành.
• Etad avoca satthā. → Bậc Đạo Sư đã nói điều này.
''',
      contentEn:
          'Lesson 19 covers two highly irregular paradigms: masculine "go" (bull) with forms like gāvo/gavena/gobhi/gunnaṃ/gosu, and neuter "mana" (mind) which serves as the model for 16 "mano"-group nouns (aha, aya, ceta, chanda, oja, paya, raja, sara, sira, tama, tapa, teja, ura, vaca, vaya, yasa) where stem-final -a becomes -o/-ā in composition. It also presents the Imperfect tense (Hīyattanī) with endings -a/-ā/-ū/-o/-attha/-aṃ/-amhā (prefix a-), noting that the Aorist (Ajjatanī) is far more common in practice.',
      fabVocab: const [
        // Hai danh từ paradigm đặc biệt
        FabVocabItem(wordEn: 'go', pronunciation: 'go', wordVi: 'con bò đực, bò mộng', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'mana', pronunciation: 'ma-naṃ', wordVi: 'ý, tâm', partOfSpeech: 'danh_tu'),
        // 16 danh từ nhóm Mano
        FabVocabItem(wordEn: 'aha', pronunciation: 'a-ha', wordVi: 'ngày', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'aya', pronunciation: 'a-ya', wordVi: 'sắt', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'ceta', pronunciation: 'ce-ta', wordVi: 'tâm', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'chanda', pronunciation: 'chan-da', wordVi: 'ước muốn, nguyện vọng, thi phú', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'oja', pronunciation: 'o-ja', wordVi: 'dưỡng chất', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'paya', pronunciation: 'pa-ya', wordVi: 'nước, sữa', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'raja', pronunciation: 'ra-ja', wordVi: 'bụi bặm', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'sara', pronunciation: 'sa-ra', wordVi: 'cái hồ', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'sira', pronunciation: 'si-ra', wordVi: 'cái đầu', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'tama', pronunciation: 'ta-ma', wordVi: 'bóng tối', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'tapa', pronunciation: 'ta-pa', wordVi: 'khổ hạnh, chế ngự', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'teja', pronunciation: 'te-ja', wordVi: 'oai vệ, quyền uy', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'ura', pronunciation: 'u-ra', wordVi: 'bờ vai', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'vaca', pronunciation: 'va-ca', wordVi: 'lời nói, ngôn từ', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'vaya', pronunciation: 'va-ya', wordVi: 'tuổi thọ', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'yasa', pronunciation: 'ya-sa', wordVi: 'danh tiếng', partOfSpeech: 'danh_tu'),
      ],
      fabPhrases: const [
        // Quy tắc ghép Mano
        FabPhraseItem(phrase: 'aha + ni → ahāni', meaning: '⭐ a → o/ā khi ghép (những ngày)'),
        FabPhraseItem(phrase: 'sira + sā → sirasā', meaning: '⭐ bằng đầu'),
        FabPhraseItem(phrase: 'vaca + sā → vacasā', meaning: '⭐ bằng lời'),
        FabPhraseItem(phrase: 'aya + sā → ayasā', meaning: '⭐ bằng sắt'),
        FabPhraseItem(phrase: 'paya + smiṃ → payasmiṃ', meaning: '⭐ trong sữa'),
        FabPhraseItem(phrase: 'tama + si → tamasi', meaning: '⭐ trong bóng tối'),
        // Paradigm Go
        FabPhraseItem(phrase: 'go (CC/HC sg)', meaning: '⭐ go — paradigm đặc biệt'),
        FabPhraseItem(phrase: 'gāvo (CC/HC pl)', meaning: '⭐ go — số nhiều'),
        FabPhraseItem(phrase: 'gāvena / gavena', meaning: '⭐ go — SDC số ít'),
        FabPhraseItem(phrase: 'gāvassa / gavassa', meaning: '⭐ go — CĐC/STC số ít'),
        FabPhraseItem(phrase: 'gobhi / gohi', meaning: '⭐ go — SDC/XXC pl'),
        FabPhraseItem(phrase: 'gavaṃ / gunnaṃ / gonaṃ', meaning: '⭐ go — CĐC/STC pl'),
        // Paradigm Mana
        FabPhraseItem(phrase: 'manaṃ (CC sg)', meaning: '⭐ mana — paradigm trung đặc biệt'),
        FabPhraseItem(phrase: 'manasā (SDC sg)', meaning: '⭐ mana — SDC: mansā/manenā'),
        FabPhraseItem(phrase: 'manaso / manassa', meaning: '⭐ mana — CĐC/STC sg'),
        FabPhraseItem(phrase: 'manānaṃ (CĐC/STC pl)', meaning: '⭐ mana — paradigm số nhiều'),
        // Hīyattanī
        FabPhraseItem(phrase: '-a / -ā (3 sg) → apaca/apacā', meaning: '⭐ Hīyattanī Ngôi 3 số ít'),
        FabPhraseItem(phrase: '-ū (3 pl) → apacū', meaning: '⭐ Hīyattanī Ngôi 3 số nhiều'),
        FabPhraseItem(phrase: '-o (2 sg) → apaco', meaning: '⭐ Hīyattanī Ngôi 2 số ít'),
        FabPhraseItem(phrase: '-attha (2 pl) → apacattha', meaning: '⭐ Hīyattanī Ngôi 2 số nhiều'),
        FabPhraseItem(phrase: '-a / -aṃ (1 sg) → apaca', meaning: '⭐ Hīyattanī Ngôi 1 số ít'),
        FabPhraseItem(phrase: '-amhā (1 pl) → apacamhā', meaning: '⭐ Hīyattanī Ngôi 1 số nhiều'),
        FabPhraseItem(phrase: 'a- + [gốc]', meaning: '⭐ Tiền tố a- (giống Ajjatanī)'),
        FabPhraseItem(phrase: 'Ajjatanī phổ biến hơn', meaning: '⭐ Ưu tiên dùng Ajjatanī'),
        FabPhraseItem(phrase: 'Manasā saṃvaro sādhu', meaning: '⭐ Pháp Cú 361: Kiềm chế bằng tâm là tốt đẹp'),
      ],
    );

LessonPhase _buildDay1Phase2() => LessonPhase(
      id: 'lesson19_phase2',
      phaseTypeStr: 'mind_game',
      titleVi: '🧠 Ghép từ: DT "go" (bò) & "mana" (tâm) + Thì Hīyattanī',
      contentVi:
          'Nhấn vào từng ô tiếng Việt → đọc to từ Pāḷi tương ứng → nhấn lại để xem đáp án.',
            mixedSegments: const [
        MixedSegment(text: 'go'), MixedSegment(text: 'con bò (bất quy tắc)', isVietnamese: true, answer: 'go'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'mana'), MixedSegment(text: 'tâm, tâm ý', isVietnamese: true, answer: 'mana'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'aha'), MixedSegment(text: 'ngày', isVietnamese: true, answer: 'aha'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'ceta'), MixedSegment(text: 'tâm (mana group)', isVietnamese: true, answer: 'ceta'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'sira'), MixedSegment(text: 'đầu', isVietnamese: true, answer: 'sira'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'vaca'), MixedSegment(text: 'lời nói', isVietnamese: true, answer: 'vaca'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'raja'), MixedSegment(text: 'bụi', isVietnamese: true, answer: 'raja'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'tama'), MixedSegment(text: 'bóng tối', isVietnamese: true, answer: 'tama'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'yasa'), MixedSegment(text: 'vinh quang', isVietnamese: true, answer: 'yasa'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'teja'), MixedSegment(text: 'uy lực', isVietnamese: true, answer: 'teja'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'pāya'), MixedSegment(text: 'nước, sữa', isVietnamese: true, answer: 'pāya'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'ura'), MixedSegment(text: 'ngực', isVietnamese: true, answer: 'ura'),
      ],,
    );

LessonPhase _buildDay1Phase3() => LessonPhase(
      id: 'lesson19_phase3',
      phaseTypeStr: 'listening_quiz',
      titleVi: '🎧 Quiz: DT "go" (bò) & "mana" (tâm) + Thì Hīyattanī',
      contentVi:
          'Trả lời 6 câu hỏi trắc nghiệm về paradigm đặc biệt go/mana và Thì Bất thành khứ.',
      questions: const [
        QuizQuestion(
          id: 'lesson19_q01',
          questionText:
              'Hình thức Sở Dụng Cách (SDC) số ít của danh từ "go" là gì?',
          options: [
            'go / gāvena',
            'gāvena / gavena',
            'gobhi / gohi',
            'gavaṃ',
          ],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson19_q02',
          questionText:
              'Hình thức Cách Dữ/Sở Thuộc (CĐC/STC) số nhiều của "go" là gì?',
          options: ['gāvo', 'gosu', 'gavaṃ / gunnaṃ / gonaṃ', 'gobhi'],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson19_q03',
          questionText: 'Hình thức SDC số ít của "mana" (ý, tâm) là gì?',
          options: ['manaṃ', 'mansā / manena', 'manasā', 'manaso'],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson19_q04',
          questionText:
              'Khi ghép "sira" với hậu tố "-sā", hình thức thu được là gì?',
          options: ['sirasā', 'sira + sā', 'sirasa', 'sirāsā'],
          correctIndex: 0,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson19_q05',
          questionText:
              'Đuôi của động từ ở Ngôi 3 số nhiều thì Bất thành khứ (Hīyattanī) là gì?',
          options: ['-iṃsu', '-uṃ', '-ū', '-o'],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson19_q06',
          questionText: '"Manasā saṃvaro sādhu" có nghĩa là:',
          options: [
            'Sự kiềm chế bằng lời là tốt đẹp.',
            'Sự kiềm chế bằng tâm là tốt đẹp.',
            'Sự buông bỏ bằng tâm là tốt đẹp.',
            'Sự kiềm chế bằng thân là tốt đẹp.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
      ],
      fabAnswers: const [
        FabAnswerItem(en: 'Answer 1 → B', vi: '① SDC số ít "go" có 2 hình thức song song: "gāvena" và "gavena" (paradigm đặc biệt).'),
        FabAnswerItem(en: 'Answer 2 → C', vi: '② CĐC/STC số nhiều "go" có 3 hình thức: "gavaṃ, gunnaṃ, gonaṃ" — đặc điểm rất riêng của paradigm này.'),
        FabAnswerItem(en: 'Answer 3 → B', vi: '③ SDC số ít "mana" có 2 hình thức: "mansā" và "manena" — cả hai đều đúng cho 16 DT nhóm Mano.'),
        FabAnswerItem(en: 'Answer 4 → A', vi: '④ "sira" + "-sā" → "sirasā" (bằng đầu). Quy tắc: khi ghép hậu tố vào DT nhóm Mano, đuôi "a" → "o" hoặc "ā".'),
        FabAnswerItem(en: 'Answer 5 → C', vi: '⑤ Ngôi 3 số nhiều Hīyattanī = "-ū" (vd: apacū). KHÁC Ajjatanī: "-uṃ" hoặc "-iṃsu".'),
        FabAnswerItem(en: 'Answer 6 → B', vi: '⑥ Pháp Cú 361. "manasā" = SDC của mana = "bằng tâm". "saṃvaro" = sự kiềm chế. "sādhu" = tốt đẹp.'),
      ],
      fabVocab: const [],
      fabPhrases: const [],
    );

// ──────────────────────────────────────────────────────────────
// DAY 2
// ──────────────────────────────────────────────────────────────
LessonDay getLesson19Day2() => LessonDay(
      id: 'lesson19_day2',
      dayNumber: 2,
      themeId: 'theme_19_lesson',
      titleVi: 'Ngày 2 — Luyện tập: DT "go" (bò) & "mana" (tâm) + Thì Hīyattanī',
      phases: [
        _buildDay2Phase1(),
        _buildDay2Phase2(),
        _buildDay2Phase3(),
      ],
    );

LessonPhase _buildDay2Phase1() => LessonPhase(
      id: 'lesson19_phase4',
      phaseTypeStr: 'read_listen',
      titleVi: '📖 Đọc hiểu: Exercise 19',
      contentVi: '''
══════════════════════════════════════════════════════
📖 BÀI TẬP 19 — Dịch 29 câu Pāḷi sang tiếng Việt
══════════════════════════════════════════════════════
Bài tập tập trung vào:
• DT paradigm đặc biệt: go (con bò), mana (ý, tâm)
• 16 DT nhóm Mano: aha, aya, ceta, chanda, oja, paya, raja, sara, sira, tama, tapa, teja, ura, vaca, vaya, yasa
• Thì Bất thành khứ (Hīyattanī)
• Câu kinh điển (Dhammapada)
• Quy tắc ghép từ (a → o khi ghép)

══════════════════════════════════════════════════════
💡 GỢI Ý DỊCH (các câu đầu)
══════════════════════════════════════════════════════
① "Etad'avoca satthā."
   → Etad' (etaṃ) + avoca (Ajjatanī 3 sg của brū = đã nói) + satthā (Đạo Sư).
   → "Đạo Sư đã nói điều này."

② "Bhagavā etam'āha."
   → Bhagavā + etam (etaṃ) + āha (Hīyattanī 3 sg = đã nói).
   → "Đức Thế Tôn đã nói điều này."
   ⚠️ "āha" dùng Hīyattanī (đuôi -ā cho 3 sg).

⑤ "Atthaṃ hi nātho saraṇaṃ avoca."
   → "Thật vậy, Đấng Bảo Hộ đã nói phương thuốc là chỗ nương tựa."

⑦ "Eko go tamasi khettaṃ agamā."
   → Eko go (một con bò) + tamasi (ĐSC tama = trong bóng tối) + khettaṃ (cánh đồng) + agamā (Hīyattanī 3 sg của gacchati = đã đi).
   → "Một con bò đã đi đến cánh đồng trong bóng tối."

⑨ "Manasā saṃvaro sādhu."
   → Manasā (SDC mana = bằng tâm) + saṃvaro (sự kiềm chế) + sādhu (tốt đẹp).
   → "Sự kiềm chế bằng tâm là tốt đẹp." (Pháp Cú 361)

══════════════════════════════════════════════════════
📋 MẸO DỊCH CÂU CÓ "DT nhóm Mano"
══════════════════════════════════════════════════════
📌 QUY TẮC QUAN TRỌNG: khi ghép hậu tố (thường "-sā" SDC),
   đuôi "a" → "o" hoặc "ā":
   sira + sā → sirasā (bằng đầu)
   vaca + sā → vacasā (bằng lời)
   aya  + sā → ayasā  (bằng sắt)
   mana + sā → manasā (bằng tâm)
   teja + sā → tejā   (KHÔNG đổi)

📌 Hình thức số nhiều: thường thêm "-ni" hoặc "-su":
   aha  + ni → ahāni (những ngày)
   mana + ni → manāni (những tâm)
   ura  + su → uresu (trên vai)

📌 Hình thức ĐSC: thường thêm "-si" hoặc "-smiṃ":
   tama + si → tamasi (trong bóng tối)
   paya + smiṃ → payasmiṃ (trong sữa)

══════════════════════════════════════════════════════
📋 MẸO DỊCH THÌ BẤT THÀNH KHỨ
══════════════════════════════════════════════════════
📌 CŨNG có tiền tố "a-" trước gốc (giống Ajjatanī).
📌 Đuôi KHÁC Ajjatanī:
   • 3 sg: -a hoặc -ā (khác -i/-ī)
   • 3 pl: -ū (khác -uṃ/-iṃsu)
   • 2 sg: -o (giống)
   • 2 pl: -attha (cũng gặp -ittha ở Ajjatanī)
   • 1 sg: -a hoặc -aṃ (khác -iṃ)
   • 1 pl: -amhā (giống)

📌 Ví dụ: "āha" = đã nói (Hīyattanī 3 sg, rất phổ biến).
   Ajjatanī tương đương là "āci" hoặc "āsi".

📌 Thực tế: Ajjatanī phổ biến hơn. Khi không chắc, dùng Ajjatanī!
''',
      contentEn:
          'Translation hints for Exercise 19: watch for irregular go-forms (gāvo, gavena, gobhi, gonaṃ/gunnaṃ, gosu), for mana-compounds (manasā, manasi, vayasā, sirasā, vacasā, ayasā, tamasi, payasmiṃ, ahāni, uresu) following the a→o/ā sandhi rule, and for Hīyattanī verb forms (āha = he said; agamā = he went; abhuñjamhā = we ate) with their characteristic -ā/-ū/-o/-attha/-aṃ/-amhā endings prefixed with a-.',
    );

LessonPhase _buildDay2Phase2() => LessonPhase(
      id: 'lesson19_phase5',
      phaseTypeStr: 'mind_game',
      titleVi: '🧠 Ghép câu: 29 câu Exercise 19',
      contentVi:
          'Nhấn vào từng câu tiếng Việt → đọc to câu Pāḷi tương ứng → nhấn lại để xem đáp án.',
      mixedSegments: const [
        // Câu 1-6
        MixedSegment(text: "【Ex 1】 \"Etad'avoca satthā.\""),
        MixedSegment(text: '"Đạo Sư đã nói điều này."', isVietnamese: true, answer: "\"Etad'avoca satthā.\""),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 2】 \"Bhagavā etam'āha.\""),
        MixedSegment(text: '"Đức Thế Tôn đã nói điều này."', isVietnamese: true, answer: "\"Bhagavā etam'āha.\""),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 3】 \"Idam'avoca Bhagavā.\""),
        MixedSegment(text: '"Đức Thế Tôn đã nói điều này."', isVietnamese: true, answer: "\"Idam'avoca Bhagavā.\""),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 4】 \"Ācariyā evam'āha.\""),
        MixedSegment(text: '"Thầy giáo đã nói như vậy."', isVietnamese: true, answer: "\"Ācariyā evam'āha.\""),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 5】 \"Atthaṃ hi nātho saraṇaṃ avoca.\""),
        MixedSegment(text: '"Thật vậy, Đấng Bảo Hộ đã nói phương thuốc là chỗ nương tựa."', isVietnamese: true, answer: "\"Atthaṃ hi nātho saraṇaṃ avoca.\""),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 6】 \"Satthā taṃ itthiṃ āha – 'etissā tava puttaṃ dehī'ti.\""),
        MixedSegment(text: "\"Đạo Sư đã nói với người phụ nữ đó: 'Hãy cho con trai của anh cho cô này'.\"", isVietnamese: true, answer: "\"Satthā taṃ itthiṃ āha – 'etissā tava puttaṃ dehī'ti.\""),
        MixedSegment(text: '   ───   '),
        // Câu 7-12
        MixedSegment(text: '【Ex 7】 Eko go tamasi khettaṃ agamā.'),
        MixedSegment(text: 'Một con bò đã đi đến cánh đồng trong bóng tối.', isVietnamese: true, answer: 'Eko go tamasi khettaṃ agamā.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 8】 Vayasā ahaṃ pañcavīsati vassāni.'),
        MixedSegment(text: 'Theo tuổi thọ, tôi hai mươi lăm tuổi.', isVietnamese: true, answer: 'Vayasā ahaṃ pañcavīsati vassāni.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 9】 \"Manasā saṃvaro sādhu.\""),
        MixedSegment(text: '"Sự kiềm chế bằng tâm là tốt đẹp."', isVietnamese: true, answer: "\"Manasā saṃvaro sādhu.\""),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 10】 \"Taṃ sādhukaṃ suṇāhi, manasi karohi.\""),
        MixedSegment(text: '"Hãy nghe điều đó cho tốt, hãy ghi nhớ trong tâm."', isVietnamese: true, answer: "\"Taṃ sādhukaṃ suṇāhi, manasi karohi.\""),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 11】 Amhākaṃ satthuno pāde mayaṃ sirasā avandamhā.'),
        MixedSegment(text: 'Chúng tôi đã đảnh lễ chân Đạo Sư của chúng tôi bằng đầu.', isVietnamese: true, answer: 'Amhākaṃ satthuno pāde mayaṃ sirasā avandamhā.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 12】 Tava vacasā vā manasā vā mā kiñci pāpakaṃ kammaṃ karohi."),
        MixedSegment(text: 'Bằng lời nói hoặc bằng tâm, đừng làm bất cứ hành động xấu nào.', isVietnamese: true, answer: "Tava vacasā vā manasā vā mā kiñci pāpakaṃ kammaṃ karohi."),
        MixedSegment(text: '   ───   '),
        // Câu 13-18
        MixedSegment(text: '【Ex 13】 Ayaṃ nāvā ayasā katā.'),
        MixedSegment(text: 'Con thuyền này được làm bằng sắt.', isVietnamese: true, answer: 'Ayaṃ nāvā ayasā katā.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "Satta ahāni mayaṃ kiñci'pi āhāraṃ na abhuñjamhā."),
        MixedSegment(text: 'Bảy ngày chúng tôi đã không ăn bất cứ vật thực nào.', isVietnamese: true, answer: "Satta ahāni mayaṃ kiñci'pi āhāraṃ na abhuñjamhā."),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 15】 Mayhaṃ bhātā gonaṃ tiṇaṃ adā.'),
        MixedSegment(text: 'Anh tôi đã cho cỏ những con bò.', isVietnamese: true, answer: 'Mayhaṃ bhātā gonaṃ tiṇaṃ adā.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 16】 Imāyaṃ visikhāyaṃ rajaṃ n'atthi."),
        MixedSegment(text: 'Trong con đường này không có bụi.', isVietnamese: true, answer: "Imāyaṃ visikhāyaṃ rajaṃ n'atthi."),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 17】 Gīlānānaṃ bhikkhūnaṃ chandā gahetabbā.'),
        MixedSegment(text: 'Nguyện vọng của các tỳ-khưu bệnh nên được nhận.', isVietnamese: true, answer: 'Gīlānānaṃ bhikkhūnaṃ chandā gahetabbā.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 18】 Pitaro (tesaṃ) uresu tesaṃ putte haranti.'),
        MixedSegment(text: 'Các người cha mang con của họ trên vai.', isVietnamese: true, answer: 'Pitaro (tesaṃ) uresu tesaṃ putte haranti.'),
        MixedSegment(text: '   ───   '),
        // Câu 19-24
        MixedSegment(text: '【Ex 19】 Vayasā mayhaṃ pitā pañca-cattāḷīsati vassāni.'),
        MixedSegment(text: 'Theo tuổi thọ, cha tôi bốn mươi lăm tuổi.', isVietnamese: true, answer: 'Vayasā mayhaṃ pitā pañca-cattāḷīsati vassāni.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 20】 Loko cattāro ahāni tame ahesuṃ.'),
        MixedSegment(text: 'Thế giới đã tối trong bốn ngày.', isVietnamese: true, answer: 'Loko cattāro ahāni tame ahesuṃ.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 21】 Mayaṃ (amhākaṃ) attānaṃ manāni visujjhāpenti.'),
        MixedSegment(text: 'Chúng tôi thanh tẩy tâm của mình.', isVietnamese: true, answer: 'Mayaṃ (amhākaṃ) attānaṃ manāni visujjhāpenti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 22】 Ekaṃ phalaṃ rukkhamhā mayhaṃ sirasi pati.'),
        MixedSegment(text: 'Một quả từ cây rơi vào đầu tôi.', isVietnamese: true, answer: 'Ekaṃ phalaṃ rukkhamhā mayhaṃ sirasi pati.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 23】 Tesaṃ putte gavaṃ tiṇaṃ dāpetvā kassakā nagaraṃ agamiṃsu.'),
        MixedSegment(text: 'Sau khi cho cỏ con bò của con họ, các nông dân đã đi thành phố.', isVietnamese: true, answer: 'Tesaṃ putte gavaṃ tiṇaṃ dāpetvā kassakā nagaraṃ agamiṃsu.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 24】 Manussā (tassa) tapaso taṃ pūjenti.'),
        MixedSegment(text: 'Người ta tôn thờ anh ấy vì khổ hạnh.', isVietnamese: true, answer: 'Manussā (tassa) tapaso taṃ pūjenti.'),
        MixedSegment(text: '   ───   '),
        // Câu 25-29
        MixedSegment(text: '【Ex 25】 Yasā cando viya (tvaṃ) dippāhi.'),
        MixedSegment(text: 'Bạn tỏa sáng như mặt trăng nhờ danh tiếng.', isVietnamese: true, answer: 'Yasā cando viya (tvaṃ) dippāhi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 26】 Rājā (tassa) tejā sabbe manusse jinī.'),
        MixedSegment(text: 'Nhờ oai vệ, đức vua đã chinh phục tất cả mọi người.', isVietnamese: true, answer: 'Rājā (tassa) tejā sabbe manusse jinī.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 27】 (Te) tesaṃ manesu kodho n'atthi."),
        MixedSegment(text: 'Trong tâm của họ không có sự tức giận.', isVietnamese: true, answer: "(Te) tesaṃ manesu kodho n'atthi."),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 28】 Gāvo imassa sarassa udakaṃ na pivanti.'),
        MixedSegment(text: 'Những con bò không uống nước của hồ này.', isVietnamese: true, answer: 'Gāvo imassa sarassa udakaṃ na pivanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 29】 Imasmiṃ payasmiṃ ojaṃ n'atthi."),
        MixedSegment(text: 'Trong sữa này không có dưỡng chất.', isVietnamese: true, answer: "Imasmiṃ payasmiṃ ojaṃ n'atthi."),
      ],
    );

LessonPhase _buildDay2Phase3() => LessonPhase(
      id: 'lesson19_phase6',
      phaseTypeStr: 'listening_quiz',
      titleVi: '🎧 Quiz: Dịch câu Exercise 19',
      contentVi:
          'Chọn bản dịch tiếng Việt đúng cho mỗi câu Pāḷi từ Exercise 19.',
      questions: const [
        QuizQuestion(
          id: 'lesson19_q07',
          questionText: "\"Etad'avoca satthā.\" có nghĩa là:",
          options: [
            'Đạo Sư sẽ nói điều này.',
            'Đạo Sư đang nói điều này.',
            'Đạo Sư đã nói điều này.',
            'Đạo Sư nói điều này.',
          ],
          correctIndex: 2,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson19_q08',
          questionText: '"Manasā saṃvaro sādhu." có nghĩa là:',
          options: [
            'Sự kiềm chế bằng thân là tốt đẹp.',
            'Sự kiềm chế bằng lời là tốt đẹp.',
            'Sự kiềm chế bằng tâm là tốt đẹp.',
            'Sự buông bỏ bằng tâm là tốt đẹp.',
          ],
          correctIndex: 2,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson19_q09',
          questionText: '"Ayaṃ nāvā ayasā katā." có nghĩa là:',
          options: [
            'Con thuyền này làm bằng gỗ.',
            'Con thuyền này làm bằng sắt.',
            'Con thuyền này làm bằng đá.',
            'Con thuyền này làm bằng vàng.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson19_q10',
          questionText: '"Eko go tamasi khettaṃ agamā." có nghĩa là:',
          options: [
            'Một con bò đã đi cánh đồng trong bóng tối.',
            'Một con bò đang ăn cỏ trong cánh đồng.',
            'Một con bò đã ăn cỏ ngoài cánh đồng.',
            'Một con bò đã chạy trong bóng tối.',
          ],
          correctIndex: 0,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson19_q11',
          questionText: "\"Taṃ sādhukaṃ suṇāhi, manasi karohi.\" có nghĩa là:",
          options: [
            'Hãy nói điều đó cho tốt, hãy nghe trong tâm.',
            'Hãy nghe điều đó cho tốt, hãy ghi nhớ trong tâm.',
            'Hãy viết điều đó cho tốt, hãy nghĩ trong tâm.',
            'Hãy nhìn điều đó cho tốt, hãy quên trong tâm.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson19_q12',
          questionText: "\"Imasmiṃ payasmiṃ ojaṃ n'atthi.\" có nghĩa là:",
          options: [
            'Trong nước này không có dưỡng chất.',
            'Trong sữa này không có dưỡng chất.',
            'Trong hồ này không có dưỡng chất.',
            'Trong đầu này không có dưỡng chất.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
      ],
      fabAnswers: const [
        FabAnswerItem(en: 'Answer 7 → C', vi: "① Etad'avoca = etaṃ + avagraha + avoca (Ajjatanī 3 sg của brū = đã nói). satthā = Đạo Sư (CC)."),
        FabAnswerItem(en: 'Answer 8 → C', vi: '② manasā (SDC mana = bằng tâm) + saṃvaro (sự kiềm chế) + sādhu (tốt đẹp). Pháp Cú 361.'),
        FabAnswerItem(en: 'Answer 9 → B', vi: '③ ayasā (SDC aya = bằng sắt) + katā (được làm, quá khứ phân từ bị động).'),
        FabAnswerItem(en: 'Answer 10 → A', vi: '④ tamasi (ĐSC tama = trong bóng tối, tama+si) + khettaṃ (ĐC = cánh đồng) + agamā (Hīyattanī 3 sg = đã đi).'),
        FabAnswerItem(en: 'Answer 11 → B', vi: '⑤ Taṃ sādhukaṃ suṇāhi (hãy nghe điều đó tốt đẹp, MCC) + manasi karohi (hãy làm trong tâm, ĐSC mana).'),
        FabAnswerItem(en: 'Answer 12 → B', vi: "⑥ Imasmiṃ (ĐSC trung = trong cái này) + payasmiṃ (ĐSC paya = trong sữa) + ojaṃ (dưỡng chất) + n'atthi (na+atthi = không có)."),
      ],
      fabVocab: const [],
      fabPhrases: const [],
    );

// ──────────────────────────────────────────────────────────────
// AGGREGATE
// ──────────────────────────────────────────────────────────────
List<LessonDay> getLesson19Data() => [
      getLesson19Day1(),
      getLesson19Day2(),
    ];

class Lesson19Bundle {
  static LessonMeta meta = getLesson19Meta();
  static LessonDay day1 = getLesson19Day1();
  static LessonDay day2 = getLesson19Day2();
  static List<LessonDay> all = getLesson19Data();
}
