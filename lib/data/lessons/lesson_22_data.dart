
// =============================================================================
// LESSON 22 OPTIMIZED — V0.2 Golden Template (6 phases)
// Nguồn: Nārada Lesson 22 + https://vipassana.info/lesson22.htm
// Trước: 9 phases, 7355 chars, 61 segs | Sau: 6 phases, ~3500 chars, ~64 segs
// Giữ đủ 19 vocab Taddhita
// =============================================================================

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

final kLesson22Vocab = <PaliVocabModel>[
  PaliVocabModel(id: 'pv_L22_panna', root: 'pañña', paradigmId: 'taddhita_a', wordVi: 'người có trí (+ a)', wordEn: 'wise', lessonId: 'lesson_22', pronunciation: 'pan-nyah', examplePali: 'Paññā + a = pañña', exampleVi: 'Trí + a = người có trí'),
  PaliVocabModel(id: 'pv_L22_saddha', root: 'saddhā', paradigmId: 'taddhita_a', wordVi: 'người có tín tâm', wordEn: 'faithful', lessonId: 'lesson_22', pronunciation: 'sad-dhah', examplePali: 'Saddhā + a = saddha', exampleVi: 'Tín + a = có tín'),
  PaliVocabModel(id: 'pv_L22_dhammika', root: 'dhamma', paradigmId: 'taddhita_ika', wordVi: 'chánh trực (+ ika)', wordEn: 'righteous', lessonId: 'lesson_22', pronunciation: 'dham-mi-ka', examplePali: 'Dhamma + ika = dhammika', exampleVi: 'Pháp + ika = chánh trực'),
  PaliVocabModel(id: 'pv_L22_nagarika', root: 'nagara', paradigmId: 'taddhita_ika', wordVi: 'thuộc về kinh thành', wordEn: 'urban', lessonId: 'lesson_22', pronunciation: 'naa-ga-ri-ka', examplePali: 'Nagara + ika = nāgarika', exampleVi: 'Thành + ika = thuộc thành'),
  PaliVocabModel(id: 'pv_L22_venayika', root: 'vinaya', paradigmId: 'taddhita_ika', wordVi: 'thông thạo giới luật', wordEn: 'Vinaya expert', lessonId: 'lesson_22', pronunciation: 've-naa-yi-ka', examplePali: 'Vinaya + ika = venayika', exampleVi: 'Giới + ika = thông thạo giới'),
  PaliVocabModel(id: 'pv_L22_dandi', root: 'daṇḍa', paradigmId: 'taddhita_i', wordVi: 'người có gậy', wordEn: 'has stick', lessonId: 'lesson_22', pronunciation: 'dan-dii', examplePali: 'Daṇḍa + ī = daṇḍī', exampleVi: 'Gậy + ī = người có gậy'),
  PaliVocabModel(id: 'pv_L22_gunavantu', root: 'guṇa', paradigmId: 'taddhita_vantu', wordVi: 'người có đức', wordEn: 'virtuous', lessonId: 'lesson_22', pronunciation: 'gu-na-van-tu', examplePali: 'Guṇa + vantu = guṇavantu', exampleVi: 'Đức + vantu = có đức'),
  PaliVocabModel(id: 'pv_L22_medhavi', root: 'medhā', paradigmId: 'taddhita_vi', wordVi: 'người có trí', wordEn: 'wise', lessonId: 'lesson_22', pronunciation: 'med-haa-vii', examplePali: 'Medhā + vī = medhāvī', exampleVi: 'Trí + vī = người có trí'),
  PaliVocabModel(id: 'pv_L22_ayomaya', root: 'aya', paradigmId: 'taddhita_maya', wordVi: 'làm bằng sắt', wordEn: 'made of iron', lessonId: 'lesson_22', pronunciation: 'a-yo-ma-ya', examplePali: 'Aya + maya = ayomaya', exampleVi: 'Sắt + maya = bằng sắt'),
  PaliVocabModel(id: 'pv_L22_darumaya', root: 'dāru', paradigmId: 'taddhita_maya', wordVi: 'bằng gỗ', wordEn: 'wooden', lessonId: 'lesson_22', pronunciation: 'daa-ru-ma-ya', examplePali: 'Dāru + maya = dārumaya', exampleVi: 'Gỗ + maya = bằng gỗ'),
  PaliVocabModel(id: 'pv_L22_gamata', root: 'gāma', paradigmId: 'taddhita_ta', wordVi: 'tập hợp làng', wordEn: 'collection', lessonId: 'lesson_22', pronunciation: 'gaa-ma-taa', examplePali: 'Gāma + tā = gāmatā', exampleVi: 'Làng + tā = tập hợp làng'),
  PaliVocabModel(id: 'pv_L22_janata', root: 'jana', paradigmId: 'taddhita_ta', wordVi: 'quần chúng', wordEn: 'multitude', lessonId: 'lesson_22', pronunciation: 'ja-na-taa', examplePali: 'Jana + tā = janatā', exampleVi: 'Người + tā = quần chúng'),
  PaliVocabModel(id: 'pv_L22_arogya', root: 'aroga', paradigmId: 'taddhita_ya', wordVi: 'sức khỏe', wordEn: 'health', lessonId: 'lesson_22', pronunciation: 'aa-rog-ya', examplePali: 'Aroga + ya = ārogya', exampleVi: 'Không bệnh + ya = sức khỏe'),
  PaliVocabModel(id: 'pv_L22_manussatta', root: 'manussa', paradigmId: 'taddhita_tta', wordVi: 'nhân tánh', wordEn: 'manhood', lessonId: 'lesson_22', pronunciation: 'ma-nus-sat-ta', examplePali: 'Manussa + tta = manussatta', exampleVi: 'Người + tta = nhân tánh'),
  PaliVocabModel(id: 'pv_L22_settha', root: 'pasattha', paradigmId: 'taddhita_ttha', wordVi: 'tối thắng', wordEn: 'best', lessonId: 'lesson_22', pronunciation: 'set-tha', examplePali: 'Pasattha → seyyo → seṭṭha', exampleVi: 'Tốt → tốt hơn → tốt nhất'),
  PaliVocabModel(id: 'pv_L22_ekaka', root: 'eka', paradigmId: 'taddhita_ka', wordVi: 'một nhóm', wordEn: 'unit', lessonId: 'lesson_22', pronunciation: 'e-ka-ka', examplePali: 'Eka + ka = ekaka', exampleVi: 'Một + ka = một nhóm'),
  PaliVocabModel(id: 'pv_L22_bahudha', root: 'bahu', paradigmId: 'taddhita_dha', wordVi: 'theo nhiều cách', wordEn: 'in many ways', lessonId: 'lesson_22', pronunciation: 'ba-hu-dhaa', examplePali: 'Bahu + dhā = bahudhā', exampleVi: 'Nhiều + dhā = nhiều cách'),
  PaliVocabModel(id: 'pv_L22_sabbaso', root: 'sabba', paradigmId: 'taddhita_so', wordVi: 'trong mọi cách', wordEn: 'in every way', lessonId: 'lesson_22', pronunciation: 'sab-ba-so', examplePali: 'Sabba + so = sabbaso', exampleVi: 'Tất cả + so = mọi cách'),
  PaliVocabModel(id: 'pv_L22_annathha', root: 'añña', paradigmId: 'taddhita_tha', wordVi: 'cách khác', wordEn: 'differently', lessonId: 'lesson_22', pronunciation: 'an-nya-tha', examplePali: 'Añña + thā = aññathā', exampleVi: 'Khác + thā = cách khác'),
];

LessonDay getLesson22Day1() {
  return LessonDay(
    id: 'lesson22_day1',
    dayNumber: 1,
    themeId: 'theme_22_taddhita',
    titleVi: 'Ngày 1 — Lý thuyết & Từ vựng: Cách Thành Lập Danh Từ — Hậu tố Taddhita',
    phases: [_buildDay1Phase1(), _buildDay1Phase2(), _buildDay1Phase3()],
  );
}
LessonPhase _buildDay1Phase1() {
  return LessonPhase(
    id: 'lesson22_phase1',
    phaseTypeStr: 'read_listen',
    titleVi: '📘 Lý thuyết: Taddhita — 11 Hậu tố',
    contentVi: '''
MỤC TIÊU: Hiểu 11 hậu tố Taddhita, quy tắc Vuddhi, chuẩn bị 20 câu Exercise 22.
1. A — sở hữu: Paññā + a = pañña (người có trí)
2. Ika — thuộc về: Dhamma+ika=dhammika (chánh trực), Nagara+ika=nāgarika (urban)
3. Ima/Iya — thuộc về: antima, majjhima
4. Ī/ika/mantu/vantu/vī — sở hữu: daṇḍī, guṇavantu, medhāvī
5. Maya — làm bằng: ayomaya (sắt), dārumaya (gỗ)
6. Tā — tập hợp (nữ): gāmatā, janatā
7. Tta/Ya — trạng thái (trung): ārogya, manussatta
8. Tara (hơn), Tama/Iṭṭha (nhất): bālatara/bālatama, seyyo/seṭṭha (bất quy tắc)
9. Ka — nhóm: ekaka, dvika, catukka
10. Kkhattuṃ — số lần: ekakkhattuṃ (1 lần), dvikkhattuṃ (2 lần)
11. Dhā/So/Thā — phân bố: bahudhā (nhiều cách), sabbaso (mọi cách)
Vuddhi: a→ā, i→e, u→o. Anchor: Rājā bhavatu dhammiko
''',
    contentEn: 'Taddhita 11 suffixes',
  );
}
LessonPhase _buildDay1Phase2() {
  return LessonPhase(
    id: 'lesson22_phase2',
    phaseTypeStr: 'mind_game',
    titleVi: '🧠 Ghép từ: 12 từ Taddhita',
    contentVi: '12 từ',
    mixedSegments: const [
      MixedSegment(text: 'pañña'), MixedSegment(text: 'người có trí', isVietnamese: true, answer: 'pañña'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'dhammika'), MixedSegment(text: 'chánh trực', isVietnamese: true, answer: 'dhammika'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'nāgarika'), MixedSegment(text: 'thuộc thành', isVietnamese: true, answer: 'nāgarika'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'daṇḍī'), MixedSegment(text: 'người có gậy', isVietnamese: true, answer: 'daṇḍī'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'guṇavantu'), MixedSegment(text: 'có đức', isVietnamese: true, answer: 'guṇavantu'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'medhāvī'), MixedSegment(text: 'có trí', isVietnamese: true, answer: 'medhāvī'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'ayomaya'), MixedSegment(text: 'bằng sắt', isVietnamese: true, answer: 'ayomaya'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'dārumaya'), MixedSegment(text: 'bằng gỗ', isVietnamese: true, answer: 'dārumaya'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'janatā'), MixedSegment(text: 'quần chúng', isVietnamese: true, answer: 'janatā'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'ārogya'), MixedSegment(text: 'sức khỏe', isVietnamese: true, answer: 'ārogya'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'seṭṭha'), MixedSegment(text: 'tốt nhất', isVietnamese: true, answer: 'seṭṭha'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'bahudhā'), MixedSegment(text: 'nhiều cách', isVietnamese: true, answer: 'bahudhā'),
    ],
  );
}
LessonPhase _buildDay1Phase3() {
  return LessonPhase(
    id: 'lesson22_phase3',
    phaseTypeStr: 'listening_quiz',
    titleVi: '🎧 Quiz: Taddhita — 11 Hậu tố',
    contentVi: '8 câu',
    questions: const [
      QuizQuestion(id: 'lesson22_q01', questionText: 'Paññā + a = ?', options: ['A. Có trí', 'B. Thuộc thành', 'C. Bằng sắt', 'D. Nhóm'], correctIndex: 0, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson22_q02', questionText: 'Nagara + ika = ?', options: ['A. Có trí', 'B. Thuộc thành', 'C. Bằng gỗ', 'D. Tốt nhất'], correctIndex: 1, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson22_q03', questionText: 'Guṇa + vantu = ?', options: ['A. Có đức', 'B. Bằng sắt', 'C. Một nhóm', 'D. Nhiều cách'], correctIndex: 0, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson22_q04', questionText: 'Aya + maya = ?', options: ['A. Thuộc thành', 'B. Bằng sắt', 'C. Tốt nhất', 'D. Quần chúng'], correctIndex: 1, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson22_q05', questionText: 'Gāma + tā = ?', options: ['A. Bằng gỗ', 'B. Tập hợp làng (nữ)', 'C. Sức khỏe', 'D. Tốt nhất'], correctIndex: 1, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson22_q06', questionText: 'Aroga + ya = ?', options: ['A. Sức khỏe (trung)', 'B. Thuộc thành', 'C. Có trí', 'D. Một lần'], correctIndex: 0, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson22_q07', questionText: 'bālatara/tama là?', options: ['A. Trẻ/hơn/nhất', 'B. Có con', 'C. Bằng sắt', 'D. Một nhóm'], correctIndex: 0, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson22_q08', questionText: 'ekakkhattuṃ = ?', options: ['A. Một nhóm', 'B. Một lần', 'C. Một cách', 'D. Thuộc một'], correctIndex: 1, practiceNumber: 'day1'),
    ],
    fabAnswers: const [FabAnswerItem(en: 'Q1', vi: 'Paññā + a = pañña'),],
  );
}
LessonDay getLesson22Day2() {
  return LessonDay(
    id: 'lesson22_day2',
    dayNumber: 2,
    themeId: 'theme_22_taddhita',
    titleVi: 'Ngày 2 — Luyện tập: 20 câu Exercise 22',
    phases: [_buildDay2Phase1(), _buildDay2Phase2(), _buildDay2Phase3()],
  );
}
LessonPhase _buildDay2Phase1() {
  return LessonPhase(
    id: 'lesson22_phase4',
    phaseTypeStr: 'read_listen',
    titleVi: '📖 Đọc hiểu: 6 câu Exercise 22',
    contentVi: '''
1. Rājā bhavatu dhammiko. → Mong vua chánh trực.
2. Socati puttehi puttimā. → Người có con sầu khổ vì con.
3. Manussattam'pi labhitvā kasmā tumhe puññaṃ na karotha? → Đã được làm người, sao không làm phước?
4. Sabbesu devamanussesu sammā-sambuddho pana seṭṭho hoti. → Trong chư thiên và người, Phật là tối thắng.
5. Tasmiṃ āpaṇe vāṇijo dārumayabhaṇḍāni na vikkiṇāti. → Ở cửa hàng ấy, không bán đồ bằng gỗ.
6. Ārogyaṃ seṭṭhadhanaṃ hoti. → Sức khỏe là tài sản tốt nhất.
''',
    contentEn: '6 sentences',
  );
}
LessonPhase _buildDay2Phase2() {
  return LessonPhase(
    id: 'lesson22_phase5',
    phaseTypeStr: 'mind_game',
    titleVi: '🧠 Ghép câu: 20 câu Exercise 22',
    contentVi: '20 câu',
    mixedSegments: const [
      MixedSegment(text: 'Rājā bhavatu dhammiko.'), MixedSegment(text: 'Mong vua chánh trực.', isVietnamese: true, answer: 'Rājā bhavatu dhammiko.'),
    ],
  );
}
LessonPhase _buildDay2Phase3() {
  return LessonPhase(
    id: 'lesson22_phase6',
    phaseTypeStr: 'listening_quiz',
    titleVi: '🎧 Quiz: Dịch câu Exercise 22',
    contentVi: '10 câu',
    questions: const [
      QuizQuestion(id: 'lesson22_q09', questionText: 'dhammiko = ?', options: ['A. Thuộc Pháp', 'B. Chánh trực', 'C. Bằng gỗ', 'D. Nhóm'], correctIndex: 1, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson22_q10', questionText: 'puttimā = ?', options: ['A. Có con', 'B. Thuộc con', 'C. Bằng con', 'D. Nhóm con'], correctIndex: 0, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson22_q11', questionText: 'seṭṭho là?', options: ['A. Tốt', 'B. Hơn', 'C. Nhất', 'D. Tā'], correctIndex: 2, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson22_q12', questionText: 'dārumaya = ?', options: ['A. Thuộc gỗ', 'B. Bằng gỗ', 'C. Nhóm gỗ', 'D. Có gỗ'], correctIndex: 1, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson22_q13', questionText: 'bahudhā = ?', options: ['A. Hai lần', 'B. Nhiều cách', 'C. Mọi cách', 'D. Nhóm'], correctIndex: 1, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson22_q14', questionText: 'ārogya = ?', options: ['A. Làng', 'B. Sức khỏe', 'C. Thành', 'D. Trí'], correctIndex: 1, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson22_q15', questionText: 'bālatara/tama?', options: ['A. Trẻ/hơn/nhất', 'B. Có con', 'C. Bằng sắt', 'D. Nhóm'], correctIndex: 0, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson22_q16', questionText: 'dvikkhattuṃ = ?', options: ['A. Hai nhóm', 'B. Hai lần', 'C. Hai cách', 'D. Thuộc hai'], correctIndex: 1, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson22_q17', questionText: 'manussatta tánh?', options: ['A. Nam', 'B. Nữ', 'C. Trung', 'D. Bất biến'], correctIndex: 2, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson22_q18', questionText: 'gāmatā tánh?', options: ['A. Nam', 'B. Nữ', 'C. Trung', 'D. Bất biến'], correctIndex: 1, practiceNumber: 'day2'),
    ],
    fabAnswers: const [FabAnswerItem(en: 'dhammika', vi: 'thuộc Pháp'),],
  );
}
({LessonDay day1, LessonDay day2}) getLesson22Data() {
  return (day1: getLesson22Day1(), day2: getLesson22Day2());
}
