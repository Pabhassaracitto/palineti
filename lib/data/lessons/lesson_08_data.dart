// lesson_08.dart
// Bài học số 8: Danh từ Nam tánh tận cùng "-i" + Danh động từ (Gerund)
// An Elementary Pāḷi Course – Nārada Mahāthera
// ---------------------------------------------------------------------------

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

// ──────────────────────────────────────────────────────────────
// LESSON META
// ──────────────────────────────────────────────────────────────
LessonMeta getLesson08Meta() => const LessonMeta(
      id: 'theme_08_lesson',
      lessonNumber: 8,
      titleVi: 'Danh từ Nam "-i" (masc_i) & Danh động từ (Gerund)',
      titleEn: 'Masculine -i Stems & Gerund (-tvā)',
      iconEmoji: '🌿',
      colorValue: 0xFF0F7B0F,
      description:
          'Biến cách danh từ đuôi -i (muni/aggi/atithi); danh động từ Gerund (-tvā / -tvāna / -tūna) chỉ hành động xảy ra trước.',
      complexity: LessonComplexity.medium,
      estimatedMinutes: 40,
    );

// ──────────────────────────────────────────────────────────────
// VOCABULARY
// ──────────────────────────────────────────────────────────────
final kLesson08Vocab = <PaliVocabModel>[
  // --- 12 danh từ Nam "-i" ---
  _v(1, 'adhipati', 'masc_i', 'chủ nhân, người lãnh đạo, chúa tể',
      'chief, master, lord', 'ad-hi-pa-ti',
      'Ārāmassa adhipati gahapatīnaṃ Dhammaṃ desesi.',
      'Chủ nhân khu vườn đã thuyết Pháp cho các gia chủ.'),
  _v(2, 'aggi', 'masc_i', 'ngọn lửa', 'fire', 'ag-gi',
      'Aggissa purato ṭhatvā Buddhaṃ vandiṃ.',
      'Tôi đã lễ bái Đức Phật sau khi đứng trước lửa.'),
  _v(3, 'asi', 'masc_i', 'thanh gươm', 'sword', 'a-si',
      'Hatthena asiṃ gahetvā narapati āruhi.',
      'Đức vua đã cầm gươm bằng tay rồi leo lên ngựa.'),
  _v(4, 'atithi', 'masc_i', 'người khách', 'guest', 'a-ti-thi',
      'Atithī amhākaṃ gharaṃ āgamiṃsu.',
      'Những người khách đã đến nhà chúng tôi.'),
  _v(5, 'gahapati', 'masc_i', 'gia chủ', 'householder', 'ga-ha-pa-ti',
      'Gahapatīnaṃ Buddhe saddhaṃ uppajji.',
      'Lòng tin ở Đức Phật đã sinh khởi nơi các gia chủ.'),
  _v(6, 'kapi', 'masc_i', 'con khỉ', 'monkey', 'ka-pi',
      'Kapayo rukkhaṃ āruhitvā phalāni khādiṃsu.',
      'Những con khỉ đã leo lên cây rồi ăn các trái cây.'),
  _v(7, 'kavi', 'masc_i', 'nhà thơ', 'poet', 'ka-vi',
      'Kavi potthakaṃ saṅgaṇhitvā narapatino adāsi.',
      'Nhà thơ đã biên soạn cuốn sách rồi cho đức vua.'),
  _v(8, 'maṇi', 'masc_i', 'ngọc ma-ni, viên ngọc', 'jewel, gem', 'ma-ṇi',
      'Narapati maṇiṃ labhitvā kavino adāsi.',
      'Đức vua đã nhận ngọc rồi cho nhà thơ.'),
  _v(9, 'narapati', 'masc_i', 'đức vua', 'king', 'na-ra-pa-ti',
      'Narapati hatthena asiṃ gahetvā assaṃ āruhi.',
      'Đức vua đã cầm gươm bằng tay rồi leo lên ngựa.'),
  _v(10, 'ñāti', 'masc_i', 'bà con, quyến thuộc', 'relative, kinsman', 'ñaa-ti',
      'Amhākaṃ ñātayo ciraṃ atithissa ghare vasiṃsu.',
      'Những bà con của chúng tôi đã sống lâu trong nhà người khách.'),
  _v(11, 'pati', 'masc_i', 'người chồng, ngài (chồng)', 'husband, lord', 'pa-ti',
      'Tvaṃ tuyhaṃ patiṃ ādarena saṅgaṇho.',
      'Bạn hãy đối xử với chồng của bạn với sự kính trọng.'),
  _v(12, 'vīhi', 'masc_i', 'lúa, thóc', 'paddy, rice', 'vii-hi',
      'Sakuṇā khettesu vīhiṃ disvā khādiṃsu.',
      'Những con chim đã thấy lúa trong cánh đồng rồi ăn.'),

  // --- Gerund thường gặp (bất biến từ) ---
  _v(13, 'pacitvā', 'gerund', 'sau khi nấu', 'having cooked', 'pa-cit-vā',
      'Odanaṃ pacitvā bhuñjati.', 'Nấu cơm xong rồi ăn.'),
  _v(14, 'katvā', 'gerund', 'sau khi làm', 'having done/made', 'ka-tvā',
      'Kammaṃ katvā gacchati.', 'Làm việc xong rồi đi.'),
  _v(15, 'sutvā', 'gerund', 'sau khi nghe', 'having heard', 'su-tvā',
      'Dhammaṃ sutvā pasīdati.', 'Nghe Pháp xong thì tịnh tín.'),
  _v(16, 'āruhitvā', 'gerund', 'sau khi leo lên', 'having climbed up',
      'aa-ru-hit-vā', 'Rukkhaṃ āruhitvā phalaṃ khādati.',
      'Leo lên cây rồi ăn quả.'),
  _v(17, 'gahetvā', 'gerund', 'sau khi cầm/lấy', 'having taken/held',
      'ga-het-vā', 'Asiṃ gahetvā āruhi.', 'Cầm gươm rồi leo lên.'),
  _v(18, 'disvā', 'gerund', 'sau khi thấy', 'having seen', 'dis-vā',
      'Buddhaṃ disvā vandati.', 'Thấy Đức Phật rồi đảnh lễ.'),
  _v(19, 'bhuñjitvā', 'gerund', 'sau khi ăn', 'having eaten', 'bhuñ-jit-vā',
      'Bhattaṃ bhuñjitvā gacchati.', 'Ăn cơm xong rồi đi.'),
  _v(20, 'vanditvā', 'gerund', 'sau khi lễ bái', 'having honoured',
      'van-dit-vā', 'Buddhaṃ vanditvā nisīdati.',
      'Lễ bái Đức Phật xong rồi ngồi xuống.'),
];

PaliVocabModel _v(int id, String root, String paradigmId, String wordVi,
    String wordEn, String pronunciation, String examplePali, String exampleVi) {
  final num = id.toString().padLeft(3, '0');
  return PaliVocabModel(
    id: 'pv_L08_$num',
    root: root,
    paradigmId: paradigmId,
    wordVi: wordVi,
    wordEn: wordEn,
    lessonId: 'lesson_08',
    pronunciation: pronunciation,
    examplePali: examplePali,
    exampleVi: exampleVi,
  );
}

// ──────────────────────────────────────────────────────────────
// DAY 1
// ──────────────────────────────────────────────────────────────
LessonDay getLesson08Day1() => LessonDay(
      id: 'lesson08_day1',
      dayNumber: 1,
      themeId: 'theme_08_lesson',
      titleVi: 'Ngày 1 — Lý thuyết & Từ vựng: Danh từ Nam "-i" & Danh động từ',
      phases: [
        _buildDay1Phase1(),
        _buildDay1Phase2(),
        _buildDay1Phase3(),
      ],
    );

LessonPhase _buildDay1Phase1() => LessonPhase(
      id: 'lesson08_phase1',
      phaseTypeStr: 'read_listen',
      titleVi: '📘 Lý thuyết: Danh từ Nam "-i" & Danh động từ',
      contentVi: '''
🎯 MỤC TIÊU BÀI 8
───────────────────
• Biến cách danh từ Nam tận cùng "-i" (masc_i), ví dụ muni (ẩn sĩ), aggi (lửa).
• Thành lập & dùng Danh động từ (Gerund — tvā): "sau khi...".
• 12 danh từ Nam "-i" mới; các Gerund thường gặp: pacitvā, katvā, sutvā,
  āruhitvā, gahetvā, disvā, bhuñjitvā, vanditvā.

══════════════════════════════════════════════════════
A. BIẾN CÁCH DANH TỪ NAM TÁNH TẬN CÙNG "-i"
══════════════════════════════════════════════════════
Căn mẩu: "muni" (bậc ẩn sĩ)

┌──────────┬─────────────────────┬─────────────────────────┐
│ Biến cách │ Số ít (Sg)          │ Số nhiều (Pl)            │
├──────────┼─────────────────────┼─────────────────────────┤
│ CC / HC  │ muni                │ munī / munayo            │
│ ĐC       │ muniṃ               │ munī / munayo            │
│ SDC      │ muninā              │ munībhi / munīhi         │
│ XXC      │ muninā / munimhā    │ munībhi / munīhi         │
│          │ / munismā           │                          │
│ CĐC/STC  │ munino / munissa    │ munīnaṃ                  │
│ ĐSC      │ munimhi / munismiṃ  │ munīsu                   │
└──────────┴─────────────────────┴─────────────────────────┘

📌 Đuôi tắt (paradigm masc_i):
  - CC/HC/ĐC sg: -i / -iṃ
  - SDC/XXC sg: -inā / -imhā / -ismā
  - CĐC/STC sg: -ino / -issa
  - ĐSC sg: -imhi / -ismiṃ
  - CC/HC/ĐC pl: -ī / -ayo
  - SDC/XXC pl: -ībhi / -īhi
  - CĐC/STC pl: -īnaṃ
  - ĐSC pl: -īsu

⚠️ Lưu ý:
• CC và HC trùng nhau ở cả số ít (-i) lẫn số nhiều (-ī/-ayo).
• SDC và XXC số ít trùng hình thức -inā; phân biệt bằng ngữ cảnh.
• Số nhiều CC/HC/ĐC có 2 dạng: trường âm "-ī" và dài hơn "-ayo".

══════════════════════════════════════════════════════
B. DANH ĐỘNG TỪ (GERUND) — Bất biến quá khứ phân từ
══════════════════════════════════════════════════════
📌 Nghĩa: "Sau khi làm gì đó … rồi / xong". Là BẤT BIẾN TỪ, không chia ngôi/số.

⭐ Quy tắc thành lập:
• Gốc kết thúc nguyên âm (a/ā/i/ī/u/ū): thêm "-tvā" (gốc -a → đổi thành -i).
• Một số gốc bất quy tắc dùng "-tvāna" hoặc "-tūna".
• Các gốc kết thúc phụ âm đơn thường thêm "-itvā".

📌 Bảng Gerund hay dùng:
┌─────────┬────────────┬────────────────────────────┐
│ Gốc     │ Gerund     │ Nghĩa                      │
├─────────┼────────────┼────────────────────────────┤
│ paca    │ pacitvā    │ sau khi nấu                │
│ kara    │ katvā      │ sau khi làm (lược "ra")    │
│ su      │ sutvā      │ sau khi nghe               │
│         │ (sutvāna,  │                            │
│         │  sotūna)   │                            │
│ āruhi   │ āruhitvā   │ sau khi leo lên            │
│ gahā    │ gahetvā    │ sau khi cầm (lấy)          │
│ dass    │ disvā      │ sau khi thấy               │
│ bhuñji  │ bhuñjitvā  │ sau khi ăn                 │
│ vandi   │ vanditvā   │ sau khi lễ bái             │
│ nisīdi  │ nisīditvā  │ sau khi ngồi               │
│ khipa   │ khipitvā   │ sau khi vứt/ném            │
└─────────┴────────────┴────────────────────────────┘

📌 Ví dụ:
• Nisīditvā bhuñji.  → Ngồi xong rồi ăn.
• Buddhaṃ vanditvā dhammaṃ sotuṃ agamī. → Lễ bái Đức Phật xong rồi đi nghe Pháp.
• So ṭhatvā vadi.     → Đứng dậy rồi nói.
• So kīḷitvā nahāyituṃ agami. → Chơi xong rồi đi tắm.
''',
      contentEn: 'Lesson 8 covers the masculine -i declension (muni: muni/muniṃ/muninā/munino/munimhi; pl. munī/munayo/munīhi/munīnaṃ/munīsu) and the Gerund in -tvā (pacitvā, katvā, sutvā, gahetvā, disvā, āruhitvā, bhuñjitvā, vanditvā, nisīditvā, khipitvā) meaning "having done X, then Y".',
      fabVocab: const [
        FabVocabItem(wordEn: 'adhipati', pronunciation: 'ad-hi-pa-ti', wordVi: 'chủ nhân, người lãnh đạo', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'aggi', pronunciation: 'ag-gi', wordVi: 'ngọn lửa', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'asi', pronunciation: 'a-si', wordVi: 'thanh gươm', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'atithi', pronunciation: 'a-ti-thi', wordVi: 'người khách', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'gahapati', pronunciation: 'ga-ha-pa-ti', wordVi: 'gia chủ', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'kapi', pronunciation: 'ka-pi', wordVi: 'con khỉ', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'kavi', pronunciation: 'ka-vi', wordVi: 'nhà thơ', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'maṇi', pronunciation: 'ma-ṇi', wordVi: 'ngọc ma-ni', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'narapati', pronunciation: 'na-ra-pa-ti', wordVi: 'đức vua', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'ñāti', pronunciation: 'ñaa-ti', wordVi: 'bà con, quyến thuộc', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'pati', pronunciation: 'pa-ti', wordVi: 'người chồng, ngài', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'vīhi', pronunciation: 'vii-hi', wordVi: 'lúa, thóc', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'pacitvā', pronunciation: 'pa-cit-vā', wordVi: 'sau khi nấu', partOfSpeech: 'danh_dong_tu'),
        FabVocabItem(wordEn: 'katvā', pronunciation: 'ka-tvā', wordVi: 'sau khi làm', partOfSpeech: 'danh_dong_tu'),
        FabVocabItem(wordEn: 'sutvā', pronunciation: 'su-tvā', wordVi: 'sau khi nghe', partOfSpeech: 'danh_dong_tu'),
        FabVocabItem(wordEn: 'āruhitvā', pronunciation: 'aa-ru-hit-vā', wordVi: 'sau khi leo lên', partOfSpeech: 'danh_dong_tu'),
        FabVocabItem(wordEn: 'gahetvā', pronunciation: 'ga-het-vā', wordVi: 'sau khi cầm/lấy', partOfSpeech: 'danh_dong_tu'),
        FabVocabItem(wordEn: 'disvā', pronunciation: 'dis-vā', wordVi: 'sau khi thấy', partOfSpeech: 'danh_dong_tu'),
        FabVocabItem(wordEn: 'bhuñjitvā', pronunciation: 'bhuñ-jit-vā', wordVi: 'sau khi ăn', partOfSpeech: 'danh_dong_tu'),
        FabVocabItem(wordEn: 'vanditvā', pronunciation: 'van-dit-vā', wordVi: 'sau khi lễ bái', partOfSpeech: 'danh_dong_tu'),
      ],
      fabPhrases: const [
        FabPhraseItem(phrase: 'pac + itvā = pacitvā', meaning: '⭐ Gerund: gốc -a → đổi thành -i + tvā'),
        FabPhraseItem(phrase: 'kara + tvā = katvā', meaning: '⭐ Bất quy tắc: kara → katvā'),
        FabPhraseItem(phrase: 'su + tvā = sutvā', meaning: '⭐ Sau khi nghe'),
        FabPhraseItem(phrase: 'āruhi + tvā = āruhitvā', meaning: '⭐ Sau khi leo lên'),
        FabPhraseItem(phrase: '[Chủ ngữ] + [-tvā ...] + [động từ chính]', meaning: '⭐ Cấu trúc: Sau khi làm X thì làm Y'),
        FabPhraseItem(phrase: 'muni (CC sg)', meaning: '⭐ masc_i: CC/HC sg đuôi -i'),
        FabPhraseItem(phrase: 'muninā (SDC/XXC sg)', meaning: '⭐ masc_i: SDC/XXC sg đuôi -inā'),
        FabPhraseItem(phrase: 'munino/munissa (CĐC/STC sg)', meaning: '⭐ masc_i: CĐC/STC sg'),
        FabPhraseItem(phrase: 'munīsu (ĐSC pl)', meaning: '⭐ masc_i: ĐSC pl đuôi -īsu'),
        FabPhraseItem(phrase: 'munīnaṃ (CĐC/STC pl)', meaning: '⭐ masc_i: CĐC/STC pl đuôi -īnaṃ'),
      ],
    );

LessonPhase _buildDay1Phase2() => LessonPhase(
      id: 'lesson08_phase2',
      phaseTypeStr: 'mind_game',
      titleVi: '🧠 Ghép từ: 12 từ mới',
      contentVi:
          'Nhấn vào từng ô tiếng Việt → đọc to từ Pāḷi tương ứng → nhấn lại để xem đáp án.',
      mixedSegments: const [
        MixedSegment(text: '【12 Danh từ Nam tận cùng "-i"】'),
        MixedSegment(text: 'adhipati'),
        MixedSegment(text: 'chủ nhân, người lãnh đạo', isVietnamese: true, answer: 'adhipati'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'aggi'),
        MixedSegment(text: 'ngọn lửa', isVietnamese: true, answer: 'aggi'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'asi'),
        MixedSegment(text: 'thanh gươm', isVietnamese: true, answer: 'asi'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'atithi'),
        MixedSegment(text: 'người khách', isVietnamese: true, answer: 'atithi'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'gahapati'),
        MixedSegment(text: 'gia chủ', isVietnamese: true, answer: 'gahapati'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'kapi'),
        MixedSegment(text: 'con khỉ', isVietnamese: true, answer: 'kapi'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'kavi'),
        MixedSegment(text: 'nhà thơ', isVietnamese: true, answer: 'kavi'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'maṇi'),
        MixedSegment(text: 'ngọc ma-ni', isVietnamese: true, answer: 'maṇi'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'narapati'),
        MixedSegment(text: 'đức vua', isVietnamese: true, answer: 'narapati'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'ñāti'),
        MixedSegment(text: 'bà con, quyến thuộc', isVietnamese: true, answer: 'ñāti'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'pati'),
        MixedSegment(text: 'người chồng, ngài', isVietnamese: true, answer: 'pati'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'vīhi'),
        MixedSegment(text: 'lúa, thóc', isVietnamese: true, answer: 'vīhi'),
      ],
    );

LessonPhase _buildDay1Phase3() => LessonPhase(
      id: 'lesson08_phase3',
      phaseTypeStr: 'listening_quiz',
      titleVi: '🎧 Quiz: Danh từ Nam "-i" & Danh động từ',
      contentVi:
          'Trả lời 7 câu hỏi trắc nghiệm về biến cách danh từ Nam "-i" và cách thành lập Gerund.',
      questions: const [
        QuizQuestion(
          id: 'lesson08_q01',
          questionText:
              '"Muninā" trong câu "Muni narapatiṃ Dhammena saṅgaṇhitvā agami" là biến cách nào của "muni"?',
          options: [
            'Cách Chủ (CC)',
            'Đối Cách (ĐC)',
            'Sở Dụng Cách (SDC)',
            'Định Sở Cách (ĐSC)',
          ],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson08_q02',
          questionText:
              '"Munino" trong câu "Munino janako narapati ahosi" là biến cách nào của "muni"?',
          options: [
            'Sở Thuộc Cách (STC)',
            'Đối Cách (ĐC)',
            'Sở Dụng Cách (SDC)',
            'Hô Cách (HC)',
          ],
          correctIndex: 0,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson08_q03',
          questionText:
              'Đuôi Đối Cách (ĐC) số ít của danh từ Nam "-i" là gì?',
          options: ['-i', '-iṃ', '-inā', '-ino'],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson08_q04',
          questionText:
              'Gerund (sau khi làm) của động từ "kara" (làm) là gì?',
          options: ['karitvā', 'karatvā', 'katvā', 'katvāna'],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson08_q05',
          questionText:
              'Gerund của động từ "paca" (nấu) là gì?',
          options: ['pacatvā', 'pacitvā', 'pacetvā', 'pakitvā'],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson08_q06',
          questionText:
              'Hình thức Xuất Xứ Cách (XXC) số ít của "muni" là gì?',
          options: ['muninā', 'muniṃ', 'munino', 'munīsu'],
          correctIndex: 0,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson08_q07',
          questionText:
              '"Kapayo rukkhaṃ āruhitvā phalāni khādiṃsu." được dịch là:',
          options: [
            'Những con khỉ leo lên cây rồi ăn các trái cây.',
            'Những con khỉ đã leo cây và sẽ ăn trái cây.',
            'Những con khỉ đang leo cây để ăn trái cây.',
            'Những con khỉ không leo cây nhưng ăn trái cây.',
          ],
          correctIndex: 0,
          practiceNumber: 'practice1',
        ),
      ],
      fabAnswers: const [
        FabAnswerItem(en: 'Answer 1 → C', vi: '① "Muninā" có đuôi "-inā" → đây là SDC/XXC số ít (= "bởi/từ vị ẩn sĩ").'),
        FabAnswerItem(en: 'Answer 2 → A', vi: '② "Munino" có đuôi "-ino" → đây là STC/CĐC số ít (= "của/cho vị ẩn sĩ").'),
        FabAnswerItem(en: 'Answer 3 → B', vi: '③ ĐC số ít của masc_i có đuôi DUY NHẤT là "-iṃ" (vd: muniṃ, gahapatiṃ).'),
        FabAnswerItem(en: 'Answer 4 → C', vi: '④ Gerund của "kara" → katvā (lược bỏ "ra"); cũng có katvāna, kātūna.'),
        FabAnswerItem(en: 'Answer 5 → B', vi: '⑤ paca + tvā → pacitvā (gốc kết thúc "-a" đổi thành "-i" khi thêm tvā).'),
        FabAnswerItem(en: 'Answer 6 → A', vi: '⑥ XXC số ít của masc_i có đuôi "-inā" (hoặc "-imhā", "-ismā"), trùng SDC.'),
        FabAnswerItem(en: 'Answer 7 → A', vi: '⑦ "āruhitvā" = Gerund của āruhi (sau khi leo lên). Cấu trúc [Gerund... + động từ chính (khādiṃsu)] = "leo lên rồi ăn".'),
      ],
      fabVocab: [],
      fabPhrases: [],
    );

// ──────────────────────────────────────────────────────────────
// DAY 2
// ──────────────────────────────────────────────────────────────
LessonDay getLesson08Day2() => LessonDay(
      id: 'lesson08_day2',
      dayNumber: 2,
      themeId: 'theme_08_lesson',
      titleVi: 'Ngày 2 — Luyện tập: Danh từ Nam "-i" & Danh động từ',
      phases: [
        _buildDay2Phase1(),
        _buildDay2Phase2(),
        _buildDay2Phase3(),
      ],
    );

LessonPhase _buildDay2Phase1() => LessonPhase(
      id: 'lesson08_phase4',
      phaseTypeStr: 'read_listen',
      titleVi: '📖 Đọc hiểu: Exercise 8',
      contentVi: '''
══════════════════════════════════════════════════════
📖 BÀI TẬP 8 — Dịch 30 câu Pāḷi sang tiếng Việt
══════════════════════════════════════════════════════
Bài tập tập trung vào: Danh từ Nam "-i" (12 từ mới); Gerund (-tvā); đại từ sở hữu
từ Bài 7 (mama/mayhaṃ/amhākaṃ/tava/tuyhaṃ/tumhākaṃ/tassa/tassā/tesaṃ/tāsaṃ).

💡 GỢI Ý DỊCH:
① Muni narapatiṃ Dhammena saṅgaṇhitvā agami.
  → Vị ẩn sĩ, sau khi đối xử với đức vua bằng Pháp, đã đến.
② Kapayo rukkhaṃ āruhitvā phalāni khādiṃsu.
  → Những con khỉ, sau khi leo lên cây, đã ăn các trái cây.
③ Kadā tumhe kavimhā potthakāni alabhittha?
  → Khi nào các bạn đã nhận sách từ nhà thơ?
④ Ahaṃ tesaṃ ārāme adhipati ahosiṃ.
  → Tôi đã là chủ nhân khu vườn của họ.
⑤ Mayaṃ gahapatīhi saddhiṃ gaṅgāya udakaṃ āharitvā aggimhi khipimhā.
  → Chúng tôi cùng các gia chủ, sau khi mang nước từ sông Hằng, đã đổ vào lửa.
⑥ Narapati hatthena asiṃ gahetvā assaṃ āruhi.
  → Đức vua, sau khi cầm gươm bằng tay, đã leo lên ngựa.

📋 MẸO DỊCH CÂU CÓ GERUND
Cấu trúc mẫu: [Chủ ngữ] + [Gerund (-tvā)] + [động từ chính]
→ "... xong rồi ..."
→ "Sau khi ..., ..."

Ví dụ:
• nisīditvā bhuñji = "Ngồi xong rồi ăn"
• vanditvā agamī    = "Lễ bái xong rồi đi"
• āruhitvā khādiṃsu = "Leo lên xong rồi ăn"
• gahetvā āruhi     = "Cầm xong rồi leo lên"
''',
      contentEn: 'Reading hints for Exercise 8: identify the -tvā gerund first (saṅgaṇhitvā, āruhitvā, āharitvā, gahetvā), then translate the main finite verb (agamī, khādiṃsu, alabhittha, ahosiṃ, khipimhā, āruhi).',
    );

LessonPhase _buildDay2Phase2() => LessonPhase(
      id: 'lesson08_phase5',
      phaseTypeStr: 'mind_game',
      titleVi: '🧠 Ghép câu: 30 câu Exercise 8',
      contentVi:
          'Nhấn vào từng câu tiếng Việt → đọc to câu Pāḷi tương ứng → nhấn lại để xem đáp án.',
      mixedSegments: const [
        MixedSegment(text: '【Ex 1】 Muni narapatiṃ Dhammena saṅgaṇhitvā agami.'),
        MixedSegment(text: 'Vị ẩn sĩ, sau khi đối xử với đức vua bằng Pháp, đã đến.', isVietnamese: true, answer: 'Muni narapatiṃ Dhammena saṅgaṇhitvā agami.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 2】 Kapayo rukkhaṃ āruhitvā phalāni khādiṃsu.'),
        MixedSegment(text: 'Những con khỉ, sau khi leo lên cây, đã ăn các trái cây.', isVietnamese: true, answer: 'Kapayo rukkhaṃ āruhitvā phalāni khādiṃsu.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 3】 Kadā tumhe kavimhā potthakāni alabhittha?'),
        MixedSegment(text: 'Khi nào các bạn đã nhận sách từ nhà thơ?', isVietnamese: true, answer: 'Kadā tumhe kavimhā potthakāni alabhittha?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 4】 Ahaṃ tesaṃ ārāme adhipati ahosiṃ.'),
        MixedSegment(text: 'Tôi đã là chủ nhân khu vườn của họ.', isVietnamese: true, answer: 'Ahaṃ tesaṃ ārāme adhipati ahosiṃ.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 5】 Mayaṃ gahapatīhi saddhiṃ gaṅgāya udakaṃ āharitvā aggimhi khipimhā.'),
        MixedSegment(text: 'Chúng tôi cùng các gia chủ, sau khi mang nước từ sông Hằng, đã đổ vào lửa.', isVietnamese: true, answer: 'Mayaṃ gahapatīhi saddhiṃ gaṅgāya udakaṃ āharitvā aggimhi khipimhā.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 6】 Narapati hatthena asiṃ gahetvā assaṃ āruhi.'),
        MixedSegment(text: 'Đức vua, sau khi cầm gươm bằng tay, đã leo lên ngựa.', isVietnamese: true, answer: 'Narapati hatthena asiṃ gahetvā assaṃ āruhi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 7】 Tvaṃ tuyhaṃ patiṃ ādarena saṅgaṇho.'),
        MixedSegment(text: 'Bạn hãy đối xử với chồng của bạn với sự kính trọng.', isVietnamese: true, answer: 'Tvaṃ tuyhaṃ patiṃ ādarena saṅgaṇho.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 8】 Gahapatayo narapatino purato ṭhatvā vadiṃsu.'),
        MixedSegment(text: 'Các gia chủ, sau khi đứng trước đức vua, đã nói.', isVietnamese: true, answer: 'Gahapatayo narapatino purato ṭhatvā vadiṃsu.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 9】 Atithī amhākaṃ gharaṃ āgantvā āhāraṃ bhuñjiṃsu.'),
        MixedSegment(text: 'Những người khách, sau khi đến nhà chúng tôi, đã ăn vật thực.', isVietnamese: true, answer: 'Atithī amhākaṃ gharaṃ āgantvā āhāraṃ bhuñjiṃsu.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 10】 Sakuṇā khettesu vīhiṃ disvā khādiṃsu.'),
        MixedSegment(text: 'Những con chim, sau khi thấy lúa trong các cánh đồng, đã ăn.', isVietnamese: true, answer: 'Sakuṇā khettesu vīhiṃ disvā khādiṃsu.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 11】 Narapati gahapatimhā maṇiṃ labhitvā kavino adāsi.'),
        MixedSegment(text: 'Đức vua, sau khi nhận ngọc từ gia chủ, đã cho nhà thơ.', isVietnamese: true, answer: 'Narapati gahapatimhā maṇiṃ labhitvā kavino adāsi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 12】 Adhipati atithīhi saddhiṃ āhāraṃ bhuñjitvā muniṃ passituṃ agāmi.'),
        MixedSegment(text: 'Chủ nhân, sau khi ăn với những người khách, đã đến để gặp vị ẩn sĩ.', isVietnamese: true, answer: 'Adhipati atithīhi saddhiṃ āhāraṃ bhuñjitvā muniṃ passituṃ agāmi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 13】 Ahaṃ mayhaṃ ñātino ghare ciraṃ vasiṃ.'),
        MixedSegment(text: 'Tôi đã sống lâu trong nhà của bà con tôi.', isVietnamese: true, answer: 'Ahaṃ mayhaṃ ñātino ghare ciraṃ vasiṃ.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 14】 Sunakhā aṭṭhīhi gahetvā magge dhāviṃsu.'),
        MixedSegment(text: 'Những con chó, sau khi cầm xương, đã chạy trên đường.', isVietnamese: true, answer: 'Sunakhā aṭṭhīhi gahetvā magge dhāviṃsu.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 15】 Dhammaṃ sutvā gahapatīnaṃ Buddhe saddhaṃ uppajji.'),
        MixedSegment(text: 'Sau khi nghe Pháp, lòng tin ở Đức Phật đã sinh khởi nơi các gia chủ.', isVietnamese: true, answer: 'Dhammaṃ sutvā gahapatīnaṃ Buddhe saddhaṃ uppajji.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 16】 Munino janako narapati ahosi.'),
        MixedSegment(text: 'Cha của vị ẩn sĩ là đức vua.', isVietnamese: true, answer: 'Munino janako narapati ahosi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 17】 Gahapatayo, kasmā tumhe pāṭhasālaṃ gantuṃ tumhākaṃ dārake na ovadittha?'),
        MixedSegment(text: 'Này các gia chủ, tại sao các bạn không khuyên các đứa trẻ của các bạn đi đến trường học?', isVietnamese: true, answer: 'Gahapatayo, kasmā tumhe pāṭhasālaṃ gantuṃ tumhākaṃ dārake na ovadittha?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 18】 Narapatiṃ disvā mayaṃ āgamimhā.'),
        MixedSegment(text: 'Sau khi thấy đức vua, chúng tôi đã đến.', isVietnamese: true, answer: 'Narapatiṃ disvā mayaṃ āgamimhā.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 19】 Ahaṃ gantvā kaviṃ avadiṃ.'),
        MixedSegment(text: 'Sau khi đi, tôi đã nói với nhà thơ.', isVietnamese: true, answer: 'Ahaṃ gantvā kaviṃ avadiṃ.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 20】 Pīṭhe nisīditvā ārāmassa adhipati gahapatīnaṃ Dhammaṃ desesi.'),
        MixedSegment(text: 'Chủ nhân khu vườn, sau khi ngồi trên ghế, đã thuyết Pháp cho các gia chủ.', isVietnamese: true, answer: 'Pīṭhe nisīditvā ārāmassa adhipati gahapatīnaṃ Dhammaṃ desesi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 21】 Eva hīyo ahaṃ lekhanaṃ likhitvā mayhaṃ adhipatissa pesesiṃ.'),
        MixedSegment(text: 'Chính hôm qua tôi đã gửi thư cho chủ nhân của tôi sau khi viết.', isVietnamese: true, answer: 'Eva hīyo ahaṃ lekhanaṃ likhitvā mayhaṃ adhipatissa pesesiṃ.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 22】 Kavi potthakaṃ saṅgaṇhitvā narapatino adāsi.'),
        MixedSegment(text: 'Nhà thơ, sau khi biên soạn cuốn sách, đã cho đức vua.', isVietnamese: true, answer: 'Kavi potthakaṃ saṅgaṇhitvā narapatino adāsi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 23】 Amhākaṃ ñātayo ciraṃ atithissa ghare vasitvā pāto'va nikkhamiṃsu."),
        MixedSegment(text: 'Những bà con của chúng tôi, sau khi sống lâu trong nhà người khách, đã đi ra vào sáng sớm.', isVietnamese: true, answer: "Amhākaṃ ñātayo ciraṃ atithissa ghare vasitvā pāto'va nikkhamiṃsu."),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 24】 Gahapatayo kassakehi vīhiṃ kiṇitvā tesaṃ khettesu vapiṃsu.'),
        MixedSegment(text: 'Các gia chủ, sau khi mua lúa từ nông dân, đã gieo trong các cánh đồng của họ.', isVietnamese: true, answer: 'Gahapatayo kassakehi vīhiṃ kiṇitvā tesaṃ khettesu vapiṃsu.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 25】 Pīṭhesu nisīditvā mayaṃ munissa ovādaṃ suṇimhā.'),
        MixedSegment(text: 'Chúng tôi đã nghe lời khuyên của vị ẩn sĩ sau khi ngồi trên các ghế.', isVietnamese: true, answer: 'Pīṭhesu nisīditvā mayaṃ munissa ovādaṃ suṇimhā.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 26】 Ārāmaṃ katvā narapati muṇino pūjesi.'),
        MixedSegment(text: 'Đức vua đã cúng dường vị ẩn sĩ sau khi xây vườn.', isVietnamese: true, answer: 'Ārāmaṃ katvā narapati muṇino pūjesi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 27】 Mayhaṃ pātarāsaṃ atithinā saddhiṃ bhuñjitvā ahaṃ mayhaṃ ñātayo passituṃ agamiṃ.'),
        MixedSegment(text: 'Tôi đã đi gặp bà con của tôi sau khi ăn sáng với người khách.', isVietnamese: true, answer: 'Mayhaṃ pātarāsaṃ atithinā saddhiṃ bhuñjitvā ahaṃ mayhaṃ ñātayo passituṃ agamiṃ.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 28】 Ahaṃ āpaṇasmā phalāni kiṇitvā kapino adāsiṃ.'),
        MixedSegment(text: 'Tôi đã cho con khỉ sau khi mua trái cây từ chợ.', isVietnamese: true, answer: 'Ahaṃ āpaṇasmā phalāni kiṇitvā kapino adāsiṃ.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 29】 Kasmā aggissa purato ṭhatvā tvaṃ kapinā saddhiṃ kīḷo?'),
        MixedSegment(text: 'Tại sao bạn đứng trước lửa rồi chơi với con khỉ?', isVietnamese: true, answer: 'Kasmā aggissa purato ṭhatvā tvaṃ kapinā saddhiṃ kīḷo?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 30】 Munismā Dhammaṃ sutvā saddhā narapatino uppajji.'),
        MixedSegment(text: 'Sau khi nghe Pháp từ vị ẩn sĩ, lòng tin ở đức vua đã sinh khởi.', isVietnamese: true, answer: 'Munismā Dhammaṃ sutvā saddhā narapatino uppajji.'),
      ],
    );

LessonPhase _buildDay2Phase3() => LessonPhase(
      id: 'lesson08_phase6',
      phaseTypeStr: 'listening_quiz',
      titleVi: '🎧 Quiz: Dịch câu Exercise 8',
      contentVi:
          'Chọn bản dịch tiếng Việt đúng cho mỗi câu Pāḷi từ Exercise 8.',
      questions: const [
        QuizQuestion(
          id: 'lesson08_q08',
          questionText:
              '"Kapayo rukkhaṃ āruhitvā phalāni khādiṃsu." có nghĩa là:',
          options: [
            'Những con khỉ leo lên cây rồi ăn các trái cây.',
            'Những con khỉ đã ăn trái cây trên cây.',
            'Những con khỉ đang leo cây và sẽ ăn trái cây.',
            'Những con khỉ không leo cây nhưng ăn trái cây.',
          ],
          correctIndex: 0,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson08_q09',
          questionText:
              '"Ahaṃ tesaṃ ārāme adhipati ahosiṃ." có nghĩa là:',
          options: [
            'Tôi là chủ nhân khu vườn của họ.',
            'Tôi đã là chủ nhân khu vườn của họ.',
            'Tôi sẽ là chủ nhân khu vườn của họ.',
            'Tôi đang là chủ nhân khu vườn của họ.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson08_q10',
          questionText:
              '"Narapati hatthena asiṃ gahetvā assaṃ āruhi." có nghĩa là:',
          options: [
            'Đức vua cầm gươm bằng tay rồi leo lên ngựa.',
            'Đức vua đang cầm gươm và đang leo lên ngựa.',
            'Đức vua sẽ cầm gươm và leo lên ngựa.',
            'Đức vua không cầm gươm nhưng leo lên ngựa.',
          ],
          correctIndex: 0,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson08_q11',
          questionText:
              '"Tvaṃ tuyhaṃ patiṃ ādarena saṅgaṇho." có nghĩa là:',
          options: [
            'Bạn đã đối xử với chồng của bạn với sự kính trọng.',
            'Bạn sẽ đối xử với chồng của bạn với sự kính trọng.',
            'Bạn hãy đối xử với chồng của bạn với sự kính trọng.',
            'Bạn đang đối xử với chồng của bạn với sự kính trọng.',
          ],
          correctIndex: 2,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson08_q12',
          questionText:
              '"Munino janako narapati ahosi." có nghĩa là:',
          options: [
            'Đức vua là cha của vị ẩn sĩ.',
            'Cha của vị ẩn sĩ là đức vua.',
            'Đức vua và cha của vị ẩn sĩ giống nhau.',
            'Cha của đức vua là vị ẩn sĩ.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson08_q13',
          questionText:
              '"Sakuṇā khettesu vīhiṃ disvā khādiṃsu." có nghĩa là:',
          options: [
            'Những con chim đã ăn lúa trong các cánh đồng.',
            'Những con chim đã thấy lúa trong các cánh đồng rồi ăn.',
            'Những con chim đang thấy lúa trong các cánh đồng.',
            'Những con chim không ăn lúa trong các cánh đồng.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
      ],
      fabAnswers: const [
        FabAnswerItem(en: 'Answer 8 → A', vi: '① "āruhitvā" = Gerund của āruhi (sau khi leo lên). Cấu trúc: "āruhitvā... khādiṃsu" = "leo lên rồi ăn".'),
        FabAnswerItem(en: 'Answer 9 → B', vi: '② "ahosiṃ" = a + ho + siṃ = đã là (Ajjatanī Ngôi 1 sg). "adhipati" = chủ nhân (CC).'),
        FabAnswerItem(en: 'Answer 10 → A', vi: '③ "gahetvā" = Gerund của gahā (cầm). "āruhi" = leo lên. "assaṃ" = ĐC của assa (ngựa).'),
        FabAnswerItem(en: 'Answer 11 → C', vi: '④ "saṅgaṇho" = động từ thì Hiện tại Ngôi 2 sg (mệnh lệnh/khuyên) = "hãy đối xử".'),
        FabAnswerItem(en: 'Answer 12 → B', vi: '⑤ "Munino" = STC số ít của muni (= của vị ẩn sĩ). "janako" = CC = cha. Cấu trúc: "[STC] + CC + [predicate]" = "Cha của X là Y".'),
        FabAnswerItem(en: 'Answer 13 → B', vi: '⑥ "disvā" = Gerund của dass (thấy). "khādiṃsu" = đã ăn. "vīhiṃ" = ĐC của vīhi (lúa).'),
      ],
      fabVocab: [],
      fabPhrases: [],
    );

// ──────────────────────────────────────────────────────────────
// AGGREGATE
// ──────────────────────────────────────────────────────────────
List<LessonDay> getLesson08Data() => [
      getLesson08Day1(),
      getLesson08Day2(),
    ];

class Lesson08Bundle {
  static LessonMeta meta = getLesson08Meta();
  static LessonDay day1 = getLesson08Day1();
  static LessonDay day2 = getLesson08Day2();
  static List<LessonDay> all = getLesson08Data();
}
