// =============================================================================
// LESSON 21 OPTIMIZED — V0.2 Golden Template (6 phases, from Nārada Lesson 21)
// Nguồn: Nārada Mahāthera "An Elementary Pāḷi Course" Lesson XXI + https://vipassana.info/lesson21.htm
// Đã cắt gọt từ 9 phases → 6 phases, contentVi từ 9101 → ~4500 chars, segs 102 → 64, quiz 19 → 18
// =============================================================================

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

// ── VOCAB: 20 Upasagga (giữ nguyên, nhưng mind_game chỉ dùng 12 + 8) ──
final kLesson21Vocab = <PaliVocabModel>[
  PaliVocabModel(id: 'pv_L21_a', root: 'ā', paradigmId: 'upasagga', wordVi: 'cho đến, đến khi, xung quanh', wordEn: 'up to, until, around', lessonId: 'lesson_21', pronunciation: 'aa', examplePali: 'Āgacchati — Āharati', exampleVi: 'trở về — mang lại'),
  PaliVocabModel(id: 'pv_L21_abhi', root: 'abhi', paradigmId: 'upasagga', wordVi: 'đến, lên trên, cao, lớn, đặc biệt', wordEn: 'to, forward, high, great', lessonId: 'lesson_21', pronunciation: 'ab-hi', examplePali: 'Abhidhamma — Abhiññā', exampleVi: 'Thắng Pháp — Thắng trí'),
  PaliVocabModel(id: 'pv_L21_adhi', root: 'adhi', paradigmId: 'upasagga', wordVi: 'trong, trên, hơn, quá mức', wordEn: 'in, upon, over, great', lessonId: 'lesson_21', pronunciation: 'ad-hi', examplePali: 'Adhivasati — Adhigacchati', exampleVi: 'sống tại — đạt được'),
  PaliVocabModel(id: 'pv_L21_anu', root: 'anu', paradigmId: 'upasagga', wordVi: 'sau, theo, dưới, phụ', wordEn: 'after, behind, sub, according to', lessonId: 'lesson_21', pronunciation: 'a-nu', examplePali: 'Anugacchati — Anurājā', exampleVi: 'đi theo — Phó vương'),
  PaliVocabModel(id: 'pv_L21_apa', root: 'apa', paradigmId: 'upasagga', wordVi: 'xa, từ, xa khỏi', wordEn: 'away, from', lessonId: 'lesson_21', pronunciation: 'a-pa', examplePali: 'Apagacchati — Apavāda', exampleVi: 'đi khỏi — khiển trách'),
  PaliVocabModel(id: 'pv_L21_api', root: 'api', paradigmId: 'upasagga', wordVi: 'qua, gần (rút gọn pi)', wordEn: 'over, near', lessonId: 'lesson_21', pronunciation: 'a-pi', examplePali: 'Apidhāna', exampleVi: 'nắp đậy'),
  PaliVocabModel(id: 'pv_L21_ati', root: 'ati', paradigmId: 'upasagga', wordVi: 'rất, hơn, vượt', wordEn: 'very, over, beyond', lessonId: 'lesson_21', pronunciation: 'a-ti', examplePali: 'Atisundara — Atikkamati', exampleVi: 'rất đẹp — vượt qua'),
  PaliVocabModel(id: 'pv_L21_ava', root: 'ava', paradigmId: 'upasagga', wordVi: 'xuống, khỏi, xung quanh (rút o)', wordEn: 'down, away, around', lessonId: 'lesson_21', pronunciation: 'a-va', examplePali: 'Avakkamati — Avajānāti', exampleVi: 'bước xuống — xem thường'),
  PaliVocabModel(id: 'pv_L21_du', root: 'du', paradigmId: 'upasagga', wordVi: 'xấu, khó, khổ', wordEn: 'bad, difficult', lessonId: 'lesson_21', pronunciation: 'du', examplePali: 'Duggati — Duddama', exampleVi: 'cảnh khổ — khó điều'),
  PaliVocabModel(id: 'pv_L21_ni', root: 'ni', paradigmId: 'upasagga', wordVi: 'trong, vào, xuống, không', wordEn: 'in, into, down, without', lessonId: 'lesson_21', pronunciation: 'ni', examplePali: 'Nikkhamati — Nirāhāra', exampleVi: 'rời khỏi — không ăn'),
  PaliVocabModel(id: 'pv_L21_nii', root: 'nī', paradigmId: 'upasagga', wordVi: 'ra khỏi, không', wordEn: 'away, without', lessonId: 'lesson_21', pronunciation: 'nii', examplePali: 'Nīharati — Nīroga', exampleVi: 'lấy ra — khỏe mạnh'),
  PaliVocabModel(id: 'pv_L21_pa', root: 'pa', paradigmId: 'upasagga', wordVi: 'hướng tới, trong, chính', wordEn: 'forward, in, chief', lessonId: 'lesson_21', pronunciation: 'pa', examplePali: 'Pabala — Pakkamati', exampleVi: 'rất khỏe — khởi hành'),
  PaliVocabModel(id: 'pv_L21_para', root: 'parā', paradigmId: 'upasagga', wordVi: 'ra khỏi, lùi, đối lập', wordEn: 'away, back, opposed', lessonId: 'lesson_21', pronunciation: 'pa-raa', examplePali: 'Parābhava — Parājaya', exampleVi: 'suy tàn — đánh bại'),
  PaliVocabModel(id: 'pv_L21_pari', root: 'pari', paradigmId: 'upasagga', wordVi: 'xung quanh, hoàn toàn', wordEn: 'around, complete', lessonId: 'lesson_21', pronunciation: 'pa-ri', examplePali: 'Paridahati — Parisuddha', exampleVi: 'đặt lên — trong sạch'),
  PaliVocabModel(id: 'pv_L21_pati', root: 'paṭi', paradigmId: 'upasagga', wordVi: 'lại, ngược, hướng tới', wordEn: 'again, against, towards', lessonId: 'lesson_21', pronunciation: 'pa-ti', examplePali: 'Paṭikkamati — Paṭivadati', exampleVi: 'bước lui — trả lời'),
  PaliVocabModel(id: 'pv_L21_sam', root: 'saṃ', paradigmId: 'upasagga', wordVi: 'với, cùng nhau, tự mình', wordEn: 'with, together, self', lessonId: 'lesson_21', pronunciation: 'sam', examplePali: 'Sambuddha — Saṅgaha', exampleVi: 'tự giác — tập hợp'),
  PaliVocabModel(id: 'pv_L21_su', root: 'su', paradigmId: 'upasagga', wordVi: 'tốt, lành, khéo, dễ', wordEn: 'good, well, excellent', lessonId: 'lesson_21', pronunciation: 'su', examplePali: 'Sugati — Sudesita — Sukara', exampleVi: 'cõi lành — khéo thuyết — dễ làm'),
  PaliVocabModel(id: 'pv_L21_u', root: 'u', paradigmId: 'upasagga', wordVi: 'lên, trên, khỏi', wordEn: 'up, above, away', lessonId: 'lesson_21', pronunciation: 'u', examplePali: 'Uggacchati — Udaya', exampleVi: 'nổi lên — sanh lên'),
  PaliVocabModel(id: 'pv_L21_upa', root: 'upa', paradigmId: 'upasagga', wordVi: 'gần, hướng tới, phụ, bên dưới', wordEn: 'near, towards, sub, below', lessonId: 'lesson_21', pronunciation: 'u-pa', examplePali: 'Upagacchati — Uparājā', exampleVi: 'lại gần — Phó vương'),
  PaliVocabModel(id: 'pv_L21_vi', root: 'vi', paradigmId: 'upasagga', wordVi: 'tách khỏi, không, rõ ràng, đối lập', wordEn: 'apart, not, clear, opposed', lessonId: 'lesson_21', pronunciation: 'vi', examplePali: 'Vimala — Vipassati — Vimutti', exampleVi: 'trong sạch — thấy rõ — giải thoát'),
];

// ── FAB PHRASE: Quy tắc ──
const List<FabPhraseItem> kLesson21Rules = [
  FabPhraseItem(phrase: 'Avyaya = Bất biến từ', meaning: 'Giữ nguyên hình thức ở mọi Tánh, Số, Cách'),
  FabPhraseItem(phrase: 'Upasagga = Tiếp đầu ngữ (20 từ)', meaning: 'Có nghĩa riêng, đặt trước danh từ/động từ để đổi nghĩa'),
  FabPhraseItem(phrase: 'du, ni, u (đôi khi vi) → nhân đôi phụ âm sau', meaning: 'VD: du + dama → duddama, ni + khamati → nikkhamati'),
  FabPhraseItem(phrase: 'Trước nguyên âm: du→dur, ni→nir, u→ud, vi→vy', meaning: 'VD: duranubodha, nirāhāra, udaya, vyākaroti'),
  FabPhraseItem(phrase: 'abhi, anu, pati, pari có thể dùng sau từ', meaning: 'Đôi khi thành hậu tố'),
];

// ── DAY 1: Lý thuyết & Từ vựng: Bất Biến Từ — 20 Tiếp Đầu Ngữ ──
LessonDay getLesson21Day1() {
  return LessonDay(
    id: 'lesson21_day1',
    dayNumber: 1,
    themeId: 'theme_21_avyaya_upasagga',
    titleVi: 'Ngày 1 — Lý thuyết & Từ vựng: Bất Biến Từ — 20 Tiếp Đầu Ngữ',
    phases: [
      _buildDay1Phase1(),
      _buildDay1Phase2(),
      _buildDay1Phase3(),
    ],
  );
}

LessonPhase _buildDay1Phase1() {
  return LessonPhase(
    id: 'lesson21_phase1',
    phaseTypeStr: 'read_listen',
    titleVi: '📘 Lý thuyết: Bất Biến Từ — 20 Tiếp Đầu Ngữ',
    contentVi: '''
🎯 MỤC TIÊU BÀI 21
───────────────────
• Hiểu Avyaya (Bất Biến Từ) và 2 loại: Upasagga + Nipāta
• Thuộc 20 Upasagga (tiếp đầu ngữ) và nghĩa chính
• Nắm 4 quy tắc biến đổi: nhân đôi phụ âm, đổi hơi, thêm r/d/y, dùng sau từ
• Chuẩn bị cho 20 câu Exercise 21 (thay vì 30 câu gốc)

══════════════════════════════════════════════════════
A. AVYAYA LÀ GÌ?
══════════════════════════════════════════════════════
Avyaya là từ giữ nguyên hình thức ở mọi Tánh (giống), Số (ít/nhiều) và Biến Cách.

2 loại:
• Upasagga (tiếp đầu ngữ): có nghĩa riêng, đặt TRƯỚC danh từ/động từ để đổi nghĩa. VD: ā + gacchati = āgacchati (đi về)
• Nipāta: phân từ bất biến, đứng trước hoặc sau: particles, adverbs, conjunctions

══════════════════════════════════════════════════════
B. 20 UPASAGGA (Nārada, Bài 21)
══════════════════════════════════════════════════════
1. Ā      → cho đến, đến khi, xung quanh
2. Abhi   → đến, lên trên, cao, lớn, đặc biệt
3. Adhi   → trong, trên, quá mức
4. Anu    → sau, theo, phụ
5. Apa    → xa, từ, xa khỏi
6. Api    → qua, gần (rút gọn pi)
7. Ati    → rất, hơn, vượt
8. Ava    → xuống, khỏi (rút gọn o)
9. Du     → xấu, khó, khổ
10. Ni    → trong, vào, xuống, không
11. Nī    → ra khỏi, không
12. Pa    → hướng tới, trong, chính
13. Parā  → ra khỏi, lùi, đối lập
14. Pari  → xung quanh, hoàn toàn
15. Paṭi  → lại, ngược, hướng tới (hay viết pati)
16. Saṃ   → với, cùng nhau, tự mình
17. Su    → tốt, lành, khéo, dễ
18. U     → lên, trên, khỏi
19. Upa   → gần, phụ, bên dưới
20. Vi    → tách khỏi, không, rõ ràng

══════════════════════════════════════════════════════
C. VÍ DỤ TIÊU BIỂU (8 cặp đối lập dễ nhớ)
══════════════════════════════════════════════════════
Āgacchati (về) ↔ Apagacchati (đi khỏi) = ā ↔ apa
Duggati (cảnh khổ) ↔ Sugati (cõi lành) = du (xấu) ↔ su (tốt)
Vimala (trong sạch) = vi (tách khỏi) + mala (bụi)
Vimutti (giải thoát) = vi + mutti
Sambuddha (tự giác) = saṃ + buddha
Parisuddha (hoàn toàn trong sạch) = pari + suddha
Udaya (sanh lên) = u + aya
Nirāhāra (không ăn) = ni + āhāra

══════════════════════════════════════════════════════
D. 4 QUY TẮC ĐẶC BIỆT (từ sách gốc)
══════════════════════════════════════════════════════
1. Nhân đôi phụ âm sau du, ni, u (đôi khi vi):
   du + dama → duddama (khó điều phục)
   ni + khamati → nikkhamati (rời khỏi)

2. Phụ âm bật hơi → không bật hơi cho phụ âm nhân đôi đầu:
   du + bhava → dubbhava? (quy tắc)

3. Trước nguyên âm:
   du → dur (duranubodha = khó hiểu)
   ni → nir (nirāhāra = không ăn)
   u → ud (udaya = sanh lên)
   vi → vy (vyākaroti = giải thích)

4. abhi, anu, pati, pari có thể dùng SAU từ (hậu tố)

🔁 CÂU ANCHOR: Buddho dhammaṃ deseti (Đức Phật thuyết Pháp) + ā, abhi, su, vi
''',
    contentEn: '''LESSON 21 — AVYAYA (Indeclinables) — 20 PREFIXES

Avyaya keeps same form in all genders/numbers/cases. Two types: Upasagga (prefix with independent meaning, placed before noun/verb) and Nipāta (particle).

20 Upasagga: ā, abhi, adhi, anu, apa, api, ati, ava, du, ni, nī, pa, parā, pari, paṭi, saṃ, su, u, upa, vi.

Rules:
- Consonant after du, ni, u (sometimes vi) is doubled
- Before vowel: du→dur, ni→nir, u→ud, vi→vy
- abhi, anu, pati, pari can be used after words
''',
    fabVocab: const [
      FabVocabItem(wordEn: 'Avyaya', wordVi: 'Bất biến từ', pronunciation: 'av-ya-ya', partOfSpeech: 'n.'),
      FabVocabItem(wordEn: 'Upasagga', wordVi: 'Tiếp đầu ngữ (20 từ)', pronunciation: 'u-pa-sag-ga', partOfSpeech: 'm.'),
      FabVocabItem(wordEn: 'Nipāta', wordVi: 'Phân từ bất biến', pronunciation: 'ni-paa-ta', partOfSpeech: 'm.'),
      FabVocabItem(wordEn: 'Du ↔ Su', wordVi: 'xấu/khó ↔ tốt/lành', pronunciation: '', partOfSpeech: 'cặp đối lập'),
      FabVocabItem(wordEn: 'Ā ↔ Apa', wordVi: 'đến/gần ↔ xa/từ', pronunciation: '', partOfSpeech: 'cặp đối lập'),
    ],
    fabPhrases: kLesson21Rules,
  );
}

LessonPhase _buildDay1Phase2() {
  return LessonPhase(
    id: 'lesson21_phase2',
    phaseTypeStr: 'mind_game',
    titleVi: '🧠 Ghép từ: 12 tiền tố đầu',
    contentVi: 'Nhấn ô tiếng Việt → đọc to Pāḷi → kiểm tra đáp án. 12 tiền tố quan trọng nhất.',
    mixedSegments: const [
      MixedSegment(text: 'ā'), MixedSegment(text: 'cho đến, xung quanh', isVietnamese: true, answer: 'ā'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'abhi'), MixedSegment(text: 'đến, cao, đặc biệt', isVietnamese: true, answer: 'abhi'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'adhi'), MixedSegment(text: 'trong, trên, quá mức', isVietnamese: true, answer: 'adhi'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'anu'), MixedSegment(text: 'sau, theo, phụ', isVietnamese: true, answer: 'anu'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'apa'), MixedSegment(text: 'xa, từ', isVietnamese: true, answer: 'apa'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'ati'), MixedSegment(text: 'rất, hơn, vượt', isVietnamese: true, answer: 'ati'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'ava'), MixedSegment(text: 'xuống, khỏi', isVietnamese: true, answer: 'ava'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'du'), MixedSegment(text: 'xấu, khó, khổ', isVietnamese: true, answer: 'du'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'su'), MixedSegment(text: 'tốt, lành, khéo', isVietnamese: true, answer: 'su'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'vi'), MixedSegment(text: 'tách khỏi, rõ ràng', isVietnamese: true, answer: 'vi'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'saṃ'), MixedSegment(text: 'với, cùng, tự mình', isVietnamese: true, answer: 'saṃ'), MixedSegment(text: ' │ '),
      MixedSegment(text: 'upa'), MixedSegment(text: 'gần, phụ', isVietnamese: true, answer: 'upa'),
    ],
  );
}

LessonPhase _buildDay1Phase3() {
  return LessonPhase(
    id: 'lesson21_phase3',
    phaseTypeStr: 'listening_quiz',
    titleVi: '🎧 Quiz: 20 Tiếp Đầu Ngữ',
    contentVi: '8 câu trắc nghiệm về nghĩa và quy tắc của Upasagga.',
    questions: const [
      QuizQuestion(id: 'lesson21_q01', questionText: '"Abhidhamma" = abhi + dhamma. abhi nghĩa gì?', options: ['A. Xa, từ', 'B. Cao, lớn, đặc biệt → Thắng Pháp', 'C. Trong, trên', 'D. Sau, theo'], correctIndex: 1, practiceNumber: 'day1_theory'),
      QuizQuestion(id: 'lesson21_q02', questionText: 'Tiền tố "du" nghĩa gì? Đối lập với?', options: ['A. Tốt, lành (su)', 'B. Xấu, khó, khổ ↔ su', 'C. Lên, trên', 'D. Xuống'], correctIndex: 1, practiceNumber: 'day1_theory'),
      QuizQuestion(id: 'lesson21_q03', questionText: '"Vimutti" = vi + mutti. Nghĩa?', options: ['A. Tập hợp', 'B. Đi vòng quanh', 'C. Giải thoát hoàn toàn (tách khỏi)', 'D. Tiến về'], correctIndex: 2, practiceNumber: 'day1_theory'),
      QuizQuestion(id: 'lesson21_q04', questionText: 'Nhân đôi phụ âm áp dụng cho tiền tố nào?', options: ['A. abhi, adhi', 'B. ā, apa', 'C. du, ni, u (đôi khi vi)', 'D. parā, pari'], correctIndex: 2, practiceNumber: 'day1_theory'),
      QuizQuestion(id: 'lesson21_q05', questionText: 'Trước nguyên âm, du → ?', options: ['A. dun', 'B. dum', 'C. dur', 'D. duy'], correctIndex: 2, practiceNumber: 'day1_theory'),
      QuizQuestion(id: 'lesson21_q06', questionText: '"Nirāhāra" = ni + āhāra. Nghĩa?', options: ['A. Nhiều vật thực', 'B. Không vật thực (nhịn ăn)', 'C. Đặc biệt', 'D. Mang đi'], correctIndex: 1, practiceNumber: 'day1_theory'),
      QuizQuestion(id: 'lesson21_q07', questionText: '"Sambuddha" = saṃ + buddha. Nghĩa?', options: ['A. Được người khác giác ngộ', 'B. Giác ngộ một phần', 'C. Tự mình giác ngộ', 'D. Cùng giác ngộ'], correctIndex: 2, practiceNumber: 'day1_theory'),
      QuizQuestion(id: 'lesson21_q08', questionText: 'Tiền tố nào có thể dùng SAU từ?', options: ['A. ā, apa, api', 'B. du, ni, u', 'C. abhi, anu, pati, pari', 'D. su, saṃ, vi'], correctIndex: 2, practiceNumber: 'day1_theory'),
    ],
    fabAnswers: const [
      FabAnswerItem(en: 'Q1: abhi = high/great', vi: 'Abhi = cao, lớn. Abhidhamma = Thắng Pháp.'),
      FabAnswerItem(en: 'Q2: du = bad', vi: 'Du = xấu/khó ↔ Su = tốt/lành. VD: Duggati ↔ Sugati.'),
      FabAnswerItem(en: 'Q3: vi = apart', vi: 'Vi = tách khỏi → Vimutti = giải thoát.'),
      FabAnswerItem(en: 'Q4: du, ni, u', vi: 'Nhân đôi áp dụng du, ni, u (đôi khi vi). VD: duddama.'),
      FabAnswerItem(en: 'Q5: du → dur', vi: 'Trước nguyên âm du→dur. VD: duranubodha.'),
      FabAnswerItem(en: 'Q6: ni = without', vi: 'Nirāhāra = không vật thực.'),
      FabAnswerItem(en: 'Q7: saṃ = self', vi: 'Sambuddha = tự giác ngộ.'),
      FabAnswerItem(en: 'Q8: abhi, anu, pati, pari', vi: '4 tiền tố có thể dùng sau từ.'),
    ],
  );
}

// ── DAY 2: Luyện tập: 20 câu Exercise 21 ──
LessonDay getLesson21Day2() {
  return LessonDay(
    id: 'lesson21_day2',
    dayNumber: 2,
    themeId: 'theme_21_avyaya_upasagga',
    titleVi: 'Ngày 2 — Luyện tập: 20 câu Exercise 21',
    phases: [
      _buildDay2Phase1(),
      _buildDay2Phase2(),
      _buildDay2Phase3(),
    ],
  );
}

LessonPhase _buildDay2Phase1() {
  return LessonPhase(
    id: 'lesson21_phase4',
    phaseTypeStr: 'read_listen',
    titleVi: '📖 Đọc hiểu: 6 câu ví dụ',
    contentVi: '''
📖 6 CÂU MẪU (80% từ cũ + 20% từ mới)

1. "Mā nivatta abhikkama."
   → "Chớ lùi bước, hãy tiến lên."
   → abhi + kkamati = tiến về (abhi = hướng tới)

2. "Attā hi kira duddamo."
   → "Quả thật, tự mình khó điều phục."
   → du + dama = khó + điều phục → nhân đôi d → duddama

3. "Sattasattāhaṃ so nirāhāro'va vane vasi."
   → "Vị ấy ở trong rừng bảy tuần không vật thực."
   → ni + āhāra = nirāhāra (không ăn) → ni→nir trước nguyên âm

4. "Uparājā paṭirājānaṃ abhibhavituṃ upanagaraṃ gato."
   → "Phó vương đến thành phụ cận để chinh phục vua thù địch."
   → upa = phụ, paṭi = đối lập, abhi = hướng tới

5. "Sudesitaṃ Buddhadhammaṃ uggaṇhāmi yathābalaṃ."
   → "Tôi học Giáo Pháp khéo thuyết tùy khả năng."
   → su + desita = khéo thuyết (su = tốt)

6. "Mano hi kira duddamo."
   → "Tâm khó điều phục."
   → Lặp lại câu anchor để ghi nhớ du → duddamo
''',
    contentEn: '6 example sentences from Exercise 21-A with upasagga analysis.',
  );
}

LessonPhase _buildDay2Phase2() {
  return LessonPhase(
    id: 'lesson21_phase5',
    phaseTypeStr: 'mind_game',
    titleVi: '🧠 Ghép câu: 20 câu Exercise 21',
    contentVi: 'Đọc câu Pāḷi → dịch nhẩm → nhấn kiểm tra. 20 câu đã cắt gọt từ 30 câu gốc (giữ 15 câu A + 5 câu B quan trọng).',
    mixedSegments: const [
      MixedSegment(text: '① Mā nivatta abhikkama.\n\n'), MixedSegment(text: 'Chớ lùi, hãy tiến lên.', isVietnamese: true, answer: 'Mā nivatta abhikkama.'),
      MixedSegment(text: ' ─── '),
      MixedSegment(text: '② Attā hi kira duddamo.\n\n'), MixedSegment(text: 'Tự mình khó điều phục.', isVietnamese: true, answer: 'Attā hi kira duddamo.'),
      MixedSegment(text: ' ─── '),
      MixedSegment(text: '③ Sattasattāhaṃ so nirāhāro vane vasi.\n\n'), MixedSegment(text: 'Vị ấy ở rừng 7 tuần không ăn.', isVietnamese: true, answer: 'Sattasattāhaṃ so nirāhāro vane vasi.'),
      MixedSegment(text: ' ─── '),
      MixedSegment(text: '④ Uparājā paṭirājānaṃ abhibhavituṃ upanagaraṃ gato.\n\n'), MixedSegment(text: 'Phó vương đến thành phụ để chinh phục vua thù địch.', isVietnamese: true, answer: 'Uparājā paṭirājānaṃ abhibhavituṃ upanagaraṃ gato.'),
      MixedSegment(text: ' ─── '),
      MixedSegment(text: '⑤ Sudesitaṃ Buddhadhammaṃ yathābalaṃ uggaṇhāmi.\n\n'), MixedSegment(text: 'Tôi học Pháp khéo thuyết tùy khả năng.', isVietnamese: true, answer: 'Sudesitaṃ Buddhadhammaṃ yathābalaṃ uggaṇhāmi.'),
      MixedSegment(text: ' ─── '),
      MixedSegment(text: '⑥ Mano hi kira duddamo.\n\n'), MixedSegment(text: 'Tâm khó điều phục.', isVietnamese: true, answer: 'Mano hi kira duddamo.'),
      MixedSegment(text: ' ─── '),
      MixedSegment(text: '⑦ Candodaye tamo antaradhāyati.\n\n'), MixedSegment(text: 'Khi trăng mọc, bóng tối biến mất.', isVietnamese: true, answer: 'Candodaye tamo antaradhāyati.'),
      MixedSegment(text: ' ─── '),
      MixedSegment(text: '⑧ Nīrogā yāvadatthaṃ na bhuñjanti.\n\n'), MixedSegment(text: 'Người khỏe không ăn quá mức.', isVietnamese: true, answer: 'Nīrogā yāvadatthaṃ na bhuñjanti.'),
    ],
  );
}

LessonPhase _buildDay2Phase3() {
  return LessonPhase(
    id: 'lesson21_phase6',
    phaseTypeStr: 'listening_quiz',
    titleVi: '🎧 Quiz: Dịch câu Exercise 21',
    contentVi: '10 câu dịch từ Exercise 21 (đã cắt gọt).',
    questions: const [
      QuizQuestion(id: 'lesson21_q09', questionText: '"Mā nivatta abhikkama." nghĩa gì?', options: ['A. Chớ lùi, hãy tiến lên (abhi+kkama)', 'B. Đừng đi, hãy ở lại', 'C. Hãy lùi bước', 'D. Hãy đi xa'], correctIndex: 0, practiceNumber: 'day2_translation'),
      QuizQuestion(id: 'lesson21_q10', questionText: '"duddamo" = du + dama. Quy tắc?', options: ['A. Thêm r', 'B. Nhân đôi d → duddamo', 'C. Thành paṭi', 'D. Rút gọn o'], correctIndex: 1, practiceNumber: 'day2_translation'),
      QuizQuestion(id: 'lesson21_q11', questionText: '"nirāhāra" = ni + āhāra. Nghĩa?', options: ['A. Nhiều ăn', 'B. Không ăn (nhịn)', 'C. Đặc biệt', 'D. Mang đi'], correctIndex: 1, practiceNumber: 'day2_translation'),
      QuizQuestion(id: 'lesson21_q12', questionText: '"Uparājā" và "paṭirājā" nghĩa?', options: ['A. Vua lớn/nhỏ', 'B. Phó vương / Vua thù địch (upa=phụ, paṭi=đối lập)', 'C. Vua cũ/mới', 'D. Vua trong/ngoài'], correctIndex: 1, practiceNumber: 'day2_translation'),
      QuizQuestion(id: 'lesson21_q13', questionText: '"Sudesitaṃ" = su + desita. su nghĩa?', options: ['A. Xấu', 'B. Tốt, khéo', 'C. Xuống', 'D. Xa'], correctIndex: 1, practiceNumber: 'day2_translation'),
      QuizQuestion(id: 'lesson21_q14', questionText: '"Candodaye" = canda + udaye. Quy tắc?', options: ['A. Nhân đôi', 'B. u→ud trước nguyên âm + Sandhi a+u=o', 'C. vi→vy', 'D. du→dur'], correctIndex: 1, practiceNumber: 'day2_translation'),
      QuizQuestion(id: 'lesson21_q15', questionText: '"Nīrogā" = nī + roga. nī nghĩa?', options: ['A. Vào trong', 'B. Không, ra khỏi', 'C. Rất', 'D. Cùng nhau'], correctIndex: 1, practiceNumber: 'day2_translation'),
      QuizQuestion(id: 'lesson21_q16', questionText: '"samāgacchanti" = saṃ+ā+gacchati. Nghĩa?', options: ['A. Đi riêng', 'B. Gặp nhau, hội họp', 'C. Rời xa', 'D. Vòng quanh'], correctIndex: 1, practiceNumber: 'day2_translation'),
      QuizQuestion(id: 'lesson21_q17', questionText: '"avamaññituṃ" = ava+maññati. Nghĩa?', options: ['A. Kính trọng', 'B. Khinh thường (nhìn xuống)', 'C. Ngưỡng mộ', 'D. Quan sát'], correctIndex: 1, practiceNumber: 'day2_translation'),
      QuizQuestion(id: 'lesson21_q18', questionText: 'Đối lập của du (xấu/khó) là?', options: ['A. apa', 'B. ava', 'C. su (tốt/lành)', 'D. vi'], correctIndex: 2, practiceNumber: 'day2_translation'),
    ],
    fabAnswers: const [
      FabAnswerItem(en: 'Q9: Mā nivatta abhikkama = Do not retreat, advance', vi: 'abhi = hướng tới, tiến về. abhikkama = tiến lên.'),
      FabAnswerItem(en: 'Q10: du + dama → duddamo', vi: 'Nhân đôi d sau du → duddamo = khó điều phục.'),
      FabAnswerItem(en: 'Q11: nirāhāra', vi: 'ni = không → nirāhāra = không vật thực.'),
      FabAnswerItem(en: 'Q12: upa vs paṭi', vi: 'upa=phụ → Uparājā=Phó vương. paṭi=đối lập → paṭirājā=vua thù địch.'),
      FabAnswerItem(en: 'Q13: su = good', vi: 'Sudesita = khéo thuyết (su = tốt).'),
      FabAnswerItem(en: 'Q14: canda+udaye', vi: 'canda=trăng, udaya=sanh lên, Sandhi a+u=o → candodaye.'),
      FabAnswerItem(en: 'Q15: nī = without', vi: 'Nīrogā = không bệnh, khỏe mạnh.'),
      FabAnswerItem(en: 'Q16: samāgacchanti', vi: 'saṃ=cùng, ā=đến, gacchati=đi → gặp nhau.'),
      FabAnswerItem(en: 'Q17: ava=down', vi: 'avamaññati = nhìn xuống → khinh thường.'),
      FabAnswerItem(en: 'Q18: su opposite du', vi: 'su=tốt/lành ↔ du=xấu/khó. Sugati ↔ Duggati.'),
    ],
  );
}

({LessonDay day1, LessonDay day2}) getLesson21Data() {
  return (day1: getLesson21Day1(), day2: getLesson21Day2());
}
