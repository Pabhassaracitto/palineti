// lesson_03.dart
// Bài học số 3: Biến cách XXC & STC của Danh từ Nam "-a"
//               + Động từ Thì Hiện tại — Ngôi thứ nhất (-āmi / -āma)
// An Elementary Pāḷi Course – Nārada Mahāthera
// ---------------------------------------------------------------------------

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

// ──────────────────────────────────────────────────────────────
// LESSON META
// ──────────────────────────────────────────────────────────────
LessonMeta getLesson03Meta() => const LessonMeta(
      id: 'theme_03_lesson',
      lessonNumber: 3,
      titleVi: 'XXC & STC (Nam -a) + Động từ Ngôi 1',
      titleEn: 'Ablative & Genitive of Masc. -a; 1st Person Verbs',
      iconEmoji: '📗',
      colorValue: 0xFF238636,
      description:
          'Xuất Xứ (-ā/-amhā/-asmā / -ehi), Sở Thuộc (-assa / -ānaṃ) và đuôi -āmi/-āma ngôi 1',
    );

// ──────────────────────────────────────────────────────────────
// VOCABULARY
// ──────────────────────────────────────────────────────────────
final kLesson03Vocab = <PaliVocabModel>[
  _v(1, 'ācariya', 'masc_a', 'vị thầy giáo', 'teacher', 'aa-ca-ri-yo',
      'Ācariyassa ovādaṃ suṇāmi.', 'Tôi nghe lời khuyên từ vị thầy giáo.'),
  _v(2, 'amba', 'masc_a', 'cây xoài (nam), trái xoài (nữ)',
      'mango tree, mango fruit', 'am-bo',
      'Ambā rukkhasmā patanti.', 'Những trái xoài rơi xuống từ cây.'),
  _v(3, 'āpaṇa', 'masc_a', 'cửa hiệu, cửa hàng, chợ', 'shop, market', 'aa-pa-ṇo',
      'Āpaṇasmā ambe kiṇāmi.', 'Tôi mua trái xoài từ chợ.'),
  _v(4, 'ārāma', 'masc_a', 'tinh xá, chùa, vườn, công viên',
      'temple, garden, park', 'aa-raa-mo',
      'Ārāmasmā nikkhamāmi.', 'Tôi đi khỏi khu vườn.'),
  _v(5, 'assa', 'masc_a', 'con ngựa', 'horse', 'as-so',
      'Assasmā patāmi.', 'Tôi té xuống từ con ngựa.'),
  _v(6, 'mātula', 'masc_a', 'người chú', 'uncle', 'maa-tu-lo',
      'Mātulassa ārāmo sundaro.', 'Khu vườn của người chú rất đẹp.'),
  _v(7, 'ovāda', 'masc_a', 'lời khuyên, huấn từ', 'advice, exhortation', 'o-vaa-do',
      'Ovādaṃ gaṇhāmi.', 'Tôi nhận lời khuyên.'),
  _v(8, 'pabbata', 'masc_a', 'hòn đá lớn, núi', 'rock, mountain', 'pab-ba-to',
      'Pabbatasmā oruhāma.', 'Chúng tôi đi xuống từ ngọn núi.'),
  _v(9, 'paṇṇākāra', 'masc_a', 'phần thưởng, món quà', 'reward, gift',
      'paṇ-ṇaa-kaa-ro', 'Paṇṇākāraṃ gaṇhāmi.', 'Tôi nhận phần thưởng.'),
  _v(10, 'rukha', 'masc_a', 'cây', 'tree', 'ruk-kho',
      'Rukkhā pabbatasmā patanti.', 'Các cây rơi từ ngọn núi.'),
  _v(11, 'sissa', 'masc_a', 'người học trò', 'pupil, student', 'sis-so',
      'Sissā ācariyehi uggaṇhanti.', 'Các học trò học từ các vị thầy giáo.'),
  _v(12, 'taḷāka', 'masc_a', 'vũng, ao, hồ bơi, hồ', 'pond, pool, lake', 'ta-ḷaa-ko',
      'Taḷākaṃ oruhāmi.', 'Tôi đi xuống hồ nước.'),

  // ---------- 11 Động từ mới ----------
  _v(13, 'gaṇhāti', 'verb_pres', 'lấy, nhận, nắm, cầm (gaha)', 'takes, grasps',
      'ga-ṇhaa-ti', 'So paṇṇākāraṃ gaṇhāti.', 'Ông nhận phần thưởng.'),
  _v(14, 'saṅgaṇhāti', 'verb_pres', 'đối xử, sưu tập (gaha + saṃ)',
      'collects, treats', 'sam-ga-ṇhaa-ti', '', ''),
  _v(15, 'uggaṇhāti', 'verb_pres', 'học (gaha + u)', 'learns, picks up',
      'ug-ga-ṇhaa-ti', 'Sissā uggaṇhanti.', 'Các học trò học.'),
  _v(16, 'kiṇāti', 'verb_pres', 'mua (ki)', 'buys', 'ki-ṇaa-ti',
      'So ambe kiṇāti.', 'Ông mua trái xoài.'),
  _v(17, 'vikkiṇāti', 'verb_pres', 'bán (ki + vi)', 'sells', 'vik-ki-ṇaa-ti',
      'So ambe vikkiṇāti.', 'Ông bán trái xoài.'),
  _v(18, 'nikkhamati', 'verb_pres', 'rời khỏi, đi khỏi (kamu + ni)', 'goes out',
      'nik-kha-ma-ti', 'So gharamhā nikkhamati.', 'Ông rời khỏi nhà.'),
  _v(19, 'patati', 'verb_pres', 'rớt xuống, té xuống (pata)', 'falls', 'pa-ta-ti',
      'Phalaṃ rukkhasmā patati.', 'Quả rơi từ cây.'),
  _v(20, 'ruhati', 'verb_pres', 'mọc lên (ruha)', 'grows', 'ru-ha-ti', '', ''),
  _v(21, 'āruhati', 'verb_pres', 'đi lên, leo lên (ruha + ā)', 'climbs up',
      'aa-ru-ha-ti', 'So assaṃ āruhati.', 'Ông leo lên ngựa.'),
  _v(22, 'oruhati', 'verb_pres', 'đi xuống, leo xuống (ruha + ava → o)',
      'climbs down', 'o-ru-ha-ti', 'So pabbatā oruhati.', 'Ông leo xuống từ núi.'),
  _v(23, 'suṇāti', 'verb_pres', 'nghe (su)', 'hears', 'su-ṇaa-ti',
      'So dhammaṃ suṇāti.', 'Ông nghe Pháp.'),
];

PaliVocabModel _v(int id, String root, String paradigmId, String wordVi,
    String wordEn, String pronunciation, String examplePali, String exampleVi) {
  final num = id.toString().padLeft(3, '0');
  return PaliVocabModel(
    id: 'pv_L03_$num',
    root: root,
    paradigmId: paradigmId,
    wordVi: wordVi,
    wordEn: wordEn,
    lessonId: 'lesson_03',
    pronunciation: pronunciation,
    examplePali: examplePali,
    exampleVi: exampleVi,
  );
}

// ──────────────────────────────────────────────────────────────
// DAY 1
// ──────────────────────────────────────────────────────────────
LessonDay getLesson03Day1() => LessonDay(
      id: 'lesson03_day1',
      dayNumber: 1,
      themeId: 'theme_03_lesson',
      titleVi: 'Ngày 1 — Lý thuyết & Từ vựng',
      phases: [
        _buildDay1Phase1(),
        _buildDay1Phase2(),
        _buildDay1Phase3(),
      ],
    );

LessonPhase _buildDay1Phase1() => LessonPhase(
      id: 'lesson03_phase1',
      phaseTypeStr: 'read_listen',
      titleVi: '📘 Biến cách XXC & STC + Động từ Ngôi 1',
      contentVi: '''
🎯 MỤC TIÊU BÀI 3
───────────────────
• Học 2 biến cách mới của danh từ Nam "-a":
    ✦ Xuất Xứ Cách (XXC) — Ablative
    ✦ Sở Thuộc Cách (STC) — Genitive
• Học chia động từ Thì Hiện Tại ở Ngôi thứ nhất (-āmi / -āma)
• Nắm vững 12 danh từ Nam mới + 11 động từ mới.
• Hiểu rõ quy tắc TRƯỜNG ÂM trước "-āmi", "-āma", "-naṃ".

══════════════════════════════════════════════════════
A. BIẾN CÁCH DANH TỪ NAM TÁNH TẬN CÙNG "-a" (tiếp theo)
══════════════════════════════════════════════════════

Cho căn "nara" (người đàn ông):

┌──────────┬──────────────────┬───────────────────────┐
│ Biến cách │  Số ít (Sg)      │   Số nhiều (Pl)       │
├──────────┼──────────────────┼───────────────────────┤
│  XXC     │ narā             │ narebhi / narehi      │
│          │ naramhā, narasmā │                       │
│  STC     │ narassa          │ narānaṃ               │
└──────────┴──────────────────┴───────────────────────┘

📌 Ý nghĩa:
• XXC (Xuất Xứ Cách): từ (xuất phát từ đâu)
   → nguồn gốc, điểm xuất phát, người cho
   → Ex: āpaṇasmā = "từ chợ"; rukkhasmā = "từ cây"

• STC (Sở Thuộc Cách): của (sở hữu / thuộc về)
   → quan hệ sở hữu, thuộc về
   → Ex: mātulassa = "của người chú"; ācariyānaṃ = "của các vị thầy giáo"

📌 Biến thể cuối — danh từ Nam "-a":

┌──────────┬──────────────────┬──────────────────────┐
│ Biến cách │  Số ít (Sg)      │  Số nhiều (Pl)       │
├──────────┼──────────────────┼──────────────────────┤
│  XXC     │ -ā               │  -ebhi / -ehi        │
│          │ -amhā / -asmā    │                      │
│  STC     │ -assa            │  -ānaṃ               │
└──────────┴──────────────────┴──────────────────────┘

⚠️ Lưu ý QUAN TRỌNG:
• XXC có 3 hình thức số ít: -ā, -amhā, -asmā (cùng một nghĩa)
  → Ưu tiên "-asmā" và "-ānaṃ" cho dễ nhận biết.
• STC số ít "-assa" cũng được dùng như CĐC số ít (-āya / -assa).
• STC số nhiều "-ānaṃ": nguyên âm trước "-naṃ" LUÔN là trường âm (dài).

══════════════════════════════════════════════════════
B. CHIA ĐỘNG TỪ — THÌ HIỆN TẠI NGÔI 1
══════════════════════════════════════════════════════

Ngôi thứ nhất (First Person Terminations):

┌────────────┬──────────────────┐
│  Số ít (Sg)│     -āmi         │
│ Số nhiều(Pl)│    -āma         │
└────────────┴──────────────────┘

📌 Ví dụ (gốc "pac-" = nấu):
• Ahaṃ pacāmi.   → Tôi nấu; Tôi đang nấu.
• Mayaṃ pacāma.  → Chúng ta nấu; Chúng ta đang nấu.

⭐ QUY TẮC VÀNG:
Nguyên âm đứng trước "-āmi" và "-āma" LUÔN được kéo dài (trường âm).
   pac + āmi  →  pacāmi   (KHÔNG phải pacami)
   han + āmi  →  hanāmi
   suṇ + āti  →  suṇāti   (ngôi 3 sg. của √su cũng kéo dài)

══════════════════════════════════════════════════════
📚 12 DANH TỪ NAM MỚI
══════════════════════════════════════════════════════
• ācariya     — vị thầy giáo
• amba        — cây xoài (nam), trái xoài (nữ)
• āpaṇa       — cửa hiệu, cửa hàng, chợ
• ārāma       — tinh xá, chùa, vườn, công viên
• assa        — con ngựa
• mātula      — người chú
• ovāda       — lời khuyên, huấn từ
• pabbata     — hòn đá lớn, núi
• paṇṇākāra   — phần thưởng, món quà
• rukha       — cây
• sissa       — người học trò
• taḷāka      — vũng, ao, hồ bơi, hồ

══════════════════════════════════════════════════════
🔥 11 ĐỘNG TỪ MỚI
══════════════════════════════════════════════════════
📌 Nhóm "gaha" (lấy): gaṇhāti, saṅgaṇhāti, uggaṇhāti (học).
📌 Nhóm "ki" (mua/bán): kiṇāti, vikkiṇāti.
📌 Nhóm "kamu" (đi): nikkhamati (rời khỏi).
📌 Nhóm "pata" (rớt): patati.
📌 Nhóm "ruha" (mọc/leo): ruhati, āruhati, oruhati (ava → o).
📌 Nhóm "su" (nghe): suṇāti.

══════════════════════════════════════════════════════
💡 TIẾP ĐẦU NGỮ (Upasagga)
══════════════════════════════════════════════════════
• ā- (hướng về, lên)  → āgacchati, āharati, āruhati
• ni- (ra, xuống)     → nikkhamati
• u- (lên, trên)      → uggaṇhāti
• vi- (tách ra, ra)   → vikkiṇāti
• saṃ- (cùng với)     → saṅgaṇhāti
• ava- (xuống → "o")  → oruhati
• pa- (về phía)       → paharati
• nī- (ra xa)         → nīharati
''',
      contentEn: 'Lesson 3 covers the Ablative (-ā/-amhā/-asmā / -ehi) "from" and Genitive (-assa / -ānaṃ) "of", plus 1st person present terminations -āmi/-āma with long vowel rule.',
      fabVocab: const [
        FabVocabItem(wordEn: 'ācariya', pronunciation: 'aa-ca-ri-yo', wordVi: 'vị thầy giáo', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'amba', pronunciation: 'am-bo', wordVi: 'cây xoài / trái xoài', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'āpaṇa', pronunciation: 'aa-pa-ṇo', wordVi: 'cửa hiệu, chợ', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'ārāma', pronunciation: 'aa-raa-mo', wordVi: 'tinh xá, vườn, công viên', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'assa', pronunciation: 'as-so', wordVi: 'con ngựa', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'mātula', pronunciation: 'maa-tu-lo', wordVi: 'người chú', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'ovāda', pronunciation: 'o-vaa-do', wordVi: 'lời khuyên, huấn từ', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'pabbata', pronunciation: 'pab-ba-to', wordVi: 'hòn đá lớn, núi', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'paṇṇākāra', pronunciation: 'paṇ-ṇaa-kaa-ro', wordVi: 'phần thưởng, món quà', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'rukha', pronunciation: 'ruk-kho', wordVi: 'cây', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'sissa', pronunciation: 'sis-so', wordVi: 'người học trò', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'taḷāka', pronunciation: 'ta-ḷaa-ko', wordVi: 'vũng, ao, hồ', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'gaṇhāti', pronunciation: 'ga-ṇhaa-ti', wordVi: 'lấy, nhận, nắm, cầm (gaha)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'saṅgaṇhāti', pronunciation: 'sam-ga-ṇhaa-ti', wordVi: 'đối xử, sưu tập (gaha + saṃ)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'uggaṇhāti', pronunciation: 'ug-ga-ṇhaa-ti', wordVi: 'học (gaha + u)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'kiṇāti', pronunciation: 'ki-ṇaa-ti', wordVi: 'mua (ki)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'vikkiṇāti', pronunciation: 'vik-ki-ṇaa-ti', wordVi: 'bán (ki + vi)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'nikkhamati', pronunciation: 'nik-kha-ma-ti', wordVi: 'rời khỏi, đi khỏi (kamu + ni)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'patati', pronunciation: 'pa-ta-ti', wordVi: 'rớt xuống, té xuống (pata)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'ruhati / rūhati', pronunciation: 'ru-ha-ti / ruu-ha-ti', wordVi: 'mọc lên (ruha)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'āruhati', pronunciation: 'aa-ru-ha-ti', wordVi: 'đi lên, leo lên (ruha + ā)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'oruhati', pronunciation: 'o-ru-ha-ti', wordVi: 'đi xuống, leo xuống (ruha + ava → o)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'suṇāti', pronunciation: 'su-ṇaa-ti', wordVi: 'nghe (su)', partOfSpeech: 'dong_tu'),
      ],
      fabPhrases: const [
        FabPhraseItem(phrase: 'Ahaṃ ...āmi.', meaning: 'Tôi (làm gì đó) — Ngôi 1 số ít, đuôi -āmi'),
        FabPhraseItem(phrase: 'Mayaṃ ...āma.', meaning: 'Chúng tôi (làm gì đó) — Ngôi 1 số nhiều, đuôi -āma'),
        FabPhraseItem(phrase: 'pac + āmi → pacāmi', meaning: '⭐ Nguyên âm trước -āmi LUÔN dài'),
        FabPhraseItem(phrase: 'han + āmi → hanāmi', meaning: '⭐ Nguyên âm trước -āmi LUÔN dài'),
        FabPhraseItem(phrase: 'suṇ + āti → suṇāti', meaning: '⭐ Nguyên âm trước -āti LUÔN dài'),
        FabPhraseItem(phrase: '...anti', meaning: 'Đuôi Ngôi 3 số nhiều Hiện tại'),
      ],
    );

LessonPhase _buildDay1Phase2() => LessonPhase(
      id: 'lesson03_phase2',
      phaseTypeStr: 'mind_game',
      titleVi: '🧠 Ghép từ: 12 danh từ + 11 động từ mới',
      contentVi:
          'Nhấn vào từng ô tiếng Việt → đọc to từ Pāḷi tương ứng → nhấn lại để xem đáp án.',
      mixedSegments: const [
        MixedSegment(text: '【12 Danh từ mới】'),
        MixedSegment(text: 'ācariya'),
        MixedSegment(text: 'vị thầy giáo', isVietnamese: true, answer: 'ācariya'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'amba'),
        MixedSegment(text: 'cây xoài / trái xoài', isVietnamese: true, answer: 'amba'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'āpaṇa'),
        MixedSegment(text: 'cửa hiệu, chợ', isVietnamese: true, answer: 'āpaṇa'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'ārāma'),
        MixedSegment(text: 'tinh xá, vườn, công viên', isVietnamese: true, answer: 'ārāma'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'assa'),
        MixedSegment(text: 'con ngựa', isVietnamese: true, answer: 'assa'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'mātula'),
        MixedSegment(text: 'người chú', isVietnamese: true, answer: 'mātula'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'ovāda'),
        MixedSegment(text: 'lời khuyên, huấn từ', isVietnamese: true, answer: 'ovāda'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'pabbata'),
        MixedSegment(text: 'hòn đá lớn, núi', isVietnamese: true, answer: 'pabbata'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'paṇṇākāra'),
        MixedSegment(text: 'phần thưởng, món quà', isVietnamese: true, answer: 'paṇṇākāra'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'rukha'),
        MixedSegment(text: 'cây', isVietnamese: true, answer: 'rukha'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'sissa'),
        MixedSegment(text: 'người học trò', isVietnamese: true, answer: 'sissa'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'taḷāka'),
        MixedSegment(text: 'vũng, ao, hồ', isVietnamese: true, answer: 'taḷāka'),
        MixedSegment(text: '  ───  '),
        MixedSegment(text: '【11 Động từ mới】'),
        MixedSegment(text: 'gaṇhāti'),
        MixedSegment(text: 'lấy, nhận, nắm', isVietnamese: true, answer: 'gaṇhāti'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'saṅgaṇhāti'),
        MixedSegment(text: 'đối xử, sưu tập', isVietnamese: true, answer: 'saṅgaṇhāti'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'uggaṇhāti'),
        MixedSegment(text: 'học', isVietnamese: true, answer: 'uggaṇhāti'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'kiṇāti'),
        MixedSegment(text: 'mua', isVietnamese: true, answer: 'kiṇāti'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'vikkiṇāti'),
        MixedSegment(text: 'bán', isVietnamese: true, answer: 'vikkiṇāti'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'nikkhamati'),
        MixedSegment(text: 'rời khỏi, đi khỏi', isVietnamese: true, answer: 'nikkhamati'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'patati'),
        MixedSegment(text: 'rớt xuống, té xuống', isVietnamese: true, answer: 'patati'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'ruhati / rūhati'),
        MixedSegment(text: 'mọc lên', isVietnamese: true, answer: 'ruhati'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'āruhati'),
        MixedSegment(text: 'leo lên', isVietnamese: true, answer: 'āruhati'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'oruhati'),
        MixedSegment(text: 'leo xuống', isVietnamese: true, answer: 'oruhati'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'suṇāti'),
        MixedSegment(text: 'nghe', isVietnamese: true, answer: 'suṇāti'),
      ],
    );

LessonPhase _buildDay1Phase3() => LessonPhase(
      id: 'lesson03_phase3',
      phaseTypeStr: 'listening_quiz',
      titleVi: '🎧 Quiz: Biến cách XXC, STC & Ngôi 1',
      contentVi:
          'Trả lời 7 câu hỏi trắc nghiệm về biến cách Xuất Xứ (XXC), Sở Thuộc (STC) và chia động từ Ngôi thứ nhất.',
      questions: const [
        QuizQuestion(
          id: 'lesson03_q01',
          questionText:
              'Câu 1. Hình thức Xuất Xứ Cách (XXC) số ít của danh từ "nara" là gì?',
          options: [
            'narā / naramhā / narasmā',
            'narāya',
            'narānaṃ',
            'narehi',
          ],
          correctIndex: 0,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson03_q02',
          questionText:
              'Câu 2. Hình thức Xuất Xứ Cách (XXC) số nhiều của danh từ "nara" là gì?',
          options: ['naramhā', 'narena', 'narānaṃ', 'narebhi / narehi'],
          correctIndex: 3,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson03_q03',
          questionText:
              'Câu 3. Hình thức Sở Thuộc Cách (STC) số ít của danh từ "nara" là gì?',
          options: ['narā', 'narena', 'narassa', 'narānaṃ'],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson03_q04',
          questionText:
              'Câu 4. Hình thức Sở Thuộc Cách (STC) số nhiều của danh từ "nara" là gì?',
          options: ['narassa', 'narena', 'narānaṃ', 'narehi'],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson03_q05',
          questionText:
              'Câu 5. Nguyên âm đứng trước "-āmi" và "-āma" trong chia động từ luôn được:',
          options: [
            'giữ nguyên (ngắn)',
            'kéo dài (trường âm)',
            'tùy trường hợp',
            'bỏ qua',
          ],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson03_q06',
          questionText: '"Ahaṃ pacāmi." được dịch là:',
          options: [
            'Chúng tôi nấu.',
            'Tôi nấu; Tôi đang nấu.',
            'Bạn nấu.',
            'Anh ấy nấu.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson03_q07',
          questionText:
              'Câu 7. Trong câu "Ahaṃ ācariyasmā Dhammaṃ suṇāmi.", từ "ācariyasmā" ở biến cách nào?',
          options: [
            'SDC số ít (Instrumental)',
            'XXC số ít (Ablative)',
            'CĐC số ít (Dative)',
            'STC số ít (Genitive)',
          ],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
      ],
      fabAnswers: const [
        FabAnswerItem(en: 'Answer 1 → A', vi: '① XXC số ít của căn "-a" có 3 hình thức: -ā / -amhā / -asmā (cùng nghĩa "từ").'),
        FabAnswerItem(en: 'Answer 2 → D', vi: '② XXC số nhiều dùng chung hình thức với SDC số nhiều: -ebhi / -ehi.'),
        FabAnswerItem(en: 'Answer 3 → C', vi: '③ STC số ít duy nhất có đuôi "-assa" (nghĩa: "của"). Cũng dùng làm CĐC số ít.'),
        FabAnswerItem(en: 'Answer 4 → C', vi: '④ STC số nhiều duy nhất có đuôi "-ānaṃ" (nguyên âm trước -naṃ luôn trường âm).'),
        FabAnswerItem(en: 'Answer 5 → B', vi: '⑤ QUY TẮC VÀNG: pac + āmi → pacāmi (KHÔNG phải pacami).'),
        FabAnswerItem(en: 'Answer 6 → B', vi: '⑥ "Ahaṃ" = tôi (Ngôi 1 số ít). "pacāmi" = nấu + đuôi Ngôi 1 số ít "-āmi".'),
        FabAnswerItem(en: 'Answer 7 → B', vi: '⑦ "ācariyasmā" có đuôi "-asmā" → đây là XXC số ít (= "từ vị thầy giáo").'),
      ],
      fabVocab: [],
      fabPhrases: [],
    );

// ──────────────────────────────────────────────────────────────
// DAY 2
// ──────────────────────────────────────────────────────────────
LessonDay getLesson03Day2() => LessonDay(
      id: 'lesson03_day2',
      dayNumber: 2,
      themeId: 'theme_03_lesson',
      titleVi: 'Ngày 2 — Bài tập & Quiz dịch thuật',
      phases: [
        _buildDay2Phase1(),
        _buildDay2Phase2(),
        _buildDay2Phase3(),
      ],
    );

LessonPhase _buildDay2Phase1() => LessonPhase(
      id: 'lesson03_phase4',
      phaseTypeStr: 'read_listen',
      titleVi: '📖 Đọc hiểu: 6 câu ví dụ minh họa',
      contentVi: '''
══════════════════════════════════════════════════════
📖 CÂU VÍ DỤ MINH HỌA (Illustrations từ sách)
══════════════════════════════════════════════════════

────────────────────────────────────────────────────
Ví dụ 1 — XXC số ít (-ā / -asmā):
────────────────────────────────────────────────────
   Pāḷi :  Ambā (CC sn)  rukkhasmā (XXC, số ít)  patanti.
   Việt  :  những trái xoài   từ cây                 rơi xuống.
   Nghĩa :  "Những trái xoài rơi xuống từ cây."

🔎 "rukkhasmā" = XXC số ít; "patanti" = Ngôi 3 số nhiều.

────────────────────────────────────────────────────
Ví dụ 2 — XXC số nhiều + Ngôi 1 số nhiều:
────────────────────────────────────────────────────
   Pāḷi :  rukkhehi (XXC, số nhiều)  patāma.
   Việt  :  từ những cái cây           chúng tôi rớt xuống.
   Nghĩa :  "Chúng tôi rớt xuống từ những cái cây."

🔎 "rukkhehi" = XXC số nhiều; "patāma" = Ngôi 1 số nhiều (trường âm!).

────────────────────────────────────────────────────
Ví dụ 3 — XXC số nhiều + Ngôi 1 số ít:
────────────────────────────────────────────────────
   Pāḷi :  āpaṇehi (XXC, số nhiều)   kiṇāmi.
   Việt  :  từ các cửa hiệu            tôi mua.
   Nghĩa :  "Tôi mua từ các cửa hiệu."

🔎 "kiṇāmi" = Ngôi 1 số ít của "ki" = "mua".

────────────────────────────────────────────────────
Ví dụ 4 — XXC số ít + Đối Cách số ít:
────────────────────────────────────────────────────
   Pāḷi :  āpaṇā (XXC, số ít)        āpaṇaṃ (ĐC, số ít).
   Việt  :  từ chợ                     đến chợ.
   Nghĩa :  "(Tôi đi) từ chợ đến chợ."

────────────────────────────────────────────────────
Ví dụ 5 — STC số ít:
────────────────────────────────────────────────────
   Pāḷi :  mātulassa (STC, số ít)    ārāmo (CC).
   Việt  :  của người chú              khu vườn.
   Nghĩa :  "Khu vườn của người chú."

────────────────────────────────────────────────────
Ví dụ 6 — STC số nhiều:
────────────────────────────────────────────────────
   Pāḷi :  ācariyānaṃ (STC, số nhiều)  sissā (CC sn).
   Việt  :  của các vị thầy giáo        những người học sinh.
   Nghĩa :  "Những người học sinh của các vị thầy giáo."

══════════════════════════════════════════════════════
💡 QUY TẮC VÀNG
══════════════════════════════════════════════════════
✅ XXC = từ (xuất phát từ đâu).
✅ STC = của (sở hữu, thuộc về).
✅ Đuôi -āmi = Ngôi 1 số ít (Ahaṃ); -āma = Ngôi 1 số nhiều (Mayaṃ).
✅ Nguyên âm trước -āmi, -āma, -naṃ LUÔN là trường âm.
✅ XXC sg có 3 hình thức: -ā / -amhā / -asmā.
''',
      contentEn: 'Six illustration sentences for XXC/STC and 1st person: Ambā rukkhasmā patanti; rukkhehi patāma; āpaṇehi kiṇāmi; āpaṇā āpaṇaṃ; mātulassa ārāmo; ācariyānaṃ sissā.',
    );

LessonPhase _buildDay2Phase2() => LessonPhase(
      id: 'lesson03_phase5',
      phaseTypeStr: 'mind_game',
      titleVi: '🧠 Ghép câu: 36 câu Exercise 3',
      contentVi:
          'Nhấn vào từng câu tiếng Việt → đọc to câu Pāḷi tương ứng → nhấn lại để xem đáp án.',
      mixedSegments: const [
        MixedSegment(text: '【Ex 1】 Ahaṃ ācariyasmā Dhammaṃ suṇāmi.'),
        MixedSegment(text: 'Tôi nghe Pháp từ vị thầy giáo.', isVietnamese: true, answer: 'Ahaṃ ācariyasmā Dhammaṃ suṇāmi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 2】 Ahaṃ mātulasmā paṇṇākāraṃ gaṇhāmi.'),
        MixedSegment(text: 'Tôi nhận phần thưởng từ người chú.', isVietnamese: true, answer: 'Ahaṃ mātulasmā paṇṇākāraṃ gaṇhāmi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 3】 Ahaṃ assasmā patāmi.'),
        MixedSegment(text: 'Tôi té xuống từ con ngựa.', isVietnamese: true, answer: 'Ahaṃ assasmā patāmi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 4】 Ahaṃ mātulassa ārāmasmā nikkhamāmi.'),
        MixedSegment(text: 'Tôi đi khỏi khu vườn của người chú.', isVietnamese: true, answer: 'Ahaṃ mātulassa ārāmasmā nikkhamāmi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 5】 Ahaṃ āpaṇasmā ambe kiṇāmi.'),
        MixedSegment(text: 'Tôi mua trái xoài từ chợ.', isVietnamese: true, answer: 'Ahaṃ āpaṇasmā ambe kiṇāmi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 6】 Mayaṃ pabbatasmā oruhāma.'),
        MixedSegment(text: 'Chúng tôi đi xuống từ ngọn núi.', isVietnamese: true, answer: 'Mayaṃ pabbatasmā oruhāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 7】 Mayaṃ ācariyehi uggaṇhāma.'),
        MixedSegment(text: 'Chúng tôi học từ các vị thầy giáo.', isVietnamese: true, answer: 'Mayaṃ ācariyehi uggaṇhāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 8】 Mayaṃ ācariyassa ovādaṃ labhāma.'),
        MixedSegment(text: 'Chúng tôi nhận lời khuyên của vị thầy giáo.', isVietnamese: true, answer: 'Mayaṃ ācariyassa ovādaṃ labhāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 9】 Mayaṃ ācariyānaṃ putte saṅgaṇhāma.'),
        MixedSegment(text: 'Chúng tôi đối xử tốt với con của các vị thầy giáo.', isVietnamese: true, answer: 'Mayaṃ ācariyānaṃ putte saṅgaṇhāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 10】 Mayaṃ assānaṃ āhāraṃ āpaṇehi kiṇāma.'),
        MixedSegment(text: 'Chúng tôi mua vật thực cho ngựa từ chợ.', isVietnamese: true, answer: 'Mayaṃ assānaṃ āhāraṃ āpaṇehi kiṇāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 11】 Sissā samaṇānaṃ ārāmehi nikkhamanti.'),
        MixedSegment(text: 'Các học trò rời khỏi vườn của các sa-môn.', isVietnamese: true, answer: 'Sissā samaṇānaṃ ārāmehi nikkhamanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 12】 Ācariyo mātulassa assaṃ āruhati.'),
        MixedSegment(text: 'Vị thầy giáo leo lên con ngựa của người chú.', isVietnamese: true, answer: 'Ācariyo mātulassa assaṃ āruhati.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 13】 Mayaṃ rathehi gāmā gāmaṃ gacchāma.'),
        MixedSegment(text: 'Chúng tôi đi từ làng đến làng bằng xe ngựa.', isVietnamese: true, answer: 'Mayaṃ rathehi gāmā gāmaṃ gacchāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 14】 Tumhe ācariyehi paṇṇākāre gaṇhātha.'),
        MixedSegment(text: 'Các bạn nhận phần thưởng từ các vị thầy giáo.', isVietnamese: true, answer: 'Tumhe ācariyehi paṇṇākāre gaṇhātha.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 15】 Narā sissānaṃ dāsānaṃ ambe vikkiṇanti.'),
        MixedSegment(text: 'Những người đàn ông bán trái xoài cho học trò và người hầu.', isVietnamese: true, answer: 'Narā sissānaṃ dāsānaṃ ambe vikkiṇanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 16】 Mayaṃ samaṇānaṃ ovādaṃ suṇāma.'),
        MixedSegment(text: 'Chúng tôi nghe lời khuyên của các sa-môn.', isVietnamese: true, answer: 'Mayaṃ samaṇānaṃ ovādaṃ suṇāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 17】 Rukkhā pabbatasmā patanti.'),
        MixedSegment(text: 'Các cây đổ từ ngọn núi xuống.', isVietnamese: true, answer: 'Rukkhā pabbatasmā patanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 18】 Ahaṃ suṇakhehi taḷākaṃ oruhāmi.'),
        MixedSegment(text: 'Tôi đi xuống hồ cùng các con chó.', isVietnamese: true, answer: 'Ahaṃ suṇakhehi taḷākaṃ oruhāmi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 19】 Mayaṃ ārāmasmā ārāmaṃ gacchāma.'),
        MixedSegment(text: 'Chúng tôi đi từ vườn này đến vườn khác.', isVietnamese: true, answer: 'Mayaṃ ārāmasmā ārāmaṃ gacchāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 20】 Puttā ādarena janakānaṃ ovādaṃ gaṇhanti.'),
        MixedSegment(text: 'Các con trai nhận lời khuyên của các người cha với sự kính trọng.', isVietnamese: true, answer: 'Puttā ādarena janakānaṃ ovādaṃ gaṇhanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 21】 Ahaṃ ācariyasmā paṇṇākāraṃ gaṇhāmi.'),
        MixedSegment(text: 'Tôi nhận phần thưởng từ vị thầy giáo.', isVietnamese: true, answer: 'Ahaṃ ācariyasmā paṇṇākāraṃ gaṇhāmi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 22】 Ahaṃ āpaṇasmā nikkhamāmi.'),
        MixedSegment(text: 'Tôi rời khỏi chợ.', isVietnamese: true, answer: 'Ahaṃ āpaṇasmā nikkhamāmi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 23】 Ahaṃ mātulassa ācariyaṃ saṅgaṇhāmi.'),
        MixedSegment(text: 'Tôi đối xử tốt với vị thầy giáo của người chú.', isVietnamese: true, answer: 'Ahaṃ mātulassa ācariyaṃ saṅgaṇhāmi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 24】 Ahaṃ ācariyānaṃ ovādaṃ gaṇhāmi.'),
        MixedSegment(text: 'Tôi nhận lời khuyên từ các vị thầy giáo.', isVietnamese: true, answer: 'Ahaṃ ācariyānaṃ ovādaṃ gaṇhāmi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 25】 Ahaṃ pabbatasmā oruhāmi.'),
        MixedSegment(text: 'Tôi đi xuống từ ngọn núi.', isVietnamese: true, answer: 'Ahaṃ pabbatasmā oruhāmi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 26】 Mayaṃ āpaṇehi ambe kiṇāma.'),
        MixedSegment(text: 'Chúng tôi mua trái xoài từ chợ.', isVietnamese: true, answer: 'Mayaṃ āpaṇehi ambe kiṇāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 27】 Mayaṃ Buddhassa dhammaṃ ācariyasmā suṇāma.'),
        MixedSegment(text: 'Chúng tôi nghe Pháp của Đức Phật từ vị thầy giáo.', isVietnamese: true, answer: 'Mayaṃ Buddhassa dhammaṃ ācariyasmā suṇāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 28】 Mayaṃ taḷākasmā āruhāma.'),
        MixedSegment(text: 'Chúng tôi leo lên từ hồ nước.', isVietnamese: true, answer: 'Mayaṃ taḷākasmā āruhāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 29】 Mayaṃ mātulassa assaṃ āruhāma.'),
        MixedSegment(text: 'Chúng tôi leo lên con ngựa của người chú.', isVietnamese: true, answer: 'Mayaṃ mātulassa assaṃ āruhāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 30】 Mayaṃ pabbatasmā patāma.'),
        MixedSegment(text: 'Chúng tôi té xuống từ ngọn núi.', isVietnamese: true, answer: 'Mayaṃ pabbatasmā patāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 31】 Mayaṃ ādarena janakassa sissaṃ saṅgaṇhāma.'),
        MixedSegment(text: 'Chúng tôi đối xử tốt với học trò của người cha với sự kính trọng.', isVietnamese: true, answer: 'Mayaṃ ādarena janakassa sissaṃ saṅgaṇhāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 32】 Sissā ācariyehi paṇṇākāre gaṇhanti.'),
        MixedSegment(text: 'Các học trò nhận phần thưởng từ các vị thầy giáo.', isVietnamese: true, answer: 'Sissā ācariyehi paṇṇākāre gaṇhanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 33】 Tvaṃ janakassa vejjassa assaṃ vikkiṇasi.'),
        MixedSegment(text: 'Bạn bán con ngựa của người cha cho vị bác sĩ.', isVietnamese: true, answer: 'Tvaṃ janakassa vejjassa assaṃ vikkiṇasi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 34】 Mayaṃ assehi pabbatasmā pabbataṃ gacchāma.'),
        MixedSegment(text: 'Chúng tôi đi từ núi này đến núi khác bằng ngựa.', isVietnamese: true, answer: 'Mayaṃ assehi pabbatasmā pabbataṃ gacchāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 35】 Ācariyā sissānaṃ janakānaṃ ovādaṃ denti.'),
        MixedSegment(text: 'Các vị thầy giáo cho lời khuyên đến học trò và các người cha.', isVietnamese: true, answer: 'Ācariyā sissānaṃ janakānaṃ ovādaṃ denti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 36】 Mayaṃ samaṇehi uggaṇhāma.'),
        MixedSegment(text: 'Chúng tôi học từ các sa-môn.', isVietnamese: true, answer: 'Mayaṃ samaṇehi uggaṇhāma.'),
      ],
    );

LessonPhase _buildDay2Phase3() => LessonPhase(
      id: 'lesson03_phase6',
      phaseTypeStr: 'listening_quiz',
      titleVi: '🎧 Quiz: Dịch câu Pāḷi (Exercise 3)',
      contentVi:
          'Chọn bản dịch tiếng Việt đúng cho mỗi câu Pāḷi từ Exercise 3.',
      questions: const [
        QuizQuestion(
          id: 'lesson03_q08',
          questionText: '"Ahaṃ ācariyasmā Dhammaṃ suṇāmi." có nghĩa là:',
          options: [
            'Tôi cho vị thầy giáo Pháp.',
            'Tôi nghe Pháp từ vị thầy giáo.',
            'Vị thầy giáo nghe Pháp của tôi.',
            'Tôi đi đến chỗ vị thầy giáo.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson03_q09',
          questionText: '"Mayaṃ ācariyehi uggaṇhāma." có nghĩa là:',
          options: [
            'Chúng tôi dạy các vị thầy giáo.',
            'Chúng tôi nhận phần thưởng từ các vị thầy giáo.',
            'Chúng tôi học từ các vị thầy giáo.',
            'Chúng tôi bán cho các vị thầy giáo.',
          ],
          correctIndex: 2,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson03_q10',
          questionText: '"Ahaṃ āpaṇasmā ambe kiṇāmi." có nghĩa là:',
          options: [
            'Tôi bán trái xoài từ chợ.',
            'Tôi mua trái xoài từ chợ.',
            'Tôi đi đến chợ mua trái xoài.',
            'Tôi cho trái xoài đến chợ.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson03_q11',
          questionText: '"Mayaṃ pabbatasmā oruhāma." có nghĩa là:',
          options: [
            'Chúng tôi leo lên ngọn núi.',
            'Chúng tôi đi xuống từ ngọn núi.',
            'Chúng tôi đứng trên ngọn núi.',
            'Chúng tôi đi vòng quanh ngọn núi.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson03_q12',
          questionText: '"Ācariyo mātulassa assaṃ āruhati." có nghĩa là:',
          options: [
            'Vị thầy giáo cho con ngựa đến người chú.',
            'Vị thầy giáo bán con ngựa của người chú.',
            'Vị thầy giáo leo lên con ngựa của người chú.',
            'Vị thầy giáo nhận con ngựa từ người chú.',
          ],
          correctIndex: 2,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson03_q13',
          questionText:
              '"Sissā samaṇānaṃ ārāmehi nikkhamanti." có nghĩa là:',
          options: [
            'Các học trò đi đến vườn của các sa-môn.',
            'Các học trò rời khỏi vườn của các sa-môn.',
            'Các sa-môn rời khỏi vườn của các học trò.',
            'Các học trò xây vườn cho các sa-môn.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
      ],
      fabAnswers: const [
        FabAnswerItem(en: 'Answer 8 → B', vi: '① "ācariyasmā" = XXC số ít = "từ vị thầy giáo". "suṇāmi" = Ngôi 1 số ít của "suṇ" = "nghe".'),
        FabAnswerItem(en: 'Answer 9 → C', vi: '② "ācariyehi" = XXC/SDC số nhiều = "từ các vị thầy giáo". "uggaṇhāma" = Ngôi 1 số nhiều của "uggaṇh" (gaha+u) = "học".'),
        FabAnswerItem(en: 'Answer 10 → B', vi: '③ "āpaṇasmā" = XXC số ít = "từ chợ". "ambe" = ĐC số nhiều = "trái xoài". "kiṇāmi" = "mua".'),
        FabAnswerItem(en: 'Answer 11 → B', vi: '④ "pabbatasmā" = XXC số ít = "từ ngọn núi". "oruhāma" = Ngôi 1 số nhiều của "oruhati" (ruha + ava→o) = "leo xuống".'),
        FabAnswerItem(en: 'Answer 12 → C', vi: '⑤ "mātulassa" = STC số ít = "của người chú". "āruhati" = "leo lên".'),
        FabAnswerItem(en: 'Answer 13 → B', vi: '⑥ "samaṇānaṃ" = STC số nhiều = "của các sa-môn". "ārāmehi" = XXC số nhiều = "từ các vườn". "nikkhamanti" = Ngôi 3 số nhiều = "rời khỏi".'),
      ],
      fabVocab: [],
      fabPhrases: [],
    );

// ──────────────────────────────────────────────────────────────
// AGGREGATE
// ──────────────────────────────────────────────────────────────
List<LessonDay> getLesson03Data() => [
      getLesson03Day1(),
      getLesson03Day2(),
    ];

class Lesson03Bundle {
  static LessonMeta meta = getLesson03Meta();
  static LessonDay day1 = getLesson03Day1();
  static LessonDay day2 = getLesson03Day2();
  static List<LessonDay> all = getLesson03Data();
}
