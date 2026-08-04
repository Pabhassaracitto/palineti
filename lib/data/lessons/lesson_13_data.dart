// lesson_13.dart
// Bài học số 13: Đại từ Quan hệ (ya), Chỉ định (ta, eta) & Nghi vấn (ka)
// An Elementary Pāḷi Course – Nārada Mahāthera
// ---------------------------------------------------------------------------

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

// ──────────────────────────────────────────────────────────────
// LESSON META
// ──────────────────────────────────────────────────────────────
LessonMeta getLesson13Meta() => const LessonMeta(
      id: 'theme_13_lesson',
      lessonNumber: 13,
      titleVi: 'Đại từ Quan hệ (ya), Chỉ định (ta/eta) & Nghi vấn (ka)',
      titleEn: 'Relative (ya), Demonstrative (ta/eta) & Interrogative (ka) Pronouns',
      iconEmoji: '🔗',
      colorValue: 0xFF0969DA,
      description:
          'Biến cách đại từ quan hệ "ya" (người nào), đại từ chỉ định "ta/eta" (người đó/cái này), đại từ nghi vấn "ka" (ai? cái gì?); cấu trúc tương quan Yo…so…; hậu tố bất định "-ci"; 14 tính từ chỉ định.',
      complexity: LessonComplexity.high,
      estimatedMinutes: 55,
    );

// ──────────────────────────────────────────────────────────────
// VOCABULARY
// ──────────────────────────────────────────────────────────────
final kLesson13Vocab = <PaliVocabModel>[
  _v(1, 'disā', 'fem_a', 'phương, hướng (4 phương)', 'quarter, direction',
      'di-saa', 'Uttarāya disāya vasāma.', 'Chúng tôi sống ở phương Bắc.'),
  _v(2, 'nāma', 'neut_a', 'tên', 'name', 'naa-ma', 'Kiṃ tassa nāmaṃ?',
      'Tên của anh ta là gì?'),
];

PaliVocabModel _v(int id, String root, String paradigmId, String wordVi,
    String wordEn, String pronunciation, String examplePali, String exampleVi) {
  final num = id.toString().padLeft(3, '0');
  return PaliVocabModel(
    id: 'pv_L13_$num',
    root: root,
    paradigmId: paradigmId,
    wordVi: wordVi,
    wordEn: wordEn,
    lessonId: 'lesson_13',
    pronunciation: pronunciation,
    examplePali: examplePali,
    exampleVi: exampleVi,
  );
}

// ──────────────────────────────────────────────────────────────
// DAY 1
// ──────────────────────────────────────────────────────────────
LessonDay getLesson13Day1() => LessonDay(
      id: 'lesson13_day1',
      dayNumber: 1,
      themeId: 'theme_13_lesson',
      titleVi: 'Ngày 1 — Lý thuyết & Từ vựng: Đại từ Quan hệ, Chỉ định & Nghi vấn',
      phases: [
        _buildDay1Phase1(),
        _buildDay1Phase2(),
        _buildDay1Phase3(),
      ],
    );

LessonPhase _buildDay1Phase1() => LessonPhase(
      id: 'lesson13_phase1',
      phaseTypeStr: 'read_listen',
      titleVi: '📘 Lý thuyết: Đại từ Quan hệ, Chỉ định & Nghi vấn',
      contentVi: '''🎯 MỤC TIÊU BÀI 13
───────────────────
• Học biến cách Đại từ Quan hệ ya (người nào, cái mà) ở 3 tánh
• Học Đại từ Chỉ định ta (người đó) và eta (cái này) - 2 hình thức t- và n-
• Học Đại từ Nghi vấn ka (ai? cái gì?) và hậu tố -ci (bất định: koci, kāci, kiñci)
• Hiểu cấu trúc tương quan Yo... so... (Ai... người đó...)
• Nắm 14 tính từ chỉ định (añña, sabba, eka, para...) + 6 bất biến từ

══════════════════════════════════════════════════════
A. ĐẠI TỪ QUAN HỆ ya (người nào, cái mà)
══════════════════════════════════════════════════════
📌 ya dùng cho mệnh đề quan hệ, chưa xác định.

SỐ ÍT: CC yo (nam), yaṃ (trung), yā (nữ) | ĐC yaṃ | SDC yena, yāya | XXC yamhā/yasmā | CĐC/STC yassa | ĐSC yamhi/yasmiṃ
SỐ NHIỀU: CC ye (nam), ye/yāni (trung), yā/yāyo (nữ) | SDC yebhi | CĐC yesaṃ/yesānaṃ | ĐSC yesu

══════════════════════════════════════════════════════
B. ĐẠI TỪ CHỈ ĐỊNH ta và eta
══════════════════════════════════════════════════════
📌 ta có 2 hình thức:
• t- : so (nam CC), sā (nữ CC), taṃ (trung CC/ĐC nam)
• n- : naṃ, nena, nassa, tasmā... (thường dùng hơn)

📌 eta (cái này, gần người nói): giống ta nhưng KHÔNG có hình thức n-, và thêm e- ở đầu: eso (nam CC), esā (nữ), etaṃ (trung)

SỐ ÍT ta: CC so/naṃ/taṃ/sā | SDC nena/tena | XXC namhā/tamhā | CĐC nassa/tassa | ĐSC namhi/tamhi
SỐ NHIỀU ta: CC ne/te, nēni/tāni, nā/nāyo | SDC nebhi/tebhi | CĐC nesaṃ/tesānaṃ | ĐSC nesu/tesu

══════════════════════════════════════════════════════
C. TƯƠNG QUAN Yo... so...
══════════════════════════════════════════════════════
📌 ya (quan hệ) và ta (chỉ định) thường đi cùng nhau:

① "Yo Dhammaṃ passati so Buddhaṃ passati."
   → Người nào thấy Pháp, người đó thấy Phật.

② "Yo gilānaṃ upaṭṭhāti so maṃ upaṭṭhāti."
   → Người nào chăm sóc người bệnh, người đó chăm sóc ta.

③ "Yaṃ icchasi taṃ vadehi."
   → Bạn muốn gì, hãy nói cái đó.

④ "Yaṃ hoti taṃ hotu."
   → Nó sao, hãy để nó vậy.

══════════════════════════════════════════════════════
D. ĐẠI TỪ NGHI VẤN ka (ai? cái gì?)
══════════════════════════════════════════════════════
📌 ka biến cách như ya, nhưng CC: ko (nam), kaṃ/kiṃ (trung), kā (nữ)

• Ko nāma tvaṃ? = Tên bạn là gì?
• Kiṃ karoti? = Anh ta làm gì?
• Kassa dhammaṃ? = Pháp của ai?
• Kasmā āgato? = Tại sao đến? / Từ đâu đến?

📌 Hậu tố -ci → bất định:
• koci (bất kỳ ai, nam), kāci (nữ), kiñci (cái gì), kenaci (bởi ai), kasmāci (từ đâu)
• Thường dùng trong phủ định: "Kiñci'pi kātuṃ so na jānāti." = Anh ta không biết làm gì cả.

══════════════════════════════════════════════════════
E. 14 TÍNH TỪ CHỈ ĐỊNH (chia như ya)
══════════════════════════════════════════════════════
añña (khác), aññatara (cái nào đó), apara (khác, Tây), dhakkhiṇa (Nam), eka (một, một vài), itara (khác, còn lại), katara (cái nào? cho 2), katama (cái nào? cho nhiều), pacchima (Tây, cuối), para (khác), pubba (đầu tiên, Đông), puratthima (Đông), sabba (tất cả), uttara (cao hơn, Bắc)

📌 Lưu ý: añña, eka, itara đôi khi CĐC nữ sg là aññissā, ekissā... ĐSC nữ sg: aññissaṃ...

══════════════════════════════════════════════════════
🔤 6 BẤT BIẾN TỪ
══════════════════════════════════════════════════════
• ādāya (sau khi lấy) • kiṃ (tại sao? cái gì?) • nāma (nhân danh, thật vậy) • nu (hả? tự hỏi) • payojana (lợi ích) • vā (hay, hoặc)

🔁 CÂU ANCHOR: Yo Dhammaṃ passati so Buddhaṃ passati.
''',
      contentEn:
          'Lesson 13 covers the relative pronoun "ya" (yo/yaṃ/yā), demonstratives "ta" (so/taṃ/sā) and "eta" (eso/etaṃ/esā), the interrogative "ka" (ko/kiṃ/kā), the correlative structure Yo…so… ("whoever…that…"), the indefinite suffix -ci (koci/kāci/kiñci), 14 demonstrative adjectives (añña, sabba, eka, para, etc.), and 6 new indeclinables.',
      fabVocab: const [
        // Đại từ Quan hệ ya
        FabVocabItem(wordEn: 'yo', pronunciation: 'yo', wordVi: 'người nào (CC nam sg)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'yaṃ', pronunciation: 'yaṃ', wordVi: 'cái mà (CC n. / ĐC m.)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'yā', pronunciation: 'yaa', wordVi: 'người nào (CC nữ sg)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'yena', pronunciation: 'ye-na', wordVi: 'bởi người nào (SDC m.)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'yassa', pronunciation: 'yas-sa', wordVi: 'của người nào (STC m. sg)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'ye', pronunciation: 'ye', wordVi: 'những người nào (CC m. pl)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'yesaṃ', pronunciation: 'ye-saṃ', wordVi: 'của những người nào (STC m. pl)', partOfSpeech: 'dai_tu'),
        // Đại từ Chỉ định ta
        FabVocabItem(wordEn: 'so', pronunciation: 'so', wordVi: 'anh ấy, người đó (CC m. sg)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'sā', pronunciation: 'saa', wordVi: 'cô ấy, người đó (CC f. sg)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'taṃ', pronunciation: 'taṃ', wordVi: 'cái đó (CC n.) / người đó (ĐC m.)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'tena', pronunciation: 'te-na', wordVi: 'bởi anh ấy (SDC m.)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'tassa', pronunciation: 'tas-sa', wordVi: 'của anh ấy (STC m. sg)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'tasmā', pronunciation: 'tas-maa', wordVi: 'từ anh ấy, vì thế (XXC m.)', partOfSpeech: 'dai_tu'),
        // Đại từ eta
        FabVocabItem(wordEn: 'eso', pronunciation: 'e-so', wordVi: 'người này (CC m. sg)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'esā', pronunciation: 'e-saa', wordVi: 'người nữ này (CC f. sg)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'etaṃ', pronunciation: 'e-taṃ', wordVi: 'cái này (CC n. / ĐC m.)', partOfSpeech: 'dai_tu'),
        // Đại từ Nghi vấn ka
        FabVocabItem(wordEn: 'ko', pronunciation: 'ko', wordVi: 'ai? (CC m. sg)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'kā', pronunciation: 'kaa', wordVi: 'ai (nữ)? cái gì (nữ)?', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'kiṃ', pronunciation: 'kiṃ', wordVi: 'cái gì? (CC n. sg)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'kena', pronunciation: 'ke-na', wordVi: 'bởi ai / bằng gì (SDC m.)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'kissa', pronunciation: 'kis-sa', wordVi: 'của ai? (STC m. sg)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'kasmā', pronunciation: 'kas-maa', wordVi: 'tại sao? (XXC m.)', partOfSpeech: 'dai_tu'),
        // Bất định -ci
        FabVocabItem(wordEn: 'koci', pronunciation: 'ko-ci', wordVi: 'bất kỳ ai (CC m. sg)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'kāci', pronunciation: 'kaa-ci', wordVi: 'bất kỳ ai (CC f. sg)', partOfSpeech: 'dai_tu'),
        FabVocabItem(wordEn: 'kiñci', pronunciation: 'kiñ-ci', wordVi: 'bất cứ cái gì (CC n. sg)', partOfSpeech: 'dai_tu'),
        // 14 tính từ chỉ định
        FabVocabItem(wordEn: 'añña', pronunciation: 'añ-ña', wordVi: 'cái khác, vật khác', partOfSpeech: 'tinh_tu'),
        FabVocabItem(wordEn: 'aññatara', pronunciation: 'añ-ña-ta-ra', wordVi: 'cái nào đó, cái nọ', partOfSpeech: 'tinh_tu'),
        FabVocabItem(wordEn: 'apara', pronunciation: 'a-pa-ra', wordVi: 'khác, phía Tây, tiếp theo', partOfSpeech: 'tinh_tu'),
        FabVocabItem(wordEn: 'dhakkhiṇa', pronunciation: 'dhak-khi-ṇa', wordVi: 'phía Nam', partOfSpeech: 'tinh_tu'),
        FabVocabItem(wordEn: 'eka', pronunciation: 'e-ka', wordVi: 'một, chắc, một vài', partOfSpeech: 'tinh_tu'),
        FabVocabItem(wordEn: 'itara', pronunciation: 'i-ta-ra', wordVi: 'khác, còn lại', partOfSpeech: 'tinh_tu'),
        FabVocabItem(wordEn: 'katara', pronunciation: 'ka-ta-ra', wordVi: 'cái nào? (cho 2)', partOfSpeech: 'tinh_tu'),
        FabVocabItem(wordEn: 'katama', pronunciation: 'ka-ta-ma', wordVi: 'cái nào? (cho nhiều)', partOfSpeech: 'tinh_tu'),
        FabVocabItem(wordEn: 'pacchima', pronunciation: 'pac-chi-ma', wordVi: 'phía Tây, cuối cùng', partOfSpeech: 'tinh_tu'),
        FabVocabItem(wordEn: 'para', pronunciation: 'pa-ra', wordVi: 'khác, xa hơn', partOfSpeech: 'tinh_tu'),
        FabVocabItem(wordEn: 'pubba', pronunciation: 'pub-ba', wordVi: 'đầu tiên, phía Đông, sớm hơn', partOfSpeech: 'tinh_tu'),
        FabVocabItem(wordEn: 'puratthima', pronunciation: 'pu-rat-thi-ma', wordVi: 'phía Đông', partOfSpeech: 'tinh_tu'),
        FabVocabItem(wordEn: 'sabba', pronunciation: 'sab-ba', wordVi: 'tất cả, mọi', partOfSpeech: 'tinh_tu'),
        FabVocabItem(wordEn: 'uttara', pronunciation: 'ut-ta-ra', wordVi: 'cao hơn, phía Bắc', partOfSpeech: 'tinh_tu'),
        // 6 bất biến từ
        FabVocabItem(wordEn: 'ādāya', pronunciation: 'aa-daa-ya', wordVi: 'sau khi nhận/lấy đi', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'kiṃ', pronunciation: 'kiṃ', wordVi: 'tại sao? cái gì?', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'nāma', pronunciation: 'naa-ma', wordVi: 'nhân danh, thật vậy', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'nu', pronunciation: 'nu', wordVi: 'câu hỏi, tôi tự hỏi', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'payojana', pronunciation: 'pa-yo-ja-na', wordVi: 'việc sử dụng, lợi ích', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'vā', pronunciation: 'vaa', wordVi: 'hay, hoặc', partOfSpeech: 'bat_bien_tu'),
        // 2 danh từ thường (trong kLesson13Vocab)
        FabVocabItem(wordEn: 'disā', pronunciation: 'di-saa', wordVi: 'phương, hướng', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'nāma', pronunciation: 'naa-ma', wordVi: 'tên', partOfSpeech: 'danh_tu'),
      ],
      fabPhrases: const [
        FabPhraseItem(phrase: 'Yo... so...', meaning: '⭐ Tương quan: Người nào... người đó...'),
        FabPhraseItem(phrase: 'Yaṃ... taṃ...', meaning: '⭐ Tương quan: Cái mà... cái đó...'),
        FabPhraseItem(phrase: 'Yā... sā...', meaning: '⭐ Tương quan: Người nữ nào... cô ấy...'),
        FabPhraseItem(phrase: 'Yadā... tadā...', meaning: '⭐ Tương quan: Khi nào... thì khi đó...'),
        FabPhraseItem(phrase: 'Yatra... tatra...', meaning: '⭐ Tương quan: Ở đâu... ở đó...'),
        FabPhraseItem(phrase: 'koci / kāci / kiñci', meaning: '⭐ Bất định: bất kỳ ai / cái gì'),
        FabPhraseItem(phrase: 'kenaci / kasmāci', meaning: '⭐ Bất định SDC/XXC'),
        FabPhraseItem(phrase: 'pron_ya (CC): yo / yaṃ / yā', meaning: '⭐ Đại từ quan hệ'),
        FabPhraseItem(phrase: 'pron_ta (CC): so / taṃ / sā', meaning: '⭐ Đại từ chỉ định (ta)'),
        FabPhraseItem(phrase: 'pron_eta (CC): eso / etaṃ / esā', meaning: '⭐ Đại từ chỉ định (eta — gần)'),
        FabPhraseItem(phrase: 'pron_ka (CC): ko / kiṃ / kā', meaning: '⭐ Đại từ nghi vấn'),
        FabPhraseItem(phrase: 'Ko nāma...', meaning: '⭐ Hỏi tên: Tên... là gì?'),
        FabPhraseItem(phrase: 'Kiṃ + động từ', meaning: '⭐ Hỏi: ...làm gì?'),
        FabPhraseItem(phrase: 'Kasmā + động từ', meaning: '⭐ Hỏi: Tại sao...?'),
        FabPhraseItem(phrase: 'Kissa + danh từ', meaning: '⭐ Hỏi: Của ai...?'),
      ],
    );

LessonPhase _buildDay1Phase2() => LessonPhase(
      id: 'lesson13_phase2',
      phaseTypeStr: 'mind_game',
      titleVi: '🧠 Ghép từ: Đại từ Quan hệ, Chỉ định & Nghi vấn',
      contentVi:
          'Nhấn vào từng ô tiếng Việt → đọc to từ Pāḷi tương ứng → nhấn lại để xem đáp án.',
      mixedSegments: const [
        MixedSegment(text: 'yo'), MixedSegment(text: 'người nào (CC nam)', isVietnamese: true, answer: 'yo'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'yā'), MixedSegment(text: 'người nào (CC nữ)', isVietnamese: true, answer: 'yā'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'yaṃ'), MixedSegment(text: 'cái mà (CC trung)', isVietnamese: true, answer: 'yaṃ'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'so'), MixedSegment(text: 'người đó (CC nam)', isVietnamese: true, answer: 'so'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'sā'), MixedSegment(text: 'người đó (CC nữ)', isVietnamese: true, answer: 'sā'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'taṃ'), MixedSegment(text: 'cái đó', isVietnamese: true, answer: 'taṃ'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'eso'), MixedSegment(text: 'người này (nam)', isVietnamese: true, answer: 'eso'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'esā'), MixedSegment(text: 'người này (nữ)', isVietnamese: true, answer: 'esā'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'ko'), MixedSegment(text: 'ai? (nam)', isVietnamese: true, answer: 'ko'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'kā'), MixedSegment(text: 'ai? (nữ)', isVietnamese: true, answer: 'kā'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'kiṃ'), MixedSegment(text: 'cái gì?', isVietnamese: true, answer: 'kiṃ'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'koci'), MixedSegment(text: 'bất kỳ ai', isVietnamese: true, answer: 'koci'),
      
      ],
    );

LessonPhase _buildDay1Phase3() => LessonPhase(
      id: 'lesson13_phase3',
      phaseTypeStr: 'listening_quiz',
      titleVi: '🎧 Quiz: Đại từ Quan hệ, Chỉ định & Nghi vấn',
      contentVi:
          'Trả lời 7 câu hỏi trắc nghiệm về các đại từ quan hệ, chỉ định, nghi vấn và cấu trúc tương quan Yo…so….',
      questions: const [
        QuizQuestion(
          id: 'lesson13_q01',
          questionText:
              '"Yo" trong câu "Yo Dhammaṃ passati so Buddhaṃ passati" là đại từ nào và ở biến cách nào?',
          options: [
            'Đại từ chỉ định, CC',
            'Đại từ quan hệ, CC',
            'Đại từ nghi vấn, CC',
            'Đại từ bất định (-ci), CC',
          ],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson13_q02',
          questionText: '"Yo Dhammaṃ passati so Buddhaṃ passati." có nghĩa là:',
          options: [
            'Người nào thấy Đức Phật, người đó thấy Pháp.',
            'Người nào thấy Pháp, người đó thấy Đức Phật.',
            'Đức Phật thấy Pháp của người đó.',
            'Pháp thấy Đức Phật của người đó.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson13_q03',
          questionText: '"Ko nāma tvaṃ?" dùng để hỏi gì?',
          options: [
            'Bạn là ai?',
            'Tên bạn là gì?',
            'Bạn bao nhiêu tuổi?',
            'Bạn ở đâu?',
          ],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson13_q04',
          questionText: '"Eso" trong câu "Ko nāma eso?" là đại từ nào?',
          options: [
            'Đại từ quan hệ (ya)',
            'Đại từ chỉ định (eta)',
            'Đại từ nghi vấn (ka)',
            'Đại từ nhân xưng',
          ],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson13_q05',
          questionText: "\"Kiñci'pi\" trong câu \"Kiñci'pi kātuṃ so na jānāti.\" có nghĩa là:",
          options: [
            'Một số điều',
            'Bất cứ điều gì, bất kỳ cái gì',
            'Không có gì',
            'Điều đặc biệt',
          ],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson13_q06',
          questionText:
              '"Sā" trong câu "Esā nārī te kiṃ hoti?" là biến cách nào của đại từ chỉ định?',
          options: ['CC nam', 'CC nữ', 'ĐC nam', 'SDC nữ'],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson13_q07',
          questionText:
              '"Sabba" trong câu "Mayaṃ sabbāni tāni lekhanāni na likhimhā." có nghĩa là:',
          options: ['Một vài', 'Khác', 'Tất cả, mọi', 'Phía Đông'],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
      ],
      fabAnswers: const [
        FabAnswerItem(en: 'Answer 1 → B', vi: '① "Yo" = đại từ quan hệ "ya" ở CC số ít nam (= "người nào").'),
        FabAnswerItem(en: 'Answer 2 → B', vi: '② Cấu trúc Yo...so...: Người nào thấy Pháp, người đó thấy Đức Phật.'),
        FabAnswerItem(en: 'Answer 3 → B', vi: '③ "Ko nāma..." = hỏi tên. Ko (CC nam nghi vấn) + nāma (tên).'),
        FabAnswerItem(en: 'Answer 4 → B', vi: '④ "Eso" = CC số ít nam của đại từ chỉ định eta (= người này).'),
        FabAnswerItem(en: 'Answer 5 → B', vi: "⑤ \"Kiñci'pi\" = kiñci (CC n. nghi vấn + -ci) + api (cũng) = bất cứ cái gì cũng."),
        FabAnswerItem(en: 'Answer 6 → B', vi: '⑥ "Sā" = CC số ít NỮ của ta. So sánh "so" (nam) và "sā" (nữ).'),
        FabAnswerItem(en: 'Answer 7 → C', vi: '⑦ "Sabba" = tính từ chỉ định "tất cả, mọi".'),
      ],
      fabVocab: const [],
      fabPhrases: const [],
    );

// ──────────────────────────────────────────────────────────────
// DAY 2
// ──────────────────────────────────────────────────────────────
LessonDay getLesson13Day2() => LessonDay(
      id: 'lesson13_day2',
      dayNumber: 2,
      themeId: 'theme_13_lesson',
      titleVi: 'Ngày 2 — Luyện tập: Đại từ Quan hệ, Chỉ định & Nghi vấn',
      phases: [
        _buildDay2Phase1(),
        _buildDay2Phase2(),
        _buildDay2Phase3(),
      ],
    );

LessonPhase _buildDay2Phase1() => LessonPhase(
      id: 'lesson13_phase4',
      phaseTypeStr: 'read_listen',
      titleVi: '📖 Đọc hiểu: Exercise 13',
      contentVi: '''
══════════════════════════════════════════════════════
📖 BÀI TẬP 13 — Dịch 42 câu Pāḷi sang tiếng Việt
══════════════════════════════════════════════════════
Bài tập tập trung vào:
• Đại từ nghi vấn "ka" (ko, kā, kiṃ, kena, kissa, kasmā, kāyaṃ, katama, katara)
• Đại từ chỉ định "ta, eta" (so, sā, taṃ, tena, tassa, eso, esā, etaṃ)
• Đại từ quan hệ "ya" (yo, yaṃ, yā, yena, yassa, ye, yesaṃ)
• Cấu trúc tương quan Yo/Yaṃ... so/sā/taṃ...
• Hậu tố "-ci" cho đại từ bất định
• Tính từ chỉ định (añña, sabba, eka, para, pubba, apara, katara, katama, uttara...)
• Bất biến từ (nu, kiṃ, nāma, payojana, vā)

══════════════════════════════════════════════════════
💡 GỢI Ý DỊCH (các câu đầu)
══════════════════════════════════════════════════════
① Ko nāma tvaṃ?
   → "Tên bạn là gì?"
② Ko nāma eso?
   → "Người này tên gì?"
③ Ko nāma te ācariyo?
   → "Thầy giáo của bạn tên gì?"
④ Idāni eso kiṃ karissati?
   → "Bây giờ anh ta sẽ làm gì?"
⑤ Kiṃ tvaṃ etaṃ pucchasi?
   → "Bạn hỏi cái gì?"
⑧ Kassa bhikkhussa taṃ potthakaṃ pesessāma?
   → "Chúng ta sẽ gửi cuốn sách đó cho vị tỳ-khưu nào?"
⑩ Ko jānāti "kiṃ eso karissatī"ti?
   → "Ai biết 'anh ta sẽ làm gì'?"
⑭ "Yo Dhammaṃ passati so Buddhaṃ passati, yo Buddhaṃ passati so Dhammaṃ passati."
   → "Người nào thấy Pháp, người đó thấy Đức Phật; người nào thấy Đức Phật, người đó thấy Pháp."

══════════════════════════════════════════════════════
📋 MẸO DỊCH CÂU NGHI VẤN & TƯƠNG QUAN
══════════════════════════════════════════════════════
📌 Câu nghi vấn: đại từ "ka" thường đứng đầu câu.
   "Ko eso?" = "Anh ta là ai?"
   "Kiṃ etaṃ?" = "Cái này là cái gì?"
   "Kasmā...?" = "Tại sao...?"

📌 Câu tương quan: mệnh đề đầu "Ya-/Yo-" nêu điều kiện;
   mệnh đề sau "ta-/so-" chỉ kết quả.
''',
      contentEn:
          'Translation hints for Exercise 13: look for interrogative "ka" forms at the start of questions (ko, kiṃ, kasmā, kissa); for correlatives pair "yo/yaṃ/yā" in the first clause with "so/taṃ/sā" in the second; look for "-ci" suffix marking indefinites (kiñci, koci).',
    );

// Helper for mixed segments in Day2 Phase2 - Ex sentences
List<MixedSegment> _ex(int n, String pali, String vi) => [
      MixedSegment(text: '【Ex $n】 $pali'),
      MixedSegment(text: vi, isVietnamese: true, answer: pali),
      MixedSegment(text: '   ───   '),
    ];

LessonPhase _buildDay2Phase2() => LessonPhase(
      id: 'lesson13_phase5',
      phaseTypeStr: 'mind_game',
      titleVi: '🧠 Ghép câu: 42 câu Exercise 13',
      contentVi:
          'Nhấn vào từng câu tiếng Việt → đọc to câu Pāḷi tương ứng → nhấn lại để xem đáp án.',
      mixedSegments: const [
        // Câu 1-7
        MixedSegment(text: '【Ex 1】 Ko nāma tvaṃ?'),
        MixedSegment(text: 'Tên bạn là gì?', isVietnamese: true, answer: 'Ko nāma tvaṃ?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 2】 Ko nāma eso?'),
        MixedSegment(text: 'Người này tên gì?', isVietnamese: true, answer: 'Ko nāma eso?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 3】 Ko nāma te ācariyo?'),
        MixedSegment(text: 'Thầy giáo của bạn tên gì?', isVietnamese: true, answer: 'Ko nāma te ācariyo?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 4】 Idāni eso kiṃ karissati?'),
        MixedSegment(text: 'Bây giờ anh ta sẽ làm gì?', isVietnamese: true, answer: 'Idāni eso kiṃ karissati?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 5】 Kiṃ tvaṃ etaṃ pucchasi?'),
        MixedSegment(text: 'Bạn hỏi cái gì?', isVietnamese: true, answer: 'Kiṃ tvaṃ etaṃ pucchasi?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 6】 Esā nārī te kiṃ hoti?'),
        MixedSegment(text: 'Người phụ nữ này là gì của bạn?', isVietnamese: true, answer: 'Esā nārī te kiṃ hoti?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 7】 Sve kim'ete karissanti?"),
        MixedSegment(text: 'Ngày mai họ sẽ làm gì?', isVietnamese: true, answer: "Sve kim'ete karissanti?"),
        MixedSegment(text: '   ───   '),
        // Câu 8-14
        MixedSegment(text: '【Ex 8】 Kassa bhikkhussa taṃ potthakaṃ pesessāma?'),
        MixedSegment(text: 'Chúng ta sẽ gửi cuốn sách đó cho vị tỳ-khưu nào?', isVietnamese: true, answer: 'Kassa bhikkhussa taṃ potthakaṃ pesessāma?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 9】 Tesaṃ dhanena me kiṃ payojanaṃ?'),
        MixedSegment(text: 'Với tiền của họ thì tôi có việc gì (cần gì)?', isVietnamese: true, answer: 'Tesaṃ dhanena me kiṃ payojanaṃ?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 10】 Ko jānāti 'kiṃ eso karissatī'ti?"),
        MixedSegment(text: 'Ai biết "anh ta sẽ làm gì"?', isVietnamese: true, answer: "Ko jānāti 'kiṃ eso karissatī'ti?"),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 11】 Kissa phalaṃ nāma etaṃ?'),
        MixedSegment(text: 'Quả này tên gì?', isVietnamese: true, answer: 'Kissa phalaṃ nāma etaṃ?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 12】 Kāyaṃ disāyaṃ tassā jananī idāni vasati?'),
        MixedSegment(text: 'Mẹ của cô ấy bây giờ sống ở phương nào?', isVietnamese: true, answer: 'Kāyaṃ disāyaṃ tassā jananī idāni vasati?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 13】 Kassa dhammaṃ sotuṃ ete icchanti?'),
        MixedSegment(text: 'Họ muốn nghe Pháp của ai?', isVietnamese: true, answer: 'Kassa dhammaṃ sotuṃ ete icchanti?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 14】 "Yo Dhammaṃ passati so Buddhaṃ passati, yo Buddhaṃ passati so Dhammaṃ passati."'),
        MixedSegment(text: '"Người nào thấy Pháp, người đó thấy Đức Phật; người nào thấy Đức Phật, người đó thấy Pháp."', isVietnamese: true, answer: '"Yo Dhammaṃ passati so Buddhaṃ passati, yo Buddhaṃ passati so Dhammaṃ passati."'),
        MixedSegment(text: '   ───   '),
        // Câu 15-21
        MixedSegment(text: '【Ex 15】 Yaṃ tvaṃ icchasi taṃ etassa arocehi.'),
        MixedSegment(text: 'Bạn muốn gì, hãy nói cho người này biết.', isVietnamese: true, answer: 'Yaṃ tvaṃ icchasi taṃ etassa arocehi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 16】 Yaṃ te karonti tam eva gahetvā paraṃ lokaṃ gacchanti.'),
        MixedSegment(text: 'Họ lấy đúng cái mà họ làm rồi đi đến thế giới bên kia.', isVietnamese: true, answer: 'Yaṃ te karonti tam eva gahetvā paraṃ lokaṃ gacchanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 17】 Yassaṃ disāyaṃ so vasati tassaṃ disāyaṃ ete'pi vasituṃ icchanti."),
        MixedSegment(text: 'Họ cũng muốn sống ở phương mà anh ấy sống.', isVietnamese: true, answer: "Yassaṃ disāyaṃ so vasati tassaṃ disāyaṃ ete'pi vasituṃ icchanti."),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 18】 Eso naro ekaṃ vadati, esā nārī aññaṃ vadati.'),
        MixedSegment(text: 'Người đàn ông này nói một điều, người phụ nữ này nói điều khác.', isVietnamese: true, answer: 'Eso naro ekaṃ vadati, esā nārī aññaṃ vadati.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 19】 Paresaṃ bhaṇḍāni mayaṃ na gaṇhāma.'),
        MixedSegment(text: 'Chúng tôi không lấy đồ của người khác.', isVietnamese: true, answer: 'Paresaṃ bhaṇḍāni mayaṃ na gaṇhāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 20】 Etāni phalāni mā tassa sakuṇassa detha.'),
        MixedSegment(text: 'Đừng cho những trái cây này cho con chim đó.', isVietnamese: true, answer: 'Etāni phalāni mā tassa sakuṇassa detha.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 21】 Idāni sabbe'pi te bhikkhū uttarāya disāya aññatarasmiṃ ārāme vasanti."),
        MixedSegment(text: 'Bây giờ tất cả các tỳ-khưu đó đều sống ở một khu vườn nào đó về phía Bắc.', isVietnamese: true, answer: "Idāni sabbe'pi te bhikkhū uttarāya disāya aññatarasmiṃ ārāme vasanti."),
        MixedSegment(text: '   ───   '),
        // Câu 22-28
        MixedSegment(text: '【Ex 22】 Etasmiṃ nagare sabbe narā aparaṃ nagaraṃ agamiṃsu.'),
        MixedSegment(text: 'Trong thành phố này, tất cả những người đàn ông đã đến một thành phố khác.', isVietnamese: true, answer: 'Etasmiṃ nagare sabbe narā aparaṃ nagaraṃ agamiṃsu.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 23】 Kiñci'pi kātuṃ so na jānāti."),
        MixedSegment(text: 'Anh ta không biết làm bất cứ điều gì.', isVietnamese: true, answer: "Kiñci'pi kātuṃ so na jānāti."),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 24】 Katamaṃ disaṃ tumhe gantuṃ iccheyyātha — puratthimaṃ vā dakkhiṇaṃ vā pacchimaṃ vā uttaraṃ vā?'),
        MixedSegment(text: 'Bạn muốn đi đến phương nào — Đông, Nam, Tây hay Bắc?', isVietnamese: true, answer: 'Katamaṃ disaṃ tumhe gantuṃ iccheyyātha — puratthimaṃ vā dakkhiṇaṃ vā pacchimaṃ vā uttaraṃ vā?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 25】 Katarāya disāya tvaṃ suriyaṃ passasi — pubbāyaṃ vā aparāyaṃ vā?'),
        MixedSegment(text: 'Bạn thấy mặt trời ở phương nào — phía trước hay phía sau?', isVietnamese: true, answer: 'Katarāya disāya tvaṃ suriyaṃ passasi — pubbāyaṃ vā aparāyaṃ vā?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 26】 Kā esā?'),
        MixedSegment(text: 'Đây là ai (nữ)?', isVietnamese: true, answer: 'Kā esā?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 27】 Kiṃ tassa nāmaṃ?'),
        MixedSegment(text: 'Tên của anh ta là gì?', isVietnamese: true, answer: 'Kiṃ tassa nāmaṃ?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 28】 Katamāya disāya so agami?'),
        MixedSegment(text: 'Anh ta đã đến từ phương nào?', isVietnamese: true, answer: 'Katamāya disāya so agami?'),
        MixedSegment(text: '   ───   '),
        // Câu 29-35
        MixedSegment(text: '【Ex 29】 Nanu eso tava ñāti?'),
        MixedSegment(text: 'Chẳng phải đây là bà con của bạn sao?', isVietnamese: true, answer: 'Nanu eso tava ñāti?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 30】 Kiṃ etassa phalassa nāmaṃ?'),
        MixedSegment(text: 'Tên của quả này là gì?', isVietnamese: true, answer: 'Kiṃ etassa phalassa nāmaṃ?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 31】 Kasmā tvaṃ etāni potthakāni akiṇo?'),
        MixedSegment(text: 'Tại sao bạn không mua những cuốn sách này?', isVietnamese: true, answer: 'Kasmā tvaṃ etāni potthakāni akiṇo?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 32】 Kāya mayaṃ ajja gaccheyyāma?'),
        MixedSegment(text: 'Hôm nay chúng ta đi đâu?', isVietnamese: true, answer: 'Kāya mayaṃ ajja gaccheyyāma?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 33】 Kassa ārāme ete dārakā ca dārikāyo ca kīḷanti?'),
        MixedSegment(text: 'Những đứa trẻ trai và gái chơi ở khu vườn của ai?', isVietnamese: true, answer: 'Kassa ārāme ete dārakā ca dārikāyo ca kīḷanti?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 34】 Katamāyaṃ disāyaṃ tvaṃ pāto suriyaṃ passasi?'),
        MixedSegment(text: 'Sáng nay bạn thấy mặt trời ở phương nào?', isVietnamese: true, answer: 'Katamāyaṃ disāyaṃ tvaṃ pāto suriyaṃ passasi?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 35】 Etena tassa vā tissā vā kiṃ payojanaṃ?'),
        MixedSegment(text: 'Bằng cái này hoặc cái kia của anh ta/cô ta, có việc gì?', isVietnamese: true, answer: 'Etena tassa vā tissā vā kiṃ payojanaṃ?'),
        MixedSegment(text: '   ───   '),
        // Câu 36-42
        MixedSegment(text: '【Ex 36】 Kissa so te paṇṇākāre adāsi?'),
        MixedSegment(text: 'Anh ta đã cho bạn phần thưởng vì cái gì?', isVietnamese: true, answer: 'Kissa so te paṇṇākāre adāsi?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 37】 Seṭṭhi, tava dhanena kiṃ payojanaṃ?'),
        MixedSegment(text: 'Này trưởng giả, với tiền của bạn thì có việc gì?', isVietnamese: true, answer: 'Seṭṭhi, tava dhanena kiṃ payojanaṃ?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 38】 Puññakārino have sugatīsu jāyissanti.'),
        MixedSegment(text: 'Những người làm phước chắc chắn sẽ sinh ở các cõi lành.', isVietnamese: true, answer: 'Puññakārino have sugatīsu jāyissanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 39】 Yaṃ icchasi so taṃ vadatu.'),
        MixedSegment(text: 'Người nào muốn hãy nói điều đó.', isVietnamese: true, answer: 'Yaṃ icchasi so taṃ vadatu.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 40】 Mayaṃ sabbāni tāni lekhanāni na likhimhā.'),
        MixedSegment(text: 'Chúng tôi đã không viết tất cả những lá thư đó.', isVietnamese: true, answer: 'Mayaṃ sabbāni tāni lekhanāni na likhimhā.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 41】 Yaṃ tava cakkhūhi passasi sabbaṃ aññesaṃ mā vadeyyāsi.'),
        MixedSegment(text: 'Cái mà mắt bạn thấy, đừng nói cho người khác.', isVietnamese: true, answer: 'Yaṃ tava cakkhūhi passasi sabbaṃ aññesaṃ mā vadeyyāsi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 42】 Yesu nagaresu paṇḍitā vasanti (tesu) mayaṃ vasituṃ icchāma.'),
        MixedSegment(text: 'Chúng tôi muốn sống ở những thành phố mà các bậc trí sống.', isVietnamese: true, answer: 'Yesu nagaresu paṇḍitā vasanti (tesu) mayaṃ vasituṃ icchāma.'),
      ],
    );

LessonPhase _buildDay2Phase3() => LessonPhase(
      id: 'lesson13_phase6',
      phaseTypeStr: 'listening_quiz',
      titleVi: '🎧 Quiz: Dịch câu Exercise 13',
      contentVi:
          'Chọn bản dịch tiếng Việt đúng cho mỗi câu Pāḷi từ Exercise 13.',
      questions: const [
        QuizQuestion(
          id: 'lesson13_q08',
          questionText: '"Ko nāma tvaṃ?" có nghĩa là:',
          options: ['Bạn là ai?', 'Tên bạn là gì?', 'Bạn bao nhiêu tuổi?', 'Bạn ở đâu?'],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson13_q09',
          questionText: '"Idāni eso kiṃ karissati?" có nghĩa là:',
          options: [
            'Bây giờ anh ta đang làm gì?',
            'Bây giờ anh ta sẽ làm gì?',
            'Bây giờ anh ta đã làm gì?',
            'Bây giờ anh ta làm gì rồi?',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson13_q10',
          questionText: '"Yo Dhammaṃ passati so Buddhaṃ passati." có nghĩa là:',
          options: [
            'Người nào thấy Đức Phật, người đó thấy Pháp.',
            'Người nào thấy Pháp, người đó thấy Đức Phật.',
            'Đức Phật thấy Pháp của người đó.',
            'Pháp thấy Đức Phật của người đó.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson13_q11',
          questionText: "\"Kiñci'pi kātuṃ so na jānāti.\" có nghĩa là:",
          options: [
            'Anh ta biết làm một số điều.',
            'Anh ta không biết làm bất cứ điều gì.',
            'Anh ta biết làm tất cả.',
            'Anh ta không biết gì cả.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson13_q12',
          questionText: '"Kasmā tvaṃ etāni potthakāni akiṇo?" có nghĩa là:',
          options: [
            'Bạn đã mua những cuốn sách này ở đâu?',
            'Tại sao bạn không mua những cuốn sách này?',
            'Bạn đã mua những cuốn sách này chưa?',
            'Bạn sẽ mua những cuốn sách này khi nào?',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson13_q13',
          questionText: '"Yaṃ tvaṃ icchasi taṃ vadehi." có nghĩa là:',
          options: [
            'Bạn nói cái mà tôi muốn.',
            'Bạn muốn gì, hãy nói cái đó.',
            'Cái bạn nói, tôi muốn.',
            'Bạn không muốn gì cả.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
      ],
      fabAnswers: const [
        FabAnswerItem(en: 'Answer 8 → B', vi: '① Ko (CC nam nghi vấn) + nāma (tên) + tvaṃ (bạn) = Tên bạn là gì?'),
        FabAnswerItem(en: 'Answer 9 → B', vi: '② karissati = tương lai của kara (sẽ làm). Idāni = bây giờ. Kiṃ = cái gì.'),
        FabAnswerItem(en: 'Answer 10 → B', vi: '③ Cấu trúc Yo...so...: Người nào thấy Pháp, người đó thấy Đức Phật.'),
        FabAnswerItem(en: 'Answer 11 → B', vi: "④ Kiñci'pi = kiñci (bất cứ cái gì) + api (cũng). na jānāti = không biết."),
        FabAnswerItem(en: 'Answer 12 → B', vi: '⑤ Kasmā = tại sao (XXC). akiṇo = a + kiṇi + o = không mua (Ngôi 2 sg Hiện tại).'),
        FabAnswerItem(en: 'Answer 13 → B', vi: '⑥ Yaṃ...taṃ...: Cái mà bạn muốn, hãy nói cái đó.'),
      ],
      fabVocab: const [],
      fabPhrases: const [],
    );

// ──────────────────────────────────────────────────────────────
// AGGREGATE
// ──────────────────────────────────────────────────────────────
List<LessonDay> getLesson13Data() => [
      getLesson13Day1(),
      getLesson13Day2(),
    ];

class Lesson13Bundle {
  static LessonMeta meta = getLesson13Meta();
  static LessonDay day1 = getLesson13Day1();
  static LessonDay day2 = getLesson13Day2();
  static List<LessonDay> all = getLesson13Data();
}
