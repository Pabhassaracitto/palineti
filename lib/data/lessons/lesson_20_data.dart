// LESSON 20 OPTIMIZED — 6 phases, from Nārada Lesson 20 + vipassana.info/lesson20.htm
// Giữ đủ vocab, content <5000
import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

LessonMeta getLesson20Meta() => const LessonMeta(
  id: 'theme_20_compounds',
  lessonNumber: 20,
  titleVi: 'Hợp từ (Samāsa)',
  titleEn: 'Compounds (Samāsa)',
  iconEmoji: '🔗',
  colorValue: 0xFFD2B48C,
  description: '5 loại Hợp từ: Kammadhāraya, Tappurisa, Dvanda, Bahubbīhi, Avyayībhāva',
);

final kLesson20Vocab = <PaliVocabModel>[
  PaliVocabModel(id: 'pv_L20_001', root: 'taruṇapuriso', paradigmId: 'masc_a', wordVi: 'thanh niên (taruṇa+purisa)', wordEn: 'young man', lessonId: 'lesson_20', pronunciation: 'ta-ru-ṇa-pu-ri-so', examplePali: 'taruṇa + purisa', exampleVi: 'trẻ + người'),
  PaliVocabModel(id: 'pv_L20_002', root: 'mukhacando', paradigmId: 'masc_a', wordVi: 'mặt như trăng', wordEn: 'moon-face', lessonId: 'lesson_20', pronunciation: 'mu-kha-can-do', examplePali: 'mukha + canda', exampleVi: 'mặt + trăng'),
  PaliVocabModel(id: 'pv_L20_003', root: 'sīladhanaṃ', paradigmId: 'neuter_a', wordVi: 'giới là của cải', wordEn: 'virtue as wealth', lessonId: 'lesson_20', pronunciation: 'sii-la-dha-naṃ', examplePali: 'sīla + dhana', exampleVi: 'giới + của cải'),
  PaliVocabModel(id: 'pv_L20_004', root: 'gāmagato', paradigmId: 'masc_a', wordVi: 'đã đi đến làng', wordEn: 'gone to village', lessonId: 'lesson_20', pronunciation: 'gaa-ma-ga-to', examplePali: 'gāmaṃ + gato', exampleVi: 'làng + đã đi'),
  PaliVocabModel(id: 'pv_L20_005', root: 'candasuriyo', paradigmId: 'masc_a', wordVi: 'trăng và trời', wordEn: 'moon and sun', lessonId: 'lesson_20', pronunciation: 'can-da-su-ri-yo', examplePali: 'cando ca suriyo ca', exampleVi: 'trăng và trời'),
  PaliVocabModel(id: 'pv_L20_006', root: 'nāmarūpaṃ', paradigmId: 'neuter_a', wordVi: 'danh và sắc', wordEn: 'mind and matter', lessonId: 'lesson_20', pronunciation: 'naa-ma-ruu-paṃ', examplePali: 'nāma + rūpa', exampleVi: 'danh + sắc'),
  PaliVocabModel(id: 'pv_L20_007', root: 'pītambaro', paradigmId: 'masc_a', wordVi: 'người áo vàng', wordEn: 'yellow garment', lessonId: 'lesson_20', pronunciation: 'pii-tam-ba-ro', examplePali: 'pīta + ambara', exampleVi: 'vàng + áo'),
  PaliVocabModel(id: 'pv_L20_008', root: 'anupubbaṃ', paradigmId: 'neuter_a', wordVi: 'tuần tự', wordEn: 'in order', lessonId: 'lesson_20', pronunciation: 'a-nu-pub-baṃ', examplePali: 'anu + pubba', exampleVi: 'theo + trước'),
  PaliVocabModel(id: 'pv_L20_009', root: 'yathābalaṃ', paradigmId: 'neuter_a', wordVi: 'tùy sức', wordEn: 'according to strength', lessonId: 'lesson_20', pronunciation: 'ya-thaa-ba-laṃ', examplePali: 'yathā + bala', exampleVi: 'theo + sức'),
  PaliVocabModel(id: 'pv_L20_010', root: 'catusaccaṃ', paradigmId: 'neuter_a', wordVi: '4 chân lý', wordEn: 'four truths', lessonId: 'lesson_20', pronunciation: 'ca-tu-sac-caṃ', examplePali: 'cattāri + saccāni', exampleVi: '4 + chân lý'),
];

LessonDay getLesson20Day1() {
  return LessonDay(
    id: 'lesson20_day1',
    dayNumber: 1,
    themeId: 'theme_20_compounds',
    titleVi: 'Ngày 1 — Lý thuyết & Từ vựng: Hợp từ (Samāsa)',
    phases: [_buildDay1Phase1(), _buildDay1Phase2(), _buildDay1Phase3()],
  );
}
LessonPhase _buildDay1Phase1() {
  return LessonPhase(
    id: 'lesson20_phase1',
    phaseTypeStr: 'read_listen',
    titleVi: '📘 Lý thuyết: Hợp từ (Samāsa) — 5 loại',
    paradigmId: 'masc_a',
    paradigmRoot: 'nara',
    contentVi: '''
MỤC TIÊU: Hiểu 5 loại hợp từ, quy tắc Sandhi, chuẩn bị 20 câu Exercise 20.
1. Kammadhāraya (tính+danh): taruṇa+purisa=taruṇapuriso (người trẻ), mukha+canda=mukhacando (mặt trăng), su+jana=sujano (người tốt), na+kusala=akusala (bất thiện). Na+phụ âm→a, Na+nguyên âm→an.
2. Digu (có số từ): Dve+aṅguliyo=dvaṅgulaṃ (2 ngón), tayo+lokā=tilokaṃ (3 cõi), cattāri+saccāni=catusaccaṃ (4 chân lý). Nếu tổng hợp trung tính ít, riêng rẽ thì không.
3. Tappurisa (danh+danh cách xiên): gāmaṃ+gato=gāmagato (đã đến làng), Buddhena+desito=buddhadesito (được Phật thuyết), asinā+kalaho=asikalaho (đấu kiếm), lokassa+hito=lokahito (lợi đời), corasmā+bhayaṃ=corabhayaṃ (sợ trộm), Buddhassa+dhammo=buddhadhammo, vane+vāso=vanavāso (ở rừng).
4. Dvanda (song hợp): cando ca suriyo ca=candasuriyo (trăng và trời), narā ca nāriyo ca=naranāriyo (đàn ông và đàn bà), nāmañca rūpañca=nāmarūpaṃ (danh sắc), sukhañca dukkhañca=sukhadukkhaṃ (lạc khổ).
5. Bahubbīhi (chỉ vật khác): pīta+ambara=pītambaro (người áo vàng), āgata+samaṇa=āgatasamaṇo (tu viện), diṭṭha+dhamma=diṭṭhadhammo (Thánh).
6. Avyayībhāva (tiền tố+danh, trung bất biến): anu+pubba=anupubbaṃ (tuần tự), adhi+itthī=adhitthi, upa+gaṅgā=upagaṅgaṃ (gần sông), yathā+bala=yathābalaṃ (tùy sức).
Anchor: Sabbadānaṃ dhammadānaṃ jināti (Pháp thí thắng mọi thí)
''',
    contentEn: 'Samasa 5 types',
  );
}
LessonPhase _buildDay1Phase2() {
  return LessonPhase(
    id: 'lesson20_phase2',
    phaseTypeStr: 'mind_game',
    titleVi: '🧠 Ghép từ: 12 hợp từ',
    contentVi: '12 hợp từ tiêu biểu',
    mixedSegments: const [
      MixedSegment(text: 'taruṇapuriso'), MixedSegment(text: 'người trẻ (tính+danh)', isVietnamese: true, answer: 'taruṇapuriso'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'mukhacando'), MixedSegment(text: 'mặt như trăng', isVietnamese: true, answer: 'mukhacando'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'sīladhanaṃ'), MixedSegment(text: 'giới là của cải', isVietnamese: true, answer: 'sīladhanaṃ'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'gāmagato'), MixedSegment(text: 'đã đến làng', isVietnamese: true, answer: 'gāmagato'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'candasuriyo'), MixedSegment(text: 'trăng và trời', isVietnamese: true, answer: 'candasuriyo'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'nāmarūpaṃ'), MixedSegment(text: 'danh và sắc', isVietnamese: true, answer: 'nāmarūpaṃ'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'pītambaro'), MixedSegment(text: 'người áo vàng', isVietnamese: true, answer: 'pītambaro'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'anupubbaṃ'), MixedSegment(text: 'tuần tự', isVietnamese: true, answer: 'anupubbaṃ'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'yathābalaṃ'), MixedSegment(text: 'tùy sức', isVietnamese: true, answer: 'yathābalaṃ'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'catusaccaṃ'), MixedSegment(text: '4 chân lý', isVietnamese: true, answer: 'catusaccaṃ'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'sabbadānaṃ'), MixedSegment(text: 'mọi thí', isVietnamese: true, answer: 'sabbadānaṃ'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'dhammadānaṃ'), MixedSegment(text: 'Pháp thí', isVietnamese: true, answer: 'dhammadānaṃ'),
    ],
  );
}
LessonPhase _buildDay1Phase3() {
  return LessonPhase(
    id: 'lesson20_phase3',
    phaseTypeStr: 'listening_quiz',
    titleVi: '🎧 Quiz: Hợp từ (Samāsa)',
    contentVi: '8 câu',
    questions: const [
      QuizQuestion(id: 'lesson20_q01', questionText: 'taruṇa + purisa = ?', options: ['A. Người trẻ', 'B. Người già', 'C. Người có trí', 'D. Người cho'], correctIndex: 0, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson20_q02', questionText: 'mukha + canda = ?', options: ['A. Mặt như trăng', 'B. Mặt trời', 'C. Mặt hoa', 'D. Mặt gương'], correctIndex: 0, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson20_q03', questionText: 'gāmaṃ + gato = ?', options: ['A. Khỏi làng', 'B. Đã đến làng', 'C. Trong làng', 'D. Sống trong làng'], correctIndex: 1, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson20_q04', questionText: 'cando ca suriyo ca = ?', options: ['A. Hoặc', 'B. Và (trăng và trời)', 'C. Là', 'D. Như'], correctIndex: 1, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson20_q05', questionText: 'pīta + ambara = pītambaro?', options: ['A. Áo vàng', 'B. Người có áo vàng', 'C. Vải vàng', 'D. Nhuộm vàng'], correctIndex: 1, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson20_q06', questionText: 'anupubbaṃ = anu + pubba?', options: ['A. Trước', 'B. Sau', 'C. Tuần tự', 'D. Ngược'], correctIndex: 2, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson20_q07', questionText: 'yathābalaṃ = ?', options: ['A. Theo sức', 'B. Theo muốn', 'C. Theo thứ tự', 'D. Theo già trẻ'], correctIndex: 0, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson20_q08', questionText: 'Na + assa = anassa?', options: ['A. Na+phụ âm→a', 'B. Na+nguyên âm→an', 'C. Na→a luôn', 'D. Na→an luôn'], correctIndex: 1, practiceNumber: 'day1'),
    ],
    fabAnswers: const [FabAnswerItem(en: 'taruṇapuriso', vi: 'trẻ + người'),],
  );
}
LessonDay getLesson20Day2() {
  return LessonDay(
    id: 'lesson20_day2',
    dayNumber: 2,
    themeId: 'theme_20_compounds',
    titleVi: 'Ngày 2 — Luyện tập: 20 câu Exercise 20',
    phases: [_buildDay2Phase1(), _buildDay2Phase2(), _buildDay2Phase3()],
  );
}
LessonPhase _buildDay2Phase1() {
  return LessonPhase(
    id: 'lesson20_phase4',
    phaseTypeStr: 'read_listen',
    titleVi: '📖 Đọc hiểu: 6 câu Exercise 20',
    contentVi: '''
1. Sabbadānaṃ dhammadānaṃ jināti. → Pháp thí thắng mọi thí.
2. Ahaṃ te saddhiṃ puttadhītāhi dāsī bhavissāmi. → Tôi sẽ làm đầy tớ cho ngài cùng con trai con gái.
3. Tisaraṇena saddhiṃ pañcasīlaṃ detha me bhante. → Bạch ngài, xin cho con Tam Quy và Ngũ Giới.
4. Paralokaṃ gacchantaṃ puttadhītaro vā bhātaro vā hatthigavāssaṃ vā na anugacchanti. → Khi sang đời sau, con cái hay anh em hay voi ngựa không đi theo.
5. Eho taruṇavejjo vejjakammaṃ karonto gāmanagaresu vicarati. → Này thầy thuốc trẻ, hãy đi khắp làng thành hành nghề y.
6. Dārakadārikāyo tesaṃ mātāpitunnaṃ ovāde ṭhatvā kiñci'pi pāpakammaṃ na karonti. → Con trai con gái vâng lời cha mẹ, không làm ác.
''',
    contentEn: '6 sentences',
  );
}
LessonPhase _buildDay2Phase2() {
  return LessonPhase(
    id: 'lesson20_phase5',
    phaseTypeStr: 'mind_game',
    titleVi: '🧠 Ghép câu: 20 câu Exercise 20',
    contentVi: '20 câu',
    mixedSegments: const [
      MixedSegment(text: 'Sabbadānaṃ dhammadānaṃ jināti.'), MixedSegment(text: 'Pháp thí thắng mọi thí', isVietnamese: true, answer: 'Sabbadānaṃ dhammadānaṃ jināti.'),
    ],
  );
}
LessonPhase _buildDay2Phase3() {
  return LessonPhase(
    id: 'lesson20_phase6',
    phaseTypeStr: 'listening_quiz',
    titleVi: '🎧 Quiz: Dịch câu Exercise 20',
    contentVi: '10 câu',
    questions: const [
      QuizQuestion(id: 'lesson20_q09', questionText: 'Sabbadānaṃ dhammadānaṃ jināti. Nghĩa?', options: ['A. Tài thí thắng', 'B. Pháp thí thắng mọi thí', 'C. Vô úy thí thắng', 'D. Ăn cho sức'], correctIndex: 1, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson20_q10', questionText: 'puttadhītāhi = ?', options: ['A. Kammadhāraya', 'B. Dvanda', 'C. Tappurisa', 'D. Bahubbīhi'], correctIndex: 1, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson20_q11', questionText: 'hatthigavāssaṃ = ?', options: ['A. Voi và bò', 'B. Voi, bò, ngựa', 'C. Voi là bò', 'D. Voi như bò'], correctIndex: 1, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson20_q12', questionText: 'taruṇavejjo = ?', options: ['A. Kammadhāraya', 'B. Dvanda', 'C. Tappurisa', 'D. Avyayībhāva'], correctIndex: 0, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson20_q13', questionText: 'Sattasu dhanesu saddhādhanaṃ paṭhamaṃ.', options: ['A. Trong 7 tài sản, tín tài là thứ nhất', 'B. Giới tài là thứ nhất', 'C. Tuệ tài là thứ 7', 'D. Không có tín tài'], correctIndex: 0, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson20_q14', questionText: 'Dvipadesu vā catuppadesu vā...', options: ['A. Hai chân hay bốn chân', 'B. Hai tay', 'C. Hai mắt', 'D. Hai tai'], correctIndex: 0, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson20_q15', questionText: 'Mātāpitā disā pubbā.', options: ['A. Cha mẹ là hướng Đông', 'B. Tây', 'C. Nam', 'D. Bắc'], correctIndex: 0, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson20_q16', questionText: 'Paralokaṃ gacchantaṃ... na anugacchanti.', options: ['A. Sang đời sau, con cái không đi theo', 'B. Đi theo', 'C. Ở lại', 'D. Lên trời'], correctIndex: 0, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson20_q17', questionText: 'Puttadhītāyo mātāpitunnaṃ ovāde ṭhatvā...', options: ['A. Không vâng lời', 'B. Vâng lời không làm ác', 'C. Bỏ cha mẹ', 'D. Đánh cha mẹ'], correctIndex: 1, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson20_q18', questionText: 'Sītodakaṃ vā uṇhodakaṃ vā āhara.', options: ['A. Nước lạnh hay nóng', 'B. Lạnh và nóng', 'C. Lạnh hay sữa', 'D. Nóng hay cháo'], correctIndex: 0, practiceNumber: 'day2'),
    ],
    fabAnswers: const [FabAnswerItem(en: 'dhammadāna', vi: 'Pháp thí'),],
  );
}
({LessonDay day1, LessonDay day2}) getLesson20Data() {
  return (day1: getLesson20Day1(), day2: getLesson20Day2());
}
