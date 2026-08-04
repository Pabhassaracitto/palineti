import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

/// ═══════════════════════════════════════════════════════════════
/// LESSON 01: Biến cách Nam tánh "-a" — Chủ cách & Đối cách
///            + Thì Hiện tại Ngôi 3
/// Nguồn: Nārada Mahāthera, "An Elementary Pāḷi Course", Lesson 1
/// ═══════════════════════════════════════════════════════════════

// ──────────────────────────────────────────────────────────────
// VOCABULARY (10 danh từ + 5 động từ = 15 items)
// ──────────────────────────────────────────────────────────────
final kLesson01Vocab = <PaliVocabModel>[
  // ─── Danh từ Nam tánh "-a" ───────────────────────────────────
  PaliVocabModel(
    id: 'pv_L01_buddha',
    root: 'Buddha',
    paradigmId: 'masc_a',
    wordVi: 'Đức Phật, Bậc Giác Ngộ',
    wordEn: 'The Enlightened One',
    lessonId: 'lesson_01',
    pronunciation: 'BOOD-dhah',
    examplePali: 'Buddho dhammaṃ rakkhati.',
    exampleVi: 'Đức Phật bảo vệ Giáo Pháp.',
  ),
  PaliVocabModel(
    id: 'pv_L01_dhamma',
    root: 'Dhamma',
    paradigmId: 'masc_a',
    wordVi: 'Giáo Pháp, Chân Lý, Pháp',
    wordEn: 'The Teaching, Truth, Law',
    lessonId: 'lesson_01',
    pronunciation: 'DHAHM-mah',
    examplePali: 'Dhammo nare rakkhati.',
    exampleVi: 'Giáo Pháp bảo vệ người đàn ông.',
  ),
  PaliVocabModel(
    id: 'pv_L01_nara',
    root: 'nara',
    paradigmId: 'masc_a',
    wordVi: 'người đàn ông, người',
    wordEn: 'man',
    lessonId: 'lesson_01',
    pronunciation: 'NAH-rah',
    examplePali: 'Narā gāmaṃ rakkhanti.',
    exampleVi: 'Những người đàn ông bảo vệ làng.',
  ),
  PaliVocabModel(
    id: 'pv_L01_daraka',
    root: 'dāraka',
    paradigmId: 'masc_a',
    wordVi: 'đứa trẻ, em bé',
    wordEn: 'child',
    lessonId: 'lesson_01',
    pronunciation: 'DAH-rah-kah',
    examplePali: 'Dārakā Buddhaṃ vandanti.',
    exampleVi: 'Những đứa trẻ đảnh lễ Đức Phật.',
  ),
  PaliVocabModel(
    id: 'pv_L01_gama',
    root: 'gāma',
    paradigmId: 'masc_a',
    wordVi: 'ngôi làng',
    wordEn: 'village',
    lessonId: 'lesson_01',
    pronunciation: 'GAH-mah',
    examplePali: 'Narā gāmaṃ rakkhanti.',
    exampleVi: 'Những người đàn ông bảo vệ làng.',
  ),
  PaliVocabModel(
    id: 'pv_L01_ghata',
    root: 'ghaṭa',
    paradigmId: 'masc_a',
    wordVi: 'cái bình, cái lọ',
    wordEn: 'pot, jar',
    lessonId: 'lesson_01',
    pronunciation: 'GHAH-tah',
    examplePali: 'Sūdā ghaṭe dhovanti.',
    exampleVi: 'Những người đầu bếp rửa những cái bình.',
  ),
  PaliVocabModel(
    id: 'pv_L01_janaka',
    root: 'janaka',
    paradigmId: 'masc_a',
    wordVi: 'người cha',
    wordEn: 'father',
    lessonId: 'lesson_01',
    pronunciation: 'JAH-nah-kah',
    examplePali: 'Puttā janake vandanti.',
    exampleVi: 'Những người con trai đảnh lễ những người cha.',
  ),
  PaliVocabModel(
    id: 'pv_L01_odana',
    root: 'odana',
    paradigmId: 'masc_a',
    wordVi: 'cơm, cơm nấu chín',
    wordEn: 'cooked rice',
    lessonId: 'lesson_01',
    pronunciation: 'OH-dah-nah',
    examplePali: 'Sūdo odanaṃ pacati.',
    exampleVi: 'Người đầu bếp nấu cơm.',
  ),
  PaliVocabModel(
    id: 'pv_L01_putta',
    root: 'putta',
    paradigmId: 'masc_a',
    wordVi: 'người con trai, con trai',
    wordEn: 'son',
    lessonId: 'lesson_01',
    pronunciation: 'POOT-tah',
    examplePali: 'Puttā dhāvanti.',
    exampleVi: 'Những người con trai đang chạy.',
  ),
  PaliVocabModel(
    id: 'pv_L01_suda',
    root: 'sūda',
    paradigmId: 'masc_a',
    wordVi: 'người đầu bếp',
    wordEn: 'cook',
    lessonId: 'lesson_01',
    pronunciation: 'SOO-dah',
    examplePali: 'Sūdo odanaṃ pacati.',
    exampleVi: 'Người đầu bếp đang nấu cơm.',
  ),
  PaliVocabModel(
    id: 'pv_L01_yacaka',
    root: 'yācaka',
    paradigmId: 'masc_a',
    wordVi: 'người ăn xin, người cầu xin',
    wordEn: 'beggar',
    lessonId: 'lesson_01',
    pronunciation: 'YAH-chah-kah',
    examplePali: 'Yācako dhāvati.',
    exampleVi: 'Người ăn xin đang chạy.',
  ),
  // ─── Động từ (Ngôi 3, Thì Hiện tại) ─────────────────────────
  PaliVocabModel(
    id: 'pv_L01_pacati',
    root: 'paca',
    paradigmId: 'verb_pres', // Thêm paradigm động từ sau
    wordVi: 'nấu, đang nấu',
    wordEn: 'cooks, is cooking',
    lessonId: 'lesson_01',
    pronunciation: 'PAH-chah-ti',
    examplePali: 'Sūdo odanaṃ pacati.',
    exampleVi: 'Người đầu bếp đang nấu cơm.',
  ),
  PaliVocabModel(
    id: 'pv_L01_dhavati',
    root: 'dhāva',
    paradigmId: 'verb_pres',
    wordVi: 'chạy, đang chạy',
    wordEn: 'runs, is running',
    lessonId: 'lesson_01',
    pronunciation: 'DHAH-vah-ti',
    examplePali: 'Yācako dhāvati.',
    exampleVi: 'Người ăn xin đang chạy.',
  ),
  PaliVocabModel(
    id: 'pv_L01_dhovati',
    root: 'dhova',
    paradigmId: 'verb_pres',
    wordVi: 'rửa, giặt',
    wordEn: 'washes',
    lessonId: 'lesson_01',
    pronunciation: 'DHOH-vah-ti',
    examplePali: 'Sūdo ghaṭaṃ dhovati.',
    exampleVi: 'Người đầu bếp rửa cái bình.',
  ),
  PaliVocabModel(
    id: 'pv_L01_vandati',
    root: 'vanda',
    paradigmId: 'verb_pres',
    wordVi: 'đảnh lễ, cúi chào',
    wordEn: 'salutes, pays respects',
    lessonId: 'lesson_01',
    pronunciation: 'VAHN-dah-ti',
    examplePali: 'Dārako Buddhaṃ vandati.',
    exampleVi: 'Đứa trẻ đảnh lễ Đức Phật.',
  ),
  PaliVocabModel(
    id: 'pv_L01_rakkhati',
    root: 'rakkha',
    paradigmId: 'verb_pres',
    wordVi: 'bảo vệ, hộ trì, giữ gìn',
    wordEn: 'protects, guards',
    lessonId: 'lesson_01',
    pronunciation: 'RAHK-khah-ti',
    examplePali: 'Dhammo nare rakkhati.',
    exampleVi: 'Giáo Pháp bảo vệ người đàn ông.',
  ),
];

// ──────────────────────────────────────────────────────────────
// DAY 1: Học nền tảng — Ngữ pháp + Từ vựng
// ──────────────────────────────────────────────────────────────
LessonDay getLesson01Day1() {
  return LessonDay(
    id: 'lesson01_day1',
    dayNumber: 1,
    themeId: 'theme_01_masc_a_nom_acc',
    titleVi: 'Ngày 1: Danh từ Nam tánh "-a" — CC & ĐC + Thì Hiện tại',
    phases: [
      _buildDay1Phase1(),
      _buildDay1Phase2(),
    ],
  );
}

/// Phase 1: read_listen — Giải thích ngữ pháp
LessonPhase _buildDay1Phase1() {
  return LessonPhase(
    id: 'lesson01_phase1',
    phaseTypeStr: 'read_listen',
    titleVi: 'Bài đọc: Biến cách Nam tánh "-a" và Thì Hiện tại',
    contentVi: '''
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
BÀI HỌC 1 — NGỮ PHÁP CỐT LÕI
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

A. BIẾN CÁCH DANH TỪ NAM TÁNH TẬN CÙNG "-a"

Trong tiếng Pāḷi, mỗi danh từ thay đổi hình dạng tùy theo vai trò trong câu. Đây gọi là "biến cách" (declension). Bài 1 học 2 biến cách đầu tiên:

📌 CHỦ CÁCH (CC) — Nominative: Chủ ngữ của câu
           SỐ ÍT        SỐ NHIỀU
   nara →  naro         narā
   gốc:    căn + o      căn + ā

📌 ĐỐI CÁCH (ĐC) — Accusative: Tân ngữ (bị tác động)
           SỐ ÍT        SỐ NHIỀU
   nara →  naraṃ        nare
   gốc:    căn + aṃ     căn + e

⚙️ QUY TẮC STEM: Khi root tận cùng 'a' → bỏ 'a' trước khi thêm suffix
   nara → nar → nar + o = naro ✅
   Buddha → Buddh → Buddh + o = Buddho ✅

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
B. ĐỘNG TỪ — THÌ HIỆN TẠI, NGÔI 3
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📌 NGÔI 3 — Third Person:
   Số ít:    [động từ căn] + ti
   Số nhiều: [động từ căn] + anti

   paca (nấu):   pacati (anh/cô ấy nấu) | pacanti (họ nấu)
   rakkha (bảo vệ): rakkhati | rakkhanti
   dhāva (chạy):    dhāvati  | dhāvanti

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
VÍ DỤ PHÂN TÍCH CÂU
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

① "Sūdo odanaṃ pacati."
   Sūdo   → sūda + o   = CC số ít (chủ ngữ)
   odanaṃ → odana + aṃ = ĐC số ít (tân ngữ)
   pacati → paca + ti  = ĐT ngôi 3 số ít
   ✅ "Người đầu bếp đang nấu cơm."

② "Sūdā ghaṭe dhovanti."
   Sūdā   → sūda + ā  = CC số nhiều (chủ ngữ)
   ghaṭe  → ghaṭa + e = ĐC số nhiều (tân ngữ)
   dhovanti → dhova + anti = ĐT ngôi 3 số nhiều
   ✅ "Những người đầu bếp đang rửa những cái bình."

③ "Buddho dhammaṃ rakkhati."
   Buddho  = CC số ít → Đức Phật (chủ ngữ)
   dhammaṃ = ĐC số ít → Giáo Pháp (tân ngữ)
   rakkhati = ĐT ngôi 3 số ít
   ✅ "Đức Phật bảo vệ Giáo Pháp."

④ "Dārakā Buddhaṃ vandanti."
   Dārakā  = CC số nhiều → những đứa trẻ
   Buddhaṃ = ĐC số ít   → Đức Phật (được đảnh lễ)
   vandanti = ĐT ngôi 3 số nhiều
   ✅ "Những đứa trẻ đảnh lễ Đức Phật."

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
💡 MẸO NHỚ NHANH:
• Câu Pāḷi = CHỦ NGỮ + TÂN NGỮ + ĐỘNG TỪ (SOV)
• Đuôi -o/-ā = ai đang làm (chủ ngữ)
• Đuôi -aṃ/-e = bị làm gì (tân ngữ)
• Đuôi -ti = số ít | -anti = số nhiều
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
''',
    contentEn: '''
LESSON 1 — CORE GRAMMAR

A. DECLENSION OF MASCULINE NOUNS ENDING IN "-a"

In Pāḷi, every noun changes its ending based on its role in the sentence.
Lesson 1 covers the first two cases:

📌 NOMINATIVE (Nom.): Subject of the sentence
           SINGULAR     PLURAL
   nara →  naro         narā
   Rule:   stem + o     stem + ā

📌 ACCUSATIVE (Acc.): Direct object
           SINGULAR     PLURAL
   nara →  naraṃ        nare
   Rule:   stem + aṃ    stem + e

⚙️ STEM RULE: If root ends in 'a' → drop 'a' before adding suffix
   nara → nar → nar + o = naro ✅

B. VERBS — PRESENT TENSE, 3RD PERSON
   Singular: verb stem + ti
   Plural:   verb stem + anti

EXAMPLES:
① Sūdo odanaṃ pacati. → "The cook is cooking rice."
② Sūdā ghaṭe dhovanti. → "The cooks are washing pots."
③ Buddho dhammaṃ rakkhati. → "The Buddha protects the Dhamma."
④ Dārakā Buddhaṃ vandanti. → "The children salute the Buddha."
''',
    fabVocab: [
      FabVocabItem(
        wordEn: 'Buddho (nom. sg.)',
        wordVi: 'Đức Phật [chủ ngữ]',
        pronunciation: 'BOOD-dhoh',
        partOfSpeech: 'danh từ, CC số ít',
      ),
      FabVocabItem(
        wordEn: 'dhammaṃ (acc. sg.)',
        wordVi: 'Giáo Pháp [tân ngữ]',
        pronunciation: 'DHAHM-mahm',
        partOfSpeech: 'danh từ, ĐC số ít',
      ),
      FabVocabItem(
        wordEn: 'narā (nom. pl.)',
        wordVi: 'những người đàn ông [chủ ngữ]',
        pronunciation: 'NAH-rah',
        partOfSpeech: 'danh từ, CC số nhiều',
      ),
      FabVocabItem(
        wordEn: 'ghaṭe (acc. pl.)',
        wordVi: 'những cái bình [tân ngữ]',
        pronunciation: 'GHAH-teh',
        partOfSpeech: 'danh từ, ĐC số nhiều',
      ),
      FabVocabItem(
        wordEn: 'pacati / pacanti',
        wordVi: 'nấu (số ít) / nấu (số nhiều)',
        pronunciation: 'PAH-chah-ti / PAH-chahn-ti',
        partOfSpeech: 'động từ, ngôi 3',
      ),
    ],
    fabPhrases: [
      FabPhraseItem(
        phrase: 'CC số ít = căn + o',
        meaning: 'nara → naro | Buddha → Buddho | gāma → gāmo',
      ),
      FabPhraseItem(
        phrase: 'CC số nhiều = căn + ā',
        meaning: 'nara → narā | sūda → sūdā | dāraka → dārakā',
      ),
      FabPhraseItem(
        phrase: 'ĐC số ít = căn + aṃ',
        meaning: 'nara → naraṃ | dhamma → dhammaṃ | odana → odanaṃ',
      ),
      FabPhraseItem(
        phrase: 'ĐC số nhiều = căn + e',
        meaning: 'nara → nare | ghaṭa → ghaṭe | gāma → gāme',
      ),
      FabPhraseItem(
        phrase: 'Trật tự câu Pāḷi: S + O + V',
        meaning: 'Chủ ngữ + Tân ngữ + Động từ (khác tiếng Anh S+V+O)',
      ),
    ],
  );
}

/// Phase 2: mind_game — Trò chơi tư duy (Case-Hint Format)
LessonPhase _buildDay1Phase2() {
  return LessonPhase(
    id: 'lesson01_phase2',
    phaseTypeStr: 'mind_game',
    titleVi: 'Trò Chơi Tư Duy: Nhớ Hình Thái Biến Cách',
    mixedSegments: kLesson01MindGameSegments,
    fabVocab: [
      FabVocabItem(
        wordEn: 'CC số ít = -o',
        wordVi: 'Chủ ngữ số ít',
        pronunciation: '',
        partOfSpeech: 'biến cách',
      ),
      FabVocabItem(
        wordEn: 'ĐC số ít = -aṃ',
        wordVi: 'Tân ngữ số ít',
        pronunciation: '',
        partOfSpeech: 'biến cách',
      ),
    ],
    fabPhrases: [
      FabPhraseItem(
        phrase: 'Nhìn gợi ý → Nhớ hình thái → Nói to đáp án',
        meaning: 'Đây là bản chất của Trò Chơi Tư Duy',
      ),
    ],
  );
}

// ──────────────────────────────────────────────────────────────
// DAY 2: Luyện tập dịch — 40 câu Bài tập 1 chia 3 nhóm
// ──────────────────────────────────────────────────────────────
LessonDay getLesson01Day2() {
  return LessonDay(
    id: 'lesson01_day2',
    dayNumber: 2,
    themeId: 'theme_01_masc_a_nom_acc',
    titleVi: 'Ngày 2: Luyện tập dịch Bài tập 1 (40 câu)',
    phases: [
      _buildDay2Practice1(),
      _buildDay2MindGame1(),
      _buildDay2Practice2(),
      _buildDay2MindGame2(),
      _buildDay2Practice3(),
      _buildDay2MindGame3(),
    ],
  );
}

/// Practice 1: Câu 1-13 — Câu đơn giản, 1 thành phần
LessonPhase _buildDay2Practice1() {
  return LessonPhase(
    id: 'lesson01_phase3',
    phaseTypeStr: 'listening_quiz',
    titleVi: 'Luyện Tập 1: Nhận Dạng CC & ĐC (Câu 1-13)',
    contentVi: '''
📖 NHÓM CÂU LUYỆN TẬP 1 (Câu 1–13)
Phân tích và dịch sang tiếng Việt:

 1. Buddho vadati.
 2. Dhammo rakkhati.
 3. Sā dhovati.
 4. Yācako dhāvati.
 5. Sūdā pacanti.
 6. Janakā vadanti.
 7. Te vandanti.
 8. Narā rakkhanti.
 9. Puttā dhāvanti.
10. Dārako vandati.
11. Buddho dhammaṃ rakkhati.
12. Dārakā Buddhaṃ vandanti.
13. Sūdo ghaṭe dhovati.

💡 PHÂN TÍCH NHANH:
• Đuôi -o/-ā sau danh từ = Chủ cách (chủ ngữ)
• Đuôi -aṃ/-e sau danh từ = Đối cách (tân ngữ)
• Đuôi -ti = ĐT ngôi 3 số ít
• Đuôi -anti/-enti = ĐT ngôi 3 số nhiều
• So = anh ấy | Sā = cô ấy | Te = họ
''',
    contentEn: '''
PRACTICE GROUP 1 (Sentences 1–13)
Translate into Vietnamese:

 1. Buddho vadati.          [The Buddha speaks.]
 2. Dhammo rakkhati.        [The Dhamma protects.]
 3. Sā dhovati.             [She washes.]
 4. Yācako dhāvati.         [The beggar runs.]
 5. Sūdā pacanti.           [The cooks are cooking.]
 6. Janakā vadanti.         [The fathers speak.]
 7. Te vandanti.            [They salute.]
 8. Narā rakkhanti.         [The men protect.]
 9. Puttā dhāvanti.         [The sons run.]
10. Dārako vandati.         [The child salutes.]
11. Buddho dhammaṃ rakkhati. [The Buddha protects the Dhamma.]
12. Dārakā Buddhaṃ vandanti. [The children salute the Buddha.]
13. Sūdo ghaṭe dhovati.     [The cook washes pots.]
''',
    questions: [
      QuizQuestion(
        id: 'lesson01_q01',
        questionText: '"Buddho vadati" — Phân tích nào ĐÚNG?',
        options: [
          'A. Buddho = ĐC số ít, vadati = ngôi 2 số ít',
          'B. Buddho = CC số ít (chủ ngữ), vadati = ngôi 3 số ít',
          'C. Buddho = CC số nhiều, vadati = ngôi 3 số nhiều',
          'D. Buddho = ĐC số nhiều, vadati = ngôi 1 số ít',
        ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
      QuizQuestion(
        id: 'lesson01_q02',
        questionText: '"Sūdā pacanti" dịch sang tiếng Việt là?',
        options: [
          'A. Người đầu bếp đang nấu',
          'B. Người đầu bếp đang rửa',
          'C. Những người đầu bếp đang rửa',
          'D. Những người đầu bếp đang nấu',
        ],
        correctIndex: 3,
        practiceNumber: 'practice1',
      ),
      QuizQuestion(
        id: 'lesson01_q03',
        questionText:
            'Trong "Dārakā Buddhaṃ vandanti", "Buddhaṃ" có vai trò gì?',
        options: [
          'A. Chủ ngữ số ít — Đức Phật đang đảnh lễ',
          'B. Chủ ngữ số nhiều — Những Đức Phật đang đảnh lễ',
          'C. Tân ngữ số ít — Đức Phật được đảnh lễ',
          'D. Tân ngữ số nhiều — Những Đức Phật được đảnh lễ',
        ],
        correctIndex: 2,
        practiceNumber: 'practice1',
      ),
    ],
    fabVocab: [
      FabVocabItem(
        wordEn: 'vadati',
        wordVi: 'nói, tuyên thuyết',
        pronunciation: 'VAH-dah-ti',
        partOfSpeech: 'động từ, ngôi 3 số ít',
      ),
      FabVocabItem(
        wordEn: 'vandati / vandanti',
        wordVi: 'đảnh lễ / những người đảnh lễ',
        pronunciation: 'VAHN-dah-ti',
        partOfSpeech: 'động từ',
      ),
    ],
    fabPhrases: [
      FabPhraseItem(
        phrase: 'So = anh ấy | Sā = cô ấy | Te = họ',
        meaning: 'Đại từ nhân xưng ngôi 3 (học kỹ ở Lesson 12)',
      ),
    ],
    fabAnswers: [
      FabAnswerItem(
        en: 'Q1 → B: Buddho (nom. sg.) + vadati (3rd sg.)',
        vi: '1→B: "Buddho" đuôi -o = CC số ít (chủ ngữ). "Vadati" đuôi -ti = ngôi 3 số ít. "Đức Phật nói."',
      ),
      FabAnswerItem(
        en: 'Q2 → D: Sūdā (nom. pl.) + pacanti (3rd pl.)',
        vi: '2→D: "Sūdā" đuôi -ā = CC số nhiều. "Pacanti" đuôi -anti = ngôi 3 số nhiều. "Những người đầu bếp đang nấu."',
      ),
      FabAnswerItem(
        en: 'Q3 → C: Buddhaṃ (acc. sg.) = object being saluted',
        vi: '3→C: "Buddhaṃ" đuôi -aṃ = ĐC số ít. Đức Phật là người ĐƯỢC đảnh lễ, không phải người đảnh lễ.',
      ),
    ],
  );
}

/// Mind Game 1: Ôn Practice 1
LessonPhase _buildDay2MindGame1() {
  return LessonPhase(
    id: 'lesson01_phase4',
    phaseTypeStr: 'mind_game',
    titleVi: 'Trò Chơi Tư Duy: Ôn Practice 1',
    mixedSegments: _kMindGame1Segments,
  );
}

/// Practice 2: Câu 14-27 — Câu có đầy đủ S-O-V
LessonPhase _buildDay2Practice2() {
  return LessonPhase(
    id: 'lesson01_phase5',
    phaseTypeStr: 'listening_quiz',
    titleVi: 'Luyện Tập 2: Phân Tích Câu Đầy Đủ S-O-V (Câu 14-27)',
    contentVi: '''
📖 NHÓM CÂU LUYỆN TẬP 2 (Câu 14–27)
Phân tích cú pháp và dịch:

14. Sā odanaṃ pacati.
15. Buddhā dhammaṃ vadanti.
16. Puttā janake vandanti.
17. Yācakā ghaṭe dhovanti.
18. Te gāme rakkhanti.
19. Janako Buddhaṃ vandati.
20. So rakkhati.
21. Naro vandati.
22. Dārako dhovati.
23. Putto vadati.
24. Yācako pacati.
25. Te dhāvanti.
26. Dārakā vadanti.
27. Janakā rakkhanti.

💡 CHÚ Ý:
• Câu 18: "gāme" = ĐC số nhiều của "gāma"
• Câu 14: "Sā" = cô ấy (đại từ nữ)
• Câu 15: "Buddhā" = CC số nhiều — nhiều Đức Phật/chư Phật
''',
    contentEn: '''
PRACTICE GROUP 2 (Sentences 14–27)

14. Sā odanaṃ pacati.       [She cooks rice.]
15. Buddhā dhammaṃ vadanti. [The Buddhas preach the Dhamma.]
16. Puttā janake vandanti.  [The sons salute the fathers.]
17. Yācakā ghaṭe dhovanti.  [The beggars wash the pots.]
18. Te gāme rakkhanti.      [They protect the villages.]
19. Janako Buddhaṃ vandati. [The father salutes the Buddha.]
20. So rakkhati.            [He protects.]
21. Naro vandati.           [The man salutes.]
22. Dārako dhovati.         [The child washes.]
23. Putto vadati.           [The son speaks.]
24. Yācako pacati.          [The beggar cooks.]
25. Te dhāvanti.            [They run.]
26. Dārakā vadanti.         [The children speak.]
27. Janakā rakkhanti.       [The fathers protect.]
''',
    questions: [
      QuizQuestion(
        id: 'lesson01_q04',
        questionText: '"Puttā janake vandanti" — Ai đảnh lễ ai?',
        options: [
          'A. Người cha (số ít) đảnh lễ người con trai (số nhiều)',
          'B. Những người con trai đảnh lễ những người cha',
          'C. Những người cha đảnh lễ những người con trai',
          'D. Người con trai (số ít) đảnh lễ người cha (số ít)',
        ],
        correctIndex: 1,
        practiceNumber: 'practice2',
      ),
      QuizQuestion(
        id: 'lesson01_q05',
        questionText: '"Buddhā dhammaṃ vadanti" — Dịch đúng là?',
        options: [
          'A. Đức Phật nói Giáo Pháp',
          'B. Giáo Pháp nói với Đức Phật',
          'C. Chư Phật thuyết Giáo Pháp',
          'D. Đức Phật nghe Giáo Pháp',
        ],
        correctIndex: 2,
        practiceNumber: 'practice2',
      ),
      QuizQuestion(
        id: 'lesson01_q06',
        questionText: 'Hình thái Pāḷi nào là CC SỐ NHIỀU của "gāma" (làng)?',
        options: [
          'A. gāmo',
          'B. gāmaṃ',
          'C. gāme',
          'D. gāmā',
        ],
        correctIndex: 3,
        practiceNumber: 'practice2',
      ),
    ],
    fabVocab: [
      FabVocabItem(
        wordEn: 'janaka → janake (acc. pl.)',
        wordVi: 'những người cha [tân ngữ]',
        pronunciation: 'JAH-nah-keh',
        partOfSpeech: 'ĐC số nhiều',
      ),
    ],
    fabPhrases: [
      FabPhraseItem(
        phrase: 'CC số nhiều -ā ≠ ĐC số nhiều -e',
        meaning: 'Dārakā (chủ ngữ) vs. ghaṭe (tân ngữ): phân biệt bằng đuôi',
      ),
    ],
    fabAnswers: [
      FabAnswerItem(
        en: 'Q4 → B: Puttā (nom.pl.) vandanti + janake (acc.pl.)',
        vi: '4→B: "Puttā" đuôi -ā = CC số nhiều (chủ ngữ). "Janake" đuôi -e = ĐC số nhiều (bị đảnh lễ). Những người con trai đảnh lễ những người cha.',
      ),
      FabAnswerItem(
        en: 'Q5 → C: Buddhā (nom.pl.) = Buddhas (plural!)',
        vi: '5→C: "Buddhā" đuôi -ā = CC số nhiều = chư Phật (số nhiều). "Vadanti" = thuyết (số nhiều). Không phải "Đức Phật" (số ít = Buddho).',
      ),
      FabAnswerItem(
        en: 'Q6 → D: gāma + ā = gāmā (nom. pl.)',
        vi: '6→D: CC số nhiều = căn + ā. gāma → gām + ā = gāmā. (gāmo=CC số ít, gāmaṃ=ĐC số ít, gāme=ĐC số nhiều)',
      ),
    ],
  );
}

/// Mind Game 2: Ôn Practice 2
LessonPhase _buildDay2MindGame2() {
  return LessonPhase(
    id: 'lesson01_phase6',
    phaseTypeStr: 'mind_game',
    titleVi: 'Trò Chơi Tư Duy: Ôn Practice 2',
    mixedSegments: _kMindGame2Segments,
  );
}

/// Practice 3: Câu 28-40 — Câu phức hơn
LessonPhase _buildDay2Practice3() {
  return LessonPhase(
    id: 'lesson01_phase7',
    phaseTypeStr: 'listening_quiz',
    titleVi: 'Luyện Tập 3: Câu Đầy Đủ & Củng Cố (Câu 28-40)',
    contentVi: '''
📖 NHÓM CÂU LUYỆN TẬP 3 (Câu 28–40)
Tổng hợp và dịch:

28. Puttā vandanti.
29. Sūdā dhovanti.
30. Narā Buddhaṃ vandanti.
31. Janakā nare rakkhanti.
32. Sūdo odanaṃ dhovati.
33. Dhammo nare rakkhati.
34. Sā janakaṃ vandati.
35. Buddho Dhammaṃ vadati.
36. Puttā ghaṭe dhovanti.
37. Narā gāme rakkhanti.
38. Yācakā odanaṃ pacanti.
39. Sūdo ghaṭaṃ dhovati.
40. Janako Buddhaṃ vandati.

💡 PHÂN TÍCH ĐẶC BIỆT:
• Câu 32: "odanaṃ dhovati" — Người đầu bếp RỬA cơm?
  → Trong Pāḷi, "dhovati" có thể = rửa bất cứ thứ gì
• Câu 37: "gāme" = ĐC số nhiều — bảo vệ NHỮNG LÀNG
• Câu 39: "ghaṭaṃ" = ĐC số ÍT — rửa MỘT CÁI bình
''',
    contentEn: '''
PRACTICE GROUP 3 (Sentences 28–40)

28. Puttā vandanti.        [The sons salute.]
29. Sūdā dhovanti.         [The cooks wash.]
30. Narā Buddhaṃ vandanti. [The men salute the Buddha.]
31. Janakā nare rakkhanti. [The fathers protect the men.]
32. Sūdo odanaṃ dhovati.   [The cook washes the rice.]
33. Dhammo nare rakkhati.  [The Dhamma protects men.]
34. Sā janakaṃ vandati.    [She salutes the father.]
35. Buddho Dhammaṃ vadati. [The Buddha preaches the Dhamma.]
36. Puttā ghaṭe dhovanti.  [The sons wash the pots.]
37. Narā gāme rakkhanti.   [The men protect the villages.]
38. Yācakā odanaṃ pacanti. [The beggars cook rice.]
39. Sūdo ghaṭaṃ dhovati.   [The cook washes the pot.]
40. Janako Buddhaṃ vandati.[The father salutes the Buddha.]
''',
    questions: [
      QuizQuestion(
        id: 'lesson01_q07',
        questionText: '"Janakā nare rakkhanti" — Dịch đúng là?',
        options: [
          'A. Những người đàn ông bảo vệ những người cha',
          'B. Người cha bảo vệ người đàn ông',
          'C. Những người cha bảo vệ những người đàn ông',
          'D. Người đàn ông bảo vệ người cha',
        ],
        correctIndex: 2,
        practiceNumber: 'practice3',
      ),
      QuizQuestion(
        id: 'lesson01_q08',
        questionText:
            '"ghaṭaṃ" (câu 39) và "ghaṭe" (câu 36) khác nhau thế nào?',
        options: [
          'A. ghaṭaṃ = CC số ít | ghaṭe = CC số nhiều',
          'B. ghaṭaṃ = ĐC số ít (một cái) | ghaṭe = ĐC số nhiều (nhiều cái)',
          'C. ghaṭaṃ = ĐC số nhiều | ghaṭe = ĐC số ít',
          'D. Cả hai đều là ĐC số ít, không khác nhau',
        ],
        correctIndex: 1,
        practiceNumber: 'practice3',
      ),
      QuizQuestion(
        id: 'lesson01_q09',
        questionText: 'Điền vào chỗ trống: "Sūdo ___ pacati." (cơm — ĐC số ít)',
        options: [
          'A. odano',
          'B. odanā',
          'C. odanaṃ',
          'D. odane',
        ],
        correctIndex: 2,
        practiceNumber: 'practice3',
      ),
    ],
    fabVocab: [
      FabVocabItem(
        wordEn: 'janakaṃ (acc. sg.)',
        wordVi: 'người cha [tân ngữ số ít]',
        pronunciation: 'JAH-nah-kahm',
        partOfSpeech: 'ĐC số ít',
      ),
      FabVocabItem(
        wordEn: 'ghaṭaṃ vs. ghaṭe',
        wordVi: 'một cái bình vs. nhiều cái bình',
        pronunciation: 'GHAH-tahm / GHAH-teh',
        partOfSpeech: 'ĐC số ít / số nhiều',
      ),
    ],
    fabPhrases: [
      FabPhraseItem(
        phrase: 'ĐC số ít -aṃ ≠ ĐC số nhiều -e',
        meaning: 'Đây là sự khác biệt quan trọng nhất trong Lesson 1',
      ),
    ],
    fabAnswers: [
      FabAnswerItem(
        en: 'Q7 → C: Janakā (nom.pl.) rakkhanti + nare (acc.pl.)',
        vi: '7→C: "Janakā" đuôi -ā = CC số nhiều (những người cha, chủ ngữ). "Nare" đuôi -e = ĐC số nhiều (những người đàn ông, bị bảo vệ).',
      ),
      FabAnswerItem(
        en: 'Q8 → B: ghaṭaṃ (acc.sg.) vs. ghaṭe (acc.pl.)',
        vi: '8→B: "ghaṭaṃ" đuôi -aṃ = ĐC số ít (một cái bình). "ghaṭe" đuôi -e = ĐC số nhiều (nhiều cái bình). Đây là lý do câu 39 dùng số ít, câu 36 dùng số nhiều.',
      ),
      FabAnswerItem(
        en: 'Q9 → C: odana + aṃ = odanaṃ (acc. sg.)',
        vi: '9→C: ĐC số ít = căn + aṃ. odana → odan + aṃ = odanaṃ. (odano=CC số ít, odanā=CC số nhiều, odane=ĐC số nhiều)',
      ),
    ],
  );
}

/// Mind Game 3: Ôn Practice 3
LessonPhase _buildDay2MindGame3() {
  return LessonPhase(
    id: 'lesson01_phase8',
    phaseTypeStr: 'mind_game',
    titleVi: 'Trò Chơi Tư Duy: Ôn Practice 3',
    mixedSegments: _kMindGame3Segments,
  );
}

// ──────────────────────────────────────────────────────────────
// MIND GAME SEGMENTS DATA
// ──────────────────────────────────────────────────────────────

/// Day 1 Mind Game — Giới thiệu biến cách
final kLesson01MindGameSegments = <MixedSegment>[
  // Block 1: Nguyên lý cơ bản CC/ĐC
  const MixedSegment(
      text: '📌 QUY TẮC: Đuôi -o = chủ ngữ | Đuôi -aṃ = tân ngữ\n\n'),
  MixedSegment(
    text: '[CC số ít] Đức Phật',
    isVietnamese: true,
    answer: 'Buddho',
  ),
  const MixedSegment(text: ' bảo vệ '),
  MixedSegment(
    text: '[ĐC số ít] Giáo Pháp',
    isVietnamese: true,
    answer: 'dhammaṃ',
  ),
  const MixedSegment(text: '.\n→ Buddho dhammaṃ rakkhati.\n\n'),

  // Block 2: Số nhiều
  MixedSegment(
    text: '[CC số nhiều] những người đầu bếp',
    isVietnamese: true,
    answer: 'Sūdā',
  ),
  const MixedSegment(text: ' đang rửa '),
  MixedSegment(
    text: '[ĐC số nhiều] những cái bình',
    isVietnamese: true,
    answer: 'ghaṭe',
  ),
  const MixedSegment(text: '.\n→ Sūdā ghaṭe dhovanti.\n\n'),

  // Block 3: Câu có cả CC và ĐC
  MixedSegment(
    text: '[CC số nhiều] những đứa trẻ',
    isVietnamese: true,
    answer: 'Dārakā',
  ),
  const MixedSegment(text: ' đảnh lễ '),
  MixedSegment(
    text: '[ĐC số ít] Đức Phật',
    isVietnamese: true,
    answer: 'Buddhaṃ',
  ),
  const MixedSegment(text: '.\n→ Dārakā Buddhaṃ vandanti.\n\n'),

  // Block 4: Động từ số ít vs số nhiều
  MixedSegment(
    text: '[CC số ít] người đầu bếp',
    isVietnamese: true,
    answer: 'Sūdo',
  ),
  const MixedSegment(text: ' '),
  MixedSegment(
    text: '[ĐC số ít] cơm',
    isVietnamese: true,
    answer: 'odanaṃ',
  ),
  const MixedSegment(text: ' '),
  MixedSegment(
    text: '[ĐT số ít] nấu',
    isVietnamese: true,
    answer: 'pacati',
  ),
  const MixedSegment(text: '.\n→ Sūdo odanaṃ pacati.'),
];

/// Day 2 Mind Game 1 — Ôn Practice 1
const _kMindGame1Segments = <MixedSegment>[
  MixedSegment(text: '① \n'), // ← Thêm \n
  MixedSegment(
      text: '[CC số ít] Đức Phật', isVietnamese: true, answer: 'Buddho'),
  MixedSegment(text: ' '),
  MixedSegment(text: '[ĐT số ít] nói', isVietnamese: true, answer: 'vadati'),
  MixedSegment(text: '.\n→ Buddho vadati.\n\n'), // ← Thêm \n trước →

  MixedSegment(text: '⑤ \n'),
  MixedSegment(
      text: '[CC số nhiều] những người đầu bếp',
      isVietnamese: true,
      answer: 'Sūdā'),
  MixedSegment(text: ' '),
  MixedSegment(
      text: '[ĐT số nhiều] đang nấu', isVietnamese: true, answer: 'pacanti'),
  MixedSegment(text: '.\n→ Sūdā pacanti.\n\n'),

  MixedSegment(text: '⑪ \n'),
  MixedSegment(
      text: '[CC số ít] Đức Phật', isVietnamese: true, answer: 'Buddho'),
  MixedSegment(text: ' '),
  MixedSegment(
      text: '[ĐC số ít] Giáo Pháp', isVietnamese: true, answer: 'dhammaṃ'),
  MixedSegment(text: ' bảo vệ.\n→ Buddho dhammaṃ rakkhati.'),
];

/// Day 2 Mind Game 2 — Ôn Practice 2
const _kMindGame2Segments = <MixedSegment>[
  MixedSegment(text: '⑮ \n'),
  MixedSegment(
      text: '[CC số nhiều] Chư Phật', isVietnamese: true, answer: 'Buddhā'),
  MixedSegment(text: ' '),
  MixedSegment(
      text: '[ĐC số ít] Giáo Pháp', isVietnamese: true, answer: 'dhammaṃ'),
  MixedSegment(text: ' thuyết.\n→ Buddhā dhammaṃ vadanti.\n\n'),
  MixedSegment(text: '⑯ \n'),
  MixedSegment(
      text: '[CC số nhiều] những người con trai',
      isVietnamese: true,
      answer: 'Puttā'),
  MixedSegment(text: ' '),
  MixedSegment(
      text: '[ĐC số nhiều] những người cha',
      isVietnamese: true,
      answer: 'janake'),
  MixedSegment(text: ' đảnh lễ.\n→ Puttā janake vandanti.\n\n'),
  MixedSegment(text: '⑲ \n'),
  MixedSegment(
      text: '[CC số ít] người cha', isVietnamese: true, answer: 'Janako'),
  MixedSegment(text: ' '),
  MixedSegment(
      text: '[ĐC số ít] Đức Phật', isVietnamese: true, answer: 'Buddhaṃ'),
  MixedSegment(text: ' đảnh lễ.\n→ Janako Buddhaṃ vandati.'),
];

/// Day 2 Mind Game 3 — Ôn Practice 3
const _kMindGame3Segments = <MixedSegment>[
  MixedSegment(text: '③⓪ \n'),
  MixedSegment(
      text: '[CC số nhiều] những người đàn ông',
      isVietnamese: true,
      answer: 'Narā'),
  MixedSegment(text: ' '),
  MixedSegment(
      text: '[ĐC số ít] Đức Phật', isVietnamese: true, answer: 'Buddhaṃ'),
  MixedSegment(text: ' đảnh lễ.\n→ Narā Buddhaṃ vandanti.\n\n'),
  MixedSegment(text: '③① \n'),
  MixedSegment(
      text: '[CC số nhiều] những người cha',
      isVietnamese: true,
      answer: 'Janakā'),
  MixedSegment(text: ' '),
  MixedSegment(
      text: '[ĐC số nhiều] những người đàn ông',
      isVietnamese: true,
      answer: 'nare'),
  MixedSegment(text: ' bảo vệ.\n→ Janakā nare rakkhanti.\n\n'),
  MixedSegment(text: '③⑨ \n'),
  MixedSegment(
      text: '[CC số ít] người đầu bếp', isVietnamese: true, answer: 'Sūdo'),
  MixedSegment(text: ' '),
  MixedSegment(
      text: '[ĐC số ít] cái bình', isVietnamese: true, answer: 'ghaṭaṃ'),
  MixedSegment(text: ' rửa.\n→ Sūdo ghaṭaṃ dhovati.'),
];
