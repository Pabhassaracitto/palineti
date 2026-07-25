// lesson_02.dart
// Bài học số 2: Biến cách SDC & CĐC của Danh từ Nam "-a"
//               + Động từ Thì Hiện tại — Ngôi thứ 2 (-si / -tha)
// An Elementary Pāḷi Course – Nārada Mahāthera
// ---------------------------------------------------------------------------

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

// ──────────────────────────────────────────────────────────────
// LESSON META
// ──────────────────────────────────────────────────────────────
LessonMeta getLesson02Meta() => const LessonMeta(
      id: 'theme_02_lesson',
      lessonNumber: 2,
      titleVi: 'SDC & CĐC (Nam -a) + Động từ Ngôi 2',
      titleEn: 'Instrumental & Dative of Masc. -a; 2nd Person Verbs',
      iconEmoji: '📘',
      colorValue: 0xFF1F6FEB,
      description:
          'Sở Dụng Cách (-ena / -ehi), Cách Dữ (-āya/-assa / -ānaṃ) và đuôi -si/-tha ngôi 2',
    );

// ──────────────────────────────────────────────────────────────
// VOCABULARY
// ──────────────────────────────────────────────────────────────
final kLesson02Vocab = <PaliVocabModel>[
  _v(1, 'ādara', 'masc_a', 'sự quý trọng, sự quan tâm, sự mến yêu',
      'respect, regard, affection', 'aa-da-ra',
      'Ādarena dhammaṃ deseti.', 'Ngài thuyết Pháp với sự kính trọng.'),
  _v(2, 'āhāra', 'masc_a', 'vật thực, đồ ăn', 'food, nourishment', 'aa-haa-ra',
      'Sunakhassa āhāraṃ harati.', 'Anh ta mang vật thực đến con chó.'),
  _v(3, 'daṇḍa', 'masc_a', 'cây gậy; sự trừng phạt', 'stick, rod; punishment',
      'dan-da', 'Daṇḍena sunakhaṃ paharati.', 'Anh ta đánh con chó bằng cây gậy.'),
  _v(4, 'dāsa', 'masc_a', 'người nô lệ, người hầu', 'slave, servant', 'daa-sa',
      'Dāsena gāmaṃ gacchati.', 'Anh ta đi đến làng với người hầu.'),
  _v(5, 'gilāna', 'masc_a', 'người bệnh (tính từ dùng như danh từ)',
      'sick person, patient', 'gi-laa-na',
      'Gilānassa osadhaṃ desi.', 'Bạn cho thuốc đến người bệnh.'),
  _v(6, 'hattha', 'masc_a', 'bàn tay', 'hand', 'hat-tha',
      'Hatthehi osadhaṃ labhati.', 'Anh ta nhận thuốc bằng tay.'),
  _v(7, 'osadha', 'masc_a', 'thuốc men', 'medicine, drug', 'o-sad-ha',
      'Osadhaṃ janakassa desi.', 'Bạn cho thuốc đến người cha.'),
  _v(8, 'ratha', 'masc_a', 'xe ngựa', 'chariot, cart', 'ra-tha',
      'Rathena gāmaṃ āgacchati.', 'Anh ta đến làng bằng xe ngựa.'),
  _v(9, 'samaṇa', 'masc_a', 'vị sa-môn', 'ascetic, monk (samaṇa)', 'sa-ma-na',
      'Samaṇānaṃ dhammaṃ deseti.', 'Ngài thuyết Pháp đến các vị sa-môn.'),
  _v(10, 'sunakha', 'masc_a', 'con chó', 'dog', 'su-nak-ha',
      'Sunakhaṃ daṇḍena paharati.', 'Anh ta đánh con chó bằng gậy.'),
  _v(11, 'vejja', 'masc_a', 'vị bác sĩ', 'physician, doctor', 'vej-ja',
      'Vejjena osadhaṃ labhati.', 'Anh ta nhận thuốc nhờ vị bác sĩ.'),

  // ---------- Động từ mới Bài 2 (ngôi 3 mặc định) ----------
  _v(12, 'gacchati', 'verb_pres', 'đi (gamu)', 'goes', 'gac-cha-ti',
      'So gacchati.', 'Anh ấy đi.'),
  _v(13, 'āgacchati', 'verb_pres', 'đến (gamu + ā)', 'comes', 'aa-gac-cha-ti',
      'So āgacchati.', 'Anh ấy đến.'),
  _v(14, 'harati', 'verb_pres', 'mang đi (hara)', 'carries away', 'ha-ra-ti',
      'So āhāraṃ harati.', 'Anh ấy mang vật thực đi.'),
  _v(15, 'āharati', 'verb_pres', 'mang lại (hara + ā)', 'brings', 'aa-ha-ra-ti',
      'So āhāraṃ āharati.', 'Anh ấy mang vật thực lại.'),
  _v(16, 'nīharati', 'verb_pres', 'dì đi, dời khỏi (hara + nī)', 'takes away',
      'nī-ha-ra-ti', '', ''),
  _v(17, 'paharati', 'verb_pres', 'đánh đập (hara + pa)', 'strikes, beats',
      'pa-ha-ra-ti', 'So daṇḍena paharati.', 'Anh ta đánh bằng gậy.'),
  _v(18, 'labhati', 'verb_pres', 'có được, thu nhận (labha)', 'gets, receives',
      'lab-ha-ti', 'So osadhaṃ labhati.', 'Anh ấy nhận được thuốc.'),
  _v(19, 'deseti', 'verb_pres', 'thuyết, giảng (disa)', 'teaches, preaches',
      'de-se-ti', 'So dhammaṃ deseti.', 'Ngài thuyết Pháp.'),
  _v(20, 'deti', 'verb_pres', 'cho, bố thí (dā)', 'gives', 'de-ti',
      'So dānaṃ deti.', 'Ông bố thí.'),
  _v(21, 'peseti', 'verb_pres', 'gởi đi (pesa)', 'sends', 'pe-se-ti',
      'So dūtaṃ peseti.', 'Ông sai sứ giả đi.'),
];

PaliVocabModel _v(int id, String root, String paradigmId, String wordVi,
    String wordEn, String pronunciation, String examplePali, String exampleVi) {
  final num = id.toString().padLeft(3, '0');
  return PaliVocabModel(
    id: 'pv_L02_$num',
    root: root,
    paradigmId: paradigmId,
    wordVi: wordVi,
    wordEn: wordEn,
    lessonId: 'lesson_02',
    pronunciation: pronunciation,
    examplePali: examplePali,
    exampleVi: exampleVi,
  );
}

// ──────────────────────────────────────────────────────────────
// DAY 1 – Lý thuyết + Từ vựng
// ──────────────────────────────────────────────────────────────
LessonDay getLesson02Day1() => LessonDay(
      id: 'lesson02_day1',
      dayNumber: 1,
      themeId: 'theme_02_lesson',
      titleVi: 'Ngày 1 — Lý thuyết & Từ vựng',
      phases: [
        _buildDay1Phase1(),
        _buildDay1Phase2(),
        _buildDay1Phase3(),
      ],
    );

LessonPhase _buildDay1Phase1() => LessonPhase(
      id: 'lesson02_phase1',
      phaseTypeStr: 'read_listen',
      titleVi: '📘 Biến cách SDC & CĐC + Động từ Ngôi 2',
      contentVi: '''
🎯 MỤC TIÊU BÀI 2
───────────────────
• Học 2 biến cách mới của danh từ Nam "-a":
    ✦ Sở Dụng Cách (SDC) — Instrumental
    ✦ Cách Dữ (CĐC) — Dative
• Học chia động từ Thì Hiện Tại ở Ngôi thứ 2 (-si / -tha)
• Nắm vững 11 danh từ Nam mới + 10 động từ mới.

══════════════════════════════════════════════════════
A. BIẾN CÁCH DANH TỪ NAM TÁNH TẬN CÙNG "-a" (tiếp theo)
══════════════════════════════════════════════════════

Cho căn "nara" (người đàn ông):

┌──────────┬──────────────────┬───────────────────────┐
│ Biến cách │  Số ít (Sg)      │   Số nhiều (Pl)       │
├──────────┼──────────────────┼───────────────────────┤
│  SDC     │ narena           │ narebhi  /  narehi    │
│  CĐC     │ narāya / narassa │ narānaṃ               │
└──────────┴──────────────────┴───────────────────────┘

📌 Ý nghĩa:
• SDC (Sở Dụng Cách): bởi / bằng / do / nhờ
   → công cụ, phương tiện, người cùng đi
   → Ex: rathena = "bằng xe ngựa"

• CĐC (Cách Dữ): đến / cho
   → người nhận, mục đích
   → Ex: sunakhassa = "đến con chó"

📌 Biến thể cuối (ending variants) — danh từ Nam "-a":

┌──────────┬──────────────┬──────────────────┐
│ Biến cách │  Số ít (Sg)  │  Số nhiều (Pl)   │
├──────────┼──────────────┼──────────────────┤
│  SDC     │  -ena        │  -ebhi / -ehi    │
│  CĐC     │  -āya / -assa│  -ānaṃ           │
└──────────┴──────────────┴──────────────────┘

⚠️ Lưu ý quan trọng:
1. Hình thức CĐC "-ssa" ít thường xuyên sử dụng.
2. Hình thức "-assa" CĐC cũng được dùng để diễn đạt cho Bổ Trợ Cách (Tatiyā).
3. Nguyên âm đứng trước "-naṃ" luôn là trường âm (dài).

══════════════════════════════════════════════════════
B. CHIA ĐỘNG TỪ — THÌ HIỆN TẠI NGÔI 2
══════════════════════════════════════════════════════

Ngôi thứ 2 (Second Person Terminations):

┌────────────┬──────────────────┐
│  Số ít (Sg)│     -si          │
│ Số nhiều(Pl)│    -tha         │
└────────────┴──────────────────┘

📌 Ví dụ (gốc "pac-" = nấu):
• Tvaṃ pacasi.       → Bạn nấu; Bạn đang nấu.
• Tumhe pacatha.     → Các bạn nấu; Các bạn đang nấu.

══════════════════════════════════════════════════════
📚 11 DANH TỪ NAM MỚI
══════════════════════════════════════════════════════
• ādara    — sự quý trọng, quan tâm, mến yêu
• āhāra    — vật thực, đồ ăn
• daṇḍa    — cây gậy; sự trừng phạt
• dāsa     — người nô lệ, người hầu
• gilāna   — người bệnh
• hattha   — bàn tay
• osadha   — thuốc men
• ratha    — xe ngựa
• samaṇa   — vị sa-môn
• sunakha  — con chó
• vejja    — vị bác sĩ

══════════════════════════════════════════════════════
🔥 10 ĐỘNG TỪ MỚI (Thì Hiện Tại — Ngôi 3 mặc định)
══════════════════════════════════════════════════════
• deseti     (disa)              → thuyết
• deti       (dā)                → cho, bố thí
• harati     (hara)              → mang đi
• āharati    (hara + ā)          → mang lại
• nīharati   (hara + nī)         → dì đi, dời khỏi
• paharati   (hara + pa)         → đánh đập
• gacchati   (gamu)              → đi
• āgacchati  (gamu + ā)          → đến
• labhati    (labha)             → có được, thu nhận
• peseti     (pesa)              → gởi đi

📌 ā, nī, pa, v.v... là các TIẾP ĐẦU NGỮ (upasagga)
   — khi gắn vào động từ sẽ thay đổi nghĩa gốc:
   hara = mang đi  →  ā + hara = mang lại
                      nī + hara = mang đi (ra xa)
                      pa + hara = đánh về phía
''',
      contentEn: '''
Lesson 2 covers the Instrumental (-ena / -ehi) "by/with" and Dative (-āya/-assa / -ānaṃ) "to/for" of masculine -a nouns, plus 2nd person present terminations -si (sg.) and -tha (pl.), with 11 new nouns and 10 new verbs.
''',
      fabVocab: const [
        FabVocabItem(wordEn: 'ādara', pronunciation: 'aa-da-ra', wordVi: 'sự quý trọng, quan tâm, mến yêu', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'āhāra', pronunciation: 'aa-haa-ra', wordVi: 'vật thực, đồ ăn', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'daṇḍa', pronunciation: 'dan-da', wordVi: 'cây gậy; sự trừng phạt', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'dāsa', pronunciation: 'daa-sa', wordVi: 'người nô lệ, người hầu', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'gilāna', pronunciation: 'gi-laa-na', wordVi: 'người bệnh', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'hattha', pronunciation: 'hat-tha', wordVi: 'bàn tay', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'osadha', pronunciation: 'o-sad-ha', wordVi: 'thuốc men', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'ratha', pronunciation: 'ra-tha', wordVi: 'xe ngựa', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'samaṇa', pronunciation: 'sa-ma-na', wordVi: 'vị sa-môn', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'sunakha', pronunciation: 'su-nak-ha', wordVi: 'con chó', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'vejja', pronunciation: 'vej-ja', wordVi: 'vị bác sĩ', partOfSpeech: 'danh_tu'),
      ],
      fabPhrases: const [
        FabPhraseItem(phrase: 'Tvaṃ ...si.', meaning: 'Bạn (làm gì đó) — Ngôi 2 số ít, đuôi -si'),
        FabPhraseItem(phrase: 'Tumhe ...tha.', meaning: 'Các bạn (làm gì đó) — Ngôi 2 số nhiều, đuôi -tha'),
        FabPhraseItem(phrase: 'gacchati (gamu)', meaning: 'đi'),
        FabPhraseItem(phrase: 'āgacchati (gamu + ā)', meaning: 'đến (ā = hướng về phía)'),
        FabPhraseItem(phrase: 'harati (hara)', meaning: 'mang đi'),
        FabPhraseItem(phrase: 'āharati (hara + ā)', meaning: 'mang lại'),
        FabPhraseItem(phrase: 'nīharati (hara + nī)', meaning: 'dì đi, dời khỏi (nī = ra)'),
        FabPhraseItem(phrase: 'paharati (hara + pa)', meaning: 'đánh đập (pa = về phía)'),
        FabPhraseItem(phrase: 'labhati (labha)', meaning: 'có được, thu nhận'),
        FabPhraseItem(phrase: 'deseti (disa)', meaning: 'thuyết, giảng'),
        FabPhraseItem(phrase: 'deti (dā)', meaning: 'cho, bố thí'),
        FabPhraseItem(phrase: 'peseti (pesa)', meaning: 'gởi đi'),
      ],
    );

LessonPhase _buildDay1Phase2() => LessonPhase(
      id: 'lesson02_phase2',
      phaseTypeStr: 'mind_game',
      titleVi: '🧠 Ghép từ: 11 danh từ mới',
      contentVi:
          'Nhấn vào từng ô tiếng Việt → đọc to từ Pāḷi tương ứng → nhấn lại để xem đáp án.',
      mixedSegments: const [
        MixedSegment(text: 'ādara'),
        MixedSegment(text: 'sự quý trọng', isVietnamese: true, answer: 'ādara'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'āhāra'),
        MixedSegment(text: 'vật thực', isVietnamese: true, answer: 'āhāra'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'daṇḍa'),
        MixedSegment(text: 'cây gậy', isVietnamese: true, answer: 'daṇḍa'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'dāsa'),
        MixedSegment(text: 'người hầu', isVietnamese: true, answer: 'dāsa'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'gilāna'),
        MixedSegment(text: 'người bệnh', isVietnamese: true, answer: 'gilāna'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'hattha'),
        MixedSegment(text: 'bàn tay', isVietnamese: true, answer: 'hattha'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'osadha'),
        MixedSegment(text: 'thuốc men', isVietnamese: true, answer: 'osadha'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'ratha'),
        MixedSegment(text: 'xe ngựa', isVietnamese: true, answer: 'ratha'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'samaṇa'),
        MixedSegment(text: 'vị sa-môn', isVietnamese: true, answer: 'samaṇa'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'sunakha'),
        MixedSegment(text: 'con chó', isVietnamese: true, answer: 'sunakha'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'vejja'),
        MixedSegment(text: 'vị bác sĩ', isVietnamese: true, answer: 'vejja'),
      ],
    );

LessonPhase _buildDay1Phase3() => LessonPhase(
      id: 'lesson02_phase3',
      phaseTypeStr: 'listening_quiz',
      titleVi: '🎧 Quiz: Biến cách SDC, CĐC & Ngôi 2',
      contentVi:
          'Trả lời 7 câu hỏi trắc nghiệm về biến cách Sở Dụng (SDC), Cách Dữ (CĐC) và chia động từ Ngôi thứ 2.',
      questions: const [
        QuizQuestion(
          id: 'lesson02_q01',
          questionText:
              'Câu 1. Hình thức Sở Dụng Cách (SDC) số ít của danh từ "nara" là gì?',
          options: ['narena', 'narāya', 'narānaṃ', 'narehi'],
          correctIndex: 0,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson02_q02',
          questionText:
              'Câu 2. Hình thức Cách Dữ (CĐC) số nhiều của danh từ "nara" là gì?',
          options: ['narassa', 'narena', 'narānaṃ', 'narebhi'],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson02_q03',
          questionText:
              'Câu 3. Động từ nào có nghĩa là "mang lại" (tiếp đầu ngữ ā + hara)?',
          options: ['Gacchati', 'Āharati', 'Harati', 'Paharati'],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson02_q04',
          questionText: '"Tvaṃ rathena gacchasi." được dịch là:',
          options: [
            'Bạn cho xe ngựa.',
            'Bạn đi bằng xe ngựa.',
            'Bạn có xe ngựa.',
            'Bạn đánh xe ngựa.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson02_q05',
          questionText:
              'Câu 5. Đuôi (termination) của động từ ở Ngôi thứ 2 số ít là gì?',
          options: ['-mi', '-si', '-tha', '-ti'],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson02_q06',
          questionText:
              'Câu 6. Trong câu "Sunakhassa āhāraṃ desi.", từ "Sunakhassa" ở biến cách nào?',
          options: [
            'CĐC số ít (Dative singular)',
            'SDC số ít (Instrumental singular)',
            'CĐC số nhiều (Dative plural)',
            'ĐC số ít (Accusative singular)',
          ],
          correctIndex: 0,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson02_q07',
          questionText:
              'Câu 7. Hình thức Cách Dữ (CĐC) số ít của danh từ "samaṇa" là gì?',
          options: ['samaṇena', 'samaṇāya', 'samaṇānaṃ', 'samaṇehi'],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
      ],
      fabAnswers: const [
        FabAnswerItem(en: 'Answer 1 → A: -ena (inst. sg.)', vi: '① SDC số ít luôn có đuôi -ena. → narena = "bởi người đàn ông".'),
        FabAnswerItem(en: 'Answer 2 → C: -ānaṃ (dat. pl.)', vi: '② CĐC số nhiều luôn có đuôi -ānaṃ (nguyên âm trước -naṃ luôn dài).'),
        FabAnswerItem(en: 'Answer 3 → B: āharati', vi: '③ "hara" = mang đi. Gắn tiếp đầu ngữ "ā" → āharati = mang lại.'),
        FabAnswerItem(en: 'Answer 4 → B', vi: '④ "rathena" = SDC số ít = "bằng xe ngựa". Động từ ở Ngôi 2 số ít: -si.'),
        FabAnswerItem(en: 'Answer 5 → B: -si', vi: '⑤ Bảng chia: Ngôi 1 sg = -mi, Ngôi 2 sg = -si, Ngôi 3 sg = -ti.'),
        FabAnswerItem(en: 'Answer 6 → A: dative sg.', vi: '⑥ "Sunakhassa" có đuôi -assa → đây là hình thức CĐC số ít (= đến con chó).'),
        FabAnswerItem(en: 'Answer 7 → B: samaṇāya', vi: '⑦ CĐC số ít của căn "-a" có 2 hình thức: -āya hoặc -assa → samaṇāya.'),
      ],
      fabVocab: [],
      fabPhrases: [],
    );

// ──────────────────────────────────────────────────────────────
// DAY 2 – Bài tập & Quiz dịch thuật
// ──────────────────────────────────────────────────────────────
LessonDay getLesson02Day2() => LessonDay(
      id: 'lesson02_day2',
      dayNumber: 2,
      themeId: 'theme_02_lesson',
      titleVi: 'Ngày 2 — Bài tập & Quiz dịch thuật',
      phases: [
        _buildDay2Phase1(),
        _buildDay2Phase2(),
        _buildDay2Phase3(),
      ],
    );

LessonPhase _buildDay2Phase1() => LessonPhase(
      id: 'lesson02_phase4',
      phaseTypeStr: 'read_listen',
      titleVi: '📖 Đọc hiểu: 4 câu ví dụ minh họa',
      contentVi: '''
══════════════════════════════════════════════════════
📖 CÂU VÍ DỤ MINH HỌA (Illustrations từ sách)
══════════════════════════════════════════════════════

Mỗi ví dụ đều có 3 phần:
   ▸ Cụm từ Pāḷi (ghi chú biến cách)
   ▸ Cụm từ Việt tương ứng
   ▸ Bản dịch đầy đủ

────────────────────────────────────────────────────
Ví dụ 1 — SDC số ít + Ngôi 3:
────────────────────────────────────────────────────
   Pāḷi :  Dāsena (SDC, số ít)    gacchati.
   Việt  :  với người hầu          anh ta đi.
   Nghĩa :  "Anh ta đi với người hầu."

🔎 Phân tích:
   • "Dāsena" = SDC số ít của "dāsa" → nghĩa là "với người hầu".
   • "gacchati" = động từ Ngôi 3 số ít của "gamu" = "đi".
   • Đây là động từ chỉ vận động → KHÔNG cần Đối Cách.

────────────────────────────────────────────────────
Ví dụ 2 — SDC số nhiều + Ngôi 2 số ít:
────────────────────────────────────────────────────
   Pāḷi :  Vejjebhi (SDC, số nhiều)   labhasi.
   Việt  :  nhờ các vị bác sĩ          bạn nhận được.
   Nghĩa :  "Bạn nhận được nhờ các vị bác sĩ."

🔎 Phân tích:
   • "Vejjebhi" = SDC số nhiều của "vejja" → "nhờ các vị bác sĩ".
   • "labhasi" = động từ Ngôi 2 số ít của "labha" = "nhận được".
   • Đuôi "-si" đánh dấu Ngôi 2 số ít.

────────────────────────────────────────────────────
Ví dụ 3 — CĐC số ít + Ngôi 2 số ít:
────────────────────────────────────────────────────
   Pāḷi :  Sunakhassa (CĐC, số ít)   āhāraṃ (ĐC)   desi.
   Việt  :  đến con chó               vật thực       bạn cho.
   Nghĩa :  "Bạn cho vật thực đến con chó."

🔎 Phân tích:
   • "Sunakhassa" = CĐC số ít (= đến con chó).
   • "āhāraṃ" = Đối Cách số ít của "āhāra" (= vật thực).
   • "desi" = động từ Ngôi 2 số ít của "dā" = "cho".

────────────────────────────────────────────────────
Ví dụ 4 — CĐC số nhiều + Ngôi 2 số nhiều:
────────────────────────────────────────────────────
   Pāḷi :  Samaṇānaṃ (CĐC, số nhiều)   dhammaṃ (ĐC)   pesetha.
   Việt  :  đến các vị sa-môn           Pháp            các bạn gởi.
   Nghĩa :  "Các bạn gởi Pháp đến các vị sa-môn."

🔎 Phân tích:
   • "Samaṇānaṃ" = CĐC số nhiều (= đến các vị sa-môn).
   • "dhammaṃ" = Đối Cách số ít (= Pháp).
   • "pesetha" = động từ Ngôi 2 số NHIỀU của "pesa" = "gởi".
   • Đuôi "-tha" đánh dấu Ngôi 2 số nhiều.

══════════════════════════════════════════════════════
💡 QUY TẮC VÀNG
══════════════════════════════════════════════════════
✅ Động từ chỉ VẬN ĐỘNG (đi, đến, mang, gởi...) → dùng Đối Cách.
✅ SDC = bởi/bằng/nhờ (công cụ, phương tiện, người cùng đi).
✅ CĐC = đến/cho (người nhận, mục đích).
✅ Đuôi -si = Ngôi 2 số ít (Tvaṃ).
✅ Đuôi -tha = Ngôi 2 số nhiều (Tumhe).
''',
      contentEn: 'Four illustration sentences analysed: Dāsena gacchati; Vejjebhi labhasi; Sunakhassa āhāraṃ desi; Samaṇānaṃ dhammaṃ pesetha.',
    );

LessonPhase _buildDay2Phase2() => LessonPhase(
      id: 'lesson02_phase5',
      phaseTypeStr: 'mind_game',
      titleVi: '🧠 Ghép câu: Dịch 4 câu ví dụ minh họa',
      contentVi:
          'Nhấn vào từng cụm tiếng Việt → đọc to cụm Pāḷi tương ứng → nhấn lại để xem đáp án.',
      mixedSegments: const [
        MixedSegment(text: '【Ví dụ 1】'),
        MixedSegment(text: 'Dāsena gacchati.'),
        MixedSegment(text: 'Anh ta đi', isVietnamese: true, answer: 'gacchati'),
        MixedSegment(text: 'với người hầu', isVietnamese: true, answer: 'Dāsena'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ví dụ 2】'),
        MixedSegment(text: 'Vejjebhi labhasi.'),
        MixedSegment(text: 'Bạn nhận được', isVietnamese: true, answer: 'labhasi'),
        MixedSegment(text: 'nhờ các vị bác sĩ', isVietnamese: true, answer: 'Vejjebhi'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ví dụ 3】'),
        MixedSegment(text: 'Sunakhassa āhāraṃ desi.'),
        MixedSegment(text: 'Bạn cho', isVietnamese: true, answer: 'desi'),
        MixedSegment(text: 'vật thực', isVietnamese: true, answer: 'āhāraṃ'),
        MixedSegment(text: 'đến con chó', isVietnamese: true, answer: 'Sunakhassa'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ví dụ 4】'),
        MixedSegment(text: 'Samaṇānaṃ dhammaṃ pesetha.'),
        MixedSegment(text: 'Các bạn gởi', isVietnamese: true, answer: 'pesetha'),
        MixedSegment(text: 'Pháp', isVietnamese: true, answer: 'dhammaṃ'),
        MixedSegment(text: 'đến các vị sa-môn', isVietnamese: true, answer: 'Samaṇānaṃ'),
      ],
    );

LessonPhase _buildDay2Phase3() => LessonPhase(
      id: 'lesson02_phase6',
      phaseTypeStr: 'listening_quiz',
      titleVi: '🎧 Quiz: Dịch câu Pāḷi (Bài tập 2)',
      contentVi:
          'Trả lời 6 câu hỏi trắc nghiệm bằng cách CHỌN BẢN DỊCH TIẾNG VIỆT ĐÚNG cho mỗi câu Pāḷi.',
      questions: const [
        QuizQuestion(
          id: 'lesson02_q08',
          questionText: 'Câu 1. "Tvaṃ rathena gacchasi." có nghĩa là:',
          options: [
            'Bạn cho xe ngựa cho ai đó.',
            'Bạn đi bằng xe ngựa.',
            'Bạn có một chiếc xe ngựa.',
            'Bạn đánh xe ngựa.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson02_q09',
          questionText: '"Tvaṃ daṇḍena sunakhaṃ paharasi." có nghĩa là:',
          options: [
            'Bạn cho con chó cây gậy.',
            'Con chó đánh bạn bằng cây gậy.',
            'Bạn đánh con chó bằng cây gậy.',
            'Bạn mang cây gậy đến con chó.',
          ],
          correctIndex: 2,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson02_q10',
          questionText: '"Tvaṃ gilānassa osadhaṃ desi." có nghĩa là:',
          options: [
            'Bạn nhận thuốc từ người bệnh.',
            'Người bệnh cho bạn thuốc.',
            'Bạn cho thuốc đến người bệnh.',
            'Bạn đi đến người bệnh bằng thuốc.',
          ],
          correctIndex: 2,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson02_q11',
          questionText: '"Tumhe hatthehi osadhaṃ labhatha." có nghĩa là:',
          options: [
            'Các bạn cho thuốc bằng tay.',
            'Các bạn nhận thuốc bằng tay.',
            'Các bạn đi bằng tay đến chỗ có thuốc.',
            'Các bạn đánh thuốc bằng tay.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson02_q12',
          questionText: '"Tvaṃ samaṇehi Buddhaṃ vandasi." có nghĩa là:',
          options: [
            'Bạn cho Đức Phật đến các vị sa-môn.',
            'Các vị sa-môn lễ bái Đức Phật.',
            'Bạn lễ bái Đức Phật cùng các vị sa-môn.',
            'Bạn gởi Đức Phật đến các vị sa-môn.',
          ],
          correctIndex: 2,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson02_q13',
          questionText: '"Buddho Dhammaṃ gilānānaṃ deseti." có nghĩa là:',
          options: [
            'Đức Phật nhận Pháp từ những người bệnh.',
            'Đức Phật thuyết Pháp cho những người bệnh.',
            'Đức Phật đi đến chỗ những người bệnh.',
            'Đức Phật mang Pháp đến những người bệnh.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
      ],
      fabAnswers: const [
        FabAnswerItem(en: 'Answer 8 → B', vi: '① "rathena" = SDC số ít → "bằng xe ngựa". Động từ "gacchasi" = Ngôi 2 số ít của "gamu" = "đi".'),
        FabAnswerItem(en: 'Answer 9 → C', vi: '② "daṇḍena" = SDC số ít = "bằng cây gậy". "sunakhaṃ" = ĐC = "con chó". "paharasi" = Ngôi 2 sg "đánh".'),
        FabAnswerItem(en: 'Answer 10 → C', vi: '③ "gilānassa" = CĐC số ít = "đến người bệnh". "osadhaṃ" = ĐC = "thuốc". "desi" = Ngôi 2 sg của "dā" = "cho".'),
        FabAnswerItem(en: 'Answer 11 → B', vi: '④ "hatthehi" = SDC số nhiều = "bằng các bàn tay". "labhatha" = Ngôi 2 số NHIỀU của "labha" = "nhận được".'),
        FabAnswerItem(en: 'Answer 12 → C', vi: '⑤ "samaṇehi" = SDC số nhiều = "với/cùng các vị sa-môn". "Buddhaṃ" = ĐC = "Đức Phật". "vandasi" = Ngôi 2 sg = "lễ bái".'),
        FabAnswerItem(en: 'Answer 13 → B', vi: '⑥ "gilānānaṃ" = CĐC số nhiều = "đến những người bệnh". "deseti" = Ngôi 3 sg của "disa" = "thuyết". → Đức Phật thuyết Pháp cho những người bệnh.'),
      ],
      fabVocab: [],
      fabPhrases: [],
    );

// ──────────────────────────────────────────────────────────────
// AGGREGATE
// ──────────────────────────────────────────────────────────────
List<LessonDay> getLesson02Data() => [
      getLesson02Day1(),
      getLesson02Day2(),
    ];

class Lesson02Bundle {
  static LessonMeta meta = getLesson02Meta();
  static LessonDay day1 = getLesson02Day1();
  static LessonDay day2 = getLesson02Day2();
  static List<LessonDay> all = getLesson02Data();
}
