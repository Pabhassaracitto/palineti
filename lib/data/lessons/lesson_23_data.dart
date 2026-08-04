
// LESSON 23 OPTIMIZED — 6 phases, from Nārada Lesson 23 + https://vipassana.info/lesson23.htm
// Trước: 9 phases, 7841 chars | Sau: 6 phases, ~3500 chars, keep 21 vocab
import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

final kLesson23Vocab = <PaliVocabModel>[
  PaliVocabModel(id: 'pv_L23_bhava', root: 'bhū', paradigmId: 'kitaka_a', wordVi: 'sự hiện hữu, trở thành (bhū+a=bhava)', wordEn: 'becoming', lessonId: 'lesson_23', pronunciation: 'bha-va', examplePali: 'Bhū + a = bhava', exampleVi: 'Trở thành + a = hiện hữu'),
  PaliVocabModel(id: 'pv_L23_bodha', root: 'budha', paradigmId: 'kitaka_a', wordVi: 'sự hiểu biết (budha+a=bodha)', wordEn: 'understanding', lessonId: 'lesson_23', pronunciation: 'bod-ha', examplePali: 'Budha + a = bodha', exampleVi: 'Hiểu + a = hiểu biết'),
  PaliVocabModel(id: 'pv_L23_dosa', root: 'dusa', paradigmId: 'kitaka_a', wordVi: 'sân hận', wordEn: 'anger', lessonId: 'lesson_23', pronunciation: 'do-sa', examplePali: 'Dusa + a = dosa', exampleVi: 'Ô nhiễm + a = sân'),
  PaliVocabModel(id: 'pv_L23_lobha', root: 'lubha', paradigmId: 'kitaka_a', wordVi: 'tham lam', wordEn: 'greed', lessonId: 'lesson_23', pronunciation: 'lob-ha', examplePali: 'Lubha + a = lobha', exampleVi: 'Tham + a = tham lam'),
  PaliVocabModel(id: 'pv_L23_moha', root: 'muha', paradigmId: 'kitaka_a', wordVi: 'si mê', wordEn: 'delusion', lessonId: 'lesson_23', pronunciation: 'mo-ha', examplePali: 'Muha + a = moha', exampleVi: 'Si + a = si mê'),
  PaliVocabModel(id: 'pv_L23_jaya', root: 'ji', paradigmId: 'kitaka_a', wordVi: 'chiến thắng', wordEn: 'victory', lessonId: 'lesson_23', pronunciation: 'ja-ya', examplePali: 'Ji + a = jaya', exampleVi: 'Thắng + a = chiến thắng'),
  PaliVocabModel(id: 'pv_L23_annada', root: 'anna', paradigmId: 'kitaka_a', wordVi: 'người cho đồ ăn', wordEn: 'giver of food', lessonId: 'lesson_23', pronunciation: 'an-na-da', examplePali: 'Annaṃ + dā + a = annada', exampleVi: 'Đồ ăn + cho + a = người cho đồ ăn'),
  PaliVocabModel(id: 'pv_L23_dhamma_dhara', root: 'dhamma', paradigmId: 'kitaka_a', wordVi: 'người thông thạo Pháp', wordEn: 'versed in Dhamma', lessonId: 'lesson_23', pronunciation: 'dham-ma-dha-ra', examplePali: 'Dhammaṃ + dhara + a = dhammadhara', exampleVi: 'Pháp + nắm giữ + a'),
  PaliVocabModel(id: 'pv_L23_dayaka', root: 'dā', paradigmId: 'kitaka_aka', wordVi: 'người cho, thí chủ', wordEn: 'giver', lessonId: 'lesson_23', pronunciation: 'daa-ya-ka', examplePali: 'Dā + aka = dāyaka', exampleVi: 'Cho + aka = người cho'),
  PaliVocabModel(id: 'pv_L23_nayaka', root: 'nī', paradigmId: 'kitaka_aka', wordVi: 'người lãnh đạo', wordEn: 'leader', lessonId: 'lesson_23', pronunciation: 'naa-ya-ka', examplePali: 'Nī + aka = nāyaka', exampleVi: 'Dẫn dắt + aka = lãnh đạo'),
  PaliVocabModel(id: 'pv_L23_savaka', root: 'su', paradigmId: 'kitaka_aka', wordVi: 'thinh văn, đệ tử', wordEn: 'disciple', lessonId: 'lesson_23', pronunciation: 'saa-va-ka', examplePali: 'Su + aka = sāvaka', exampleVi: 'Nghe + aka = đệ tử'),
  PaliVocabModel(id: 'pv_L23_bhojaka', root: 'bhuja', paradigmId: 'kitaka_aka', wordVi: 'người ăn', wordEn: 'eater', lessonId: 'lesson_23', pronunciation: 'bho-ja-ka', examplePali: 'Bhuja + aka = bhojaka', exampleVi: 'Ăn + aka = người ăn'),
  PaliVocabModel(id: 'pv_L23_dana', root: 'dā', paradigmId: 'kitaka_ana', wordVi: 'sự cho, bố thí', wordEn: 'giving', lessonId: 'lesson_23', pronunciation: 'daa-na', examplePali: 'Dā + ana = dāna', exampleVi: 'Cho + ana = sự cho'),
  PaliVocabModel(id: 'pv_L23_gamana', root: 'gamu', paradigmId: 'kitaka_ana', wordVi: 'sự đi', wordEn: 'going', lessonId: 'lesson_23', pronunciation: 'ga-ma-na', examplePali: 'Gamu + ana = gamana', exampleVi: 'Đi + ana = sự đi'),
  PaliVocabModel(id: 'pv_L23_sati', root: 'sara', paradigmId: 'kitaka_ti', wordVi: 'niệm, trí nhớ', wordEn: 'mindfulness', lessonId: 'lesson_23', pronunciation: 'sa-ti', examplePali: 'Sara + ti = sati', exampleVi: 'Nhớ + ti = niệm'),
  PaliVocabModel(id: 'pv_L23_muttI', root: 'muca', paradigmId: 'kitaka_ti', wordVi: 'sự giải thoát', wordEn: 'release', lessonId: 'lesson_23', pronunciation: 'mut-ti', examplePali: 'Muca + ti = mutti', exampleVi: 'Buông + ti = giải thoát'),
  PaliVocabModel(id: 'pv_L23_karaniya', root: 'kara', paradigmId: 'kitaka_aniya', wordVi: 'cần phải làm', wordEn: 'ought to be done', lessonId: 'lesson_23', pronunciation: 'ka-ra-nii-ya', examplePali: 'Kara + anīya = karaṇīya', exampleVi: 'Làm + anīya = cần làm'),
  PaliVocabModel(id: 'pv_L23_deyya', root: 'dā', paradigmId: 'kitaka_ya', wordVi: 'nên cho', wordEn: 'fit to be given', lessonId: 'lesson_23', pronunciation: 'dey-ya', examplePali: 'Dā + ya = deyya', exampleVi: 'Cho + ya = nên cho'),
  PaliVocabModel(id: 'pv_L23_brahmacari', root: 'brahma', paradigmId: 'kitaka_i', wordVi: 'người sống phạm hạnh', wordEn: 'celibate', lessonId: 'lesson_23', pronunciation: 'brah-ma-caa-rii', examplePali: 'Brahmaṃ cara + ī = brahmacārī', exampleVi: 'Sống phạm hạnh + ī'),
  PaliVocabModel(id: 'pv_L23_papakari', root: 'pāpa', paradigmId: 'kitaka_i', wordVi: 'người làm ác', wordEn: 'evil-doer', lessonId: 'lesson_23', pronunciation: 'paa-pa-kaa-rii', examplePali: 'Pāpaṃ kara + ī = pāpakārī', exampleVi: 'Làm ác + ī = người làm ác'),
  PaliVocabModel(id: 'pv_L23_bhujitukama', root: 'bhuñja', paradigmId: 'kitaka_kama', wordVi: 'muốn ăn', wordEn: 'wishing to eat', lessonId: 'lesson_23', pronunciation: 'bhun-ji-tu-kaa-ma', examplePali: 'Bhuñjituṃ + kāma = bhuñjitukāma', exampleVi: 'Muốn ăn + kāma'),
];

LessonDay getLesson23Day1() {
  return LessonDay(
    id: 'lesson23_day1',
    dayNumber: 1,
    themeId: 'theme_23_kitaka',
    titleVi: 'Ngày 1 — Lý thuyết & Từ vựng: Kitaka — 8 Hậu tố Động Danh Từ',
    phases: [_buildDay1Phase1(), _buildDay1Phase2(), _buildDay1Phase3()],
  );
}
LessonPhase _buildDay1Phase1() {
  return LessonPhase(
    id: 'lesson23_phase1',
    phaseTypeStr: 'read_listen',
    titleVi: '📘 Lý thuyết: Kitaka — 8 Hậu tố',
    contentVi: '''
MỤC TIÊU: Hiểu Kitaka (từ phái sinh từ động từ gốc + hậu tố), 8 hậu tố chính, quy tắc Vuddhi và tăng âm.

1. A — danh từ trừu tượng nam, chỉ tác nhân, dụng cụ: Bhū+a=bhava (hiện hữu), Budha+a=bodha (hiểu biết), Dusa+a=dosa (sân), Lubha+a=lobha (tham), Muha+a=moha (si), Ji+a=jaya (thắng), Khī+a=khaya (hoại)

2. A với tân ngữ đứng trước: Annaṃ+dā+a=annada (người cho đồ ăn), Dhammaṃ+dhara+a=dhammadhara (thông thạo Pháp), Dinaṃ+kara+a=dinakara (mặt trời, người làm ngày)

3. A với từ khác đứng trước (bỏ âm cuối): Pādena+pā+a=pādapa (cây, uống bằng chân), Bhujena+gamu+a=bhujaga (rắn, đi zigzag), Vane+cara+a=vanacara (người ở rừng)

4. Aka/Tu — chỉ tác nhân: Dā+aka=dāyaka (người cho), Nī+aka=nāyaka (lãnh đạo), Su+aka=sāvaka (đệ tử), Bhuja+aka=bhojaka (người ăn), Kara+aka=kāraka (người làm). Tu: Dā+tu=dātu (người cho), Ni+tu=netu (lãnh đạo)

5. Ana (trung, trừu tượng) và Ti (nữ, trừu tượng): Dā+ana=dāna (sự cho), Gamu+ana=gamana (sự đi), Sara+ti=sati (niệm), Muca+ti=mutti (giải thoát), Thu+ti=thuti (tán thán)

6. Anīya/Ya — đáng phải, nên: Kara+anīya=karaṇīya (cần làm), Dā+ya=deyya (nên cho), Ñā+ya=ñeyya (nên biết)

7. Ī/Ana — có thói quen: Brahmaṃ cara+ī=brahmacārī (sống phạm hạnh), Dhammaṃ vada+ī=dhammavādī, Pāpa kara+ī=pāpakārī (làm ác), Kudha+ana=kodhana (hay giận)

8. Tuṃ + Kāma — muốn: Bhuñjituṃ+kāma=bhuñjitukāma (muốn ăn), Gantuṃ+kāma=gantukāma (muốn đi), Kātuṃ+kāma=kattukāma (muốn làm)

Anchor: Annado balado hoti (Người cho đồ ăn cho sức mạnh)
''',
    contentEn: 'Kitaka 8 suffixes',
  );
}
LessonPhase _buildDay1Phase2() {
  return LessonPhase(
    id: 'lesson23_phase2',
    phaseTypeStr: 'mind_game',
    titleVi: '🧠 Ghép từ: 12 từ Kitaka',
    contentVi: '12 từ',
    mixedSegments: const [
      MixedSegment(text: 'bhava'), MixedSegment(text: 'hiện hữu (bhū+a)', isVietnamese: true, answer: 'bhava'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'bodha'), MixedSegment(text: 'hiểu biết', isVietnamese: true, answer: 'bodha'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'lobha'), MixedSegment(text: 'tham lam', isVietnamese: true, answer: 'lobha'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'moha'), MixedSegment(text: 'si mê', isVietnamese: true, answer: 'moha'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'jaya'), MixedSegment(text: 'chiến thắng', isVietnamese: true, answer: 'jaya'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'annada'), MixedSegment(text: 'người cho đồ ăn', isVietnamese: true, answer: 'annada'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'dāyaka'), MixedSegment(text: 'người cho', isVietnamese: true, answer: 'dāyaka'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'nāyaka'), MixedSegment(text: 'lãnh đạo', isVietnamese: true, answer: 'nāyaka'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'dāna'), MixedSegment(text: 'sự cho', isVietnamese: true, answer: 'dāna'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'sati'), MixedSegment(text: 'niệm', isVietnamese: true, answer: 'sati'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'karaṇīya'), MixedSegment(text: 'cần làm', isVietnamese: true, answer: 'karaṇīya'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'brahmacārī'), MixedSegment(text: 'sống phạm hạnh', isVietnamese: true, answer: 'brahmacārī'),
    ],
  );
}
LessonPhase _buildDay1Phase3() {
  return LessonPhase(
    id: 'lesson23_phase3',
    phaseTypeStr: 'listening_quiz',
    titleVi: '🎧 Quiz: Kitaka — 8 Hậu tố',
    contentVi: '8 câu',
    questions: const [
      QuizQuestion(id: 'lesson23_q01', questionText: 'Bhū + a = bhava. Nghĩa?', options: ['A. Hiểu biết', 'B. Hiện hữu, trở thành', 'C. Chiến thắng', 'D. Sân hận'], correctIndex: 1, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson23_q02', questionText: 'Annada = Annaṃ + dā + a. Nghĩa?', options: ['A. Người cho đồ ăn', 'B. Người cho sức mạnh', 'C. Người cho Pháp', 'D. Người làm vườn'], correctIndex: 0, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson23_q03', questionText: 'Dā + aka = dāyaka. aka chỉ?', options: ['A. Sự vật', 'B. Tác nhân (người cho)', 'C. Trạng thái', 'D. Nên làm'], correctIndex: 1, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson23_q04', questionText: 'Dā + ana = dāna. ana tạo?', options: ['A. Nam trừu tượng', 'B. Trung trừu tượng (sự cho)', 'C. Nữ trừu tượng', 'D. Đáng làm'], correctIndex: 1, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson23_q05', questionText: 'Sara + ti = sati. ti tạo?', options: ['A. Nam', 'B. Nữ trừu tượng (niệm)', 'C. Trung', 'D. Tác nhân'], correctIndex: 1, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson23_q06', questionText: 'Kara + anīya = karaṇīya. Nghĩa?', options: ['A. Đã làm', 'B. Đang làm', 'C. Cần phải làm', 'D. Người làm'], correctIndex: 2, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson23_q07', questionText: 'Brahmaṃ cara + ī = brahmacārī. Nghĩa?', options: ['A. Người sống phạm hạnh', 'B. Người cho đồ ăn', 'C. Người làm vườn', 'D. Người muốn ăn'], correctIndex: 0, practiceNumber: 'day1'),
      QuizQuestion(id: 'lesson23_q08', questionText: 'Bhuñjituṃ + kāma = bhuñjitukāma. Nghĩa?', options: ['A. Đã ăn', 'B. Đang ăn', 'C. Muốn ăn', 'D. Người ăn'], correctIndex: 2, practiceNumber: 'day1'),
    ],
    fabAnswers: const [FabAnswerItem(en: 'bhava', vi: 'hiện hữu'),],
  );
}
LessonDay getLesson23Day2() {
  return LessonDay(
    id: 'lesson23_day2',
    dayNumber: 2,
    themeId: 'theme_23_kitaka',
    titleVi: 'Ngày 2 — Luyện tập: 20 câu Exercise 23',
    phases: [_buildDay2Phase1(), _buildDay2Phase2(), _buildDay2Phase3()],
  );
}
LessonPhase _buildDay2Phase1() {
  return LessonPhase(
    id: 'lesson23_phase4',
    phaseTypeStr: 'read_listen',
    titleVi: '📖 Đọc hiểu: 6 câu Exercise 23',
    contentVi: '''
1. Kiṃ dado balado hoti...? Annado balado hoti... (Người cho đồ ăn cho sức mạnh...)
2. Maggo atthi maggiko natthi... (Có đường nhưng không có người đi đường...)
3. Dhammapīti sukhaṃ seti. (Người uống Pháp an lạc ngủ)
4. Dhammacārī sukhaṃ seti asmiṃ loke paramhi ca. (Người hành Pháp an lạc đời này và đời sau)
5. Sabbapāpassa akaraṇaṃ. (Không làm mọi điều ác)
6. Pāpānaṃ akaraṇaṃ sukhaṃ. (Không làm điều ác là an lạc)
''',
    contentEn: '6 sentences',
  );
}
LessonPhase _buildDay2Phase2() {
  return LessonPhase(
    id: 'lesson23_phase5',
    phaseTypeStr: 'mind_game',
    titleVi: '🧠 Ghép câu: 20 câu Exercise 23',
    contentVi: '20 câu',
    mixedSegments: const [
      MixedSegment(text: 'Annado balado hoti'), MixedSegment(text: 'Người cho đồ ăn cho sức mạnh', isVietnamese: true, answer: 'Annado balado hoti'),
    ],
  );
}
LessonPhase _buildDay2Phase3() {
  return LessonPhase(
    id: 'lesson23_phase6',
    phaseTypeStr: 'listening_quiz',
    titleVi: '🎧 Quiz: Dịch câu Exercise 23',
    contentVi: '10 câu',
    questions: const [
      QuizQuestion(id: 'lesson23_q09', questionText: 'Annado balado hoti. Nghĩa?', options: ['A. Người cho đồ ăn cho sức mạnh', 'B. Người cho y cho sức mạnh', 'C. Người cho Pháp cho mắt', 'D. Người cho sữa'], correctIndex: 0, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson23_q10', questionText: 'Sabbapāpassa akaraṇaṃ. Nghĩa?', options: ['A. Làm mọi điều ác', 'B. Không làm mọi điều ác', 'C. Làm một điều ác', 'D. Làm điều thiện'], correctIndex: 1, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson23_q11', questionText: 'Dhammacārī sukhaṃ seti. Nghĩa?', options: ['A. Người hành Pháp an lạc ngủ', 'B. Người không hành Pháp khổ', 'C. Người cho Pháp an lạc', 'D. Người uống Pháp'], correctIndex: 0, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson23_q12', questionText: 'bhuñjitukāma = ?', options: ['A. Đã ăn', 'B. Muốn ăn', 'C. Người ăn', 'D. Sự ăn'], correctIndex: 1, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson23_q13', questionText: 'dāyaka = ?', options: ['A. Sự cho', 'B. Người cho', 'C. Nên cho', 'D. Muốn cho'], correctIndex: 1, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson23_q14', questionText: 'sati = sara + ti. Nghĩa?', options: ['A. Niệm', 'B. Quên', 'C. Ngủ', 'D. Ăn'], correctIndex: 0, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson23_q15', questionText: 'karaṇīya = ?', options: ['A. Đã làm', 'B. Cần làm', 'C. Người làm', 'D. Sự làm'], correctIndex: 1, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson23_q16', questionText: 'brahmacārī = ?', options: ['A. Người cho', 'B. Người sống phạm hạnh', 'C. Người làm ác', 'D. Người muốn ăn'], correctIndex: 1, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson23_q17', questionText: 'pāpakārī = ?', options: ['A. Người làm lành', 'B. Người làm ác', 'C. Người cho', 'D. Người ăn'], correctIndex: 1, practiceNumber: 'day2'),
      QuizQuestion(id: 'lesson23_q18', questionText: 'Annado, vatthado, sukhado, cakkhudo là?', options: ['A. Cho đồ ăn, y, lạc, mắt', 'B. Cho sức mạnh', 'C. Cho Pháp', 'D. Cho sữa'], correctIndex: 0, practiceNumber: 'day2'),
    ],
    fabAnswers: const [FabAnswerItem(en: 'Annado', vi: 'cho đồ ăn'),],
  );
}
({LessonDay day1, LessonDay day2}) getLesson23Data() {
  return (day1: getLesson23Day1(), day2: getLesson23Day2());
}
