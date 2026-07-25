// =============================================================================
// LESSON 22 DATA
// Bài học 22: Cách Thành Lập Danh Từ (Taddhita) — Hậu tố
// Nguồn: Nārada Mahāthera, "An Elementary Pāḷi Course", Lesson 22
// =============================================================================

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

// =============================================================================
// PHẦN 1: DANH SÁCH TỪ VỰNG MỚI (PaliVocabModel)
// Các hậu tố Taddhita chính + ví dụ tiêu biểu
// =============================================================================

final kLesson22Vocab = <PaliVocabModel>[
  // ─── Hậu tố 1: "A" — Sở hữu, dòng dõi ───
  PaliVocabModel(
    id: 'pv_L22_panna',
    root: 'pañña',
    paradigmId: 'taddhita_a',
    wordVi: 'người có trí, bậc trí (+ a → pañña)',
    wordEn: 'he who has wisdom, wise',
    lessonId: 'lesson_22',
    pronunciation: 'pan-nyah',
    examplePali: 'Paññā + a = pañña (pañño)',
    exampleVi: 'Trí tuệ + a = người có trí',
  ),
  PaliVocabModel(
    id: 'pv_L22_saddha',
    root: 'saddhā',
    paradigmId: 'taddhita_a',
    wordVi: 'người có tín tâm, thuận thành (+ a → saddha)',
    wordEn: 'he who has faith, faithful',
    lessonId: 'lesson_22',
    pronunciation: 'sad-dhah',
    examplePali: 'Saddhā + a = saddha (saddho)',
    exampleVi: 'Tín tâm + a = người có tín tâm',
  ),
  // ─── Hậu tố 2: "Ika" — Thuộc về, thành thạo ───
  PaliVocabModel(
    id: 'pv_L22_dhammika',
    root: 'dhamma',
    paradigmId: 'taddhita_ika',
    wordVi: 'chánh trực, đúng pháp (+ ika → dhammika)',
    wordEn: 'righteous',
    lessonId: 'lesson_22',
    pronunciation: 'dham-mi-ka',
    examplePali: 'Dhamma + ika = dhammika',
    exampleVi: 'Pháp + ika = chánh trực',
  ),
  PaliVocabModel(
    id: 'pv_L22_nagarika',
    root: 'nagara',
    paradigmId: 'taddhita_ika',
    wordVi: 'thuộc về kinh thành (+ ika → nāgarika)',
    wordEn: 'pertaining to the city, urban',
    lessonId: 'lesson_22',
    pronunciation: 'naa-ga-ri-ka',
    examplePali: 'Nagara + ika = nāgarika',
    exampleVi: 'Kinh thành + ika = thuộc về kinh thành',
  ),
  PaliVocabModel(
    id: 'pv_L22_venayika',
    root: 'vinaya',
    paradigmId: 'taddhita_ika',
    wordVi: 'người thông thạo giới luật (+ ika → venayika)',
    wordEn: 'he who studies vinaya',
    lessonId: 'lesson_22',
    pronunciation: 've-naa-yi-ka',
    examplePali: 'Vinaya + ika = venayika',
    exampleVi: 'Giới luật + ika = người thông thạo giới luật',
  ),
  // ─── Hậu tố 4: Sở hữu (ī, ika, ima, mantu, vantu, vī) ───
  PaliVocabModel(
    id: 'pv_L22_dandi',
    root: 'daṇḍa',
    paradigmId: 'taddhita_i',
    wordVi: 'người có cây gậy (+ ī → daṇḍī)',
    wordEn: 'he who has a stick',
    lessonId: 'lesson_22',
    pronunciation: 'dan-dii',
    examplePali: 'Daṇḍa + ī = daṇḍī',
    exampleVi: 'Cây gậy + ī = người có cây gậy',
  ),
  PaliVocabModel(
    id: 'pv_L22_gunavantu',
    root: 'guṇa',
    paradigmId: 'taddhita_vantu',
    wordVi: 'người có đức (+ vantu → guṇavantu)',
    wordEn: 'virtuous',
    lessonId: 'lesson_22',
    pronunciation: 'gu-na-van-tu',
    examplePali: 'Guṇa + vantu = guṇavantu',
    exampleVi: 'Đức + vantu = người có đức',
  ),
  PaliVocabModel(
    id: 'pv_L22_medhavi',
    root: 'medhā',
    paradigmId: 'taddhita_vi',
    wordVi: 'người có trí (+ vī → medhāvī)',
    wordEn: 'he who has wisdom',
    lessonId: 'lesson_22',
    pronunciation: 'med-haa-vii',
    examplePali: 'Medhā + vī = medhāvī',
    exampleVi: 'Trí tuệ + vī = người có trí',
  ),
  // ─── Hậu tố 5: "Maya" — Được làm bằng ───
  PaliVocabModel(
    id: 'pv_L22_ayomaya',
    root: 'aya',
    paradigmId: 'taddhita_maya',
    wordVi: 'được làm bằng sắt (+ maya → ayomaya)',
    wordEn: 'made of iron',
    lessonId: 'lesson_22',
    pronunciation: 'a-yo-ma-ya',
    examplePali: 'Aya + maya = ayomaya',
    exampleVi: 'Sắt + maya = làm bằng sắt',
  ),
  PaliVocabModel(
    id: 'pv_L22_darumaya',
    root: 'dāru',
    paradigmId: 'taddhita_maya',
    wordVi: 'bằng gỗ (+ maya → dārumaya)',
    wordEn: 'wooden',
    lessonId: 'lesson_22',
    pronunciation: 'daa-ru-ma-ya',
    examplePali: 'Dāru + maya = dārumaya',
    exampleVi: 'Gỗ + maya = bằng gỗ',
  ),
  PaliVocabModel(
    id: 'pv_L22_manomaya',
    root: 'mana',
    paradigmId: 'taddhita_maya',
    wordVi: 'bằng tâm, tâm tạo tác (+ maya → manomaya)',
    wordEn: 'mental, mind-made',
    lessonId: 'lesson_22',
    pronunciation: 'ma-no-ma-ya',
    examplePali: 'Mana + maya = manomaya (a→o)',
    exampleVi: 'Tâm + maya = bằng tâm (a đổi thành o)',
  ),
  // ─── Hậu tố 6: "Tā" — Tập hợp, trạng thái (Nữ tánh) ───
  PaliVocabModel(
    id: 'pv_L22_janata',
    root: 'jana',
    paradigmId: 'taddhita_ta',
    wordVi: 'hội chúng, đám đông (+ tā → janatā, nữ tánh)',
    wordEn: 'multitude, populace',
    lessonId: 'lesson_22',
    pronunciation: 'ja-na-taa',
    examplePali: 'Jana + tā = janatā',
    exampleVi: 'Người + tā = đám đông',
  ),
  PaliVocabModel(
    id: 'pv_L22_dhammata',
    root: 'dhamma',
    paradigmId: 'taddhita_ta',
    wordVi: 'trạng thái của sự vật, bản tánh (+ tā → dhammatā)',
    wordEn: 'state of things, nature',
    lessonId: 'lesson_22',
    pronunciation: 'dham-ma-taa',
    examplePali: 'Dhamma + tā = dhammatā',
    exampleVi: 'Pháp + tā = bản tánh',
  ),
  // ─── Hậu tố 7: "Tta"/"Ya" — Trạng thái, bản tính (Trung tánh) ───
  PaliVocabModel(
    id: 'pv_L22_arogya',
    root: 'aroga',
    paradigmId: 'taddhita_ya',
    wordVi: 'khỏe mạnh, không bệnh tật (+ ya → ārogya, trung tánh)',
    wordEn: 'health, freedom from disease',
    lessonId: 'lesson_22',
    pronunciation: 'aa-rog-ya',
    examplePali: 'Aroga + ya = ārogya',
    exampleVi: 'Không bệnh + ya = sức khỏe',
  ),
  PaliVocabModel(
    id: 'pv_L22_balatta',
    root: 'bāla',
    paradigmId: 'taddhita_tta',
    wordVi: 'ngu si (+ tta → bālatta, trung tánh)',
    wordEn: 'ignorance',
    lessonId: 'lesson_22',
    pronunciation: 'baa-lat-ta',
    examplePali: 'Bāla + tta = bālatta',
    exampleVi: 'Ngu + tta = sự ngu si',
  ),
  // ─── Hậu tố 8: So sánh hơn/nhất ───
  PaliVocabModel(
    id: 'pv_L22_seyya',
    root: 'pasattha',
    paradigmId: 'taddhita_comp',
    wordVi: 'tốt hơn (so sánh hơn của pasattha)',
    wordEn: 'better (comparative of pasattha)',
    lessonId: 'lesson_22',
    pronunciation: 'sey-ya',
    examplePali: 'pasattha → seyya (tốt hơn) → seṭṭha (tốt nhất)',
    exampleVi: 'tốt → tốt hơn → tốt nhất',
  ),
  PaliVocabModel(
    id: 'pv_L22_settha',
    root: 'pasattha',
    paradigmId: 'taddhita_super',
    wordVi: 'tốt nhất (so sánh nhất của pasattha)',
    wordEn: 'best (superlative of pasattha)',
    lessonId: 'lesson_22',
    pronunciation: 'set-tha',
    examplePali: 'pasattha → seyya → seṭṭha',
    exampleVi: 'tốt → tốt hơn → tốt nhất',
  ),
];

// =============================================================================
// PHẦN 2: HELPER DATA
// =============================================================================

const List<FabPhraseItem> kLesson22Suffixes = [
  FabPhraseItem(
    phrase: '1. A — sở hữu, dòng dõi',
    meaning: 'paññā+a=pañña (có trí) | saddhā+a=saddha (có tín) | Vasiṭṭh+a=Vāsiṭṭha (con V.)',
  ),
  FabPhraseItem(
    phrase: '2. Ika — thuộc về, thành thạo',
    meaning: 'dhamma+ika=dhammika | nagara+ika=nāgarika | vinaya+ika=venayika',
  ),
  FabPhraseItem(
    phrase: '3. Ima/iya — liên quan đến',
    meaning: 'anta+ima=antima (cuối) | majjha+ima=majjhima (giữa) | loka+iya=lokiya',
  ),
  FabPhraseItem(
    phrase: '4. Ī/ika/ima/mantu/vantu/vī — sở hữu',
    meaning: 'daṇḍa+ī=daṇḍī | guṇa+vantu=guṇavantu | medhā+vī=medhāvī',
  ),
  FabPhraseItem(
    phrase: '5. Maya — được làm bằng',
    meaning: 'aya+maya=ayomaya (sắt) | dāru+maya=dārumaya (gỗ) | mana→mano+maya',
  ),
  FabPhraseItem(
    phrase: '6. Tā — tập hợp, trạng thái (Nữ tánh)',
    meaning: 'jana+tā=janatā (đám đông) | dhamma+tā=dhammatā (bản tánh)',
  ),
  FabPhraseItem(
    phrase: '7. Tta/ya — trạng thái (Trung tánh)',
    meaning: 'aroga+ya=ārogya (sức khỏe) | bāla+tta=bālatta (ngu si)',
  ),
  FabPhraseItem(
    phrase: '8. Tara/iya + Tama/iṭṭha — So sánh',
    meaning: 'Hơn: tara/iya | Nhất: tama/iṭṭha | pasattha→seyya→seṭṭha',
  ),
  FabPhraseItem(
    phrase: '9. Ka — nhóm (số)',
    meaning: 'eka+ka=ekaka (nhóm 1) | dvi+ka=dvika (nhóm 2) | catu+ka=catukka (nhóm 4)',
  ),
  FabPhraseItem(
    phrase: '10. Kkhattuṃ — số lần',
    meaning: 'eka+kkhattuṃ=ekakkhattuṃ (1 lần) | dvi+kkhattuṃ=dvikkhattuṃ (2 lần)',
  ),
  FabPhraseItem(
    phrase: '11. Dhā/so/thā — trạng từ phân bố',
    meaning: 'eka+dhā=ekadhā (1 cách) | sabba+so=sabbaso (trọn cả) | sabba+thā=sabbathā',
  ),
];

// =============================================================================
// PHẦN 3: DAY 1 — LÝ THUYẾT 11 HẬU TỐ TADDHITA
// =============================================================================

LessonDay getLesson22Day1() {
  return LessonDay(
    id: 'lesson22_day1',
    dayNumber: 1,
    themeId: 'theme_22_taddhita',
    titleVi: 'Ngày 1: Cách Thành Lập Danh Từ — 11 Hậu tố Taddhita',
    phases: [
      // ─────────────────────────────────────────────────────────────────
      // PHASE 1: READ & LISTEN
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson22_phase1',
        phaseTypeStr: 'read_listen',
        titleVi: '📘 Taddhita — 11 Hậu tố Thành Lập Danh Từ',
        contentVi: '''
🎯 MỤC TIÊU BÀI 22
───────────────────
• Hiểu khái niệm Taddhita: từ phái sinh bằng cách thêm hậu tố vào danh từ
• Học 11 loại hậu tố Taddhita chính
• Quy tắc Vuddhi (nguyên âm tăng cường)
• So sánh hơn (tara/iya) và so sánh nhất (tama/iṭṭha)
• Chuẩn bị cho 28 câu Exercise 22

══════════════════════════════════════════════════════
A. TADDHITA — CÁCH THÀNH LẬP DANH TỪ
══════════════════════════════════════════════════════

Taddhita = từ được thành lập bằng cách thêm TIẾP VĨ NGỮ (hậu tố)
vào ngữ căn của các danh từ, căn động từ, tính từ, v.v.

Một số từ phái sinh được xem như danh từ/tính từ → chia biến cách.
Một vài từ khác được xem như bất biến từ.

══════════════════════════════════════════════════════
B. 11 LOẠI HẬU TỐ CHÍNH
══════════════════════════════════════════════════════

┌───┬──────────┬───────────────────────────────────────┬──────────────────────┐
│ # │ Hậu tố   │ Nghĩa                                 │ Ví dụ                │
├───┼──────────┼───────────────────────────────────────┼──────────────────────┤
│ 1 │ A        │ Sở hữu, dòng dõi (+ Vuddhi)          │ paññā+a=pañña        │
│ 2 │ Ika      │ Thuộc về, thành thạo (+ Vuddhi)       │ dhamma+ika=dhammika  │
│ 3 │ Ima/Iya  │ Liên quan đến                        │ anta+ima=antima      │
│ 4 │ Ī/Mantu/ │ Sở hữu                               │ guṇa+vantu=guṇavantu │
│   │ Vantu/Vī │                                       │ medhā+vī=medhāvī     │
│ 5 │ Maya     │ Được làm bằng                        │ aya+maya=ayomaya     │
│ 6 │ Tā       │ Tập hợp, trạng thái (Nữ tánh)         │ jana+tā=janatā       │
│ 7 │ Tta/Ya   │ Trạng thái, bản tính (Trung tánh)     │ aroga+ya=ārogya      │
│ 8 │ Tara/Iya │ So sánh hơn                           │ bāla+tara=bālatara   │
│   │ Tama/Iṭṭha│ So sánh nhất                         │ bāla+tama=bālatama   │
│ 9 │ Ka       │ Nhóm (số)                            │ eka+ka=ekaka         │
│10 │ Kkhattuṃ │ Số lần                               │ eka+kkhattuṃ (1 lần) │
│11 │ Dhā/So/  │ Trạng từ phân bố                     │ eka+dhā=ekadhā       │
│   │ Thā      │                                       │ sabba+so=sabbaso     │
└───┴──────────┴───────────────────────────────────────┴──────────────────────┘

══════════════════════════════════════════════════════
C. QUY TẮC VUDDHI (Nguyên âm tăng cường)
══════════════════════════════════════════════════════

Áp dụng cho hậu tố 1 (A), 2 (Ika), 7 (Ya):
Nguyên âm ĐẦU của căn được thay bằng Vuddhi khi KHÔNG theo sau
bởi PHỤ ÂM KÉP.

   a → ā      i → e      u → o

Ví dụ:
   nagara + ika = nāgarika (a→ā vì "g" đơn)
   dhamma + ika = dhammika (KHÔNG vuddhi vì "mm" kép)
   loka + ika = lokika (KHÔNG vuddhi vì "k" đơn... nhưng "o" đã là Vuddhi)
   vinaya + ika = venayika (i→e)

══════════════════════════════════════════════════════
D. BẢNG SO SÁNH HƠN / NHẤT
══════════════════════════════════════════════════════

   CẤP NGUYÊN     SO SÁNH HƠN      SO SÁNH NHẤT
   ─────────      ───────────      ────────────
   bāla (ngu)     bālatara         bālatama
   paṇīta (quý)   paṇītatara       paṇītatama
   pāpa (ác)      pāpatara/pāpiya  pāpatama/pāpiṭṭha
   appa (ít)      appatara         appatama
   kaṇa (trẻ)     kaṇiya           kaṇiṭṭha
   pasattha (tốt) seyya            seṭṭha
   vuddha (già)   jeyya            jeṭṭha

⚠️ Lưu ý đặc biệt:
   • pasattha → seyya/seṭṭha (bất quy tắc)
   • vuddha → jeyya/jeṭṭha (bất quy tắc)
   • kaṇa → kaṇiya/kaṇiṭṭha (chỉ dùng iya/iṭṭha)
''',
        contentEn: '''
LESSON 22 — NOMINAL DERIVATIVES (TADDHITA)

Words formed by adding suffixes to noun bases = Taddhita.

11 SUFFIX TYPES:
 1.A (possession/pedigree)  2.Ika (pertaining to)
 3.Ima/Iya (related)  4.Ī/Mantu/Vantu/Vī (possession)
 5.Maya (made of)  6.Tā (state, feminine)
 7.Tta/Ya (state, neuter)  8.Tara/Tama (comparative/superlative)
 9.Ka (group)  10.Kkhattuṃ (times)  11.Dhā/So/Thā (distributive)

VUDDHI RULE: Initial vowel (not followed by double consonant) is strengthened.
Irregular: pasattha→seyya→seṭṭha | vuddha→jeyya→jeṭṭha
''',
        fabVocab: const [
          FabVocabItem(
            wordEn: 'pañña (paññā + a)',
            wordVi: 'người có trí',
            pronunciation: 'pan-nyah',
            partOfSpeech: 'hậu tố A',
          ),
          FabVocabItem(
            wordEn: 'dhammika (dhamma + ika)',
            wordVi: 'chánh trực, đúng pháp',
            pronunciation: 'dham-mi-ka',
            partOfSpeech: 'hậu tố Ika',
          ),
          FabVocabItem(
            wordEn: 'guṇavantu (guṇa + vantu)',
            wordVi: 'người có đức',
            pronunciation: 'gu-na-van-tu',
            partOfSpeech: 'hậu tố Vantu',
          ),
          FabVocabItem(
            wordEn: 'medhāvī (medhā + vī)',
            wordVi: 'người có trí tuệ',
            pronunciation: 'med-haa-vii',
            partOfSpeech: 'hậu tố Vī',
          ),
          FabVocabItem(
            wordEn: 'ayomaya (aya + maya)',
            wordVi: 'làm bằng sắt',
            pronunciation: 'a-yo-ma-ya',
            partOfSpeech: 'hậu tố Maya',
          ),
          FabVocabItem(
            wordEn: 'janatā (jana + tā)',
            wordVi: 'đám đông, hội chúng',
            pronunciation: 'ja-na-taa',
            partOfSpeech: 'hậu tố Tā',
          ),
          FabVocabItem(
            wordEn: 'ārogya (aroga + ya)',
            wordVi: 'sức khỏe, không bệnh',
            pronunciation: 'aa-rog-ya',
            partOfSpeech: 'hậu tố Ya',
          ),
          FabVocabItem(
            wordEn: 'seyya / seṭṭha',
            wordVi: 'tốt hơn / tốt nhất',
            pronunciation: 'sey-ya / set-tha',
            partOfSpeech: 'so sánh bất quy tắc',
          ),
        ],
        fabPhrases: const [
          FabPhraseItem(
            phrase: 'Vuddhi: a→ā, i→e, u→o',
            meaning: 'Nguyên âm đầu tăng cường khi KHÔNG theo sau bởi phụ âm kép',
          ),
          FabPhraseItem(
            phrase: 'Tā = Nữ tánh | Tta/Ya = Trung tánh',
            meaning: 'janatā (đám đông, nữ) | ārogya (sức khỏe, trung)',
          ),
          FabPhraseItem(
            phrase: 'pasattha → seyya → seṭṭha',
            meaning: 'tốt → tốt hơn → tốt nhất (bất quy tắc)',
          ),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 2: MIND GAME
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson22_phase2',
        phaseTypeStr: 'mind_game',
        titleVi: '🧠 Trò Chơi Tư Duy: Nhận Diện Hậu Tố',
        mixedSegments: const [
          MixedSegment(text: '① '),
          MixedSegment(
            text: '[có trí]',
            isVietnamese: true,
            answer: 'pañña',
          ),
          MixedSegment(text: ' = paññā + '),
          MixedSegment(
            text: 'a',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(text: ' (hậu tố A — sở hữu)\n\n'),

          MixedSegment(text: '② '),
          MixedSegment(
            text: '[chánh trực]',
            isVietnamese: true,
            answer: 'dhammika',
          ),
          MixedSegment(text: ' = dhamma + '),
          MixedSegment(
            text: 'ika',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(text: ' (hậu tố Ika — thuộc về)\n\n'),

          MixedSegment(text: '③ '),
          MixedSegment(
            text: '[người có đức]',
            isVietnamese: true,
            answer: 'guṇavantu',
          ),
          MixedSegment(text: ' = guṇa + '),
          MixedSegment(
            text: 'vantu',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(text: ' (hậu tố Vantu — sở hữu)\n\n'),

          MixedSegment(text: '④ '),
          MixedSegment(
            text: '[bằng gỗ]',
            isVietnamese: true,
            answer: 'dārumaya',
          ),
          MixedSegment(text: ' = dāru + '),
          MixedSegment(
            text: 'maya',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(text: ' (hậu tố Maya — làm bằng)\n\n'),

          MixedSegment(text: '⑤ '),
          MixedSegment(
            text: '[sức khỏe]',
            isVietnamese: true,
            answer: 'ārogya',
          ),
          MixedSegment(text: ' = aroga + '),
          MixedSegment(
            text: 'ya',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(text: ' (hậu tố Ya — trung tánh)\n\n'),

          MixedSegment(text: '⑥ '),
          MixedSegment(
            text: '[tốt nhất]',
            isVietnamese: true,
            answer: 'seṭṭha',
          ),
          MixedSegment(text: ' ← pasattha (bất quy tắc)\n'),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 3: LISTENING QUIZ
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson22_phase3',
        phaseTypeStr: 'listening_quiz',
        titleVi: '🎧 Quiz: Hậu tố Taddhita',
        questions: const [
          QuizQuestion(
            id: 'lesson22_q01',
            questionText: '"Nāgarika" = nagara + ika. Quy tắc Vuddhi có áp dụng không?',
            options: [
              'A. Không, vì "g" là phụ âm đơn',
              'B. Có, a→ā vì "g" đơn → nāgarika',
              'C. Không, vì "nagara" có 3 âm tiết',
              'D. Có, a→e vì là Vuddhi',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson22_q02',
            questionText: '"Manomaya" = mana + maya. Tại sao "a" cuối đổi thành "o"?',
            options: [
              'A. Do Vuddhi substitute',
              'B. Do quy tắc Sandhi: mana→mano khi kết hợp (xem Bài 19)',
              'C. Do lỗi chính tả',
              'D. Do hậu tố maya yêu cầu',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson22_q03',
            questionText: 'Hậu tố nào tạo danh từ NỮ TÁNH chỉ trạng thái?',
            options: [
              'A. Tta',
              'B. Ya',
              'C. Tā',
              'D. Maya',
            ],
            correctIndex: 2,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson22_q04',
            questionText: '"Seyya" và "seṭṭha" là dạng so sánh của từ nào?',
            options: [
              'A. bāla (ngu)',
              'B. pāpa (ác)',
              'C. pasattha (tốt)',
              'D. vuddha (già)',
            ],
            correctIndex: 2,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson22_q05',
            questionText: '"Dvikkhattuṃ" gồm những thành phần nào?',
            options: [
              'A. dvi + ka + khattuṃ',
              'B. dvi + kkhattuṃ = hai lần',
              'C. dvi + khattu = hai nhóm',
              'D. dvi + kkha + tuṃ',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson22_q06',
            questionText: '"Medhāvī" = medhā + vī. Hậu tố "vī" nghĩa gì?',
            options: [
              'A. Thuộc về',
              'B. Sở hữu (có trí tuệ)',
              'C. Được làm bằng',
              'D. Nhóm',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson22_q07',
            questionText: '"Sabbaso" = sabba + so. "so" thuộc nhóm hậu tố nào?',
            options: [
              'A. Hậu tố số lần',
              'B. Hậu tố so sánh',
              'C. Hậu tố trạng từ phân bố (dhā/so/thā)',
              'D. Hậu tố sở hữu',
            ],
            correctIndex: 2,
            practiceNumber: 'practice1',
          ),
        ],
        fabAnswers: const [
          FabAnswerItem(
            en: 'Q1: Vuddhi applies — a→ā',
            vi: '① Có, Vuddhi áp dụng: a→ā vì "g" là phụ âm đơn (không kép). nagara → nāgarika.',
          ),
          FabAnswerItem(
            en: 'Q2: Sandhi rule from Lesson 19',
            vi: '② Do Sandhi: mana + maya → manomaya. Chữ "a" cuối của mana đổi thành "o" khi kết hợp (Bài 19).',
          ),
          FabAnswerItem(
            en: 'Q3: Tā creates feminine nouns',
            vi: '③ Tā tạo danh từ Nữ tánh: janatā (đám đông), bālatā (ngu si), dhammatā (bản tánh).',
          ),
          FabAnswerItem(
            en: 'Q4: pasattha → seyya → seṭṭha',
            vi: '④ pasattha (tốt) → seyya (tốt hơn) → seṭṭha (tốt nhất). Đây là dạng bất quy tắc.',
          ),
          FabAnswerItem(
            en: 'Q5: dvi + kkhattuṃ = twice',
            vi: '⑤ dvi (hai) + kkhattuṃ (số lần) = dvikkhattuṃ = hai lần.',
          ),
          FabAnswerItem(
            en: 'Q6: vī = possession',
            vi: '⑥ vī là hậu tố sở hữu. medhā (trí tuệ) + vī = medhāvī = người có trí tuệ.',
          ),
          FabAnswerItem(
            en: 'Q7: so = distributive adverb suffix',
            vi: '⑦ "so" thuộc nhóm trạng từ phân bố (dhā/so/thā). sabbaso = trong mọi cách, trọn cả.',
          ),
        ],
      ),
    ],
  );
}

// =============================================================================
// PHẦN 4: DAY 2 — BÀI TẬP 22 (28 CÂU DỊCH)
// =============================================================================

LessonDay getLesson22Day2() {
  return LessonDay(
    id: 'lesson22_day2',
    dayNumber: 2,
    themeId: 'theme_22_taddhita',
    titleVi: 'Ngày 2: Luyện dịch Exercise 22 (28 câu)',
    phases: [
      // ─────────────────────────────────────────────────────────────────
      // PHASE 4: READ & LISTEN — Câu 1-14
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson22_phase4',
        phaseTypeStr: 'read_listen',
        titleVi: '📖 Đọc hiểu: Câu 1-14 (Exercise 22)',
        contentVi: '''
📖 BÀI TẬP 22 — NHÓM 1 (Câu 1–14)
Dịch sang tiếng Việt:

 1. "Rājā bhavatu dhammiko."
    → "Mong nhà vua hãy trở thành người chánh trực."

 2. "Socati puttehi puttimā."
    → "Người có con cái thì sầu khổ vì con."

 3. Tava paṇḍiccena mama kiṃ payojanaṃ?
    → Trí tuệ của ngươi có lợi ích gì cho ta?

 4. Ahaṃ mama mātāpitare sadā dvikkhattuṃ vandāmi.
    → Tôi luôn đảnh lễ cha mẹ tôi hai lần.

 5. Manussattam'pi labhitvā kasmā tumhe puññaṃ na karotha?
    → Đã được nhân tánh (làm người) rồi, tại sao các ngươi
    không làm phước?

 6. Eso saddho dāyako sabbadā sīlaṃ sammā rakkhati.
    → Người thí chủ có tín tâm này luôn giữ giới đúng đắn.

 7. Sabbesu devamanussesu sammā-sambuddho pana seṭṭho hoti.
    → Trong tất cả chư thiên và nhân loại, Đức Chánh Đẳng
    Giác là bậc tối thắng (tốt nhất).

 8. Imesaṃ dvinnaṃ sāvakānaṃ ayaṃ pana jeyyo seyyo ca hoti.
    → Trong hai vị đệ tử này, vị này thì lớn tuổi hơn và tốt hơn.

 9. Tasmiṃ āpaṇe vāṇijo dārumayabhaṇḍāni na vikkiṇāti.
    → Tại cửa hàng ấy, người thương gia không bán các vật
    dụng bằng gỗ.

10. Yo saddho vā pañño vā yaṃ yaṃ desaṃ gacchati so tatth'eva
    pūjito hoti.
    → Người có tín tâm hay có trí tuệ, đi đến xứ nào thì
    được tôn kính tại nơi ấy.

11. Mahārañño kaniṭṭhaputto imasmiṃ raṭṭhe
    seṭṭharājabhaṇḍāgāriko hoti.
    → Con trai út của đại vương trở thành vị thủ quỹ hoàng gia
    tối cao trong vương quốc này.

12. Amhākaṃ antevāsikānaṃ kaṇiyo pana venayiko, kaniṭṭho
    pana ābhidhammiko.
    → Trong các đệ tử của chúng tôi, vị trẻ hơn thì thông thạo
    Giới luật, vị trẻ nhất thì thông thạo Thắng Pháp.

13. Lokiyajanā puññapāpaṃ katvā sugatiduggatīsu uppajjitvā
    bahudhā kāyikasukhadukkhaṃ bhuñjanti.
    → Người thế gian sau khi làm phước và tội, tái sanh vào
    cõi lành và cõi khổ, thọ hưởng hạnh phúc và khổ đau
    thuộc về thân theo nhiều cách.

14. "Tesaṃ saccena sīlena — khantimettabalena ca
    Te pi tvaṃ anurakkhantu — ārogyena sukhena ca."
    → "Do sự chân thật, giới hạnh — và sức mạnh của nhẫn nhục
    và từ ái của họ, mong họ hộ trì ngươi — với sức khỏe
    và hạnh phúc."
''',
        contentEn: '''
EXERCISE 22 — GROUP 1 (Sentences 1–14)

 1. "May the king be righteous."
 2. "One with children grieves because of children."
 3. What use is your wisdom to me?
 4. I always salute my parents twice.
 5. Having obtained manhood, why don't you do merit?
 6. This faithful donor always observes precepts properly.
 7. Among all devas and humans, the Sammā-sambuddha is the best.
 8. Of these two disciples, this one is older and better.
 9. In that shop the merchant does not sell wooden goods.
10. Whoever is faithful or wise, wherever they go, is honored there.
11. The great king's youngest son becomes the chief royal treasurer.
12. Of our disciples, the younger is a Vinaya expert, the youngest an Abhidhamma expert.
13. Worldly people, having done good and evil, are reborn and experience bodily happiness and suffering in many ways.
14. "By their truth and virtue — by patience and loving-kindness — may they protect you with health and happiness."
''',
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 5: MIND GAME — Ghép câu 1-14
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson22_phase5',
        phaseTypeStr: 'mind_game',
        titleVi: '🧠 Trò Chơi Tư Duy: Dịch Câu 1-14',
        mixedSegments: const [
          // Câu 1
          MixedSegment(text: '① '),
          MixedSegment(
            text: '[chánh trực]',
            isVietnamese: true,
            answer: 'dhammiko',
          ),
          MixedSegment(text: ' = dhamma + ika\n\n'),

          // Câu 2
          MixedSegment(text: '② '),
          MixedSegment(
            text: '[người có con]',
            isVietnamese: true,
            answer: 'puttimā',
          ),
          MixedSegment(text: ' = putta + ima\n\n'),

          // Câu 5
          MixedSegment(text: '⑤ '),
          MixedSegment(
            text: '[nhân tánh]',
            isVietnamese: true,
            answer: 'Manussattaṃ',
          ),
          MixedSegment(text: ' = manussa + tta (trung tánh)\n\n'),

          // Câu 7
          MixedSegment(text: '⑦ '),
          MixedSegment(
            text: '[tối thắng, tốt nhất]',
            isVietnamese: true,
            answer: 'seṭṭho',
          ),
          MixedSegment(text: ' ← pasattha (siêu cấp bất quy tắc)\n\n'),

          // Câu 9
          MixedSegment(text: '⑨ '),
          MixedSegment(
            text: '[vật dụng bằng gỗ]',
            isVietnamese: true,
            answer: 'dārumayabhaṇḍāni',
          ),
          MixedSegment(text: ' = dāru + maya (làm bằng gỗ)\n\n'),

          // Câu 13
          MixedSegment(text: '⑬ '),
          MixedSegment(
            text: '[cõi lành & cõi khổ]',
            isVietnamese: true,
            answer: 'sugatiduggatīsu',
          ),
          MixedSegment(text: ' = su+gati (lành) & du+gati (khổ)\n'),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 6: LISTENING QUIZ — Quiz câu 1-14
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson22_phase6',
        phaseTypeStr: 'listening_quiz',
        titleVi: '🎧 Quiz: Phân Tích Câu 1-14',
        questions: const [
          QuizQuestion(
            id: 'lesson22_q08',
            questionText: 'Câu 2: "puttimā" = putta + ima. Hậu tố "ima" nghĩa gì?',
            options: [
              'A. Thuộc về',
              'B. Sở hữu (có con cái)',
              'C. Được làm bằng',
              'D. Nhóm',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson22_q09',
            questionText: 'Câu 5: "Manussattaṃ" thuộc tánh gì?',
            options: [
              'A. Nam tánh',
              'B. Nữ tánh',
              'C. Trung tánh (hậu tố tta)',
              'D. Bất biến',
            ],
            correctIndex: 2,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson22_q10',
            questionText: 'Câu 7: "seṭṭho" là dạng gì của "pasattha"?',
            options: [
              'A. Cấp nguyên',
              'B. So sánh hơn',
              'C. So sánh nhất (bất quy tắc)',
              'D. Hậu tố Tā',
            ],
            correctIndex: 2,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson22_q11',
            questionText: 'Câu 12: "venayiko" = vinaya + ika. Nghĩa đúng?',
            options: [
              'A. Người giữ kho',
              'B. Người thông thạo Giới luật',
              'C. Người thuộc về thành phố',
              'D. Người nghiên cứu Abhidhamma',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson22_q12',
            questionText: 'Câu 13: "bahudhā" = bahu + dhā. Nghĩa đúng?',
            options: [
              'A. Hai lần',
              'B. Theo nhiều cách',
              'C. Trong mọi cách',
              'D. Theo thứ tự',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson22_q13',
            questionText: 'Câu 14: "ārogyena" = ārogya + ena (SDC). Hậu tố gốc?',
            options: [
              'A. Tā (Nữ tánh)',
              'B. Ya (Trung tánh) — aroga + ya = ārogya',
              'C. Maya (làm bằng)',
              'D. Ika (thuộc về)',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
        ],
        fabAnswers: const [
          FabAnswerItem(
            en: 'Q8: ima = possession (has sons)',
            vi: '⑧ ima = sở hữu. putta (con) + ima = puttima = người có con cái.',
          ),
          FabAnswerItem(
            en: 'Q9: tta = neuter state',
            vi: '⑨ manussa + tta = manussattaṃ (trung tánh). Hậu tố tta luôn tạo danh từ trung tánh.',
          ),
          FabAnswerItem(
            en: 'Q10: seṭṭha = superlative of pasattha',
            vi: '⑩ seṭṭho = so sánh nhất của pasattha (tốt). Dạng bất quy tắc: pasattha → seyya → seṭṭha.',
          ),
          FabAnswerItem(
            en: 'Q11: vinaya + ika = Vinaya expert',
            vi: '⑪ vinaya (Giới luật) + ika = venayiko (Vuddhi: i→e) = người thông thạo Giới luật.',
          ),
          FabAnswerItem(
            en: 'Q12: bahu + dhā = in many ways',
            vi: '⑫ bahu (nhiều) + dhā (trạng từ phân bố) = bahudhā = theo nhiều cách.',
          ),
          FabAnswerItem(
            en: 'Q13: aroga + ya = ārogya (neuter)',
            vi: '⑬ ārogya = aroga (không bệnh) + ya = sức khỏe (trung tánh). ārogyena = SDC = "bằng/với sức khỏe".',
          ),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 7: READ & LISTEN — Câu 15-28
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson22_phase7',
        phaseTypeStr: 'read_listen',
        titleVi: '📖 Đọc hiểu: Câu 15-28 (Exercise 22)',
        contentVi: '''
📖 BÀI TẬP 22 — NHÓM 2 (Câu 15–28)
Dịch sang tiếng Việt:

15. Sace tvaṃ puññaṃ aññesaṃ na kareyyāsi, kiṃ tava
    manussattassa atthaṃ?
    → Nếu ngươi không làm phước cho người khác, thì nhân tánh
    của ngươi có ích gì?

16. Sabbaṃ kāyikakammaṃ manomayaṃ hoti.
    → Tất cả hành động thuộc về thân đều do tâm tạo.

17. Tassa jeṭṭhabhātā pāṭhasālāya guṇiṭṭhadārako hoti.
    → Anh cả của vị ấy là đứa trẻ có đức hạnh nhất
    trong trường học.

18. Mahajanatā sālāyaṃ bahudhā nisīdi.
    → Đám đông lớn ngồi trong giảng đường theo nhiều cách.

19. Ārogyaṃ seṭṭhadhanaṃ hoti.
    → Sức khỏe là tài sản tốt nhất.
    (Hoặc: Ārogyaṃ paramadhanaṃ — Sức khỏe là tài sản tối thượng.)

20. Yo sabbathā Buddhadhammataṃ bujjhati so Buddho hoti.
    → Người nào hiểu Phật Pháp tánh (bản tánh của Phật Pháp)
    trong mọi cách, người ấy là Buddha.

21. Ahaṃ bhaṇḍāgārikaṃ bahukkhattuṃ passituṃ agamiṃ.
    → Tôi đã đi gặp vị thủ quỹ nhiều lần.

22. Sabbā nāvā ayomayā na honti.
    → Không phải tất cả thuyền đều làm bằng sắt.

23. Kiṃ payojanaṃ bhikkhubhikkhunīnaṃ lokiyabhaṇḍehi?
    → Các vật dụng thế tục có ích lợi gì cho tỳ-khưu
    và tỳ-khưu-ni?

24. So Buddhabhāvaṃ adhigantuṃ parakkamituṃ maṃ sabbaso ovadi.
    → Vị ấy đã khuyên tôi toàn diện để đạt được Phật tánh
    và nỗ lực (tinh tấn).

25. Ahaṃ tassa dvikkhattuṃ likhiṃ, so pan'eva patilekhanaṃ
    ekakkhattuṃ na pesesi.
    → Tôi đã viết cho vị ấy hai lần, nhưng vị ấy thậm chí
    không gửi thư trả lời một lần.

26. Amhaṃ kaniṭṭhabhātā sabbesu medhiṭṭho hoti.
    → Em trai út của chúng tôi là người có trí tuệ nhất
    trong tất cả.

27. Dhammikā ca medhāvino ca katipayā.
    → Những người chánh trực và những bậc có trí tuệ thì
    có một số ít.

28. Dārumayamañcā ayomayamañcehi sundaratarā.
    → Giường bằng gỗ thì đẹp hơn giường bằng sắt.
''',
        contentEn: '''
EXERCISE 22 — GROUP 2 (Sentences 15–28)

15. If you don't do merit for others, what use is your manhood?
16. All bodily action is mind-made.
17. His elder brother is the most virtuous child in the school.
18. The great multitude sat in the hall in many ways.
19. Health is the best wealth.
20. Whoever fully understands the Buddha-Dhamma nature is a Buddha.
21. I went to see the treasurer many times.
22. Not all ships are made of iron.
23. What use are worldly goods to monks and nuns?
24. He advised me fully to attain Buddhahood and strive.
25. I wrote to him twice, but he didn't even send one reply.
26. Our youngest brother is the wisest of all.
27. The righteous and the wise are few.
28. Wooden beds are more beautiful than iron beds.
''',
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 8: MIND GAME — Ghép câu 15-28
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson22_phase8',
        phaseTypeStr: 'mind_game',
        titleVi: '🧠 Trò Chơi Tư Duy: Dịch Câu 15-28',
        mixedSegments: const [
          // Câu 16
          MixedSegment(text: '⑯ '),
          MixedSegment(
            text: '[do tâm tạo]',
            isVietnamese: true,
            answer: 'manomayaṃ',
          ),
          MixedSegment(text: ' = mana → mano + maya\n\n'),

          // Câu 17
          MixedSegment(text: '⑰ '),
          MixedSegment(
            text: '[có đức nhất]',
            isVietnamese: true,
            answer: 'guṇiṭṭha',
          ),
          MixedSegment(text: ' = guṇa + iṭṭha (so sánh nhất)\n\n'),

          // Câu 22
          MixedSegment(text: '㉒ '),
          MixedSegment(
            text: '[làm bằng sắt]',
            isVietnamese: true,
            answer: 'ayomayā',
          ),
          MixedSegment(text: ' = aya + maya (sắt + làm bằng)\n\n'),

          // Câu 26
          MixedSegment(text: '㉖ '),
          MixedSegment(
            text: '[có trí nhất]',
            isVietnamese: true,
            answer: 'medhiṭṭho',
          ),
          MixedSegment(text: ' = medha + iṭṭha (trí + nhất)\n\n'),

          // Câu 28
          MixedSegment(text: '㉘ '),
          MixedSegment(
            text: '[đẹp hơn]',
            isVietnamese: true,
            answer: 'sundaratarā',
          ),
          MixedSegment(text: ' = sundara + tara (so sánh hơn)\n'),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 9: LISTENING QUIZ — Quiz câu 15-28
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson22_phase9',
        phaseTypeStr: 'listening_quiz',
        titleVi: '🎧 Quiz: Phân Tích Câu 15-28',
        questions: const [
          QuizQuestion(
            id: 'lesson22_q14',
            questionText: 'Câu 17: "guṇiṭṭha" = guṇa + iṭṭha. "iṭṭha" nghĩa gì?',
            options: [
              'A. Sở hữu',
              'B. So sánh hơn',
              'C. So sánh nhất',
              'D. Trạng thái',
            ],
            correctIndex: 2,
            practiceNumber: 'practice3',
          ),
          QuizQuestion(
            id: 'lesson22_q15',
            questionText: 'Câu 21: "bahukkhattuṃ" = bahu + kkhattuṃ. Nghĩa đúng?',
            options: [
              'A. Nhiều nhóm',
              'B. Nhiều lần',
              'C. Nhiều cách',
              'D. Nhiều hướng',
            ],
            correctIndex: 1,
            practiceNumber: 'practice3',
          ),
          QuizQuestion(
            id: 'lesson22_q16',
            questionText: 'Câu 25: "ekakkhattuṃ" và "dvikkhattuṃ" — nghĩa là?',
            options: [
              'A. Một nhóm, hai nhóm',
              'B. Một lần, hai lần',
              'C. Một cách, hai cách',
              'D. Một hướng, hai hướng',
            ],
            correctIndex: 1,
            practiceNumber: 'practice3',
          ),
          QuizQuestion(
            id: 'lesson22_q17',
            questionText: 'Câu 26: "medhiṭṭho" = medha + iṭṭha. Nghĩa đúng?',
            options: [
              'A. Người có trí',
              'B. Người có trí hơn',
              'C. Người có trí nhất',
              'D. Người thiếu trí',
            ],
            correctIndex: 2,
            practiceNumber: 'practice3',
          ),
          QuizQuestion(
            id: 'lesson22_q18',
            questionText: 'Câu 28: "sundaratarā" = sundara + tara. "tara" nghĩa gì?',
            options: [
              'A. So sánh nhất',
              'B. So sánh hơn',
              'C. Sở hữu',
              'D. Trạng thái',
            ],
            correctIndex: 1,
            practiceNumber: 'practice3',
          ),
          QuizQuestion(
            id: 'lesson22_q19',
            questionText: 'Tổng kết: Hậu tố Taddhita nào tạo danh từ TRUNG TÁNH?',
            options: [
              'A. Tā',
              'B. Tta và Ya',
              'C. Maya',
              'D. Ika',
            ],
            correctIndex: 1,
            practiceNumber: 'practice3',
          ),
        ],
        fabAnswers: const [
          FabAnswerItem(
            en: 'Q14: iṭṭha = superlative',
            vi: '⑭ iṭṭha = so sánh nhất. guṇa (đức) + iṭṭha = guṇiṭṭha = có đức nhất.',
          ),
          FabAnswerItem(
            en: 'Q15: bahu + kkhattuṃ = many times',
            vi: '⑮ bahu (nhiều) + kkhattuṃ (số lần) = bahukkhattuṃ = nhiều lần.',
          ),
          FabAnswerItem(
            en: 'Q16: ekakkhattuṃ = once, dvikkhattuṃ = twice',
            vi: '⑯ eka+kkhattuṃ = một lần, dvi+kkhattuṃ = hai lần. Hậu tố kkhattuṃ chỉ số lần.',
          ),
          FabAnswerItem(
            en: 'Q17: medha + iṭṭha = wisest',
            vi: '⑰ medha (trí) + iṭṭha (nhất) = medhiṭṭho = có trí nhất (so sánh nhất).',
          ),
          FabAnswerItem(
            en: 'Q18: tara = comparative',
            vi: '⑱ tara = so sánh hơn. sundara (đẹp) + tara = sundaratara = đẹp hơn.',
          ),
          FabAnswerItem(
            en: 'Q19: Tta and Ya create neuter nouns',
            vi: '⑲ Tta và Ya tạo danh từ trung tánh. Tā tạo danh từ nữ tánh. VD: ārogya (trung), janatā (nữ).',
          ),
        ],
      ),
    ],
  );
}

// =============================================================================
// PHẦN 5: HÀM TIỆN ÍCH
// =============================================================================

({LessonDay day1, LessonDay day2}) getLesson22Data() {
  return (
    day1: getLesson22Day1(),
    day2: getLesson22Day2(),
  );
}
