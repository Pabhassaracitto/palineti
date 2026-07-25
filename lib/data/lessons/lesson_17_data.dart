// lesson_17.dart
// Bài học số 17: Danh từ Nam bất quy tắc (-a: atta/rāja) + 7 Loại Động từ Tướng
// An Elementary Pāḷi Course – Nārada Mahāthera
// ---------------------------------------------------------------------------

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

// ──────────────────────────────────────────────────────────────
// LESSON META
// ──────────────────────────────────────────────────────────────
LessonMeta getLesson17Meta() => const LessonMeta(
      id: 'theme_17_lesson',
      lessonNumber: 17,
      titleVi: 'DT Nam bất quy tắc (atta/rāja) & 7 Loại Động từ Tướng',
      titleEn: 'Irregular Masc. Nouns in -a (atta/rāja) & 7 Conjugations',
      iconEmoji: '👑',
      colorValue: 0xFFB45309,
      description:
          'Biến cách bất quy tắc của atta (tự ngã) và rāja (đức vua); 7 loại động từ tướng (conjugations) với các dấu hiệu -a, -ya, -ṇā/-nā, -o/-e; các động từ mới saṃkiḷissati/vihaññati/visujjhati; trích dẫn Kinh Pháp Cú về atta.',
    );

// ──────────────────────────────────────────────────────────────
// VOCABULARY (7 danh từ + 3 động từ + 3 bất biến từ = 13 mục)
// ──────────────────────────────────────────────────────────────
final kLesson17Vocab = <PaliVocabModel>[
  _v(1, 'atta', 'masc_a_irreg', 'linh hồn, tự ngã (đại từ phản thân)',
      'soul, self', 'at-taa', 'Attā hi attano nātho.',
      'Tự mình là chỗ nương tựa của mình.'),
  _v(2, 'rāja', 'masc_a_irreg', 'đức vua', 'king', 'raa-jaa',
      'Rājā pāsāde vasati.', 'Đức vua sống trong lâu đài.'),
  _v(3, 'amacca', 'masc_a', 'quan đại thần, viên chức quan', 'minister',
      'a-mac-co', 'Amaccā rājūbhi dhanaṃ labhanti.',
      'Các quan đại thần nhận tiền từ các đức vua.'),
  _v(4, 'attha', 'masc_a', 'vật chất, lợi ích, ý nghĩa, phúc lợi',
      'matter, welfare, meaning', 'at-tho', 'Ayaṃ me attano attho.',
      'Đây là lợi ích của tôi.'),
  _v(5, 'nātha', 'masc_a', 'đấng bảo hộ, chỗ nương tựa', 'lord, refuge',
      'naa-tho', 'Attā hi attano nātho.',
      'Tự mình là chỗ nương tựa của mình.'),
  _v(6, 'pāsāda', 'masc_a', 'lâu đài', 'palace', 'paa-saa-do',
      'Rājā pāsāde vasati.', 'Đức vua sống trong lâu đài.'),
  _v(7, 'raṭṭha', 'neut_a', 'quốc độ, kinh thành, cõi giới',
      'country, kingdom, realm', 'raṭ-ṭha',
      'Amhākaṃ raṭṭhe guṇavā rājā ahosi.',
      'Trong nước chúng tôi đã có vị vua có đức.'),
  // 3 động từ mới
  _v(8, 'saṃkiḷissati', 'verb_pres', 'bị nhiễm ô, trở nên ô uế (saṃ + kilisa)',
      'is defiled (saṃ+kilisa)', 'saṃ-ki-ḷis-sa-ti',
      'Attanā saṃkilissati.', 'Tự mình bị nhiễm ô.'),
  _v(9, 'vihaññati', 'verb_pres', 'buồn rầu, suy sụp (vi + hana)',
      'is vexed, grieves (vi+hana)', 'vi-hañ-ña-ti',
      'Iti bālo vihaññati.', 'Nghĩ vậy kẻ ngu buồn rầu.'),
  _v(10, 'visujjhati', 'verb_pres', 'được trong sạch (vi + sudha)',
      'is purified (vi+sudha)', 'vi-suj-jha-ti',
      'Attanā visujjhati.', 'Tự mình được trong sạch.'),
  // 3 bất biến từ
  _v(11, 'hi', 'indeclinable', 'thật vậy, quả thật (tiểu từ nhấn mạnh)',
      'for, indeed (emphatic particle)', 'hi', 'Attā hi attano nātho.',
      'Thật vậy tự mình là chỗ nương tựa của mình.'),
  _v(12, 'ti', 'indeclinable', '"như vậy" – mạo từ trích dẫn lời nói',
      '"thus" – end-quote particle', 'ti', "'Karohī'ti āha.",
      'Anh ấy nói: "Hãy làm."'),
  _v(13, 'siyā', 'indeclinable', 'có lẽ là, có thể là (subjunctive 3sg của asa)',
      'may be, might be (3sg opt. of asa)', 'si-yaa',
      'Ko hi nātho paro siyā?', 'Ai có thể là chỗ nương tựa khác?'),
];

PaliVocabModel _v(int id, String root, String paradigmId, String wordVi,
    String wordEn, String pronunciation, String examplePali, String exampleVi) {
  final num = id.toString().padLeft(3, '0');
  return PaliVocabModel(
    id: 'pv_L17_$num',
    root: root,
    paradigmId: paradigmId,
    wordVi: wordVi,
    wordEn: wordEn,
    lessonId: 'lesson_17',
    pronunciation: pronunciation,
    examplePali: examplePali,
    exampleVi: exampleVi,
  );
}

// ──────────────────────────────────────────────────────────────
// DAY 1
// ──────────────────────────────────────────────────────────────
LessonDay getLesson17Day1() => LessonDay(
      id: 'lesson17_day1',
      dayNumber: 1,
      themeId: 'theme_17_lesson',
      titleVi: 'Ngày 1 — Lý thuyết & Từ vựng',
      phases: [
        _buildDay1Phase1(),
        _buildDay1Phase2(),
        _buildDay1Phase3(),
      ],
    );

LessonPhase _buildDay1Phase1() => LessonPhase(
      id: 'lesson17_phase1',
      phaseTypeStr: 'read_listen',
      titleVi: '📘 DT Nam bất quy tắc + 7 Loại Động từ Tướng',
      contentVi: '''
🎯 MỤC TIÊU BÀI 17
───────────────────
• Học biến cách BẤT QUY TẮC của atta (tự ngã) và rāja (đức vua).
• Hiểu 7 LOẠI ĐỘNG TỪ TƯỚNG (Conjugations) — dấu hiệu nhận biết gốc.
• Nắm vững 7 danh từ + 3 động từ + 3 bất biến từ.
• Học câu Pháp Cú kinh điển: "Attā hi attano nātho".

══════════════════════════════════════════════════════
A. DANH TỪ NAM BẤT QUY TẮC TẬN CÙNG "-a"
══════════════════════════════════════════════════════
📌 Hai danh từ này có biến cách KHÁC hẳn masc_a thông thường.

① ATTA / ATTAN (m.) — linh hồn, tự ngã (dùng như đại từ phản thân "mình")
┌──────────┬──────────────────┬───────────────────────┐
│ Biến cách │  Số ít (Sg)      │   Số nhiều (Pl)       │
├──────────┼──────────────────┼───────────────────────┤
│ CC, HC   │ attā             │ attāno                │
│ ĐC       │ attānaṃ, attaṃ   │ attāno                │
│ SDC      │ attena, attanā   │ attanebhi, attanehi   │
│ XXC      │ attanā, attamhā, │ attanebhi, attanehi   │
│          │ attasmā          │                       │
│ CĐC/STC  │ attano           │ attānaṃ               │
│ ĐSC      │ attani           │ attanesu              │
└──────────┴──────────────────┴───────────────────────┘

② RĀJA (m.) — đức vua
┌──────────┬──────────────────┬───────────────────────┐
│ Biến cách │  Số ít (Sg)      │   Số nhiều (Pl)       │
├──────────┼──────────────────┼───────────────────────┤
│ CC       │ rājā             │ rājāno                │
│ HC       │ rāja, rājā       │ rājāno                │
│ ĐC       │ rājānaṃ, rājaṃ   │ rājāno                │
│ SDC      │ raññā, rājena    │ rājūbhi, rājūhi,      │
│          │                  │ rājebhi, rājehi       │
│ XXC      │ raññā, rājamhā,  │ rājūbhi, rājūhi,      │
│          │ rājasmā          │ rājebhi, rājehi       │
│ CĐC/STC  │ rañño, rājino    │ raññaṃ, rājūnaṃ,      │
│          │                  │ rājānaṃ               │
│ ĐSC      │ raññe, rājini,   │ rājusu, rājūsu,       │
│          │ rājamhi, rājasmiṃ│ rājesu                │
└──────────┴──────────────────┴───────────────────────┘

⚠️ Lưu ý quan trọng về Rāja:
• Hình thức SDC/XXC "raññā" rất phổ biến (dạng rút gọn).
• Có nhiều hình thức song song cho mỗi biến cách (4 hình thức ở pl!).
• Đây là paradigm bất quy tắc phức tạp nhất Pāḷi.

══════════════════════════════════════════════════════
B. BẢY LOẠI ĐỘNG TỪ TƯỚNG (Conjugations)
══════════════════════════════════════════════════════
📌 Không có quy tắc cố định để xác định gốc thuộc loại nào → phải học thuộc.

┌──────┬─────────────────────┬─────────────────────────┬───────────────────┐
│Loại │ Gốc (Ví dụ)         │ Dấu hiệu (conj. sign)   │ Hiện tại Ngôi 3   │
├──────┼─────────────────────┼─────────────────────────┼───────────────────┤
│  1   │ paca (nấu), bhū (là)│   a                     │ pacati / bhavati  │
│  2   │ rudhi, bhuja        │   ṃ...a                 │ rundhati / bhuñjati│
│  3   │ dīp, hā            │   ya                    │ dippati / hāyati  │
│  4   │ su, pāpuṇa         │   ṇu, ṇā, uṇā           │ suṇāti / pāpuṇāti │
│  5   │ ji                 │   nā                    │ jināti            │
│  6   │ tanu, kara         │   o, yira               │ tanoti / karoti   │
│  7   │ cura               │   e, aya                │ coreti / corayati │
└──────┴─────────────────────┴─────────────────────────┴───────────────────┘

⭐ VÍ DỤ CHI TIẾT:
• Loại 1: pac + a + ti = pacati; bhū + a + ti = bhavati.
• Loại 2: ru-ṃ-dh + a + ti = rundhati; bhu-ñ-ja + a + ti = bhuñjati (chèn ṃ).
• Loại 3: dīp + ya + ti = dippati; hā + ya + ti = hāyati.
• Loại 4: su + ṇā + ti = suṇāti; pa+apa + uṇā + ti = pāpuṇāti.
• Loại 5: ji + nā + ti = jināti. ⚠️ Riêng gốc ki (mua): ki + ṇā + ti = kiṇāti.
• Loại 6: tanu + o + ti = tanoti; kara + o + ti = karoti (cũng: kayirati).
• Loại 7: cura + e + ti = coreti; cura + aya + ti = corayati.

📌 Lưu ý Vuddhi (nguyên âm đầu kéo dài: a→ā, i→e, u→o) ở Loại 5, 6.

══════════════════════════════════════════════════════
📚 7 DANH TỪ MỚI
══════════════════════════════════════════════════════
• atta (bất quy tắc) — linh hồn, tự ngã
• rāja (bất quy tắc) — đức vua
• amacca  — quan đại thần
• attha   — vật chất, lợi ích, ý nghĩa
• nātha   — đấng bảo hộ, chỗ nương tựa
• pāsāda  — lâu đài
• raṭṭha  — quốc độ, kinh thành

══════════════════════════════════════════════════════
🔥 3 ĐỘNG TỪ MỚI
══════════════════════════════════════════════════════
• saṃkiḷissati (saṃ+kilisa) — bị nhiễm ô, trở nên ô uế
• vihaññati   (vi+hana)    — buồn rầu, suy sụp
• visujjhati  (vi+sudha)   — được trong sạch

══════════════════════════════════════════════════════
🔤 3 BẤT BIẾN TỪ
══════════════════════════════════════════════════════
• hi    — thật vậy, quả thật (nhấn mạnh)
• ti    — như vậy (mạo từ cuối trích dẫn)
• siyā  — có lẽ là (3sg opt. của asa)

══════════════════════════════════════════════════════
⭐ CÂU PHÁP CÚ KINH ĐIỂN
══════════════════════════════════════════════════════
📌 "Attā hi attano nātho – Ko hi nātho paro siyā."
   → "Tự mình là chỗ nương tựa của mình – Ai là chỗ nương tựa khác được?" (Pháp Cú 160)

📌 "Attanā've kataṃ pāpaṃ – attanā saṃkilissati.
    Attanā akataṃ pāpaṃ – attanā've visujjhati."
   → "Tự mình làm điều ác thì tự mình bị nhiễm ô;
      Tự mình không làm điều ác thì tự mình được trong sạch." (Pháp Cú 165)

📌 "Attānaṃ rakkhanto paraṃ rakkhati.
    Paraṃ rakkhanto attānaṃ rakkhati."
   → "Người giữ mình thì giữ người khác; người giữ người khác thì giữ mình."
''',
      contentEn:
          'Lesson 17 covers two irregular masculine nouns in -a: atta/attan (self) and rāja (king) with their special forms (raññā, rañño, attanā etc.), the 7 verb conjugations (conj-signs -a, -ṃ…a, -ya, -ṇā/ṇu/uṇā, -nā, -o/yira, -e/aya), three new denominative verbs with prefixes (saṃkiḷissati, vihaññati, visujjhati), particles hi/ti/siyā, and celebrated Dhammapada verses on self-reliance.',
      fabVocab: const [
        FabVocabItem(wordEn: 'atta', pronunciation: 'at-taa', wordVi: 'linh hồn, tự ngã (bất quy tắc)', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'rāja', pronunciation: 'raa-jaa', wordVi: 'đức vua (bất quy tắc)', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'amacca', pronunciation: 'a-mac-co', wordVi: 'quan đại thần', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'attha', pronunciation: 'at-tho', wordVi: 'vật chất, lợi ích, ý nghĩa', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'nātha', pronunciation: 'naa-tho', wordVi: 'đấng bảo hộ, chỗ nương tựa', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'pāsāda', pronunciation: 'paa-saa-do', wordVi: 'lâu đài', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'raṭṭha', pronunciation: 'raṭ-ṭha', wordVi: 'quốc độ, kinh thành', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'saṃkiḷissati', pronunciation: 'saṃ-ki-ḷis-sa-ti', wordVi: 'bị nhiễm ô (saṃ+kilisa)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'vihaññati', pronunciation: 'vi-hañ-ña-ti', wordVi: 'buồn rầu (vi+hana)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'visujjhati', pronunciation: 'vi-suj-jha-ti', wordVi: 'được trong sạch (vi+sudha)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'hi', pronunciation: 'hi', wordVi: 'thật vậy, quả thật', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'ti', pronunciation: 'ti', wordVi: 'như vậy (trích dẫn lời nói)', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'siyā', pronunciation: 'si-yaa', wordVi: 'có lẽ là (opt. của asa)', partOfSpeech: 'bat_bien_tu'),
      ],
      fabPhrases: const [
        FabPhraseItem(phrase: 'Loại 1: a → pacati; bhū→bhavati', meaning: '⭐ Gốc + a + ti'),
        FabPhraseItem(phrase: 'Loại 2: ṃ…a → rundhati/bhuñjati', meaning: '⭐ Chèn ṃ trước phụ âm cuối'),
        FabPhraseItem(phrase: 'Loại 3: ya → dippati/hāyati', meaning: '⭐ Gốc + ya + ti'),
        FabPhraseItem(phrase: 'Loại 4: ṇu/ṇā/uṇā → suṇāti/pāpuṇāti', meaning: '⭐ Gốc + ṇā/ṇu/uṇā + ti'),
        FabPhraseItem(phrase: 'Loại 5: nā → jināti; ki→kiṇāti', meaning: '⭐ Gốc + nā + ti (đặc biệt: ki→kiṇāti)'),
        FabPhraseItem(phrase: 'Loại 6: o/yira → tanoti/karoti', meaning: '⭐ Gốc + o + ti; kara→karoti/kayirati'),
        FabPhraseItem(phrase: 'Loại 7: e/aya → coreti/corayati', meaning: '⭐ Gốc + e/aya + ti'),
        FabPhraseItem(phrase: 'Vuddhi: a→ā, i→e, u→o', meaning: '⭐ Nguyên âm đầu kéo dài ở Loại 5, 6'),
        FabPhraseItem(phrase: 'attanā / attano / attani', meaning: '⭐ Atta (SDC/STC/ĐSC sg)'),
        FabPhraseItem(phrase: 'attānaṃ / attāno', meaning: '⭐ Atta (ĐC sg/pl, CC/HC pl)'),
        FabPhraseItem(phrase: 'raññā / rañño', meaning: '⭐ Rāja (SDC/XXC, CĐC/STC sg)'),
        FabPhraseItem(phrase: 'rājūbhi / rājūhi', meaning: '⭐ Rāja (SDC/XXC/CĐC/STC pl)'),
        FabPhraseItem(phrase: 'Attā hi attano nātho', meaning: '⭐ Pháp Cú 160: Tự mình là chỗ nương tựa'),
        FabPhraseItem(phrase: 'Ko hi nātho paro siyā', meaning: '⭐ Pháp Cú 160: Ai là nương tựa khác?'),
      ],
    );

LessonPhase _buildDay1Phase2() => LessonPhase(
      id: 'lesson17_phase2',
      phaseTypeStr: 'mind_game',
      titleVi: '🧠 Ghép từ: 7 DT + 3 ĐT + 3 BBT + 7 Loại ĐT tướng',
      contentVi:
          'Nhấn vào từng ô tiếng Việt → đọc to từ Pāḷi → nhấn lại để xem đáp án.',
      mixedSegments: const [
        MixedSegment(text: '【7 Danh từ mới】'),
        MixedSegment(text: 'atta'),
        MixedSegment(text: 'linh hồn, tự ngã (bất quy tắc)', isVietnamese: true, answer: 'atta'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'rāja'),
        MixedSegment(text: 'đức vua (bất quy tắc)', isVietnamese: true, answer: 'rāja'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'amacca'),
        MixedSegment(text: 'quan đại thần', isVietnamese: true, answer: 'amacca'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'attha'),
        MixedSegment(text: 'lợi ích, ý nghĩa', isVietnamese: true, answer: 'attha'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'nātha'),
        MixedSegment(text: 'đấng bảo hộ, chỗ nương tựa', isVietnamese: true, answer: 'nātha'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'pāsāda'),
        MixedSegment(text: 'lâu đài', isVietnamese: true, answer: 'pāsāda'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'raṭṭha'),
        MixedSegment(text: 'quốc độ, kinh thành', isVietnamese: true, answer: 'raṭṭha'),

        MixedSegment(text: '  ───  '),
        MixedSegment(text: '【3 Động từ mới】'),
        MixedSegment(text: 'saṃkiḷissati'),
        MixedSegment(text: 'bị nhiễm ô (saṃ+kilisa)', isVietnamese: true, answer: 'saṃkiḷissati'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'vihaññati'),
        MixedSegment(text: 'buồn rầu (vi+hana)', isVietnamese: true, answer: 'vihaññati'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'visujjhati'),
        MixedSegment(text: 'được trong sạch (vi+sudha)', isVietnamese: true, answer: 'visujjhati'),

        MixedSegment(text: '  ───  '),
        MixedSegment(text: '【3 Bất biến từ】'),
        MixedSegment(text: 'hi'),
        MixedSegment(text: 'thật vậy, quả thật', isVietnamese: true, answer: 'hi'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'ti'),
        MixedSegment(text: 'như vậy (trích dẫn)', isVietnamese: true, answer: 'ti'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'siyā'),
        MixedSegment(text: 'có lẽ là (opt. của asa)', isVietnamese: true, answer: 'siyā'),

        MixedSegment(text: '  ───  '),
        MixedSegment(text: '【7 Loại động từ tướng — Dấu hiệu】'),
        MixedSegment(text: 'paca'),
        MixedSegment(text: 'Loại 1 — dấu hiệu: a → pacati', isVietnamese: true, answer: 'paca (Loại 1)'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'rudhi'),
        MixedSegment(text: 'Loại 2 — dấu hiệu: ṃ…a → rundhati', isVietnamese: true, answer: 'rudhi (Loại 2)'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'dīp'),
        MixedSegment(text: 'Loại 3 — dấu hiệu: ya → dippati', isVietnamese: true, answer: 'dīp (Loại 3)'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'su'),
        MixedSegment(text: 'Loại 4 — dấu hiệu: ṇā → suṇāti', isVietnamese: true, answer: 'su (Loại 4)'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'ji'),
        MixedSegment(text: 'Loại 5 — dấu hiệu: nā → jināti', isVietnamese: true, answer: 'ji (Loại 5)'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'kara'),
        MixedSegment(text: 'Loại 6 — dấu hiệu: o/yira → karoti', isVietnamese: true, answer: 'kara (Loại 6)'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'cura'),
        MixedSegment(text: 'Loại 7 — dấu hiệu: e/aya → coreti', isVietnamese: true, answer: 'cura (Loại 7)'),
      ],
    );

LessonPhase _buildDay1Phase3() => LessonPhase(
      id: 'lesson17_phase3',
      phaseTypeStr: 'listening_quiz',
      titleVi: '🎧 Quiz: DT bất quy tắc & 7 Loại Động từ Tướng',
      contentVi:
          'Trả lời 7 câu trắc nghiệm về paradigm bất quy tắc của atta/rāja và nhận diện 7 loại động từ tướng.',
      questions: const [
        QuizQuestion(
          id: 'lesson17_q01',
          questionText: "\"Attanā\" trong câu \"Attanā've kataṃ pāpaṃ\" là biến cách nào của \"atta\"?",
          options: ['Cách Chủ (CC)', 'Sở Dụng Cách (SDC)', 'Đối Cách (ĐC)', 'Sở Thuộc Cách (STC)'],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson17_q02',
          questionText: "\"Raññā\" trong câu \"Raññā likhitaṃ\" là biến cách nào của \"rāja\"?",
          options: [
            'Cách Chủ (CC)',
            'Đối Cách (ĐC)',
            'Sở Dụng/Xuất Xứ Cách (SDC/XXC)',
            'Hô Cách (HC)',
          ],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson17_q03',
          questionText: 'Động từ "paca" (nấu) thuộc loại động từ tướng nào?',
          options: [
            'Loại 1 — dấu hiệu "a"',
            'Loại 2 — dấu hiệu "ṃ…a"',
            'Loại 5 — dấu hiệu "nā"',
            'Loại 7 — dấu hiệu "e/aya"',
          ],
          correctIndex: 0,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson17_q04',
          questionText:
              'Động từ "ji" (chiến thắng) thuộc loại nào? "Ji + nā + ti" cho hình thức gì?',
          options: [
            'Loại 5 — dấu hiệu "nā" → jināti',
            'Loại 6 — dấu hiệu "o" → jioti',
            'Loại 7 — dấu hiệu "e" → jieti',
            'Loại 4 — dấu hiệu "ṇu" → jiṇoti',
          ],
          correctIndex: 0,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson17_q05',
          questionText:
              'Động từ "cura" (ăn trộm) thuộc loại nào? "coreti" được chia như thế nào?',
          options: [
            'Loại 7 — cura + e + ti',
            'Loại 7 — cura + aya + ti',
            'Cả A và B đều đúng (có 2 dấu hiệu)',
            'Loại 6 — cura + o + ti',
          ],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson17_q06',
          questionText:
              'Động từ "ki" (mua) thuộc Loại 5 nhưng có quy tắc đặc biệt. "Ki + nā + ti" = ?',
          options: ['kināti', 'kiṇāti (nā→ṇā trước a)', 'kinoti', 'kīyati'],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson17_q07',
          questionText: "\"Attā hi attano nātho\" có nghĩa là gì?",
          options: [
            'Tự mình là chỗ nương tựa của người khác.',
            'Tự mình là chỗ nương tựa của mình.',
            'Người khác là chỗ nương tựa của mình.',
            'Không có chỗ nương tựa nào cả.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
      ],
      fabAnswers: const [
        FabAnswerItem(en: 'Answer 1 → B', vi: '① "Attanā" có đuôi "-anā" → Sở Dụng Cách số ít (= "bởi/từ mình"), paradigm bất quy tắc.'),
        FabAnswerItem(en: 'Answer 2 → C', vi: '② "Raññā" = hình thức rút gọn SDC/XXC số ít của rāja (= "bởi/từ đức vua").'),
        FabAnswerItem(en: 'Answer 3 → A', vi: '③ Paca thuộc Loại 1, dấu hiệu "a": pac+a+ti = pacati. bhū cũng Loại 1: bhavati.'),
        FabAnswerItem(en: 'Answer 4 → A', vi: '④ Ji thuộc Loại 5, dấu hiệu "nā": ji+nā+ti = jināti.'),
        FabAnswerItem(en: 'Answer 5 → C', vi: '⑤ Cura thuộc Loại 7 có 2 dấu hiệu song song: "e" (coreti) và "aya" (corayati).'),
        FabAnswerItem(en: 'Answer 6 → B', vi: '⑥ Riêng gốc ki (mua) ở Loại 5: "nā" đổi thành "ṇā" → kiṇāti.'),
        FabAnswerItem(en: 'Answer 7 → B', vi: '⑦ Pháp Cú 160: Attā (CC = tự mình) + hi (thật vậy) + attano (STC = của mình) + nātho (CC = chỗ nương tựa).'),
      ],
      fabVocab: const [],
      fabPhrases: const [],
    );

// ──────────────────────────────────────────────────────────────
// DAY 2
// ──────────────────────────────────────────────────────────────
LessonDay getLesson17Day2() => LessonDay(
      id: 'lesson17_day2',
      dayNumber: 2,
      themeId: 'theme_17_lesson',
      titleVi: 'Ngày 2 — Bài tập & Quiz dịch thuật',
      phases: [
        _buildDay2Phase1(),
        _buildDay2Phase2(),
        _buildDay2Phase3(),
      ],
    );

LessonPhase _buildDay2Phase1() => LessonPhase(
      id: 'lesson17_phase4',
      phaseTypeStr: 'read_listen',
      titleVi: '📖 Đọc hiểu: Gợi ý dịch Exercise 17',
      contentVi: '''
══════════════════════════════════════════════════════
📖 BÀI TẬP 17 — Dịch 29 câu Pāḷi sang tiếng Việt
══════════════════════════════════════════════════════
Bài tập tập trung vào:
• DT bất quy tắc: atta (tự ngã), rāja (đức vua)
• DT thường: amacca, attha, nātha, pāsāda, raṭṭha
• ĐT mới: saṃkiḷissati, vihaññati, visujjhati
• Các câu Pháp Cú kinh điển
• Tuyệt đối Định sở cách ("Attānaṃ rakkhanto..." = "Khi giữ mình...")

══════════════════════════════════════════════════════
💡 GỢI Ý DỊCH (cho các câu đầu)
══════════════════════════════════════════════════════
① "Ayaṃ me attano attho."
   → ayaṃ (CC n. = cái này) + me (STC tôi = của tôi) + attano (STC atta = của mình) + attho (CC m. = lợi ích).
   → "Đây là lợi ích của tôi."

② "Na me so attā."
   → na + me + so (CC m. ta = người đó) + attā (CC m. atta = linh hồn).
   → "Cái đó không phải là tự ngã của tôi."

⑤ "Attā hi attano nātho – Ko hi nātho paro siyā."
   → "Tự mình thật là chỗ nương tựa của mình – Ai là chỗ nương tựa khác được?"
   → (Pháp Cú 160)

⑦ "Atīte pana amhākaṃ raṭṭhe guṇavā rājā ahosi."
   → atīte (ĐSC = quá khứ/trong quá khứ) + pana + amhākaṃ (của chúng tôi) + raṭṭhe (ĐSC = trong nước) + guṇavā (CC m. = có đức) + rājā + ahosi (đã là).
   → "Trong quá khứ, ở nước chúng tôi đã có một vị vua có đức."

══════════════════════════════════════════════════════
📋 MẸO DỊCH CÂU CÓ "atta, attano"
══════════════════════════════════════════════════════
📌 "atta" dùng với 3 nghĩa: linh hồn / tự mình / mình (one's own).
📌 Các hình thức hay gặp:
   • attā / attano = tự mình / của mình
   • attanā = bởi/từ mình
   • attānaṃ = mình (ĐC)
   • attani = ở mình (ĐSC)
   • attānaṃ rakkhanto = "khi giữ mình" (Tuyệt đối ĐSC)

📋 MẸO DỊCH CÂU CÓ "rāja, rājāno"
══════════════════════════════════════════════════════
• rājāno = CC pl = các đức vua.
• raññā = SDC/XXC sg = bởi/từ đức vua.
• rājūbhi = SDC/XXC pl = bởi/từ các đức vua.
• rājānaṃ = ĐC sg / CĐC/STC pl = đức vua / của các đức vua.
''',
      contentEn:
          'Translation hints for Exercise 17: pay special attention to irregular forms of atta (attā, attano, attanā, attānaṃ, attani) and rāja (rājā, raññā, rañño, rājūbhi, rājānaṃ), to the absolutives in -tvā, and to the Dhammapada verses quoted.',
    );

LessonPhase _buildDay2Phase2() => LessonPhase(
      id: 'lesson17_phase5',
      phaseTypeStr: 'mind_game',
      titleVi: '🧠 Ghép câu: 29 câu Exercise 17',
      contentVi:
          'Nhấn vào từng câu tiếng Việt → đọc to câu Pāḷi tương ứng → nhấn lại để xem đáp án.',
      mixedSegments: const [
        // Câu 1-6
        MixedSegment(text: '【Ex 1】 "Ayaṃ me attano attho."'),
        MixedSegment(text: '"Đây là lợi ích của tôi."', isVietnamese: true, answer: '"Ayaṃ me attano attho."'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 2】 "Na me so attā."'),
        MixedSegment(text: '"Cái đó không phải linh hồn của tôi."', isVietnamese: true, answer: '"Na me so attā."'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 3】 "Bhagavato etaṃ atthaṃ āroceyyāma."'),
        MixedSegment(text: '"Chúng ta hãy nói ý nghĩa này cho Đức Thế Tôn."', isVietnamese: true, answer: '"Bhagavato etaṃ atthaṃ āroceyyāma."'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 4】 "Dhammaṃ cara rāja!"'),
        MixedSegment(text: '"Hãy đi theo Pháp, đức vua!"', isVietnamese: true, answer: '"Dhammaṃ cara rāja!"'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 5】 "Attā hi attano nātho – Ko hi nātho paro siyā."'),
        MixedSegment(text: '"Tự mình là chỗ nương tựa của mình – Ai là chỗ nương tựa khác được?"', isVietnamese: true, answer: '"Attā hi attano nātho – Ko hi nātho paro siyā."'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 6】 "Attānaṃ rakkhanto paraṃ rakkhati. Paraṃ rakkhanto attānaṃ rakkhati."'),
        MixedSegment(text: '"Người giữ mình thì giữ người khác. Người giữ người khác thì giữ mình."', isVietnamese: true, answer: '"Attānaṃ rakkhanto paraṃ rakkhati. Paraṃ rakkhanto attānaṃ rakkhati."'),
        MixedSegment(text: '   ───   '),
        // Câu 7-12
        MixedSegment(text: '【Ex 7】 Atīte pana amhākaṃ raṭṭhe guṇavā rājā ahosi.'),
        MixedSegment(text: 'Trong quá khứ, ở nước chúng tôi đã có vị vua có đức.', isVietnamese: true, answer: 'Atīte pana amhākaṃ raṭṭhe guṇavā rājā ahosi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 8】 Raññā likhita'idaṃ lekhanaṃ amaccā passantu!"),
        MixedSegment(text: 'Bức thư này được viết bởi đức vua, các quan đại thần hãy xem!', isVietnamese: true, answer: "Raññā likhita'idaṃ lekhanaṃ amaccā passantu!"),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 9】 Pāpakehi amaccehi rañño ko attho?'),
        MixedSegment(text: 'Bởi các quan đại thần xấu, đức vua có lợi ích gì?', isVietnamese: true, answer: 'Pāpakehi amaccehi rañño ko attho?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 10】 Amhākaṃ rājānaṃ passituṃ puratthimāya disāya dve rājāno āgatā.'),
        MixedSegment(text: 'Để gặp đức vua của chúng tôi, hai vị vua từ phương Đông đã đến.', isVietnamese: true, answer: 'Amhākaṃ rājānaṃ passituṃ puratthimāya disāya dve rājāno āgatā.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 11】 Rājā attano mahesiyā saddhiṃ pāsāde vasati.'),
        MixedSegment(text: 'Đức vua sống trong lâu đài cùng hoàng hậu của mình.', isVietnamese: true, answer: 'Rājā attano mahesiyā saddhiṃ pāsāde vasati.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 12】 Catūhi disāhi cattāro rājāno āgantvā Bhagavantaṃ vanditvā eta'atthaṃ pucchiṃsu."),
        MixedSegment(text: 'Bốn vị vua từ bốn phương đã đến, lễ bái Đức Thế Tôn rồi hỏi ý nghĩa này.', isVietnamese: true, answer: "Catūhi disāhi cattāro rājāno āgantvā Bhagavantaṃ vanditvā eta'atthaṃ pucchiṃsu."),
        MixedSegment(text: '   ───   '),
        // Câu 13-18
        MixedSegment(text: "【Ex 13】 \"Puttā m'atthi dhanaṃ m'atthi – Iti bālo vihaññati. Attā hi attano n'atthi – Kuto puttā kuto dhanaṃ.\""),
        MixedSegment(text: '"Con trai ta có, tiền ta có – Nghĩ vậy kẻ ngu buồn rầu. Thật vậy tự mình không có – Con trai ở đâu, tiền ở đâu."', isVietnamese: true, answer: "\"Puttā m'atthi dhanaṃ m'atthi – Iti bālo vihaññati. Attā hi attano n'atthi – Kuto puttā kuto dhanaṃ.\""),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "\"Attanā've kataṃ pāpaṃ – attanā saṃkilissati. Attanā akataṃ pāpaṃ – attanā've visujjhati.\""),
        MixedSegment(text: '"Tự mình làm điều ác – tự mình bị nhiễm ô. Tự mình không làm điều ác – tự mình được trong sạch."', isVietnamese: true, answer: "\"Attanā've kataṃ pāpaṃ – attanā saṃkilissati. Attanā akataṃ pāpaṃ – attanā've visujjhati.\""),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 15】 Ahaṃ attano adhipati.'),
        MixedSegment(text: 'Tôi là chủ nhân của mình.', isVietnamese: true, answer: 'Ahaṃ attano adhipati.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 16】 So attaṃ ovadi.'),
        MixedSegment(text: 'Anh ta đã khuyên bảo người đó (attānaṃ).', isVietnamese: true, answer: 'So attaṃ ovadi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 17】 Ete paṇṇākārā raññā pesitā.'),
        MixedSegment(text: 'Những phần thưởng này được đức vua gửi.', isVietnamese: true, answer: 'Ete paṇṇākārā raññā pesitā.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 18】 Puññaṃ vā pāpaṃ vā attena kataṃ.'),
        MixedSegment(text: 'Phước hoặc tội được tự mình làm.', isVietnamese: true, answer: 'Puññaṃ vā pāpaṃ vā attena kataṃ.'),
        MixedSegment(text: '   ───   '),
        // Câu 19-24
        MixedSegment(text: '【Ex 19】 Attānaṃ putte gaṇhantā amaccā rājānaṃ passituṃ pāsādaṃ gamiṃsu.'),
        MixedSegment(text: 'Các quan đại thần, mang theo con của mình, đã đi đến lâu đài để gặp đức vua.', isVietnamese: true, answer: 'Attānaṃ putte gaṇhantā amaccā rājānaṃ passituṃ pāsādaṃ gamiṃsu.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 20】 Na sundaraṃ rājāno purisehi kujjhanti.'),
        MixedSegment(text: 'Không phải vì đẹp mà các vua tức giận với người nam.', isVietnamese: true, answer: 'Na sundaraṃ rājāno purisehi kujjhanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 21】 Guṇavanto rājāno niccaṃ sabbehi vanditā.'),
        MixedSegment(text: 'Các vua có đức luôn được mọi người lễ bái.', isVietnamese: true, answer: 'Guṇavanto rājāno niccaṃ sabbehi vanditā.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 22】 So attano atthaṃ na jānāti.'),
        MixedSegment(text: 'Anh ta không biết lợi ích của mình.', isVietnamese: true, answer: 'So attano atthaṃ na jānāti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 23】 Dhammikā rājāno adhammikehi rājūhi saddhiṃ bhajituṃ na icchanti.'),
        MixedSegment(text: 'Các vua chính trực không muốn giao thiệp với các vua bất chính.', isVietnamese: true, answer: 'Dhammikā rājāno adhammikehi rājūhi saddhiṃ bhajituṃ na icchanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 24】 Attā paññāya visujjhati.'),
        MixedSegment(text: 'Tự mình được trong sạch bằng trí tuệ.', isVietnamese: true, answer: 'Attā paññāya visujjhati.'),
        MixedSegment(text: '   ───   '),
        // Câu 25-29
        MixedSegment(text: '【Ex 25】 Amaccā rājūbhi dhanaṃ labhanti.'),
        MixedSegment(text: 'Các quan đại thần nhận tiền từ các đức vua.', isVietnamese: true, answer: 'Amaccā rājūbhi dhanaṃ labhanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 26】 So attano atthassa rājūbhi ca amaccehi ca bhajati.'),
        MixedSegment(text: 'Anh ta chia sẻ lợi ích của mình cho cả các vua lẫn các quan.', isVietnamese: true, answer: 'So attano atthassa rājūbhi ca amaccehi ca bhajati.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 27】 Ekacce rājāno aññesaṃ raṭṭhānaṃ lobhena vihaññanti.'),
        MixedSegment(text: 'Một số vua buồn rầu vì tham lam về các nước khác.', isVietnamese: true, answer: 'Ekacce rājāno aññesaṃ raṭṭhānaṃ lobhena vihaññanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 28】 Amaccā rañño taṃ atthaṃ ārociṃsu.'),
        MixedSegment(text: 'Các quan đại thần đã nói ý nghĩa đó cho đức vua.', isVietnamese: true, answer: 'Amaccā rañño taṃ atthaṃ ārociṃsu.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 29】 So eko rājā viya na dippati.'),
        MixedSegment(text: 'Anh ta không sáng chói như một vị vua.', isVietnamese: true, answer: 'So eko rājā viya na dippati.'),
      ],
    );

LessonPhase _buildDay2Phase3() => LessonPhase(
      id: 'lesson17_phase6',
      phaseTypeStr: 'listening_quiz',
      titleVi: '🎧 Quiz: Dịch câu Pāḷi (Exercise 17)',
      contentVi:
          'Chọn bản dịch tiếng Việt đúng cho mỗi câu Pāḷi từ Exercise 17.',
      questions: const [
        QuizQuestion(
          id: 'lesson17_q08',
          questionText: '"Ayaṃ me attano attho." có nghĩa là:',
          options: [
            'Đây là lợi ích của tôi.',
            'Đây là lợi ích của mình.',
            'Đây là vấn đề của tôi.',
            'Đây là việc làm của tôi.',
          ],
          correctIndex: 0,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson17_q09',
          questionText: '"Attā hi attano nātho" có nghĩa là:',
          options: [
            'Tự mình là chỗ nương tựa của người khác.',
            'Tự mình là chỗ nương tựa của mình.',
            'Người khác là chỗ nương tựa của mình.',
            'Không có chỗ nương tựa nào.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson17_q10',
          questionText: '\"Rājā attano mahesiyā saddhiṃ pāsāde vasati.\" có nghĩa là:',
          options: [
            'Đức vua sống trong lâu đài một mình.',
            'Đức vua sống trong lâu đài cùng hoàng hậu của mình.',
            'Hoàng hậu sống trong lâu đài cùng đức vua.',
            'Đức vua sống với hoàng hậu ngoài lâu đài.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson17_q11',
          questionText: '"Amaccā rājūbhi dhanaṃ labhanti." có nghĩa là:',
          options: [
            'Các quan cho tiền cho các vua.',
            'Các quan nhận tiền từ các vua.',
            'Các vua nhận tiền từ các quan.',
            'Các vua và quan đều có tiền.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson17_q12',
          questionText: '"So attano atthaṃ na jānāti." có nghĩa là:',
          options: [
            'Anh ta biết lợi ích của mình.',
            'Anh ta không biết lợi ích của mình.',
            'Anh ta không có lợi ích.',
            'Anh ta tìm lợi ích cho người khác.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson17_q13',
          questionText: "\"Attanā've kataṃ pāpaṃ\" có nghĩa là:",
          options: [
            'Điều ác được người khác làm.',
            'Tự mình làm điều ác.',
            'Điều ác tự mình đến.',
            'Tự mình không làm điều ác.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson17_q14',
          questionText: '"Attānaṃ rakkhanto paraṃ rakkhati." có nghĩa là:',
          options: [
            'Người giữ người khác thì giữ mình.',
            'Người giữ mình thì giữ người khác.',
            'Người giữ mình và người khác cùng lúc.',
            'Người giữ mình không giữ người khác.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
      ],
      fabAnswers: const [
        FabAnswerItem(en: 'Answer 8 → A', vi: '① ayaṃ (CC n. eta = cái này) + me (STC tôi) + attano (STC atta = của mình) + attho (CC = lợi ích).'),
        FabAnswerItem(en: 'Answer 9 → B', vi: '② Attā (CC = tự mình) + hi (thật vậy) + attano (STC = của mình) + nātho (CC = chỗ nương tựa) — Pháp Cú 160.'),
        FabAnswerItem(en: 'Answer 10 → B', vi: '③ mahesiyā (SDC = hoàng hậu) + saddhiṃ (với) + pāsāde (ĐSC = trong lâu đài).'),
        FabAnswerItem(en: 'Answer 11 → B', vi: '④ rājūbhi (SDC/XXC pl rāja = bởi/từ các vua) + labhanti (nhận được, Ngôi 3 pl).'),
        FabAnswerItem(en: 'Answer 12 → B', vi: '⑤ attano (STC = của mình) + atthaṃ (ĐC = lợi ích) + na jānāti = không biết.'),
        FabAnswerItem(en: 'Answer 13 → B', vi: "⑥ Attanā've = attanā (SDC = bởi mình) + 'va (eva = chính) = chính bởi mình/tự mình. kataṃ pāpaṃ = làm điều ác."),
        FabAnswerItem(en: 'Answer 14 → B', vi: '⑦ Attānaṃ rakkhanto = Tuyệt đối ĐSC (khi giữ mình, từ rakkha + ant). paraṃ = người khác. rakkhati = giữ.'),
      ],
      fabVocab: const [],
      fabPhrases: const [],
    );

// ──────────────────────────────────────────────────────────────
// AGGREGATE
// ──────────────────────────────────────────────────────────────
List<LessonDay> getLesson17Data() => [
      getLesson17Day1(),
      getLesson17Day2(),
    ];

class Lesson17Bundle {
  static LessonMeta meta = getLesson17Meta();
  static LessonDay day1 = getLesson17Day1();
  static LessonDay day2 = getLesson17Day2();
  static List<LessonDay> all = getLesson17Data();
}
