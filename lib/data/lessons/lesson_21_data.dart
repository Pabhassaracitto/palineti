// =============================================================================
// LESSON 21 DATA
// Bài học 21: Bất Biến Từ (Avyaya) — Tiếp Đầu Ngữ (Upasagga)
// Nguồn: Nārada Mahāthera, "An Elementary Pāḷi Course", Lesson 21
// =============================================================================

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

// =============================================================================
// PHẦN 1: DANH SÁCH TỪ VỰNG MỚI (PaliVocabModel)
// 20 Tiền tố (Upasagga) — trình bày dạng vocab để flashcard
// =============================================================================

final kLesson21Vocab = <PaliVocabModel>[
  PaliVocabModel(
    id: 'pv_L21_a',
    root: 'ā',
    paradigmId: 'upasagga',
    wordVi: 'cho đến, đến khi, như là, xung quanh, ngược lại',
    wordEn: 'up to, until, as far as, around, reversing to',
    lessonId: 'lesson_21',
    pronunciation: 'aa',
    examplePali: 'Āpabbata — Āgacchati — Āharati',
    exampleVi: 'xa như núi — trở về — mang lại',
  ),
  PaliVocabModel(
    id: 'pv_L21_abhi',
    root: 'abhi',
    paradigmId: 'upasagga',
    wordVi: 'đến, lên trên, tiến về, cao, lớn, đặc biệt, quá',
    wordEn: 'to, unto, forward, towards, high, great, special, over',
    lessonId: 'lesson_21',
    pronunciation: 'ab-hi',
    examplePali: 'Abhidhamma — Abhiññā — Abhijānāti',
    exampleVi: 'Thắng Pháp — Thắng trí — Liễu thông',
  ),
  PaliVocabModel(
    id: 'pv_L21_adhi',
    root: 'adhi',
    paradigmId: 'upasagga',
    wordVi: 'trong, trên, bên trên, hơn, lớn, vĩ đại, quá mức',
    wordEn: 'in, upon, above, over, great, excessive',
    lessonId: 'lesson_21',
    pronunciation: 'ad-hi',
    examplePali: 'Adhivasati — Adhigacchati — Adhisīla',
    exampleVi: 'sống tại — đi vào, đạt được — thượng giới',
  ),
  PaliVocabModel(
    id: 'pv_L21_anu',
    root: 'anu',
    paradigmId: 'upasagga',
    wordVi: 'sau, như, phía sau, cùng, dưới, phụ, theo',
    wordEn: 'after, like, behind, along, under, sub, according to',
    lessonId: 'lesson_21',
    pronunciation: 'a-nu',
    examplePali: 'Anugacchati — Anurājā — Anulomato',
    exampleVi: 'đi theo — Phó vương — phù hợp với',
  ),
  PaliVocabModel(
    id: 'pv_L21_apa',
    root: 'apa',
    paradigmId: 'upasagga',
    wordVi: 'xa, từ, xa khỏi',
    wordEn: 'away, from, away from',
    lessonId: 'lesson_21',
    pronunciation: 'a-pa',
    examplePali: 'Apagacchati — Apavāda — Apasālāya',
    exampleVi: 'đi khỏi — khiển trách — từ giảng đường',
  ),
  PaliVocabModel(
    id: 'pv_L21_api',
    root: 'api',
    paradigmId: 'upasagga',
    wordVi: 'qua, gần với (đôi khi rút gọn "pi")',
    wordEn: 'over, near to (sometimes contracted to "pi")',
    lessonId: 'lesson_21',
    pronunciation: 'a-pi',
    examplePali: 'Apidhāna, pidhāna',
    exampleVi: 'đóng lại, nắp đậy, vung, mũ',
  ),
  PaliVocabModel(
    id: 'pv_L21_ati',
    root: 'ati',
    paradigmId: 'upasagga',
    wordVi: 'rất, hơn, vượt trên, quá mức',
    wordEn: 'very, over, beyond, excessive',
    lessonId: 'lesson_21',
    pronunciation: 'a-ti',
    examplePali: 'Atisundara — Atikkamati — Atigacchati',
    exampleVi: 'rất đẹp — đi qua, vi phạm — vượt qua',
  ),
  PaliVocabModel(
    id: 'pv_L21_ava',
    root: 'ava',
    paradigmId: 'upasagga',
    wordVi: 'xuống, rơi khỏi, cách xa, xung quanh (thường rút gọn "o")',
    wordEn: 'down, away, off, around (often contracted to "o")',
    lessonId: 'lesson_21',
    pronunciation: 'a-va',
    examplePali: 'Avakkamati — Avaharati — Avajānāti',
    exampleVi: 'bước xuống — lấy đi — xem thường',
  ),
  PaliVocabModel(
    id: 'pv_L21_du',
    root: 'du',
    paradigmId: 'upasagga',
    wordVi: 'xấu, khó, khổ',
    wordEn: 'bad, difficult',
    lessonId: 'lesson_21',
    pronunciation: 'du',
    examplePali: 'Duggati — Duddama — Duranubodha',
    exampleVi: 'cảnh khổ — khó điều phục — khó hiểu',
  ),
  PaliVocabModel(
    id: 'pv_L21_ni',
    root: 'ni',
    paradigmId: 'upasagga',
    wordVi: 'khỏi, trong, vào trong, xuống, thoát khỏi, không, lớn',
    wordEn: 'away, in, into, down, free from, downwards, without, great',
    lessonId: 'lesson_21',
    pronunciation: 'ni',
    examplePali: 'Nikkhamati — Nirāhāra — Nivattati',
    exampleVi: 'rời khỏi — không vật thực — chấm dứt',
  ),
  PaliVocabModel(
    id: 'pv_L21_ni2',
    root: 'nī',
    paradigmId: 'upasagga',
    wordVi: 'khỏi, không, ra bên ngoài, ra khỏi',
    wordEn: 'away, without, outwards, out of',
    lessonId: 'lesson_21',
    pronunciation: 'nii',
    examplePali: 'Nīharati — Nīroga — Nīrasa',
    exampleVi: 'lấy đi, rút ra — khỏe mạnh — khô khan, vô vị',
  ),
  PaliVocabModel(
    id: 'pv_L21_pa',
    root: 'pa',
    paradigmId: 'upasagga',
    wordVi: 'hướng về, hướng tới, trong, chính (trưởng)',
    wordEn: 'forward, forth, in, chief',
    lessonId: 'lesson_21',
    pronunciation: 'pa',
    examplePali: 'Pabala — Payāti — Pakkamati',
    exampleVi: 'rất khỏe — đi tới — khởi hành',
  ),
  PaliVocabModel(
    id: 'pv_L21_para',
    root: 'parā',
    paradigmId: 'upasagga',
    wordVi: 'ra khỏi, một bên, lùi lại, đối lập',
    wordEn: 'away, aside, back, opposed to',
    lessonId: 'lesson_21',
    pronunciation: 'pa-raa',
    examplePali: 'Parābhava — Parājaya — Parakkamati',
    exampleVi: 'suy tàn — đánh bại — đẩy sức mạnh về, nỗ lực',
  ),
  PaliVocabModel(
    id: 'pv_L21_pari',
    root: 'pari',
    paradigmId: 'upasagga',
    wordVi: 'xung quanh, về, hoàn toàn',
    wordEn: 'around, about, complete',
    lessonId: 'lesson_21',
    pronunciation: 'pa-ri',
    examplePali: 'Paridahati — Parikkhipati — Parisuddha',
    exampleVi: 'đặt lên — bao vây — hoàn toàn trong sạch',
  ),
  PaliVocabModel(
    id: 'pv_L21_pati',
    root: 'pati (paṭi)',
    paradigmId: 'upasagga',
    wordVi: 'lại nữa, ngược lại, hướng tới, trở lui',
    wordEn: 'again, against, towards, back (frequently changed to "paṭi")',
    lessonId: 'lesson_21',
    pronunciation: 'pa-ti / pa-ti',
    examplePali: 'Paṭikkamati — Paṭivadati — Paṭilomaṃ',
    exampleVi: 'bước lui — trả lời — hướng ngược lại',
  ),
  PaliVocabModel(
    id: 'pv_L21_sam',
    root: 'saṃ',
    paradigmId: 'upasagga',
    wordVi: 'với, cùng nhau, tự mình',
    wordEn: 'with, together, self',
    lessonId: 'lesson_21',
    pronunciation: 'sam',
    examplePali: 'Sambuddha — Samāgacchati — Saṅgaha',
    exampleVi: 'tự giác — gặp nhau, hội họp — thâu thập, tập hợp',
  ),
  PaliVocabModel(
    id: 'pv_L21_su',
    root: 'su',
    paradigmId: 'upasagga',
    wordVi: 'tốt, lành, khéo, diệu, dễ, lương, xuất sắc',
    wordEn: 'good, well, thoroughly, excellent',
    lessonId: 'lesson_21',
    pronunciation: 'su',
    examplePali: 'Sugati — Sujana — Sudesita — Sukara',
    exampleVi: 'cõi lành — người có đức — khéo thuyết — dễ làm',
  ),
  PaliVocabModel(
    id: 'pv_L21_u',
    root: 'u',
    paradigmId: 'upasagga',
    wordVi: 'lên, trên, khỏi',
    wordEn: 'up, above, away',
    lessonId: 'lesson_21',
    pronunciation: 'u',
    examplePali: 'Uggacchati — Ukkhipati — Uttārati — Udaya',
    exampleVi: 'nổi lên — nâng lên — đi lên — sanh lên, tăng lên',
  ),
  PaliVocabModel(
    id: 'pv_L21_upa',
    root: 'upa',
    paradigmId: 'upasagga',
    wordVi: 'gần, hướng tới, tiếp theo, bên cạnh, phụ, bên dưới, ít hơn, mạnh mẽ',
    wordEn: 'near, towards, next, by the side of, sub, below, less, strong',
    lessonId: 'lesson_21',
    pronunciation: 'u-pa',
    examplePali: 'Upagacchati — Uparājā — Upādāna',
    exampleVi: 'lại gần — Phó vương — sự dín mắc, thủ',
  ),
  PaliVocabModel(
    id: 'pv_L21_vi',
    root: 'vi',
    paradigmId: 'upasagga',
    wordVi: 'tách khỏi, tách biệt, không, tự do, đặc biệt, rõ ràng, khác biệt, đối lập',
    wordEn: 'apart, separate, not, free from, special, around, clear, different, opposed to',
    lessonId: 'lesson_21',
    pronunciation: 'vi',
    examplePali: 'Vimala — Vipassati — Vimutti — Vicarati',
    exampleVi: 'trong sạch — nhìn thấy rõ — giải thoát — du hành',
  ),
];

// =============================================================================
// PHẦN 2: HELPER DATA — FabPhraseItem cho các quy tắc đặc biệt
// =============================================================================

const List<FabPhraseItem> kLesson21Rules = [
  FabPhraseItem(
    phrase: 'Upasagga (Tiếp đầu ngữ)',
    meaning: 'Từ bất biến có nghĩa riêng, đặt trước danh từ/động từ để bổ nghĩa',
  ),
  FabPhraseItem(
    phrase: 'Nipāta (Phân từ bất biến)',
    meaning: 'Từ bất biến đứng trước hoặc sau danh từ: particles, adverbs, conjunctions, interjections',
  ),
  FabPhraseItem(
    phrase: 'Nhân đôi phụ âm sau du, ni, u, vi',
    meaning: 'Phụ âm theo sau du, ni, u (đôi khi vi) được nhân đôi. VD: du + d + ama = duddama',
  ),
  FabPhraseItem(
    phrase: 'Phụ âm bật hơi → không bật hơi',
    meaning: 'Nếu phụ âm có hơi ra thì phụ âm đầu đổi lại cùng phụ âm không bật hơi',
  ),
  FabPhraseItem(
    phrase: 'Trước nguyên âm: du→dur, ni→nir, u→ud, vi→vy',
    meaning: '"r" thêm cho du và ni, "d" cho u, "y" cho vi. VD: duranubodha, nīroga',
  ),
  FabPhraseItem(
    phrase: 'abhi, anu, pati, pari → có thể dùng SAU từ',
    meaning: '4 tiền tố này thỉnh thoảng trở thành tiếp vĩ ngữ (hậu tố)',
  ),
];

// =============================================================================
// PHẦN 3: DAY 1 — LÝ THUYẾT 20 UPASAGGA
// =============================================================================

LessonDay getLesson21Day1() {
  return LessonDay(
    id: 'lesson21_day1',
    dayNumber: 1,
    themeId: 'theme_21_avyaya_upasagga',
    titleVi: 'Ngày 1: Bất Biến Từ — 20 Tiếp Đầu Ngữ (Upasagga)',
    phases: [
      // ─────────────────────────────────────────────────────────────────
      // PHASE 1: READ & LISTEN — Lý thuyết đầy đủ
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson21_phase1',
        phaseTypeStr: 'read_listen',
        titleVi: '📘 Bất Biến Từ (Avyaya) — 20 Tiếp Đầu Ngữ (Upasagga)',
        contentVi: '''
🎯 MỤC TIÊU BÀI 21
───────────────────
• Hiểu khái niệm Bất Biến Từ (Avyaya) và 2 loại: Upasagga + Nipāta
• Học thuộc 20 Tiếp Đầu Ngữ (Upasagga) trong tiếng Pāḷi
• Nắm các quy tắc nhân đôi phụ âm, biến đổi trước nguyên âm
• Chuẩn bị cho 30 câu Exercise 21

══════════════════════════════════════════════════════
A. BẤT BIẾN TỪ (AVYAYA)
══════════════════════════════════════════════════════

Avyaya (Bất Biến Từ) là hình thức giữ nguyên trong các Tánh, Số và Biến Cách,
không chịu bất kỳ sự thay đổi nào.

Có HAI loại Avyaya:

┌──────────────────┬───────────────────────────────────────────────┐
│ Loại             │ Định nghĩa                                    │
├──────────────────┼───────────────────────────────────────────────┤
│ Upasagga         │ Tiếp đầu ngữ — có nghĩa riêng, đặt trước     │
│ (Tiền tố)        │ danh từ/động từ để bổ nghĩa                 │
├──────────────────┼───────────────────────────────────────────────┤
│ Nipāta           │ Phân từ bất biến — đứng trước hoặc sau       │
│                  │ danh từ (particles, adverbs, conjunctions)    │
└──────────────────┴───────────────────────────────────────────────┘

══════════════════════════════════════════════════════
B. 20 TIẾP ĐẦU NGỮ (UPASAGGA)
══════════════════════════════════════════════════════

  1. Ā      → cho đến, đến khi, xung quanh, ngược lại
  2. Abhi   → đến, lên trên, tiến về, cao, lớn, đặc biệt
  3. Adhi   → trong, trên, bên trên, hơn, lớn, quá mức
  4. Anu    → sau, như, phía sau, cùng, dưới, phụ, theo
  5. Apa    → xa, từ, xa khỏi
  6. Api    → qua, gần với (đôi khi rút gọn "pi")
  7. Ati    → rất, hơn, vượt trên, quá mức
  8. Ava    → xuống, rơi khỏi, cách xa (thường rút gọn "o")
  9. Du     → xấu, khó, khổ
 10. Ni     → khỏi, trong, vào trong, xuống, không, lớn
 11. Nī     → khỏi, không, ra bên ngoài, ra khỏi
 12. Pa     → hướng về, hướng tới, trong, chính (trưởng)
 13. Parā   → ra khỏi, một bên, lùi lại, đối lập
 14. Pari   → xung quanh, về, hoàn toàn
 15. Pati   → lại nữa, ngược lại, hướng tới, trở lui
     (paṭi)    (thường biến sang "paṭi")
 16. Saṃ   → với, cùng nhau, tự mình
 17. Su     → tốt, lành, khéo, diệu, dễ, xuất sắc
 18. U      → lên, trên, khỏi
 19. Upa    → gần, hướng tới, tiếp theo, bên cạnh, phụ
 20. Vi     → tách khỏi, không, tự do, rõ ràng, đối lập

══════════════════════════════════════════════════════
C. VÍ DỤ TIÊU BIỂU CHO MỖI TIỀN TỐ
══════════════════════════════════════════════════════

① Ā + gacchati = Āgacchati (trở về)
   Ā + harati   = Āharati (mang lại)

② Abhi + dhamma  = Abhidhamma (Thắng Pháp)
   Abhi + ñā     = Abhiññā (Thắng trí)
   Abhi + jānāti = Abhijānāti (liễu thông)

③ Adhi + vasati   = Adhivasati (sống tại)
   Adhi + gacchati = Adhigacchati (đi vào, đạt được)

④ Anu + gacchati = Anugacchati (đi theo)
   Anu + rājā     = Anurājā (Phó vương)

⑤ Apa + gacchati = Apagacchati (đi khỏi)
   Apa + vāda     = Apavāda (khiển trách)

⑥ Api + dhāna = Apidhāna (đóng lại, nắp đậy)

⑦ Ati + sundara  = Atisundara (rất đẹp)
   Ati + kkamati  = Atikkamati (đi qua, vi phạm)

⑧ Ava + kkamati = Avakkamati (bước xuống)
   Ava + jānāti  = Avajānāti (xem thường)

⑨ Du + gati      = Duggati (cảnh khổ)
   Du + d + ama   = Duddama (khó điều phục)

⑩ Ni + khamati   = Nikkhamati (rời khỏi)
   Ni + r + āhāra = Nirāhāra (không vật thực)

⑪ Nī + harati    = Nīharati (lấy đi, rút ra)
   Nī + roga      = Nīroga (khỏe mạnh)

⑫ Pa + bala      = Pabala (rất khỏe)
   Pa + kkamati   = Pakkamati (khởi hành)

⑬ Parā + bhava   = Parābhava (suy tàn)
   Parā + jaya    = Parājaya (đánh bại)

⑭ Pari + dahati  = Paridahati (đặt lên)
   Pari + suddha  = Parisuddha (hoàn toàn trong sạch)

⑮ Pati + kkamati = Paṭikkamati (bước lui)
   Pati + vadati  = Paṭivadati (trả lời)

⑯ Saṃ + buddha   = Sambuddha (tự giác)
   Saṃ + gacchati = Samāgacchati (gặp nhau)

⑰ Su + gati      = Sugati (cõi lành)
   Su + jana      = Sujana (người có đức)

⑱ U + gacchati   = Uggacchati (nổi lên)
   U + daya       = Udaya (sanh lên, tăng lên)

⑲ Upa + gacchati = Upagacchati (lại gần)
   Upa + rājā     = Uparājā (Phó vương)

⑳ Vi + mala      = Vimala (trong sạch)
   Vi + passati   = Vipassati (nhìn thấy rõ)
   Vi + mutti     = Vimutti (giải thoát)

══════════════════════════════════════════════════════
D. QUY TẮC ĐẶC BIỆT
══════════════════════════════════════════════════════

📌 Quy tắc 1: NHÂN ĐÔI PHỤ ÂM
   Phụ âm theo sau du, ni, u (đôi khi vi) được nhân đôi.
   VD: du + dama → duddama (khó điều phục)
       ni + khamati → nikkhamati (rời khỏi)

📌 Quy tắc 2: PHỤ ÂM BẬT HƠI
   Nếu phụ âm có hơi ra thì phụ âm đầu đổi lại cùng
   phụ âm KHÔNG có bật hơi.
   VD: du + bala → dubbala (không phải dubhbala)

📌 Quy tắc 3: TRƯỚC NGUYÊN ÂM
   • du → dur  : dur + anubodha = duranubodha
   • ni → nir  : nir + āhāra = nirāhāra
   • u  → ud   : ud + aya = udaya
   • vi → vy   : vy + ākaroti = vyākaroti

📌 Quy tắc 4: abhi, anu, pati, pari → có thể dùng SAU từ
   (thỉnh thoảng trở thành tiếp vĩ ngữ/hậu tố)
''',
        contentEn: '''
LESSON 21 — INDECLINABLES (AVYAYA) — PREFIXES (UPASAGGA)

A. AVYAYA: Form remains the same in all genders, numbers, and cases.
   Two kinds: Upasagga (prefix) and Nipāta (particle).

B. 20 PREFIXES:
 1.Ā  2.Abhi  3.Adhi  4.Anu  5.Apa
 6.Api 7.Ati  8.Ava  9.Du  10.Ni
 11.Nī 12.Pa  13.Parā 14.Pari 15.Pati(paṭi)
 16.Saṃ 17.Su 18.U 19.Upa 20.Vi

C. SPECIAL RULES:
 • Consonant after du, ni, u (sometimes vi) is duplicated
 • If aspirated → first duplicate becomes unaspirated
 • Before vowel: du→dur, ni→nir, u→ud, vi→vy
 • abhi, anu, pati, pari can be used after words
''',
        fabVocab: const [
          FabVocabItem(
            wordEn: 'Ā (prefix)',
            wordVi: 'cho đến, đến khi, xung quanh',
            pronunciation: 'aa',
            partOfSpeech: 'Upasagga',
          ),
          FabVocabItem(
            wordEn: 'Abhi (prefix)',
            wordVi: 'đến, lên trên, cao, lớn, đặc biệt',
            pronunciation: 'ab-hi',
            partOfSpeech: 'Upasagga',
          ),
          FabVocabItem(
            wordEn: 'Adhi (prefix)',
            wordVi: 'trong, trên, hơn, lớn, quá mức',
            pronunciation: 'ad-hi',
            partOfSpeech: 'Upasagga',
          ),
          FabVocabItem(
            wordEn: 'Anu (prefix)',
            wordVi: 'sau, như, phía sau, theo',
            pronunciation: 'a-nu',
            partOfSpeech: 'Upasagga',
          ),
          FabVocabItem(
            wordEn: 'Du (prefix)',
            wordVi: 'xấu, khó, khổ',
            pronunciation: 'du',
            partOfSpeech: 'Upasagga',
          ),
          FabVocabItem(
            wordEn: 'Su (prefix)',
            wordVi: 'tốt, lành, khéo, dễ',
            pronunciation: 'su',
            partOfSpeech: 'Upasagga',
          ),
          FabVocabItem(
            wordEn: 'Vi (prefix)',
            wordVi: 'tách khỏi, không, rõ ràng, đối lập',
            pronunciation: 'vi',
            partOfSpeech: 'Upasagga',
          ),
          FabVocabItem(
            wordEn: 'Saṃ (prefix)',
            wordVi: 'với, cùng nhau, tự mình',
            pronunciation: 'sam',
            partOfSpeech: 'Upasagga',
          ),
        ],
        fabPhrases: const [
          FabPhraseItem(
            phrase: 'Āgacchati = ā + gacchati',
            meaning: 'trở về (ā = hướng về) + đi = đi về',
          ),
          FabPhraseItem(
            phrase: 'Abhidhamma = abhi + dhamma',
            meaning: 'Thắng Pháp (abhi = cao, lớn) + Pháp',
          ),
          FabPhraseItem(
            phrase: 'Duggati = du + gati',
            meaning: 'cảnh khổ (du = xấu, khó) + cảnh giới',
          ),
          FabPhraseItem(
            phrase: 'Sugati = su + gati',
            meaning: 'cõi lành (su = tốt, lành) + cảnh giới',
          ),
          FabPhraseItem(
            phrase: 'Vimutti = vi + mutti',
            meaning: 'giải thoát (vi = tách khỏi) + giải phóng',
          ),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 2: MIND GAME — Nhận dạng tiền tố
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson21_phase2',
        phaseTypeStr: 'mind_game',
        titleVi: '🧠 Trò Chơi Tư Duy: Nhận Diện 20 Tiền Tố',
        mixedSegments: const [
          // Block 1: Ā, Abhi, Adhi
          MixedSegment(text: '① '),
          MixedSegment(
            text: '[tiền tố "cho đến"] trở về',
            isVietnamese: true,
            answer: 'Āgacchati',
          ),
          MixedSegment(text: ' = '),
          MixedSegment(
            text: 'Ā',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(text: ' + gacchati\n\n'),

          // Block 2
          MixedSegment(text: '② '),
          MixedSegment(
            text: '[tiền tố "cao, lớn"] Thắng Pháp',
            isVietnamese: true,
            answer: 'Abhidhamma',
          ),
          MixedSegment(text: ' = '),
          MixedSegment(
            text: 'Abhi',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(text: ' + dhamma\n\n'),

          // Block 3
          MixedSegment(text: '③ '),
          MixedSegment(
            text: '[tiền tố "trên, trong"] sống tại',
            isVietnamese: true,
            answer: 'Adhivasati',
          ),
          MixedSegment(text: ' = '),
          MixedSegment(
            text: 'Adhi',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(text: ' + vasati\n\n'),

          // Block 4: Anu, Apa, Api
          MixedSegment(text: '④ '),
          MixedSegment(
            text: '[tiền tố "sau, theo"] đi theo',
            isVietnamese: true,
            answer: 'Anugacchati',
          ),
          MixedSegment(text: ' = '),
          MixedSegment(
            text: 'Anu',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(text: ' + gacchati\n\n'),

          // Block 5
          MixedSegment(text: '⑤ '),
          MixedSegment(
            text: '[tiền tố "xa, từ"] đi khỏi',
            isVietnamese: true,
            answer: 'Apagacchati',
          ),
          MixedSegment(text: ' = '),
          MixedSegment(
            text: 'Apa',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(text: ' + gacchati\n\n'),

          // Block 6: Du, Su (đối lập)
          MixedSegment(text: '⑥ '),
          MixedSegment(
            text: '[tiền tố "xấu, khó"] cảnh khổ',
            isVietnamese: true,
            answer: 'Duggati',
          ),
          MixedSegment(text: ' ↔ '),
          MixedSegment(
            text: '[tiền tố "tốt, lành"] cõi lành',
            isVietnamese: true,
            answer: 'Sugati',
          ),
          MixedSegment(text: '\n\n'),

          // Block 7: Vi
          MixedSegment(text: '⑦ '),
          MixedSegment(
            text: '[tiền tố "tách khỏi, rõ"] giải thoát',
            isVietnamese: true,
            answer: 'Vimutti',
          ),
          MixedSegment(text: ' = '),
          MixedSegment(
            text: 'Vi',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(text: ' + mutti\n\n'),

          // Block 8: Saṃ
          MixedSegment(text: '⑧ '),
          MixedSegment(
            text: '[tiền tố "cùng nhau"] tự giác',
            isVietnamese: true,
            answer: 'Sambuddha',
          ),
          MixedSegment(text: ' = '),
          MixedSegment(
            text: 'Saṃ',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(text: ' + buddha\n'),
        ],
        fabVocab: const [
          FabVocabItem(
            wordEn: 'Du ↔ Su',
            wordVi: 'xấu/khó ↔ tốt/lành',
            pronunciation: '',
            partOfSpeech: 'cặp tiền tố đối lập',
          ),
          FabVocabItem(
            wordEn: 'Ā ↔ Apa',
            wordVi: 'đến/gần ↔ xa/từ',
            pronunciation: '',
            partOfSpeech: 'cặp tiền tố đối lập',
          ),
        ],
        fabPhrases: const [
          FabPhraseItem(
            phrase: 'Gacchati + tiền tố = thay đổi hướng đi',
            meaning: 'Āgacchati (về) | Apagacchati (khỏi) | Anugacchati (theo) | Upagacchati (gần)',
          ),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 3: LISTENING QUIZ — Quiz tiền tố
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson21_phase3',
        phaseTypeStr: 'listening_quiz',
        titleVi: '🎧 Quiz: Nhận Diện Tiền Tố & Nghĩa',
        questions: const [
          QuizQuestion(
            id: 'lesson21_q01',
            questionText: '"Abhidhamma" gồm tiền tố nào + nghĩa gì?',
            options: [
              'A. Abhi = cao, lớn → Thắng Pháp (Giáo Pháp cao thượng)',
              'B. Apa = xa → Pháp xa lìa',
              'C. Adhi = trong → Pháp bên trong',
              'D. Anu = theo → Pháp tùy thuộc',
            ],
            correctIndex: 0,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson21_q02',
            questionText: 'Tiền tố "Du" có nghĩa gì?',
            options: [
              'A. Tốt, lành, khéo',
              'B. Xấu, khó, khổ',
              'C. Lên, trên, khỏi',
              'D. Xuống, rơi khỏi, cách xa',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson21_q03',
            questionText: '"Vimutti" = Vi + mutti. Nghĩa đúng là?',
            options: [
              'A. Tập hợp lại',
              'B. Đi vòng quanh',
              'C. Giải thoát hoàn toàn (tách khỏi ràng buộc)',
              'D. Tiến về phía trước',
            ],
            correctIndex: 2,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson21_q04',
            questionText: 'Quy tắc nhân đôi phụ âm áp dụng cho tiền tố nào?',
            options: [
              'A. abhi, adhi, ati',
              'B. ā, apa, api',
              'C. du, ni, u (đôi khi vi)',
              'D. parā, pari, pati',
            ],
            correctIndex: 2,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson21_q05',
            questionText: 'Trước nguyên âm, "du" biến thành gì?',
            options: [
              'A. dun',
              'B. dum',
              'C. dur',
              'D. duy',
            ],
            correctIndex: 2,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson21_q06',
            questionText: '"Nirāhāra" = Ni + āhāra. Nghĩa đúng là?',
            options: [
              'A. Nhiều vật thực',
              'B. Không vật thực (nhịn ăn)',
              'C. Vật thực đặc biệt',
              'D. Vật thực mang đi',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson21_q07',
            questionText: '"Sambuddha" = Saṃ + buddha. Nghĩa đúng là?',
            options: [
              'A. Được người khác giác ngộ',
              'B. Giác ngộ một phần',
              'C. Tự mình giác ngộ (self-enlightened)',
              'D. Giác ngộ cùng người khác',
            ],
            correctIndex: 2,
            practiceNumber: 'practice1',
          ),
        ],
        fabAnswers: const [
          FabAnswerItem(
            en: 'Q1: Abhi = high/great + dhamma = Higher Doctrine',
            vi: '① Abhi = cao, lớn, đặc biệt. Abhidhamma = Thắng Pháp (Vi Diệu Pháp) — Giáo Pháp cao thượng.',
          ),
          FabAnswerItem(
            en: 'Q2: Du = bad, difficult',
            vi: '② Du = xấu, khó, khổ. Đối lập với Su = tốt, lành. VD: Duggati (cảnh khổ) ↔ Sugati (cõi lành).',
          ),
          FabAnswerItem(
            en: 'Q3: Vi = apart/free + mutti = release → perfect release',
            vi: '③ Vi = tách khỏi, tự do. Mutti = giải phóng. Vimutti = giải thoát hoàn toàn.',
          ),
          FabAnswerItem(
            en: 'Q4: du, ni, u (sometimes vi)',
            vi: '④ Quy tắc nhân đôi phụ âm áp dụng cho du, ni, u (đôi khi vi). VD: du+dama→duddama, ni+khamati→nikkhamati.',
          ),
          FabAnswerItem(
            en: 'Q5: du → dur before vowel',
            vi: '⑤ Trước nguyên âm, du → dur. VD: dur + anubodha = duranubodha (khó hiểu).',
          ),
          FabAnswerItem(
            en: 'Q6: Ni = free from + āhāra = food → without food',
            vi: '⑥ Nirāhāra = ni (= không) + āhāra (vật thực) = không vật thực, nhịn ăn.',
          ),
          FabAnswerItem(
            en: 'Q7: Saṃ = self + buddha = enlightened → self-enlightened',
            vi: '⑦ Saṃ = tự mình. Sambuddha = tự giác, tự mình giác ngộ (không cần thầy).',
          ),
        ],
      ),
    ],
  );
}

// =============================================================================
// PHẦN 4: DAY 2 — BÀI TẬP 21 (30 CÂU DỊCH)
// =============================================================================

LessonDay getLesson21Day2() {
  return LessonDay(
    id: 'lesson21_day2',
    dayNumber: 2,
    themeId: 'theme_21_avyaya_upasagga',
    titleVi: 'Ngày 2: Luyện dịch Exercise 21 (30 câu)',
    phases: [
      // ─────────────────────────────────────────────────────────────────
      // PHASE 1: READ & LISTEN — Câu 1-15
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson21_phase4',
        phaseTypeStr: 'read_listen',
        titleVi: '📖 Đọc hiểu: Câu 1-15 (Exercise 21)',
        contentVi: '''
📖 BÀI TẬP 21 — NHÓM 1 (Câu 1–15)
Dịch sang tiếng Việt:

 1. "Mā nivatta abhikkama."
    → "Chớ lùi bước, hãy tiến lên."

 2. Puttadhītūhi mātāpitaro yathāsatti saṅgahetabbā.
    → Cha mẹ nên được con trai con gái nuôi dưỡng tùy theo khả năng.

 3. Idh'āgacchatha, bhikkhavo, yathābuḍḍhaṃ vandatha.
    → Hãy đến đây, các vị tỳ-khưu, hãy đảnh lễ theo thứ tự lớn nhỏ (tuổi hạ).

 4. Sace'pi dujjanā yāvajīvaṃ sujane bhajeyyuṃ tesaṃ koci'pi
    attho na bhaveyya.
    → Dẫu cho kẻ ác có thân cận người lành suốt đời, lợi ích nào cũng
    không có cho họ.

 5. Sudesitaṃ Buddhadhammaṃ uggaṇhāmi yathābalaṃ.
    → Tôi học Giáo Pháp khéo thuyết của Đức Phật tùy theo khả năng.

 6. Sabbe devamanussā manussaloke vā devaloke vā
    yathākammaṃ uppajjanti.
    → Tất cả chư thiên và nhân loại đều sanh ra theo nghiệp trong
    nhân giới hoặc thiên giới.

 7. Tāv'āhaṃ Pāḷibhāsaṃ uggaṇhāmi. Api ca kho pana tassa
    bhāsāya paṭilekhanaṃ likhituṃ vāyamāmi.
    → Tôi vẫn đang học tiếng Pāḷi. Hơn nữa, tôi cũng cố gắng viết
    thư trả lời bằng ngôn ngữ ấy.

 8. Tass'antevāsikā gāmanigamesu vicaritvā suriyodaye
    nagaraṃ sampāpuṇiṃsu.
    → Các đệ tử của vị ấy sau khi du hành qua các làng mạc và thị trấn
    đã đến thành phố khi mặt trời mọc.

 9. Senāpatiputto anupubbena tassa raṭṭhe senāpati ahosi.
    → Con trai của vị tướng quân lần lượt trở thành tướng quân
    trong vương quốc ấy.

10. "Iti h'etaṃ vijānāhi paṭhamo so parābhavo."
    → "Như vậy, hãy hiểu rõ điều này: đó là sự suy tàn đầu tiên."

11. Duranubodhaṃ abhidhammaṃ yathābalaṃ paṇḍitasotūnaṃ
    desetuṃ vaṭṭati.
    → Thắng Pháp khó hiểu, phù hợp để thuyết cho các bậc trí
    thính giả tùy theo khả năng.

12. Uparājā paṭirājānaṃ abhibhavituṃ upanagaraṃ gato.
    → Phó vương đã đi đến thành phố phụ cận để chinh phục
    vị vua thù địch.

13. Sattasattāhaṃ so nirāhāro'va vane vasi.
    → Vị ấy đã ở trong rừng bảy tuần (bảy lần bảy ngày)
    không vật thực.

14. Mahāseṭṭhino corabhayena yathāsukhaṃ na supiṃsu.
    → Các đại phú gia vì sợ trộm cướp đã không ngủ yên giấc.

15. "Attā hi kira duddamo."
    → "Quả thật, tự mình khó điều phục."
''',
        contentEn: '''
EXERCISE 21 — GROUP 1 (Sentences 1–15)

 1. "Do not retreat, advance."
 2. Parents should be supported by sons and daughters according to ability.
 3. Come here, monks, pay respects according to seniority.
 4. Even if bad people associate with good people for life, no benefit arises.
 5. I learn the well-preached Buddha-Dhamma according to my ability.
 6. All devas and humans are born according to kamma.
 7. I am still learning Pāḷi. Moreover, I try to write letters in that language.
 8. His disciples wandered through villages and towns and reached the city at sunrise.
 9. The general's son gradually became general in that kingdom.
10. "Understand this: that is the first ruin."
11. The Abhidhamma, hard to understand, is fit to be preached to wise listeners.
12. The viceroy went to the nearby city to conquer the hostile king.
13. For seven weeks he dwelt in the forest without food.
14. The great merchants, fearing robbers, did not sleep comfortably.
15. "Indeed, the self is hard to tame."
''',
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 2: MIND GAME — Ghép câu 1-10
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson21_phase5',
        phaseTypeStr: 'mind_game',
        titleVi: '🧠 Trò Chơi Tư Duy: Dịch Câu 1-10',
        mixedSegments: const [
          // Câu 1
          MixedSegment(text: '① '),
          MixedSegment(
            text: 'Mā nivatta',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(text: ' '),
          MixedSegment(
            text: '[chớ lùi]',
            isVietnamese: true,
            answer: 'Mā nivatta',
          ),
          MixedSegment(text: ' '),
          MixedSegment(
            text: 'abhikkama',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(text: ' '),
          MixedSegment(
            text: '[hãy tiến lên].',
            isVietnamese: true,
            answer: 'abhikkama',
          ),
          MixedSegment(text: '\n\n'),

          // Câu 4
          MixedSegment(text: '④ '),
          MixedSegment(
            text: '[kẻ ác]',
            isVietnamese: true,
            answer: 'dujjanā',
          ),
          MixedSegment(text: ' ... '),
          MixedSegment(
            text: '[người lành]',
            isVietnamese: true,
            answer: 'sujane',
          ),
          MixedSegment(text: '\n   du ↔ su = xấu ↔ tốt\n\n'),

          // Câu 5
          MixedSegment(text: '⑤ '),
          MixedSegment(
            text: '[khéo thuyết]',
            isVietnamese: true,
            answer: 'Sudesitaṃ',
          ),
          MixedSegment(text: ' '),
          MixedSegment(
            text: 'Buddhadhammaṃ',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(text: ' '),
          MixedSegment(
            text: '[tùy khả năng]',
            isVietnamese: true,
            answer: 'yathābalaṃ',
          ),
          MixedSegment(text: ' uggaṇhāmi.\n\n'),

          // Câu 8
          MixedSegment(text: '⑧ '),
          MixedSegment(
            text: 'antevāsikā',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(text: ' '),
          MixedSegment(
            text: '[du hành]',
            isVietnamese: true,
            answer: 'vicaritvā',
          ),
          MixedSegment(text: ' '),
          MixedSegment(
            text: 'suriyodaye',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(text: ' '),
          MixedSegment(
            text: '[khi mặt trời mọc]',
            isVietnamese: true,
            answer: 'suriyodaye',
          ),
          MixedSegment(text: '\n   = suriya + udaye (u + aya)\n\n'),

          // Câu 10
          MixedSegment(text: '⑩ '),
          MixedSegment(
            text: '[suy tàn đầu tiên]',
            isVietnamese: true,
            answer: 'paṭhamo so parābhavo',
          ),
          MixedSegment(text: '\n   parā + bhava = ra khỏi hiện hữu\n'),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 3: LISTENING QUIZ — Quiz câu 1-15
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson21_phase6',
        phaseTypeStr: 'listening_quiz',
        titleVi: '🎧 Quiz: Phân Tích Câu 1-15',
        questions: const [
          QuizQuestion(
            id: 'lesson21_q08',
            questionText: 'Câu 4: "dujjanā" và "sujane" — tiền tố du/su nghĩa gì?',
            options: [
              'A. du = đến, su = từ',
              'B. du = xấu/khó, su = tốt/lành → dujjanā = kẻ ác, sujane = người lành',
              'C. du = xuống, su = lên',
              'D. du = tách khỏi, su = cùng nhau',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson21_q09',
            questionText: 'Câu 8: "suriyodaye" phân tích đúng là?',
            options: [
              'A. suriya + odaye = mặt trời + bóng tối',
              'B. suriya + udaye (u + aya) = mặt trời + sanh lên = lúc mặt trời mọc',
              'C. suriya + ava + aye = mặt trời + xuống',
              'D. suriya + upa + aye = mặt trời + gần',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson21_q10',
            questionText: 'Câu 10: "parābhavo" = parā + bhava. Nghĩa đúng là?',
            options: [
              'A. Tiến lên, thịnh vượng',
              'B. Đi cùng nhau',
              'C. Suy tàn, hủy hoại (ra khỏi sự hiện hữu)',
              'D. Tự mình hiện hữu',
            ],
            correctIndex: 2,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson21_q11',
            questionText: 'Câu 12: "Uparājā" và "paṭirājānaṃ" — upa và paṭi nghĩa gì?',
            options: [
              'A. Uparājā = Vua lớn, paṭirāja = Vua nhỏ',
              'B. Uparājā = Phó vương (upa = phụ), paṭirājā = Vua thù địch (paṭi = đối lập)',
              'C. Uparājā = Vua cũ, paṭirāja = Vua mới',
              'D. Uparājā = Vua trong nước, paṭirāja = Vua nước ngoài',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson21_q12',
            questionText: 'Câu 13: "nirāhāro" = ni + āhāra. "ni" ở đây nghĩa gì?',
            options: [
              'A. Vào trong',
              'B. Hướng xuống',
              'C. Không, thoát khỏi (without)',
              'D. Lớn, vĩ đại',
            ],
            correctIndex: 2,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson21_q13',
            questionText: 'Câu 15: "duddamo" = du + dama. Quy tắc nào áp dụng?',
            options: [
              'A. Thêm "r" trước nguyên âm',
              'B. Nhân đôi phụ âm "d" theo sau tiền tố "du"',
              'C. Chuyển sang "paṭi"',
              'D. Rút gọn thành "o"',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
        ],
        fabAnswers: const [
          FabAnswerItem(
            en: 'Q8: du = bad, su = good',
            vi: '⑧ du = xấu/khó → dujjanā = kẻ ác (du + jana). su = tốt/lành → sujane = người lành (su + jana).',
          ),
          FabAnswerItem(
            en: 'Q9: suriya + udaye = sunrise',
            vi: '⑨ suriya = mặt trời. udaya = sanh lên, tăng lên (u + aya). suriyodaye = lúc mặt trời mọc (Locative).',
          ),
          FabAnswerItem(
            en: 'Q10: parā + bhava = away from being = ruin',
            vi: '⑩ parā = ra khỏi, đối lập. bhava = hiện hữu. parābhava = suy tàn, hủy hoại (ra khỏi sự hiện hữu).',
          ),
          FabAnswerItem(
            en: 'Q11: upa = sub/deputy, paṭi = opposed/hostile',
            vi: '⑪ upa = phụ, bên dưới → Uparājā = Phó vương. paṭi = đối lập → paṭirājā = vua thù địch.',
          ),
          FabAnswerItem(
            en: 'Q12: ni = free from, without',
            vi: '⑫ ni = không, thoát khỏi. nirāhāra = ni + āhāra = không vật thực (nhịn ăn).',
          ),
          FabAnswerItem(
            en: 'Q13: du + dama → duddamo (consonant doubling)',
            vi: '⑬ du + dama → duddamo. Phụ âm "d" theo sau "du" được nhân đôi → dd. Nghĩa: khó điều phục.',
          ),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 4: READ & LISTEN — Câu 16-30
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson21_phase7',
        phaseTypeStr: 'read_listen',
        titleVi: '📖 Đọc hiểu: Câu 16-30 (Exercise 21)',
        contentVi: '''
📖 BÀI TẬP 21 — NHÓM 2 (Câu 16–30)
Dịch sang tiếng Việt:

16. Uparājā yathākkamena rājā bhavi.
    → Phó vương lần lượt trở thành vua.

17. Tumhe yathāvuḍḍhaṃ nisīdeyyātha.
    → Các ngươi hãy ngồi theo thứ tự lớn nhỏ (tuổi tác).

18. Suriyatthaṅgatey'eva anupubbaṃ te upanagaraṃ sampāpuṇiṃsu.
    → Ngay khi mặt trời lặn, họ lần lượt đến thành phố phụ cận.

19. Bhattaro dārakabhariyāyo yathāsatti saṅgaṇheyyuṃ.
    → Những người chồng nên nuôi dưỡng vợ con tùy theo khả năng.
    (Hoặc: Bhattaro puttadārā yathāsatti saṅgaṇheyyuṃ.
     → Những người chồng nên nuôi dưỡng gia đình tùy theo khả năng.)

20. Sadā sujanā ca dujjanā ca na samāgacchanti.
    → Người lành và kẻ ác luôn luôn không gặp nhau
    (không bao giờ hòa hợp).

21. Ahaṃ yāvajīvaṃ brahmacārī bhavituṃ vāyameyyāmi.
    → Tôi sẽ cố gắng sống phạm hạnh suốt đời.

22. Yāvadatthaṃ pacchābhattaṃ sottuṃ na vaṭṭati.
    → Không phù hợp ngủ sau bữa ăn quá nhiều (quá mức cần thiết).

23. Tāva so abhidhammaṃ uggaṇhati.
    → Vị ấy vẫn đang học Thắng Pháp.
    — Api ca kho pana, yathābalaṃ uggaṇhāpetuṃ vāyamissati.
    → Hơn nữa, vị ấy sẽ cố gắng dạy (Thắng Pháp) tùy theo khả năng.

24. Ahaṃ dārakā idāni tumhe pucchāmi.
    — Tumhe yathākkamaṃ paṭivadeyyātha.
    → Này các em, bây giờ tôi hỏi các em.
    — Các em hãy trả lời theo thứ tự.

25. Antevāsikā yathāsatti satthāro anugacchanti.
    → Các đệ tử tùy theo khả năng đi theo (hầu) các bậc thầy.

26. (Tvaṃ) yāvadatthaṃ gahetvā imamhā gharamhā nikkhamāhi.
    → (Ngươi) hãy lấy đủ dùng rồi rời khỏi ngôi nhà này.

27. Sujanā asādhū naranāriyo avamaññituṃ na vaṭṭati.
    → Người lành không nên khinh thường những người nam nữ
    không tốt (bất thiện).

28. Mano hi kira duddamo.
    → Quả thật, tâm khó điều phục.
    — Api ca kho pana paṇḍitā anupubbaṃ atigacchanti.
    → Hơn nữa, các bậc trí lần lượt vượt qua (điều phục được).

29. Candodaye tamo antaradhāyati.
    → Khi mặt trăng mọc, bóng tối biến mất.

30. Nīrogā yāvadatthaṃ na bhuñjanti yāvadatthaṃ na supanti.
    → Người khỏe mạnh không ăn quá mức, không ngủ quá mức.
''',
        contentEn: '''
EXERCISE 21 — GROUP 2 (Sentences 16–30)

16. The viceroy gradually became king.
17. You should sit according to seniority.
18. At sunset they reached the nearby city.
19. Husbands should support wife and children according to ability.
20. Good and bad people never come together.
21. I will strive to live the holy life for the rest of my life.
22. It is not proper to sleep excessively after meals.
23. He is still learning Abhidhamma. Moreover, he will try to teach it.
24. Children, I ask you now. — Answer in order.
25. Disciples follow their teachers according to ability.
26. Take enough and depart from this house.
27. Good people should not despise bad men and women.
28. Indeed, the mind is hard to tame. — But the wise gradually overcome it.
29. At moonrise, darkness disappears.
30. Healthy people do not eat or sleep excessively.
''',
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 5: MIND GAME — Ghép câu 16-30
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson21_phase8',
        phaseTypeStr: 'mind_game',
        titleVi: '🧠 Trò Chơi Tư Duy: Dịch Câu 16-30',
        mixedSegments: const [
          // Câu 18
          MixedSegment(text: '⑱ '),
          MixedSegment(
            text: '[khi mặt trời lặn]',
            isVietnamese: true,
            answer: 'Suriyatthaṅgate',
          ),
          MixedSegment(text: ' '),
          MixedSegment(
            text: '[thành phố phụ cận]',
            isVietnamese: true,
            answer: 'upanagaraṃ',
          ),
          MixedSegment(text: '\n   upa = phụ, gần\n\n'),

          // Câu 20
          MixedSegment(text: '⑳ '),
          MixedSegment(
            text: '[người lành]',
            isVietnamese: true,
            answer: 'sujanā',
          ),
          MixedSegment(text: ' ca '),
          MixedSegment(
            text: '[kẻ ác]',
            isVietnamese: true,
            answer: 'dujjanā',
          ),
          MixedSegment(text: ' ca '),
          MixedSegment(
            text: '[gặp nhau]',
            isVietnamese: true,
            answer: 'samāgacchanti',
          ),
          MixedSegment(text: '\n   saṃ + ā + gacchati = cùng + đến\n\n'),

          // Câu 28
          MixedSegment(text: '㉘ '),
          MixedSegment(
            text: 'Mano',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(text: ' hi kira '),
          MixedSegment(
            text: '[khó điều phục]',
            isVietnamese: true,
            answer: 'duddamo',
          ),
          MixedSegment(text: '.\n   du + dama = khó + điều phục\n\n'),

          // Câu 29
          MixedSegment(text: '⑲ '),
          MixedSegment(
            text: '[khi mặt trăng mọc]',
            isVietnamese: true,
            answer: 'Candodaye',
          ),
          MixedSegment(text: ' '),
          MixedSegment(
            text: 'tamo',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(text: ' '),
          MixedSegment(
            text: '[bóng tối biến mất]',
            isVietnamese: true,
            answer: 'antaradhāyati',
          ),
          MixedSegment(text: '\n   canda + udaye = trăng + mọc\n\n'),

          // Câu 30
          MixedSegment(text: '㉚ '),
          MixedSegment(
            text: '[người khỏe]',
            isVietnamese: true,
            answer: 'Nīrogā',
          ),
          MixedSegment(text: ' '),
          MixedSegment(
            text: '[quá mức]',
            isVietnamese: true,
            answer: 'yāvadatthaṃ',
          ),
          MixedSegment(text: ' na bhuñjanti.\n   nī + roga = không bệnh\n'),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 6: LISTENING QUIZ — Quiz câu 16-30
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson21_phase9',
        phaseTypeStr: 'listening_quiz',
        titleVi: '🎧 Quiz: Phân Tích Câu 16-30',
        questions: const [
          QuizQuestion(
            id: 'lesson21_q14',
            questionText: 'Câu 20: "samāgacchanti" = saṃ + ā + gacchati. Nghĩa đúng?',
            options: [
              'A. Đi riêng rẽ',
              'B. Gặp nhau, hội họp (cùng + đến)',
              'C. Rời xa nhau',
              'D. Đi vòng quanh',
            ],
            correctIndex: 1,
            practiceNumber: 'practice3',
          ),
          QuizQuestion(
            id: 'lesson21_q15',
            questionText: 'Câu 27: "avamaññituṃ" = ava + maññati. Nghĩa đúng?',
            options: [
              'A. Kính trọng, tôn vinh',
              'B. Nhìn xuống, khinh thường (ava = xuống)',
              'C. Nhìn lên, ngưỡng mộ',
              'D. Nhìn quanh, quan sát',
            ],
            correctIndex: 1,
            practiceNumber: 'practice3',
          ),
          QuizQuestion(
            id: 'lesson21_q16',
            questionText: 'Câu 29: "Candodaye" = canda + udaye. Quy tắc nào?',
            options: [
              'A. Nhân đôi phụ âm',
              'B. Tiền tố "u" trước nguyên âm → "ud"',
              'C. Sandhi: a + u = o (candodaye)',
              'D. Chuyển "vi" thành "vy"',
            ],
            correctIndex: 2,
            practiceNumber: 'practice3',
          ),
          QuizQuestion(
            id: 'lesson21_q17',
            questionText: 'Câu 30: "Nīrogā" = nī + roga. Tiền tố "nī" nghĩa gì?',
            options: [
              'A. Vào trong, xuống',
              'B. Không, ra khỏi, thoát khỏi',
              'C. Rất, quá mức',
              'D. Cùng nhau, tự mình',
            ],
            correctIndex: 1,
            practiceNumber: 'practice3',
          ),
          QuizQuestion(
            id: 'lesson21_q18',
            questionText: 'Câu 28: "atigacchanti" = ati + gacchati. Nghĩa đúng?',
            options: [
              'A. Đi đến gần',
              'B. Đi theo',
              'C. Vượt qua, vượt thắng (ati = vượt trên)',
              'D. Quay trở lại',
            ],
            correctIndex: 2,
            practiceNumber: 'practice3',
          ),
          QuizQuestion(
            id: 'lesson21_q19',
            questionText: 'Tổng kết: Tiền tố nào đối lập với "du"?',
            options: [
              'A. apa (xa)',
              'B. ava (xuống)',
              'C. su (tốt, lành)',
              'D. vi (tách khỏi)',
            ],
            correctIndex: 2,
            practiceNumber: 'practice3',
          ),
        ],
        fabAnswers: const [
          FabAnswerItem(
            en: 'Q14: saṃ + ā + gacchati = together + come',
            vi: '⑭ saṃ = cùng nhau. ā = đến. gacchati = đi. samāgacchanti = gặp nhau, hội họp.',
          ),
          FabAnswerItem(
            en: 'Q15: ava = down → ava + maññati = look down on = despise',
            vi: '⑮ ava = xuống. maññati = nghĩ, cho là. avamaññati = nhìn xuống, khinh thường.',
          ),
          FabAnswerItem(
            en: 'Q16: canda + udaye → candodaye (a+u=o sandhi)',
            vi: '⑯ canda = mặt trăng. udaya = sanh lên. Sandhi: a + u = o → candodaye = khi trăng mọc.',
          ),
          FabAnswerItem(
            en: 'Q17: nī = away, without, out of',
            vi: '⑰ nī = ra khỏi, không. nīroga = nī + roga (bệnh) = không bệnh, khỏe mạnh.',
          ),
          FabAnswerItem(
            en: 'Q18: ati = beyond, over → ati + gacchati = overcome',
            vi: '⑱ ati = vượt trên, quá mức. gacchati = đi. atigacchanti = vượt qua, vượt thắng.',
          ),
          FabAnswerItem(
            en: 'Q19: su is the opposite of du',
            vi: '⑲ su = tốt, lành ↔ du = xấu, khó. Cặp đối lập: Sugati (cõi lành) ↔ Duggati (cảnh khổ).',
          ),
        ],
      ),
    ],
  );
}

// =============================================================================
// PHẦN 5: HÀM TIỆN ÍCH — Trả về cả Day 1 + Day 2
// =============================================================================

({LessonDay day1, LessonDay day2}) getLesson21Data() {
  return (
    day1: getLesson21Day1(),
    day2: getLesson21Day2(),
  );
}
