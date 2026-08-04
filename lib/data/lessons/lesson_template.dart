import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

/// ═══════════════════════════════════════════════════════════════
/// TEMPLATE CHUẨN VÀNG — Palineti V0.2
/// Dùng để tạo bài mới hoặc chuẩn hoá bài cũ
/// Quy tắc:
/// - 2 Day x 3 Phase = 6 Phase / bài
/// - Vocab mới: 12 từ / bài (tối đa)
/// - Mind game: Day1 12 cặp (24 segs), Day2 20 cặp (40 segs)
/// - Quiz: Day1 8 câu, Day2 10 câu = 18 câu / bài
/// - contentVi Day1: 2500-4000 chars, Day2: 1000-2000 chars, tổng <5000
/// ═══════════════════════════════════════════════════════════════

/// VOCABULARY (12 items chuẩn)
final kLessonTemplateVocab = <PaliVocabModel>[
  PaliVocabModel(
    id: 'pv_LXX_example',
    root: 'example',
    paradigmId: 'masc_a',
    wordVi: 'ví dụ',
    wordEn: 'example',
    lessonId: 'lesson_XX',
    pronunciation: 'eg-zam-ple', // Dùng Velthuis/IAST, thống nhất
    examplePali: 'Buddho dhammaṃ deseti.',
    exampleVi: 'Đức Phật thuyết Pháp.',
  ),
  // Thêm 11 từ nữa, tổng 12
];

// ──────────────────────────────────────────────────────────────
// DAY 1: Nền tảng — Lý thuyết & Từ vựng (15-20 phút)
// ──────────────────────────────────────────────────────────────
LessonDay getLessonTemplateDay1() {
  return LessonDay(
    id: 'lessonXX_day1',
    dayNumber: 1,
    themeId: 'theme_XX_short_id', // vd: theme_02_sdc_cdc
    titleVi: 'Ngày 1 — Lý thuyết & Từ vựng: [TÊN 2 Ý CHÍNH, VD: SDC, CĐC + Ngôi 2]',
    phases: [
      _buildDay1Phase1(),
      _buildDay1Phase2(),
      _buildDay1Phase3(),
    ],
  );
}

/// Phase 1: 📘 Lý thuyết — read_listen
/// Yêu cầu: Mục tiêu 2-3 bullet, 1 bảng DeclensionTableWidget (sẽ render qua paradigmId), 3 ví dụ anchor
LessonPhase _buildDay1Phase1() {
  return LessonPhase(
    id: 'lessonXX_phase1',
    phaseTypeStr: 'read_listen',
    titleVi: '📘 Lý thuyết: [TÊN NGẮN, VD: SDC & CĐC + Ngôi 2]',
    contentVi: '''
🎯 MỤC TIÊU BÀI XX
───────────────────
• Hiểu [ý 1]
• Học [ý 2]
• Nắm [ý 3]

══════════════════════════════════════════════════════
A. [TÊN KHÁI NIỆM 1]
══════════════════════════════════════════════════════

[Nội dung lý thuyết 600-800 từ, có bảng sẽ render bằng DeclensionTableWidget qua paradigmId, không dùng ASCII art]

📌 Ý nghĩa:
• ...

📌 Lưu ý:

══════════════════════════════════════════════════════
B. [TÊN KHÁI NIỆM 2]
══════════════════════════════════════════════════════

...

🔁 CÂU ANCHOR LẶP LẠI (xuất hiện mọi bài để tạo context):
• Buddho dhammaṃ deseti. → Đức Phật thuyết Pháp.
• Dhammo nare rakkhati. → Giáo Pháp bảo vệ người.
• Narā gāmaṃ rakkhanti. → Những người đàn ông bảo vệ làng.
''',
    contentEn: '''
LESSON XX — [English summary, 100-150 words]
''',
    fabVocab: const [
      FabVocabItem(wordEn: 'nara', pronunciation: 'na-ra', wordVi: 'người đàn ông', partOfSpeech: 'm.'),
      // 12 items max
    ],
    fabPhrases: const [
      FabPhraseItem(phrase: 'Tvaṃ ...si.', meaning: 'Bạn ... — Ngôi 2 số ít'),
      FabPhraseItem(phrase: 'Tumhe ...tha.', meaning: 'Các bạn ... — Ngôi 2 số nhiều'),
      // 3-5 phrases
    ],
  );
}

/// Phase 2: 🧠 Ghép từ — mind_game (12 cặp = 24 segments)
LessonPhase _buildDay1Phase2() {
  return LessonPhase(
    id: 'lessonXX_phase2',
    phaseTypeStr: 'mind_game',
    titleVi: '🧠 Ghép từ: 12 từ mới',
    contentVi: 'Nhấn vào ô tiếng Việt → đọc to từ Pāḷi → nhấn lại xem đáp án. Mục tiêu: 12 từ mới.',
    mixedSegments: const [
      // Đúng 12 cặp, mỗi cặp 1 pali + 1 vietnamese + optional separator
      MixedSegment(text: 'nara'),
      MixedSegment(text: 'người đàn ông', isVietnamese: true, answer: 'nara'),
      MixedSegment(text: '   │   '),
      // Lặp lại 11 lần nữa...
      MixedSegment(text: 'gāma'),
      MixedSegment(text: 'ngôi làng', isVietnamese: true, answer: 'gāma'),
    ],
  );
}

/// Phase 3: 🎧 Quiz lý thuyết — listening_quiz (8 câu)
LessonPhase _buildDay1Phase3() {
  return LessonPhase(
    id: 'lessonXX_phase3',
    phaseTypeStr: 'listening_quiz',
    titleVi: '🎧 Quiz: [TÊN NGẮN LÝ THUYẾT]',
    contentVi: 'Trả lời 8 câu trắc nghiệm về hình thái vừa học.',
    questions: const [
      QuizQuestion(
        id: 'lessonXX_q01',
        questionText: 'SDC số ít của nara là gì?',
        options: ['narena', 'narāya', 'narānaṃ', 'narehi'],
        correctIndex: 0,
        practiceNumber: 'day1_theory',
      ),
      // Thêm 7 câu nữa, tổng 8
    ],
    fabAnswers: const [
      FabAnswerItem(en: 'Q1 → A: narena', vi: 'SDC số ít Nam -a = -ena'),
      // Giải thích cho mỗi câu
    ],
  );
}

// ──────────────────────────────────────────────────────────────
// DAY 2: Vận dụng — Đọc hiểu & Dịch (15-20 phút)
// ──────────────────────────────────────────────────────────────
LessonDay getLessonTemplateDay2() {
  return LessonDay(
    id: 'lessonXX_day2',
    dayNumber: 2,
    themeId: 'theme_XX_short_id',
    titleVi: 'Ngày 2 — Luyện tập: 20 câu Exercise XX',
    phases: [
      _buildDay2Phase1(),
      _buildDay2Phase2(),
      _buildDay2Phase3(),
    ],
  );
}

/// Phase 4: 📖 Đọc hiểu — read_listen (6 câu mẫu ngắn)
LessonPhase _buildDay2Phase1() {
  return LessonPhase(
    id: 'lessonXX_phase4',
    phaseTypeStr: 'read_listen',
    titleVi: '📖 Đọc hiểu: 6 câu ví dụ',
    contentVi: '''
📖 6 CÂU MẪU — 80% từ cũ + 20% từ mới

1. Narā gāmaṃ rakkhanti.
   → Những người đàn ông bảo vệ làng.

2. ...

💡 Tip: Đọc to 3 lần, chú ý đuôi biến cách.
''',
    contentEn: '6 example sentences with translation.',
  );
}

/// Phase 5: 🧠 Ghép câu — mind_game (20 cặp = 40 segments)
LessonPhase _buildDay2Phase2() {
  return LessonPhase(
    id: 'lessonXX_phase5',
    phaseTypeStr: 'mind_game',
    titleVi: '🧠 Ghép câu: 20 câu Exercise XX',
    contentVi: 'Đọc câu Pāḷi → dịch nhẩm sang Việt → nhấn để kiểm tra. 10 câu Pāḷi→Việt + 10 câu Việt→Pāḷi.',
    mixedSegments: const [
      MixedSegment(text: 'Buddho dhammaṃ deseti.\n\n'),
      MixedSegment(text: 'Đức Phật thuyết Pháp.', isVietnamese: true, answer: 'Buddho dhammaṃ deseti.'),
      MixedSegment(text: '   ───   '),
      // Tổng 20 cặp = 40 segments + 19 separators = 59 items, nên giới hạn 20 cặp
    ],
  );
}

/// Phase 6: 🎧 Quiz dịch — listening_quiz (10 câu)
LessonPhase _buildDay2Phase3() {
  return LessonPhase(
    id: 'lessonXX_phase6',
    phaseTypeStr: 'listening_quiz',
    titleVi: '🎧 Quiz: Dịch câu Pāḷi',
    contentVi: 'Dịch 10 câu Pāḷi đầy đủ, chọn đáp án đúng.',
    questions: const [
      QuizQuestion(
        id: 'lessonXX_q09',
        questionText: 'Dịch: Buddho dhammaṃ deseti.',
        options: ['Đức Phật thuyết Pháp.', 'Giáo Pháp bảo vệ người.', 'Người đàn ông đi.', 'Đứa trẻ chạy.'],
        correctIndex: 0,
        practiceNumber: 'day2_translation',
      ),
      // Thêm 9 câu nữa
    ],
    fabAnswers: const [
      FabAnswerItem(en: 'Q9 → A', vi: 'Buddho=CC số ít, dhammaṃ=ĐC, deseti=thuyết'),
    ],
  );
}
