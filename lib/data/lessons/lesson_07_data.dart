// lesson_07.dart
// Bài học số 7: Thì Quá khứ bất định (Ajjatanī) + Đại từ sở hữu
// An Elementary Pāḷi Course – Nārada Mahāthera
// ---------------------------------------------------------------------------

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

// ──────────────────────────────────────────────────────────────
// LESSON META
// ──────────────────────────────────────────────────────────────
LessonMeta getLesson07Meta() => const LessonMeta(
      id: 'theme_07_lesson',
      lessonNumber: 7,
      titleVi: 'Thì Ajjatanī (Quá khứ) & Đại từ sở hữu',
      titleEn: 'Aorist (Ajjatanī) & Possessive Pronouns',
      iconEmoji: '⏳',
      colorValue: 0xFFDAA520,
      description:
          'Thì quá khứ bất định (aorist) với tiền tố a- và các đuôi -i/-ī/-uṃ/-iṃsu/-o/-ittha/-iṃ/-imhā; đại từ sở hữu STC của đại từ nhân xưng.',
    );

// ──────────────────────────────────────────────────────────────
// VOCABULARY
// ──────────────────────────────────────────────────────────────
final kLesson07Vocab = <PaliVocabModel>[
  // --- 4 danh từ Nam ---
  _v(1, 'aparaṇha', 'masc_a', 'buổi chiều', 'afternoon', 'a-pa-ra-ṇho',
      'Aparaṇhe Buddhaṃ vandiṃ.', 'Tôi đã lễ bái Đức Phật vào buổi chiều.'),
  _v(2, 'pātarāsa', 'masc_a', 'buổi ăn sáng, bữa sáng', 'morning meal, breakfast',
      'paa-ta-raa-so',
      "Ahaṃ ajja pātarāsaṃ na bhuñjiṃ.", 'Tôi đã không ăn sáng hôm nay.'),
  _v(3, 'pubbaṇha', 'masc_a', 'buổi sáng (forenoon)', 'forenoon, morning',
      'pub-ba-ṇho',
      'Pubbaṇhe ovādaṃ suṇiṃ.', 'Tôi đã nghe lời khuyên vào buổi sáng.'),
  _v(4, 'sāyamāsa', 'masc_a', 'bữa tối, bữa ăn chiều', 'evening meal, dinner',
      'saa-ya-maa-so',
      'Sāyamāsaṃ ajja bhuñjāmi.', 'Tôi ăn tối hôm nay.'),

  // --- 6 bất biến từ ---
  _v(5, 'ciraṃ', 'indeclinable', 'lâu, đã lâu rồi, trường thời gian', 'long, for a long time',
      'ci-raṃ', 'Ciraṃ so na āgami.', 'Lâu rồi anh ấy không đến.'),
  _v(6, 'eva', 'indeclinable', 'vừa, khá, ngay cả, chỉ (nhấn mạnh)', 'just, even, only',
      'e-va', "So'va gacchati.", 'Chính anh ấy đi.'),
  _v(7, 'hīyo', 'indeclinable', 'hôm qua', 'yesterday', 'hii-yo',
      'Hīyo so āgami.', 'Hôm qua anh ấy đã đến.'),
  _v(8, 'pāto', 'indeclinable', 'buổi sáng, sáng sớm', 'in the morning, early',
      'paa-to', "Pāto'va so āgami.", 'Sáng sớm anh ấy đã đến.'),
  _v(9, 'purato', 'indeclinable', 'trước, phía trước, có mặt', 'in front, before',
      'pu-ra-to', 'Purato nisīdi.', 'Anh ấy ngồi xuống ở phía trước.'),
  _v(10, 'viya', 'indeclinable', 'vị như, giống như', 'like, as, similar to',
      'vi-ya', 'Buddho viya so dhammaṃ deseti.', 'Anh ấy thuyết Pháp như Đức Phật.'),

  // --- Đại từ sở hữu (vẫn cho vào vocab để dò được) ---
  _v(11, 'mama', 'pronoun', 'của tôi (Ngôi 1 số ít)', 'my / mine', 'ma-ma',
      'Mama pitā gacchati.', 'Cha tôi đi.'),
  _v(12, 'mayhaṃ', 'pronoun', 'của tôi (hình thức khác)', 'my / mine', 'may-haṃ',
      'Mayhaṃ mātā āgacchati.', 'Mẹ tôi đến.'),
  _v(13, 'amhākaṃ', 'pronoun', 'của chúng tôi', 'our / ours', 'am-haa-kaṃ',
      'Amhākaṃ gharaṃ idha.', 'Nhà của chúng tôi ở đây.'),
  _v(14, 'tava', 'pronoun', 'của bạn (Ngôi 2 số ít)', 'your / yours (sg.)',
      'ta-va', 'Tava putto gacchati.', 'Con trai bạn đi.'),
  _v(15, 'tuyhaṃ', 'pronoun', 'của bạn (hình thức khác)', 'your / yours (sg.)',
      'tuy-haṃ', 'Tuyhaṃ nāmaṃ kiṃ?', 'Tên của bạn là gì?'),
  _v(16, 'tumhākaṃ', 'pronoun', 'của các bạn (Ngôi 2 số nhiều)',
      'your / yours (pl.)', 'tum-haa-kaṃ',
      'Tumhākaṃ ācariyo dhammaṃ deseti.', 'Thầy của các bạn thuyết Pháp.'),
  _v(17, 'tassa', 'pronoun', 'của anh ấy / của nó (m./n. số ít)',
      'his / its (m./n. sg.)', 'tas-sa',
      'Tasso pitā agamī.', 'Cha của anh ấy đã đến.'),
  _v(18, 'tassā', 'pronoun', 'của cô ấy (nữ số ít)', 'her / hers (f. sg.)',
      'tas-saa', "Tassā mātā gharamhi vasati.", 'Mẹ của cô ấy ở trong nhà.'),
  _v(19, 'tesaṃ', 'pronoun', 'của họ (m./n. số nhiều)', 'their (m./n. pl.)',
      'te-saṃ', 'Tesaṃ puttā gacchanti.', 'Các con trai của họ đi.'),
  _v(20, 'tāsaṃ', 'pronoun', 'của họ (nữ số nhiều)', 'their (f. pl.)',
      'taa-saṃ', 'Tāsaṃ mātaro gharamhi vasanti.', 'Các mẹ của họ ở trong nhà.'),
];

PaliVocabModel _v(int id, String root, String paradigmId, String wordVi,
    String wordEn, String pronunciation, String examplePali, String exampleVi) {
  final num = id.toString().padLeft(3, '0');
  return PaliVocabModel(
    id: 'pv_L07_$num',
    root: root,
    paradigmId: paradigmId,
    wordVi: wordVi,
    wordEn: wordEn,
    lessonId: 'lesson_07',
    pronunciation: pronunciation,
    examplePali: examplePali,
    exampleVi: exampleVi,
  );
}

// ──────────────────────────────────────────────────────────────
// DAY 1
// ──────────────────────────────────────────────────────────────
LessonDay getLesson07Day1() => LessonDay(
      id: 'lesson07_day1',
      dayNumber: 1,
      themeId: 'theme_07_lesson',
      titleVi: 'Ngày 1 — Lý thuyết & Từ vựng',
      phases: [
        _buildDay1Phase1(),
        _buildDay1Phase2(),
        _buildDay1Phase3(),
      ],
    );

LessonPhase _buildDay1Phase1() => LessonPhase(
      id: 'lesson07_phase1',
      phaseTypeStr: 'read_listen',
      titleVi: '📘 Thì Ajjatanī & Đại từ sở hữu',
      contentVi: '''
🎯 MỤC TIÊU BÀI 7
───────────────────
• Học chia động từ Thì Quá khứ bất định (Ajjatanī) — thể chủ động (Parassapada).
• Học cách dùng Đại từ sở hữu (Sở Thuộc Cách của đại từ nhân xưng).
• Nắm vững 10 từ vựng mới (4 danh từ + 6 bất biến từ).
• Hiểu luật Sandhi cơ bản: pāto'va, aham'eva, mayam'pi.

══════════════════════════════════════════════════════
A. THÌ QUÁ KHỨ BẤT ĐỊNH (Ajjatanī) — Thể chủ động
══════════════════════════════════════════════════════

📌 Thì quá khứ không xác định (Aorist), diễn tả hành động đã xảy ra trong quá khứ
   mà không rõ thời điểm chính xác.

Ví dụ với gốc "paca" (nấu):

┌──────────┬──────────────────┬───────────────────────┐
│   Ngôi   │   Số ít (Sg)     │   Số nhiều (Pl)       │
├──────────┼──────────────────┼───────────────────────┤
│  Ngôi 3  │ apacī, pacī      │ apacuṃ, pacuṃ         │
│          │ apaci, paci      │ apaciṃsu, paciṃsu     │
│  Ngôi 2  │ apaco, paco      │ apacittha, pacittha   │
│  Ngôi 1  │ apaciṃ, paciṃ   │ apacimhā, pacimhā     │
└──────────┴──────────────────┴───────────────────────┘

📌 Biến thể cuối (Terminations) — Thể chủ động:

┌──────────┬──────────────────┬──────────────────────┐
│   Ngôi   │   Số ít (Sg)     │   Số nhiều (Pl)      │
├──────────┼──────────────────┼──────────────────────┤
│  Ngôi 3  │  -i / -ī         │  -uṃ / -iṃsu         │
│  Ngôi 2  │  -o              │  -ittha              │
│  Ngôi 1  │  -iṃ             │  -imhā               │
└──────────┴──────────────────┴──────────────────────┘

⭐ QUY TẮC VÀNG — Thì Ajjatanī
① Tiền tố trường âm "a-" (Augment): thêm vào TRƯỚC gốc động từ (không phải phủ định a-);
   có thể có hoặc không. Vd: pac → apacī / pacī; gamu → agamī / gamī.
② Ngôi 3 số ít "-ī" đôi khi rút ngắn thành "-i"; ngôi 3 số nhiều "-uṃ" thường thành "-iṃsu".
③ Phụ âm "-s-" chèn vào khi gốc kết thúc bằng e hoặc ā:
   • dā + s + i = adāsi (đã cho)
   • disa + s + i = desesi (đã thuyết)
   • ṭhā + s + i = aṭṭhāsi (đã đứng)

══════════════════════════════════════════════════════
B. ĐẠI TỪ SỞ HỮU (Possessive Pronouns)
══════════════════════════════════════════════════════

📌 Chính là Sở Thuộc Cách (STC) của đại từ nhân xưng.

┌──────────┬─────────────────────┬──────────────────────┐
│   Ngôi   │   Số ít (Sg)        │   Số nhiều (Pl)      │
├──────────┼─────────────────────┼──────────────────────┤
│ Ngôi 1   │ mama, mayhaṃ        │ amhākaṃ              │
│ Ngôi 2   │ tava, tuyhaṃ        │ tumhākaṃ             │
│ Ngôi 3 m./n. │ tassa          │ tesaṃ                │
│ Ngôi 3 f.   │ tassā          │ tāsaṃ                │
└──────────┴─────────────────────┴──────────────────────┘

⭐ Phân biệt giới tính:
   • tassa (của anh ấy / nó — m./n.), tassā (của cô ấy — f., có ā cuối)
   • tesaṃ (họ m./n.), tāsaṃ (họ f.)

══════════════════════════════════════════════════════
C. LUẬT SANDHI CƠ BẢN TRONG BÀI
══════════════════════════════════════════════════════
① pāto + eva  → pāto'va    (lược bỏ nguyên âm sau)
② tumhe + eva → tumhe'yeva (thêm y giữa hai nguyên âm)
③ ahaṃ + eva  → aham'eva   (niggahita ṃ → m)
④ mayaṃ + api → mayam'pi   (niggahita → m + lược nguyên âm)
''',
      contentEn: 'Lesson 7 introduces the Aorist (Ajjatanī) past tense with augment a- and endings -i/-ī (3sg), -uṃ/-iṃsu (3pl), -o (2sg), -ittha (2pl), -iṃ (1sg), -imhā (1pl); possessive pronouns (mama/mayhaṃ/amhākaṃ/tava/tuyhaṃ/tumhākaṃ/tassa/tassā/tesaṃ/tāsaṃ); and four sandhi patterns (pāto\'va, tumhe\'yeva, aham\'eva, mayam\'pi).',
      fabVocab: const [
        FabVocabItem(wordEn: 'aparaṇha', pronunciation: 'a-pa-ra-ṇho', wordVi: 'buổi chiều', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'pātarāsa', pronunciation: 'paa-ta-raa-so', wordVi: 'buổi ăn sáng, bữa sáng', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'pubbaṇha', pronunciation: 'pub-ba-ṇho', wordVi: 'buổi sáng', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'sāyamāsa', pronunciation: 'saa-ya-maa-so', wordVi: 'bữa tối, bữa ăn chiều', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'ciraṃ', pronunciation: 'ci-raṃ', wordVi: 'lâu, đã lâu rồi', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'eva', pronunciation: 'e-va', wordVi: 'vừa, chỉ (nhấn mạnh)', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'hīyo', pronunciation: 'hii-yo', wordVi: 'hôm qua', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'pāto', pronunciation: 'paa-to', wordVi: 'buổi sáng, sáng sớm', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'purato', pronunciation: 'pu-ra-to', wordVi: 'trước, phía trước', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'viya', pronunciation: 'vi-ya', wordVi: 'vị như, giống như', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'mama', pronunciation: 'ma-ma', wordVi: 'của tôi (Ngôi 1 số ít)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'mayhaṃ', pronunciation: 'may-haṃ', wordVi: 'của tôi (hình thức khác)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'amhākaṃ', pronunciation: 'am-haa-kaṃ', wordVi: 'của chúng tôi', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'tava', pronunciation: 'ta-va', wordVi: 'của bạn (Ngôi 2 số ít)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'tuyhaṃ', pronunciation: 'tuy-haṃ', wordVi: 'của bạn (khác)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'tumhākaṃ', pronunciation: 'tum-haa-kaṃ', wordVi: 'của các bạn', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'tassa', pronunciation: 'tas-sa', wordVi: 'của anh ấy (m./n.)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'tassā', pronunciation: 'tas-saa', wordVi: 'của cô ấy (nữ)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'tesaṃ', pronunciation: 'te-saṃ', wordVi: 'của họ (m./n.)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'tāsaṃ', pronunciation: 'taa-saṃ', wordVi: 'của họ (nữ)', partOfSpeech: 'dai_tu'),
      ],
      fabPhrases: const [
        FabPhraseItem(phrase: 'a + [gốc] + i / ī', meaning: 'Ngôi 3 số ít — a + gốc + i/ī'),
        FabPhraseItem(phrase: 'a + [gốc] + uṃ / iṃsu', meaning: 'Ngôi 3 số nhiều — iṃsu thường dùng hơn uṃ'),
        FabPhraseItem(phrase: 'a + [gốc] + o', meaning: 'Ngôi 2 số ít — đuôi -o'),
        FabPhraseItem(phrase: 'a + [gốc] + ittha', meaning: 'Ngôi 2 số nhiều — đuôi -ittha'),
        FabPhraseItem(phrase: 'a + [gốc] + iṃ', meaning: 'Ngôi 1 số ít — đuôi -iṃ (tôi)'),
        FabPhraseItem(phrase: 'a + [gốc] + imhā', meaning: 'Ngôi 1 số nhiều — đuôi -imhā (chúng tôi)'),
        FabPhraseItem(phrase: '[gốc -ā/-e] + s + i', meaning: '⭐ Thêm "-s-" khi gốc kết thúc bằng ā hoặc e'),
        FabPhraseItem(phrase: "pāto + eva = pāto'va", meaning: '⭐ Sandhi: lược bỏ nguyên âm'),
        FabPhraseItem(phrase: "ahaṃ + eva = aham'eva", meaning: '⭐ Sandhi: niggahita đổi thành "m"'),
        FabPhraseItem(phrase: "mayaṃ + api = mayam'pi", meaning: '⭐ Sandhi: lược bỏ + niggahita → "m"'),
        FabPhraseItem(phrase: 'tassa (m./n.) ≠ tassā (f.)', meaning: '⭐ Phân biệt giới tính ở Ngôi 3'),
      ],
    );

LessonPhase _buildDay1Phase2() => LessonPhase(
      id: 'lesson07_phase2',
      phaseTypeStr: 'mind_game',
      titleVi: '🧠 Ghép từ: 10 từ vựng + 10 đại từ sở hữu',
      contentVi:
          'Nhấn vào từng ô tiếng Việt → đọc to từ Pāḷi tương ứng → nhấn lại để xem đáp án.',
      mixedSegments: const [
        MixedSegment(text: '【4 Danh từ Nam mới】'),
        MixedSegment(text: 'aparaṇha'),
        MixedSegment(text: 'buổi chiều', isVietnamese: true, answer: 'aparaṇha'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'pātarāsa'),
        MixedSegment(text: 'bữa sáng', isVietnamese: true, answer: 'pātarāsa'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'pubbaṇha'),
        MixedSegment(text: 'buổi sáng', isVietnamese: true, answer: 'pubbaṇha'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'sāyamāsa'),
        MixedSegment(text: 'bữa tối', isVietnamese: true, answer: 'sāyamāsa'),

        MixedSegment(text: '  ───  '),
        MixedSegment(text: '【6 Bất biến từ】'),
        MixedSegment(text: 'ciraṃ'),
        MixedSegment(text: 'lâu, đã lâu rồi', isVietnamese: true, answer: 'ciraṃ'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'eva'),
        MixedSegment(text: 'vừa, chỉ (nhấn mạnh)', isVietnamese: true, answer: 'eva'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'hīyo'),
        MixedSegment(text: 'hôm qua', isVietnamese: true, answer: 'hīyo'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'pāto'),
        MixedSegment(text: 'buổi sáng, sáng sớm', isVietnamese: true, answer: 'pāto'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'purato'),
        MixedSegment(text: 'trước, phía trước', isVietnamese: true, answer: 'purato'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'viya'),
        MixedSegment(text: 'giống như, vị như', isVietnamese: true, answer: 'viya'),

        MixedSegment(text: '  ───  '),
        MixedSegment(text: '【Đại từ sở hữu】'),
        MixedSegment(text: 'mama'),
        MixedSegment(text: 'của tôi (Ngôi 1)', isVietnamese: true, answer: 'mama'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'tava'),
        MixedSegment(text: 'của bạn (Ngôi 2)', isVietnamese: true, answer: 'tava'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'tassa'),
        MixedSegment(text: 'của anh ấy (m./n.)', isVietnamese: true, answer: 'tassa'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'tassā'),
        MixedSegment(text: 'của cô ấy (nữ — dấu ā)', isVietnamese: true, answer: 'tassā'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'amhākaṃ'),
        MixedSegment(text: 'của chúng tôi (Ngôi 1 pl)', isVietnamese: true, answer: 'amhākaṃ'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'tumhākaṃ'),
        MixedSegment(text: 'của các bạn (Ngôi 2 pl)', isVietnamese: true, answer: 'tumhākaṃ'),
      ],
    );

LessonPhase _buildDay1Phase3() => LessonPhase(
      id: 'lesson07_phase3',
      phaseTypeStr: 'listening_quiz',
      titleVi: '🎧 Quiz: Thì Ajjatanī & Đại từ sở hữu',
      contentVi:
          'Trả lời 7 câu hỏi trắc nghiệm về thì Quá khứ bất định và cách dùng đại từ sở hữu.',
      questions: const [
        QuizQuestion(
          id: 'lesson07_q01',
          questionText:
              'Câu 1. Đuôi của động từ ở Ngôi 3 số ít thì Ajjatanī là gì?',
          options: ['-i / -ī', '-uṃ / -iṃsu', '-o', '-iṃ'],
          correctIndex: 0,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson07_q02',
          questionText:
              'Câu 2. Đuôi của động từ ở Ngôi 1 số nhiều thì Ajjatanī là gì?',
          options: ['-imhā', '-iṃ', '-ittha', '-iṃsu'],
          correctIndex: 0,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson07_q03',
          questionText:
              'Câu 3. Đuôi của động từ ở Ngôi 2 số nhiều thì Ajjatanī là gì?',
          options: ['-iṃ', '-imhā', '-o', '-ittha'],
          correctIndex: 3,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson07_q04',
          questionText: '"Hīyo samaṇo dhammaṃ desesi." được dịch là:',
          options: [
            'Hôm nay vị sa-môn thuyết Pháp.',
            'Ngày mai vị sa-môn sẽ thuyết Pháp.',
            'Hôm qua vị sa-môn đã thuyết Pháp.',
            'Vị sa-môn thường thuyết Pháp.',
          ],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson07_q05',
          questionText: '"Tassā" là đại từ sở hữu ở giới tính nào?',
          options: ['Nam (m.)', 'Nữ (f.)', 'Trung tính (n.)', 'Cả 3 giới'],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson07_q06',
          questionText:
              'Khi gốc động từ tận cùng bằng "e" hoặc "ā", phụ âm nào được thêm vào trong thì Ajjatanī?',
          options: ['-r-', '-h-', '-s-', '-t-'],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson07_q07',
          questionText: 'Theo luật Sandhi, "pāto + eva" được viết liền thành:',
          options: ['pātoeva', 'pāteva', "pāto'va", 'pātovā'],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
      ],
      fabAnswers: const [
        FabAnswerItem(en: 'Answer 1 → A', vi: '① Ngôi 3 số ít có 2 đuôi: -i (ngắn) hoặc -ī (dài).'),
        FabAnswerItem(en: 'Answer 2 → A', vi: '② Ngôi 1 số nhiều có đuôi DUY NHẤT là -imhā (chúng tôi).'),
        FabAnswerItem(en: 'Answer 3 → D', vi: '③ Ngôi 2 số nhiều có đuôi DUY NHẤT là -ittha (các bạn).'),
        FabAnswerItem(en: 'Answer 4 → C', vi: '④ "Hīyo" = hôm qua. "desesi" = disa + s + i = đã thuyết (Ngôi 3 sg).'),
        FabAnswerItem(en: 'Answer 5 → B', vi: '⑤ "Tassa" = của anh ấy (m./n.). "Tassā" = của cô ấy (nữ) — dấu trường âm "ā" cuối.'),
        FabAnswerItem(en: 'Answer 6 → C', vi: '⑥ Thêm phụ âm "-s-" trước đuôi. Vd: dā + s + i = adāsi.'),
        FabAnswerItem(en: 'Answer 7 → C', vi: "⑦ \"pāto + eva = pāto'va\". Nguyên âm theo sau bị lược bỏ; dấu avagraha (' ) thay thế."),
      ],
      fabVocab: [],
      fabPhrases: [],
    );

// ──────────────────────────────────────────────────────────────
// DAY 2
// ──────────────────────────────────────────────────────────────
LessonDay getLesson07Day2() => LessonDay(
      id: 'lesson07_day2',
      dayNumber: 2,
      themeId: 'theme_07_lesson',
      titleVi: 'Ngày 2 — Bài tập & Quiz dịch thuật',
      phases: [
        _buildDay2Phase1(),
        _buildDay2Phase2(),
        _buildDay2Phase3(),
      ],
    );

LessonPhase _buildDay2Phase1() => LessonPhase(
      id: 'lesson07_phase4',
      phaseTypeStr: 'read_listen',
      titleVi: '📖 Đọc hiểu: Gợi ý dịch 36 câu Exercise 7',
      contentVi: '''
══════════════════════════════════════════════════════
📖 BÀI TẬP 7 — Dịch 36 câu Pāḷi sang tiếng Việt
══════════════════════════════════════════════════════

Bài tập tập trung vào: Thì Ajjatanī (quá khứ); Đại từ sở hữu (STC đại từ);
bất biến từ ciraṃ/eva/hīyo/pāto/purato/viya; các sandhi pāto'va, aham'eva,
mayam'pi, tumhe'yeva.

💡 GỢI Ý DỊCH:
① Buddho loke uppajji.
  → Đức Phật đã sinh ra trong thế giới. (uppajji = a+ppajj+i, ngôi 3 sg.)
② Hīyo samaṇo dhammaṃ desesi.
  → Hôm qua vị sa-môn đã thuyết Pháp. (desesi = disa+s+i, có -s- vì gốc kết thúc a/e.)
③ Dārako pāto'va tassa pāṭhasālaṃ agamī.
  → Đứa trẻ sáng sớm đã đi đến trường học của anh ấy. (pāto'va = sandhi pāto+eva.)
④ Acariyā tesaṃ sissānaṃ pubbaṇhe ovādaṃ adaṃsu.
  → Các thầy giáo đã cho lời khuyên đến học trò của họ vào buổi sáng. (adaṃsu = dā+ṃsu.)
⑤ Ciraṃ te amhākaṃ gharaṃ na agamiṃsu.
  → Lâu rồi họ đã không đến nhà chúng tôi.
⑥ Dārikā tāsaṃ janakassa purato aṭṭhaṃsu.
  → Các cô gái đã đứng trước người cha của họ.

📋 BẢNG TRA CỨU NHANH — Thì Ajjatanī
┌──────────────────┬──────────────────┬─────────────────────┐
│ Gốc              │ Ngôi 3 sg        │ Ngôi 3 pl           │
├──────────────────┼──────────────────┼─────────────────────┤
│ paca (nấu)       │ apacī / pacī     │ apaciṃsu / paciṃsu │
│ gamu (đi)        │ agamī / gamī     │ agamiṃsu / gamiṃsu │
│ su (nghe)        │ asuṇī / suṇī    │ asuṇiṃsu / suṇiṃsu│
│ dā (cho)         │ adāsi            │ adaṃsu / adasuṃ    │
│ disa (thuyết)    │ desesi           │ desiṃsu / desisuṃ  │
│ ṭhā (đứng)       │ aṭṭhāsi          │ aṭṭhaṃsu / aṭṭhasuṃ│
└──────────────────┴──────────────────┴─────────────────────┘
''',
      contentEn: 'Reading hints for Exercise 7: uppajji (uppajj+aorist 3sg); desesi (disa+s+i); adāsi (dā+s+i); adaṃsu (dā+ṃsu); agamiṃsu (gamu+iṃsu); aṭṭhaṃsu (ṭhā+ṃsu).',
    );

LessonPhase _buildDay2Phase2() => LessonPhase(
      id: 'lesson07_phase5',
      phaseTypeStr: 'mind_game',
      titleVi: '🧠 Ghép câu: 36 câu Exercise 7',
      contentVi:
          'Nhấn vào từng câu tiếng Việt → đọc to câu Pāḷi tương ứng → nhấn lại để xem đáp án.',
      mixedSegments: const [
        MixedSegment(text: '【Ex 1】 Buddho loke uppajji.'),
        MixedSegment(text: 'Đức Phật đã sinh ra trong thế giới.', isVietnamese: true, answer: 'Buddho loke uppajji.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 2】 Hīyo samaṇo dhammaṃ desesi.'),
        MixedSegment(text: 'Hôm qua vị sa-môn đã thuyết Pháp.', isVietnamese: true, answer: 'Hīyo samaṇo dhammaṃ desesi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 3】 Dārako pāto'va tassa pāṭhasālaṃ agamī."),
        MixedSegment(text: 'Đứa trẻ sáng sớm đã đi đến trường học của anh ấy.', isVietnamese: true, answer: "Dārako pāto'va tassa pāṭhasālaṃ agamī."),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 4】 Acariyā tesaṃ sissānaṃ pubbaṇhe ovādaṃ adaṃsu.'),
        MixedSegment(text: 'Các thầy giáo đã cho lời khuyên đến học trò của họ vào buổi sáng.', isVietnamese: true, answer: 'Acariyā tesaṃ sissānaṃ pubbaṇhe ovādaṃ adaṃsu.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 5】 Ciraṃ te amhākaṃ gharaṃ na agamiṃsu.'),
        MixedSegment(text: 'Lâu rồi họ đã không đến nhà chúng tôi.', isVietnamese: true, answer: 'Ciraṃ te amhākaṃ gharaṃ na agamiṃsu.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 6】 Dārikā tāsaṃ janakassa purato aṭṭhaṃsu.'),
        MixedSegment(text: 'Các cô gái đã đứng trước người cha của họ.', isVietnamese: true, answer: 'Dārikā tāsaṃ janakassa purato aṭṭhaṃsu.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 7】 Tvaṃ tassā hatthe mayhaṃ pottakaṃ passo.'),
        MixedSegment(text: 'Bạn hãy thấy cuốn sách nhỏ của tôi trong tay cô ấy.', isVietnamese: true, answer: 'Tvaṃ tassā hatthe mayhaṃ pottakaṃ passo.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 8】 Tvaṃ gaṅgāyaṃ nahāyituṃ pāto'va agamo."),
        MixedSegment(text: 'Bạn đã đi tắm ở sông Hằng vào sáng sớm.', isVietnamese: true, answer: "Tvaṃ gaṅgāyaṃ nahāyituṃ pāto'va agamo."),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 9】 Tvaṃ ajja pātarāsaṃ na bhuñjo.'),
        MixedSegment(text: 'Bạn đã không ăn bữa sáng hôm nay.', isVietnamese: true, answer: 'Tvaṃ ajja pātarāsaṃ na bhuñjo.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 10】 Kuhiṃ tumhe tumhākaṃ mittehi saddhiṃ aparaṇhe agamittha?'),
        MixedSegment(text: 'Các bạn đã đi đâu với bạn bè của các bạn vào buổi chiều?', isVietnamese: true, answer: 'Kuhiṃ tumhe tumhākaṃ mittehi saddhiṃ aparaṇhe agamittha?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 11】 Kasmā tumhe'yeva mama ācariyassa lekhanāni na likhittha?"),
        MixedSegment(text: 'Tại sao chính các bạn đã không viết thư cho thầy giáo của tôi?', isVietnamese: true, answer: "Kasmā tumhe'yeva mama ācariyassa lekhanāni na likhittha?"),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 12】 Tumhe ciraṃ mayhaṃ putte na passittha.'),
        MixedSegment(text: 'Các bạn đã lâu rồi không thấy con trai tôi.', isVietnamese: true, answer: 'Tumhe ciraṃ mayhaṃ putte na passittha.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 13】 Ahaṃ tuyhaṃ paṇṇākāre hīyo na alabhiṃ.'),
        MixedSegment(text: 'Tôi đã không nhận được phần thưởng của bạn hôm qua.', isVietnamese: true, answer: 'Ahaṃ tuyhaṃ paṇṇākāre hīyo na alabhiṃ.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 14】 Aham'eva gilānānaṃ ajja osadhaṃ adāsiṃ."),
        MixedSegment(text: 'Chính tôi đã cho thuốc đến các người bệnh hôm nay.', isVietnamese: true, answer: "Aham'eva gilānānaṃ ajja osadhaṃ adāsiṃ."),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 15】 Ahaṃ asse passituṃ visikhāyaṃ aṭṭhāsiṃ.'),
        MixedSegment(text: 'Tôi đã đứng trên đường để nhìn con ngựa.', isVietnamese: true, answer: 'Ahaṃ asse passituṃ visikhāyaṃ aṭṭhāsiṃ.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 16】 Mayaṃ tuyhaṃ ācariyassa sissā ahosimhā.'),
        MixedSegment(text: 'Chúng tôi đã là học trò của thầy giáo của bạn.', isVietnamese: true, answer: 'Mayaṃ tuyhaṃ ācariyassa sissā ahosimhā.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 17】 Mayaṃ ajja pubbaṇhe na uggaṇhimhā.'),
        MixedSegment(text: 'Chúng tôi đã không học vào buổi sáng hôm nay.', isVietnamese: true, answer: 'Mayaṃ ajja pubbaṇhe na uggaṇhimhā.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 18】 Samaṇā viya mayam'pi saddhāya dhammaṃ suṇimhā."),
        MixedSegment(text: 'Như các sa-môn, chúng tôi cũng đã nghe Pháp với lòng tin.', isVietnamese: true, answer: "Samaṇā viya mayam'pi saddhāya dhammaṃ suṇimhā."),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 19】 Ahaṃ mayhaṃ mañce supiṃ.'),
        MixedSegment(text: 'Tôi đã ngủ trên giường của tôi.', isVietnamese: true, answer: 'Ahaṃ mayhaṃ mañce supiṃ.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 20】 Ahaṃ pubbaṇhe tesaṃ ārāmamhi aṭṭhāsiṃ.'),
        MixedSegment(text: 'Tôi đã đứng trong vườn của họ vào buổi sáng.', isVietnamese: true, answer: 'Ahaṃ pubbaṇhe tesaṃ ārāmamhi aṭṭhāsiṃ.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 21】 Ahaṃ tassa mittāya lekhanaṃ likhituṃ salāyaṃ pīṭhe nisīdiṃ.'),
        MixedSegment(text: 'Tôi đã ngồi trên ghế trong phòng để viết thư cho bạn của anh ấy.', isVietnamese: true, answer: 'Ahaṃ tassa mittāya lekhanaṃ likhituṃ salāyaṃ pīṭhe nisīdiṃ.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 22】 Mayaṃ pāto'va gaṅgāyaṃ nahāyimhā."),
        MixedSegment(text: 'Chúng tôi đã tắm ở sông Hằng vào sáng sớm.', isVietnamese: true, answer: "Mayaṃ pāto'va gaṅgāyaṃ nahāyimhā."),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 23】 Mayam'eva hīyo gilāne saṅgaṇhimhā."),
        MixedSegment(text: 'Chính chúng tôi đã chăm sóc người bệnh hôm qua.', isVietnamese: true, answer: "Mayam'eva hīyo gilāne saṅgaṇhimhā."),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 24】 Ciraṃ mayaṃ nagarasmiṃ amhākaṃ mātulassa gharamhi vasimhā.'),
        MixedSegment(text: 'Lâu rồi chúng tôi đã sống trong nhà của người chú của chúng tôi ở thành phố.', isVietnamese: true, answer: 'Ciraṃ mayaṃ nagarasmiṃ amhākaṃ mātulassa gharamhi vasimhā.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 25】 Dāraka, kasmā tvaṃ tava ācariyassa purato aṭṭhāso?'),
        MixedSegment(text: 'Này đứa trẻ, tại sao bạn đã đứng trước thầy giáo của bạn?', isVietnamese: true, answer: 'Dāraka, kasmā tvaṃ tava ācariyassa purato aṭṭhāso?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 26】 Bhariye, pāto tvaṃ odanaṃ apaco.'),
        MixedSegment(text: 'Này bà, sáng nay bạn đã nấu cơm.', isVietnamese: true, answer: 'Bhariye, pāto tvaṃ odanaṃ apaco.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 27】 Putta, kuhiṃ tvaṃ hīyo agamo?'),
        MixedSegment(text: 'Này con, bạn đã đi đâu hôm qua?', isVietnamese: true, answer: 'Putta, kuhiṃ tvaṃ hīyo agamo?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 28】 Tumhe tumhākaṃ ācariyehi paññaṃ labhittha.'),
        MixedSegment(text: 'Các bạn đã nhận được trí tuệ từ các thầy giáo của các bạn.', isVietnamese: true, answer: 'Tumhe tumhākaṃ ācariyehi paññaṃ labhittha.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 29】 Kasmā tvaṃ tuyhaṃ janako viya Dhammaṃ na asuṇo?'),
        MixedSegment(text: 'Tại sao bạn đã không nghe Pháp giống như cha của bạn?', isVietnamese: true, answer: 'Kasmā tvaṃ tuyhaṃ janako viya Dhammaṃ na asuṇo?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 30】 Kuhiṃ tvaṃ hīyo tuyhaṃ sāyamāsaṃ bhuñjo?'),
        MixedSegment(text: 'Bạn đã ăn bữa tối của bạn ở đâu hôm qua?', isVietnamese: true, answer: 'Kuhiṃ tvaṃ hīyo tuyhaṃ sāyamāsaṃ bhuñjo?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 31】 Sā ciraṃ tassā ārāme aṭṭhāsi.'),
        MixedSegment(text: 'Cô ấy đã đứng lâu trong vườn của cô ấy.', isVietnamese: true, answer: 'Sā ciraṃ tassā ārāme aṭṭhāsi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 32】 So eva tassa janakassa pāde dhovī.'),
        MixedSegment(text: 'Chính anh ấy đã rửa chân cho cha của anh ấy.', isVietnamese: true, answer: 'So eva tassa janakassa pāde dhovī.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 33】 Ciraṃ mayhaṃ mitto tassa āpaṇasmā bhaṇdāni na kiṇi.'),
        MixedSegment(text: 'Bạn của tôi đã lâu rồi không mua đồ từ chợ của anh ấy.', isVietnamese: true, answer: 'Ciraṃ mayhaṃ mitto tassa āpaṇasmā bhaṇdāni na kiṇi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 34】 Vejjā aparaṇhe gilānasālaṃ na āgamiṃsu.'),
        MixedSegment(text: 'Các bác sĩ đã không đến phòng bệnh vào buổi chiều.', isVietnamese: true, answer: 'Vejjā aparaṇhe gilānasālaṃ na āgamiṃsu.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 35】 Dārakā ca dārikāyo ca hīyo tesaṃ potthakāni pāṭhasālaṃ na āhariṃsu.'),
        MixedSegment(text: 'Cả các con trai lẫn các con gái đã không mang sách của họ đến trường học hôm qua.', isVietnamese: true, answer: 'Dārakā ca dārikāyo ca hīyo tesaṃ potthakāni pāṭhasālaṃ na āhariṃsu.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 36】 Aham'eva gilānānaṃ hīyo pāto osadhaṃ adāsiṃ."),
        MixedSegment(text: 'Chính tôi đã cho thuốc đến các người bệnh sáng hôm qua.', isVietnamese: true, answer: "Aham'eva gilānānaṃ hīyo pāto osadhaṃ adāsiṃ."),
      ],
    );

LessonPhase _buildDay2Phase3() => LessonPhase(
      id: 'lesson07_phase6',
      phaseTypeStr: 'listening_quiz',
      titleVi: '🎧 Quiz: Dịch câu Pāḷi (Exercise 7)',
      contentVi:
          'Chọn bản dịch tiếng Việt đúng cho mỗi câu Pāḷi từ Exercise 7.',
      questions: const [
        QuizQuestion(
          id: 'lesson07_q08',
          questionText: '"Hīyo samaṇo dhammaṃ desesi." có nghĩa là:',
          options: [
            'Hôm nay vị sa-môn sẽ thuyết Pháp.',
            'Hôm qua vị sa-môn đã thuyết Pháp.',
            'Ngày mai vị sa-môn sẽ thuyết Pháp.',
            'Vị sa-môn đang thuyết Pháp.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson07_q09',
          questionText: '"Ciraṃ te amhākaṃ gharaṃ na agamiṃsu." có nghĩa là:',
          options: [
            'Lâu rồi họ đã đến nhà chúng tôi.',
            'Hôm nay họ đã đến nhà chúng tôi.',
            'Lâu rồi họ đã không đến nhà chúng tôi.',
            'Sắp tới họ sẽ đến nhà chúng tôi.',
          ],
          correctIndex: 2,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson07_q10',
          questionText: '"Acariyā tesaṃ sissānaṃ pubbaṇhe ovādaṃ adaṃsu." có nghĩa là:',
          options: [
            'Các thầy giáo cho các học trò lời khuyên vào buổi sáng.',
            'Các thầy giáo nhận lời khuyên từ học trò vào buổi sáng.',
            'Các học trò cho các thầy giáo lời khuyên vào buổi chiều.',
            'Các thầy giáo và học trò học Pháp vào buổi sáng.',
          ],
          correctIndex: 0,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson07_q11',
          questionText: '"Ahaṃ tuyhaṃ paṇṇākāre hīyo na alabhiṃ." có nghĩa là:',
          options: [
            'Tôi đã nhận phần thưởng của bạn hôm qua.',
            'Bạn đã nhận phần thưởng của tôi hôm qua.',
            'Tôi đã không nhận được phần thưởng của bạn hôm qua.',
            'Tôi sẽ nhận phần thưởng của bạn hôm nay.',
          ],
          correctIndex: 2,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson07_q12',
          questionText: '''"Mayaṃ pāto'va gaṅgāyaṃ nahāyimhā." có nghĩa là:''',
          options: [
            'Chúng tôi đang tắm ở sông Hằng vào buổi sáng.',
            'Chúng tôi đã tắm ở sông Hằng vào sáng sớm.',
            'Chúng tôi sẽ tắm ở sông Hằng vào buổi sáng.',
            'Chúng tôi không tắm ở sông Hằng vào sáng sớm.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson07_q13',
          questionText: '"So eva tassa janakassa pāde dhovī." có nghĩa là:',
          options: [
            'Chính anh ấy đã rửa chân cho cha của anh ấy.',
            'Anh ấy rửa tay cho cha của anh ấy.',
            'Cha của anh ấy rửa chân cho anh ấy.',
            'Chính cha của anh ấy đã rửa chân cho anh ấy.',
          ],
          correctIndex: 0,
          practiceNumber: 'practice2',
        ),
      ],
      fabAnswers: const [
        FabAnswerItem(en: 'Answer 8 → B', vi: '① "Hīyo" = hôm qua. "desesi" = disa + s + i = đã thuyết (Ngôi 3 sg Ajjatanī — chèn "-s-" vì disa kết thúc bằng a/e).'),
        FabAnswerItem(en: 'Answer 9 → C', vi: '② "Ciraṃ" = lâu rồi. "amhākaṃ" = của chúng tôi. "agamiṃsu" = đã đi (Ngôi 3 pl Ajjatanī, đuôi -iṃsu).'),
        FabAnswerItem(en: 'Answer 10 → A', vi: '③ "tesaṃ" = của họ (STC). "adaṃsu" = dā + ṃsu = đã cho (chèn s vì dā kết thúc bằng ā). "pubbaṇhe" = vào buổi sáng (ĐSC).'),
        FabAnswerItem(en: 'Answer 11 → C', vi: '④ "tuyhaṃ" = của bạn (STC). "alabhiṃ" = a + labh + iṃ = đã nhận được (Ngôi 1 sg Ajjatanī, đuôi -iṃ). "na" = không.'),
        FabAnswerItem(en: 'Answer 12 → B', vi: "⑤ \"pāto'va\" = sáng sớm (Sandhi: pāto+eva, nguyên âm bị lược). \"nahāyimhā\" = đã tắm (Ngôi 1 pl, đuôi -imhā)."),
        FabAnswerItem(en: 'Answer 13 → A', vi: '⑥ "So eva" = chính anh ấy. "tassa janakassa" = của cha anh ấy (STC). "dhovī" = đã rửa (dhov + ī, Ngôi 3 sg).'),
      ],
      fabVocab: [],
      fabPhrases: [],
    );

// ──────────────────────────────────────────────────────────────
// AGGREGATE
// ──────────────────────────────────────────────────────────────
List<LessonDay> getLesson07Data() => [
      getLesson07Day1(),
      getLesson07Day2(),
    ];

class Lesson07Bundle {
  static LessonMeta meta = getLesson07Meta();
  static LessonDay day1 = getLesson07Day1();
  static LessonDay day2 = getLesson07Day2();
  static List<LessonDay> all = getLesson07Data();
}
