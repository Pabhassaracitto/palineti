// =============================================================================
// LESSON 23 DATA
// Bài học 23: Sự Hình Thành Động Danh Từ (Kitaka) — Hậu tố động từ
// Nguồn: Nārada Mahāthera, "An Elementary Pāḷi Course", Lesson 23
// =============================================================================

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

// =============================================================================
// PHẦN 1: DANH SÁCH TỪ VỰNG MỚI (PaliVocabModel)
// Các hậu tố Kitaka chính + ví dụ
// =============================================================================

final kLesson23Vocab = <PaliVocabModel>[
  // ─── Hậu tố 1: "A" — Danh từ trừu tượng, tác nhân ───
  PaliVocabModel(
    id: 'pv_L23_bhava',
    root: 'bhū',
    paradigmId: 'kitaka_a',
    wordVi: 'hiện hữu, sanh hữu (+ a → bhava, Vuddhi)',
    wordEn: 'becoming, existence',
    lessonId: 'lesson_23',
    pronunciation: 'bha-va',
    examplePali: 'bhū + a = bhava',
    exampleVi: 'thỉ, là → hiện hữu',
  ),
  PaliVocabModel(
    id: 'pv_L23_dosa',
    root: 'dusa',
    paradigmId: 'kitaka_a',
    wordVi: 'sân hận, bực dọc (+ a → dosa, Vuddhi)',
    wordEn: 'anger, hatred',
    lessonId: 'lesson_23',
    pronunciation: 'do-sa',
    examplePali: 'dusa + a = dosa',
    exampleVi: 'sân → sân hận',
  ),
  PaliVocabModel(
    id: 'pv_L23_moha',
    root: 'muha',
    paradigmId: 'kitaka_a',
    wordVi: 'vô minh, si mê (+ a → moha, Vuddhi)',
    wordEn: 'ignorance, delusion',
    lessonId: 'lesson_23',
    pronunciation: 'mo-ha',
    examplePali: 'muha + a = moha',
    exampleVi: 'si → vô minh',
  ),
  PaliVocabModel(
    id: 'pv_L23_lobha',
    root: 'lubha',
    paradigmId: 'kitaka_a',
    wordVi: 'tham lam, ước muốn (+ a → lobha, Vuddhi)',
    wordEn: 'covetousness, greed',
    lessonId: 'lesson_23',
    pronunciation: 'lo-bha',
    examplePali: 'lubha + a = lobha',
    exampleVi: 'tham → tham lam',
  ),
  PaliVocabModel(
    id: 'pv_L23_khaya',
    root: 'khī',
    paradigmId: 'kitaka_a',
    wordVi: 'sự đoạn diệt, hủy diệt (+ a → khaya)',
    wordEn: 'destruction',
    lessonId: 'lesson_23',
    pronunciation: 'kha-ya',
    examplePali: 'khī + a = khaya',
    exampleVi: 'diệt → đoạn diệt',
  ),
  // ─── Hậu tố 3: "Ana" — Hành động, trạng thái ───
  PaliVocabModel(
    id: 'pv_L23_gamana',
    root: 'gamu',
    paradigmId: 'kitaka_ana',
    wordVi: 'việc đi, sự đi (+ ana → gamana)',
    wordEn: 'going, walking',
    lessonId: 'lesson_23',
    pronunciation: 'ga-ma-na',
    examplePali: 'gamu + ana = gamana',
    exampleVi: 'đi → việc đi',
  ),
  PaliVocabModel(
    id: 'pv_L23_karana',
    root: 'kara',
    paradigmId: 'kitaka_ana',
    wordVi: 'việc làm, hành động (+ ana → karaṇa)',
    wordEn: 'doing, action',
    lessonId: 'lesson_23',
    pronunciation: 'ka-ra-na',
    examplePali: 'kara + ana = karaṇa',
    exampleVi: 'làm → việc làm',
  ),
  // ─── Hậu tố 4: "Aka" — Tác nhân, thói quen ───
  PaliVocabModel(
    id: 'pv_L23_karaka',
    root: 'kara',
    paradigmId: 'kitaka_aka',
    wordVi: 'người làm, tác nhân (+ aka → karaka)',
    wordEn: 'doer, agent',
    lessonId: 'lesson_23',
    pronunciation: 'ka-ra-ka',
    examplePali: 'kara + aka = karaka',
    exampleVi: 'làm → người làm',
  ),
  PaliVocabModel(
    id: 'pv_L23_dhammapiti',
    root: 'pā (uống)',
    paradigmId: 'kitaka_compound',
    wordVi: 'người uống Pháp (dhamma + pīti)',
    wordEn: 'one who drinks the Dhamma',
    lessonId: 'lesson_23',
    pronunciation: 'dham-ma-pii-ti',
    examplePali: 'dhammaṃ + pā + a = dhammapīti',
    exampleVi: 'Pháp + uống → người uống Pháp',
  ),
  // ─── Hậu tố 5: "Ti" — Hành động (Nữ tánh) ───
  PaliVocabModel(
    id: 'pv_L23_gati',
    root: 'gamu',
    paradigmId: 'kitaka_ti',
    wordVi: 'cảnh giới, tái sanh (+ ti → gati, Nữ tánh)',
    wordEn: 'going, state of existence, rebirth',
    lessonId: 'lesson_23',
    pronunciation: 'ga-ti',
    examplePali: 'gamu + ti = gati',
    exampleVi: 'đi → cảnh giới',
  ),
  PaliVocabModel(
    id: 'pv_L23_mutti',
    root: 'muca',
    paradigmId: 'kitaka_ti',
    wordVi: 'sự giải thoát (+ ti → mutti, Nữ tánh)',
    wordEn: 'release, deliverance',
    lessonId: 'lesson_23',
    pronunciation: 'mut-ti',
    examplePali: 'muca + ti = mutti',
    exampleVi: 'giải thoát → sự giải thoát',
  ),
  PaliVocabModel(
    id: 'pv_L23_sati',
    root: 'sara',
    paradigmId: 'kitaka_ti',
    wordVi: 'quán niệm, chánh niệm (+ ti → sati, Nữ tánh)',
    wordEn: 'recollection, memory, mindfulness',
    lessonId: 'lesson_23',
    pronunciation: 'sa-ti',
    examplePali: 'sara + ti = sati',
    exampleVi: 'ghi nhớ → chánh niệm',
  ),
  // ─── Hậu tố 6: "Anīya"/"Ya" — Phải, phù hợp ───
  PaliVocabModel(
    id: 'pv_L23_karaniya',
    root: 'kara',
    paradigmId: 'kitaka_aniya',
    wordVi: 'cần phải làm (+ anīya → karaṇīya)',
    wordEn: 'ought to be done',
    lessonId: 'lesson_23',
    pronunciation: 'ka-ranii-ya',
    examplePali: 'kara + anīya = karaṇīya',
    exampleVi: 'làm → cần phải làm',
  ),
  PaliVocabModel(
    id: 'pv_L23_pujaniya',
    root: 'pūja',
    paradigmId: 'kitaka_aniya',
    wordVi: 'đáng được cúng dường (+ anīya → pūjanīya)',
    wordEn: 'worthy of offering',
    lessonId: 'lesson_23',
    pronunciation: 'puu-ja-nii-ya',
    examplePali: 'pūja + anīya = pūjanīya',
    exampleVi: 'cúng dường → đáng cúng dường',
  ),
  PaliVocabModel(
    id: 'pv_L23_deyya',
    root: 'dā',
    paradigmId: 'kitaka_ya_eyya',
    wordVi: 'nên cho, đáng cho (+ ya → deyya, eyya)',
    wordEn: 'fit to be given',
    lessonId: 'lesson_23',
    pronunciation: 'dey-ya',
    examplePali: 'dā + ya (+ eyya) = deyya',
    exampleVi: 'cho → nên cho',
  ),
  // ─── Hậu tố 7: "Ī"/"Ana" — Khuynh hướng, thói quen ───
  PaliVocabModel(
    id: 'pv_L23_papakari',
    root: 'pāpa + kara',
    paradigmId: 'kitaka_i',
    wordVi: 'kẻ làm ác (+ ī → pāpakārī, Vuddhi)',
    wordEn: 'evil-doer',
    lessonId: 'lesson_23',
    pronunciation: 'paa-pa-kaa-rii',
    examplePali: 'pāpa + kara + ī = pāpakārī',
    exampleVi: 'ác + làm → kẻ làm ác',
  ),
  PaliVocabModel(
    id: 'pv_L23_saccavadi',
    root: 'saccaṃ + vada',
    paradigmId: 'kitaka_i',
    wordVi: 'người nói thật, chân thật (+ ī → saccavādī)',
    wordEn: 'truthful speaker',
    lessonId: 'lesson_23',
    pronunciation: 'sat-cha-vaa-dii',
    examplePali: 'saccaṃ + vada + ī = saccavādī',
    exampleVi: 'sự thật + nói → người nói thật',
  ),
  PaliVocabModel(
    id: 'pv_L23_kodhana',
    root: 'kudha',
    paradigmId: 'kitaka_ana2',
    wordVi: 'thường hay giận, tức giận (+ ana → kodhana, Vuddhi)',
    wordEn: 'disposed to anger, angry',
    lessonId: 'lesson_23',
    pronunciation: 'ko-dha-na',
    examplePali: 'kudha + ana = kodhana',
    exampleVi: 'giận → hay giận',
  ),
  // ─── Hậu tố 8: Tuṃ + kāma — Khao khát ───
  PaliVocabModel(
    id: 'pv_L23_gantukama',
    root: 'gamu + tuṃ + kāma',
    paradigmId: 'kitaka_tum_kama',
    wordVi: 'muốn đi (gantukāma)',
    wordEn: 'desirous of going, wishing to go',
    lessonId: 'lesson_23',
    pronunciation: 'gan-tu-kaa-ma',
    examplePali: 'gantuṃ + kāma = gantukāma',
    exampleVi: 'đi (inf.) + muốn → muốn đi',
  ),
];

// =============================================================================
// PHẦN 2: HELPER DATA
// =============================================================================

const List<FabPhraseItem> kLesson23Suffixes = [
  FabPhraseItem(
    phrase: '1. A — Trừu tượng, tác nhân (Vuddhi)',
    meaning: 'bhū+a=bhava | dusa+a=dosa | lubha+a=lobha | muha+a=moha',
  ),
  FabPhraseItem(
    phrase: '2. A — Ghép với đối tượng',
    meaning: 'dhammaṃ+pā+a=dhammapīti (người uống Pháp)',
  ),
  FabPhraseItem(
    phrase: '3. Ana — Hành động, trạng thái',
    meaning: 'gamu+ana=gamana | kara+ana=karaṇa | jīv+ana=jīvana',
  ),
  FabPhraseItem(
    phrase: '4. Aka — Tác nhân, thói quen',
    meaning: 'kara+aka=karaka (người làm) | dhamma+vada+aka=dhammavādaka',
  ),
  FabPhraseItem(
    phrase: '5. Ti — Hành động (Nữ tánh)',
    meaning: 'gamu+ti=gati | muca+ti=mutti | sara+ti=sati',
  ),
  FabPhraseItem(
    phrase: '6. Anīya/Ya — Phải, phù hợp',
    meaning: 'kara+anīya=karaṇīya | dā+ya(→eyya)=deyya',
  ),
  FabPhraseItem(
    phrase: '7. Ī/Ana — Khuynh hướng (Vuddhi)',
    meaning: 'pāpa+kara+ī=pāpakārī | kudha+ana=kodhana',
  ),
  FabPhraseItem(
    phrase: '8. Tuṃ+kāma — Khao khát, muốn',
    meaning: 'gantuṃ+kāma=gantukāma | bhuñjituṃ+kāma=bhuñjitukāma',
  ),
];

// =============================================================================
// PHẦN 3: DAY 1
// =============================================================================

LessonDay getLesson23Day1() {
  return LessonDay(
    id: 'lesson23_day1',
    dayNumber: 1,
    themeId: 'theme_23_kitaka',
    titleVi: 'Ngày 1: Kitaka — 8 Hậu tố Động Danh Từ',
    phases: [
      // ─────────────────────────────────────────────────────────────────
      // PHASE 1: READ & LISTEN
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson23_phase1',
        phaseTypeStr: 'read_listen',
        titleVi: '📘 Kitaka — Sự Hình Thành Động Danh Từ',
        contentVi: '''
🎯 MỤC TIÊU BÀI 23
───────────────────
• Hiểu khái niệm Kitaka: từ phái sinh bằng cách thêm hậu tố vào căn động từ
• Học 8 loại hậu tố Kitaka chính
• Phân biệt Kitaka (động từ → danh từ) với Taddhita (danh từ → danh từ)
• Chuẩn bị cho 28 câu Exercise 23

══════════════════════════════════════════════════════
A. KITAKA — SỰ HÌNH THÀNH ĐỘNG DANH TỪ
══════════════════════════════════════════════════════

Kitaka = từ được thành lập bằng cách thêm TIẾP VĨ NGỮ (hậu tố)
vào CĂN ĐỘNG TỪ (verbal roots).

Phân biệt:
   • Taddhita (Bài 22): danh từ → danh từ (thêm hậu tố vào danh từ)
   • Kitaka (Bài 23):   động từ → danh từ (thêm hậu tố vào căn Đ.Từ)

══════════════════════════════════════════════════════
B. 8 LOẠI HẬU TỐ KITAKA CHÍNH
══════════════════════════════════════════════════════

┌───┬──────────┬─────────────────────────────┬───────────────────────────┐
│ # │ Hậu tố   │ Nghĩa                       │ Ví dụ                     │
├───┼──────────┼─────────────────────────────┼───────────────────────────┤
│ 1 │ A        │ Trừu tượng, tác nhân       │ bhū+a=bhava (hiện hữu)    │
│   │          │ (Vuddhi)                    │ dusa+a=dosa (sân hận)     │
│ 2 │ A        │ Ghép với đối tượng          │ dhammaṃ+pā+a=dhammapīti   │
│ 3 │ Ana      │ Hành động, trạng thái       │ gamu+ana=gamana (đi)      │
│ 4 │ Aka      │ Tác nhân, thói quen         │ kara+aka=karaka (làm)     │
│ 5 │ Ti       │ Hành động (Nữ tánh)         │ gamu+ti=gati (cảnh giới)  │
│ 6 │ Anīya/Ya │ Phải, phù hợp, xứng đáng    │ kara+anīya=karaṇīya       │
│ 7 │ Ī/Ana    │ Khuynh hướng, thói quen    │ pāpa+kara+ī=pāpakārī      │
│   │          │ (Vuddhi)                    │ kudha+ana=kodhana         │
│ 8 │ Tuṃ+kāma │ Khao khát, muốn             │ gantuṃ+kāma=gantukāma     │
└───┴──────────┴─────────────────────────────┴───────────────────────────┘

══════════════════════════════════════════════════════
C. CHI TIẾT TỪNG HẬU TỐ
══════════════════════════════════════════════════════

📌 1. HẬU TỐ "A" — Danh từ trừu tượng (Vuddhi)

   bhū  + a = bhava    hiện hữu     dusa + a = dosa   sân hận
   lubha + a = lobha   tham lam     muha + a = moha   vô minh
   ji   + a = jaya     chiến thắng  khī  + a = khaya  đoạn diệt
   pata + a = pāta     rớt xuống    pada + a = pāda   bàn chân
   ruja + a = roga     bệnh tật

📌 3. HẬU TỐ "Ana" — Hành động, trạng thái

   gamu + ana = gamana  việc đi     jīva + ana = jīvana sự sống
   kara + ana = karaṇa  việc làm    paca + ana = pacana việc nấu

📌 4. HẬU TỐ "Aka" — Tác nhân, thói quen

   kara + aka = karaka     người làm
   dhammaṃ vada + aka = dhammavādaka  người thuyết Pháp

📌 5. HẬU TỐ "Ti" — Hành động (NỮ TÁNH)

   gamu + ti = gati    cảnh giới   muca + ti = mutti  giải thoát
   pā   + ti = pīti    hoan hỷ     sara + ti = sati   chánh niệm
   su   + ti = suti    lắng nghe   ṭhā  + ti = ṭhiti  trạng thái
   gī   + ti = gīti    bài nhạc    thu  + ti = thuti  khen ngợi

📌 6. HẬU TỐ "Anīya" / "Ya" — Phải, phù hợp

   kara + anīya = karaṇīya   cần phải làm
   pā   + anīya = pānīya     nên uống (nước)
   pūja + anīya = pūjanīya   đáng cúng dường
   dā   + ya (+ eyya) = deyya  nên cho
   ñā   + ya (+ eyya) = ñeyya  cần được biết

📌 7. HẬU TỐ "Ī" / "Ana" — Khuynh hướng (Vuddhi)

   pāpa + kara + ī = pāpakārī     kẻ làm ác
   saccaṃ + vada + ī = saccavādī  người nói thật
   brahmaṃ + cara + ī = brahmacārī  người sống phạm hạnh
   kudha + ana = kodhana    hay giận
   bhāsa + ana = bhāsana    lắm lời
   kampa + ana = kampana    hay dao động

📌 HÌNH THỨC BẤT QUY TẮC (hậu tố "Ya"):

   bhuji + ya = bhojja   ăn được
   mada  + ya = majja    say đắm
   khāda + ya = khajja   nhai được
   vada  + ya = vajja    đáng nói, lỗi lầm
   yuja  + ya = yogga    thích hợp
   garaha + ya = gārayha đáng trách

📌 8. "Tuṃ" + "kāma" — Khao khát, muốn

   gantuṃ + kāma = gantukāma        muốn đi
   bhuñjituṃ + kāma = bhuñjitukāma  muốn ăn
   pacituṃ + kāma = pacitukāma      muốn nấu
   kātuṃ + kāma = kattukāma         muốn làm
''',
        contentEn: '''
LESSON 23 — VERBAL DERIVATIVES (KITAKA)

Words formed by adding suffixes to verbal roots = Kitaka.

8 SUFFIX TYPES:
 1. A — abstract nouns, agent (Vuddhi): bhū+a=bhava
 2. A — compounded with objects: dhammaṃ+pā=dhammapīti
 3. Ana — action, state: gamu+ana=gamana
 4. Aka — agent, habit: kara+aka=karaka
 5. Ti — action (feminine): gamu+ti=gati
 6. Anīya/Ya — ought to, fit: kara+anīya=karaṇīya
 7. Ī/Ana — disposed to (Vuddhi): pāpa+kara+ī=pāpakārī
 8. Tuṃ+kāma — wishing: gantuṃ+kāma=gantukāma

Irregular "Ya" forms: bhuji→bhojja, mada→majja, vada→vajja
''',
        fabVocab: const [
          FabVocabItem(
            wordEn: 'bhava (bhū + a)',
            wordVi: 'hiện hữu, sanh hữu',
            pronunciation: 'bha-va',
            partOfSpeech: 'hậu tố A',
          ),
          FabVocabItem(
            wordEn: 'dosa (dusa + a)',
            wordVi: 'sân hận',
            pronunciation: 'do-sa',
            partOfSpeech: 'hậu tố A',
          ),
          FabVocabItem(
            wordEn: 'moha (muha + a)',
            wordVi: 'vô minh, si mê',
            pronunciation: 'mo-ha',
            partOfSpeech: 'hậu tố A',
          ),
          FabVocabItem(
            wordEn: 'gati (gamu + ti)',
            wordVi: 'cảnh giới, tái sanh',
            pronunciation: 'ga-ti',
            partOfSpeech: 'hậu tố Ti',
          ),
          FabVocabItem(
            wordEn: 'mutti (muca + ti)',
            wordVi: 'sự giải thoát',
            pronunciation: 'mut-ti',
            partOfSpeech: 'hậu tố Ti',
          ),
          FabVocabItem(
            wordEn: 'sati (sara + ti)',
            wordVi: 'chánh niệm, quán niệm',
            pronunciation: 'sa-ti',
            partOfSpeech: 'hậu tố Ti',
          ),
          FabVocabItem(
            wordEn: 'karaṇīya (kara + anīya)',
            wordVi: 'cần phải làm',
            pronunciation: 'ka-ra-nii-ya',
            partOfSpeech: 'hậu tố Anīya',
          ),
          FabVocabItem(
            wordEn: 'pāpakārī (pāpa + kara + ī)',
            wordVi: 'kẻ làm ác',
            pronunciation: 'paa-pa-kaa-rii',
            partOfSpeech: 'hậu tố Ī',
          ),
        ],
        fabPhrases: const [
          FabPhraseItem(
            phrase: 'Lobha + Dosa + Moha = 3 căn bất thiện',
            meaning: 'Tham + Sân + Si = gốc rễ bất thiện trong Phật giáo',
          ),
          FabPhraseItem(
            phrase: 'Ti → Nữ tánh | Ana/ya → Trung tánh',
            meaning: 'gati (nữ) | gamana (trung) | mutti (nữ)',
          ),
          FabPhraseItem(
            phrase: 'Bất quy tắc: bhojja, majja, vajja, yogga',
            meaning: 'bhuji→bhojja | mada→majja | vada→vajja | yuja→yogga',
          ),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 2: MIND GAME
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson23_phase2',
        phaseTypeStr: 'mind_game',
        titleVi: '🧠 Trò Chơi Tư Duy: Nhận Diện Kitaka',
        mixedSegments: const [
          MixedSegment(text: '① '),
          MixedSegment(
            text: '[hiện hữu]',
            isVietnamese: true,
            answer: 'bhava',
          ),
          MixedSegment(text: ' = bhū + a\n\n'),

          MixedSegment(text: '② '),
          MixedSegment(
            text: '[sân hận]',
            isVietnamese: true,
            answer: 'dosa',
          ),
          MixedSegment(text: ' = dusa + a\n\n'),

          MixedSegment(text: '③ '),
          MixedSegment(
            text: '[vô minh]',
            isVietnamese: true,
            answer: 'moha',
          ),
          MixedSegment(text: ' = muha + a\n\n'),

          MixedSegment(text: '④ '),
          MixedSegment(
            text: '[tham lam]',
            isVietnamese: true,
            answer: 'lobha',
          ),
          MixedSegment(text: ' = lubha + a\n\n'),

          MixedSegment(text: '⑤ '),
          MixedSegment(
            text: '[giải thoát]',
            isVietnamese: true,
            answer: 'mutti',
          ),
          MixedSegment(text: ' = muca + ti (Nữ tánh)\n\n'),

          MixedSegment(text: '⑥ '),
          MixedSegment(
            text: '[chánh niệm]',
            isVietnamese: true,
            answer: 'sati',
          ),
          MixedSegment(text: ' = sara + ti (Nữ tánh)\n\n'),

          MixedSegment(text: '⑦ '),
          MixedSegment(
            text: '[cần phải làm]',
            isVietnamese: true,
            answer: 'karaṇīya',
          ),
          MixedSegment(text: ' = kara + anīya\n\n'),

          MixedSegment(text: '⑧ '),
          MixedSegment(
            text: '[kẻ làm ác]',
            isVietnamese: true,
            answer: 'pāpakārī',
          ),
          MixedSegment(text: ' = pāpa + kara + ī\n'),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 3: LISTENING QUIZ
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson23_phase3',
        phaseTypeStr: 'listening_quiz',
        titleVi: '🎧 Quiz: Hậu tố Kitaka',
        questions: const [
          QuizQuestion(
            id: 'lesson23_q01',
            questionText: '"Dosa" = dusa + a. Hậu tố "A" ở đây có đặc điểm gì?',
            options: [
              'A. Không thay đổi nguyên âm',
              'B. Nguyên âm đầu bị Vuddhi: u→o',
              'C. Nguyên âm đầu bị giảm',
              'D. Thêm phụ âm kép',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson23_q02',
            questionText: '"Sati" = sara + ti. Hậu tố "ti" tạo danh từ thuộc tánh gì?',
            options: [
              'A. Nam tánh',
              'B. Nữ tánh',
              'C. Trung tánh',
              'D. Bất biến',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson23_q03',
            questionText: '"Karaṇīya" = kara + anīya. Nghĩa đúng là?',
            options: [
              'A. Người làm',
              'B. Việc làm',
              'C. Cần phải làm, nên làm',
              'D. Đã làm xong',
            ],
            correctIndex: 2,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson23_q04',
            questionText: '"Pāpakārī" = pāpa + kara + ī. Hậu tố "ī" nghĩa gì?',
            options: [
              'A. Hành động',
              'B. Trạng thái',
              'C. Khuynh hướng, thói quen (người có thói quen làm ác)',
              'D. Phải, phù hợp',
            ],
            correctIndex: 2,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson23_q05',
            questionText: '"Gantukāma" = gantuṃ + kāma. Cấu trúc đúng?',
            options: [
              'A. Động từ nguyên thể + "kāma" (muốn) = muốn đi',
              'B. Phân từ + kāma',
              'C. Danh từ + kāma',
              'D. Tính từ + kāma',
            ],
            correctIndex: 0,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson23_q06',
            questionText: 'Hình thức bất quy tắc nào ĐÚNG?',
            options: [
              'A. bhuji + ya = bhujja',
              'B. bhuji + ya = bhojja (ăn được)',
              'C. bhuji + ya = bhavja',
              'D. bhuji + ya = bhojaya',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson23_q07',
            questionText: 'Ba căn bất thiện trong Phật giáo (Lobha, Dosa, Moha) được tạo từ?',
            options: [
              'A. Hậu tố Ti',
              'B. Hậu tố Ana',
              'C. Hậu tố A (trừu tượng, Vuddhi)',
              'D. Hậu tố Anīya',
            ],
            correctIndex: 2,
            practiceNumber: 'practice1',
          ),
        ],
        fabAnswers: const [
          FabAnswerItem(
            en: 'Q1: Vuddhi u→o',
            vi: '① Vuddhi: u→o. dusa (sân) + a = dosa (sân hận). Tương tự: lubha→lobha, muha→moha.',
          ),
          FabAnswerItem(
            en: 'Q2: ti = feminine',
            vi: '② Hậu tố "ti" tạo danh từ Nữ tánh. sati, gati, mutti, pīti, thuti đều là Nữ tánh.',
          ),
          FabAnswerItem(
            en: 'Q3: anīya = ought to be done',
            vi: '③ Anīya = cần phải, nên. karaṇīya = cần phải làm. pūjanīya = đáng cúng dường.',
          ),
          FabAnswerItem(
            en: 'Q4: ī = disposed to, in the habit of',
            vi: '④ Ī = khuynh hướng, thói quen. pāpakārī = kẻ có thói quen làm ác. saccavādī = người quen nói thật.',
          ),
          FabAnswerItem(
            en: 'Q5: infinitive + kāma',
            vi: '⑤ gantuṃ (động từ nguyên thể "đi") + kāma (muốn) = gantukāma (muốn đi).',
          ),
          FabAnswerItem(
            en: 'Q6: bhuji + ya = bhojja (irregular)',
            vi: '⑥ Bất quy tắc: bhuji + ya = bhojja (ăn được). Cũng vậy: mada→majja, vada→vajja, yuja→yogga.',
          ),
          FabAnswerItem(
            en: 'Q7: Suffix A with Vuddhi',
            vi: '⑦ Lobha (lubha+a), Dosa (dusa+a), Moha (muha+a) đều dùng hậu tố A với Vuddhi.',
          ),
        ],
      ),
    ],
  );
}

// =============================================================================
// PHẦN 4: DAY 2 — BÀI TẬP 23 (28 CÂU DỊCH)
// =============================================================================

LessonDay getLesson23Day2() {
  return LessonDay(
    id: 'lesson23_day2',
    dayNumber: 2,
    themeId: 'theme_23_kitaka',
    titleVi: 'Ngày 2: Luyện dịch Exercise 23 (28 câu)',
    phases: [
      // ─────────────────────────────────────────────────────────────────
      // PHASE 4: READ & LISTEN — Câu 1-14
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson23_phase4',
        phaseTypeStr: 'read_listen',
        titleVi: '📖 Đọc hiểu: Câu 1-14 (Exercise 23)',
        contentVi: '''
📖 BÀI TẬP 23 — NHÓM 1 (Câu 1–14)
Dịch sang tiếng Việt:

 1. "Kiṃ dado balado hoti — kiṃ dado hoti vaṇṇado.
    Kiṃ dado sukhado hoti — kiṃ dado hoti cakkhudo?"
    → "Cho gì thành người cho sức lực — cho gì thành người
    cho nhan sắc. Cho gì thành người cho hạnh phúc —
    cho gì thành người cho ánh mắt (thị lực)?"

 2. "Annado balado hoti — vatthado hoti vaṇṇado
    Yānado sukhado hoti — dīpado hoti cakkhudo."
    → "Cho cơm thành người cho sức lực — cho y phục thành
    người cho nhan sắc. Cho xe cộ thành người cho hạnh phúc —
    cho đèn thành người cho ánh mắt."

 3. Maggo atthi maggiko n'atthi, gamanaṃ atthi gamako n'atthi,
    kammaṃ atthi kārako na'tthi.
    → Con đường có nhưng không có người đi, sự đi có nhưng
    không có người đi, nghiệp có nhưng không có người làm.

 4. "Dhammapīti sukhaṃ seti."
    → "Người uống Pháp (thẩm thấu Pháp) ngủ an lạc."

 5. "Dhammacārī sukhaṃ seti — asmiṃ loke paramhi ca."
    → "Người hành Pháp ngủ an lạc — trong đời này và đời sau."

 6. "Sabbapāpassa akaraṇaṃ"
    → "Không làm tất cả điều ác"

 7. "Pāpānaṃ akaraṇaṃ sukhaṃ."
    → "Không làm các điều ác thì an lạc."

 8. Sabbadānaṃ dhammadānaṃ jināti
    Sabbaṃ rasaṃ dhammarasaṃ jināti,
    Sabbaṃ ratiṃ dhammaratiṃ jināti,
    Taṇhakkhayo sabbadukkhaṃ jināti.
    → Bố thí Pháp thắng tất cả bố thí.
    Vị Pháp thắng tất cả vị.
    Hoan hỷ Pháp thắng tất cả hoan hỷ.
    Đoạn diệt ái thắng tất cả khổ.

 9. Yo sāvako kāyena vā vācāya vā cetasā vā kiñci'pi pāpaṃ
    kammaṃ na karoti so hoti Dhammadharo, Dhammavādī.
    → Vị đệ tử nào không làm bất kỳ điều ác nào bằng thân,
    bằng lời nói, hay bằng ý, vị ấy là người trì Pháp,
    người thuyết Pháp (chân chánh).

10. Tava thutiyā me payojanaṃ n'atthi.
    → Lời khen ngợi của ngươi không có lợi ích cho tôi.

11. Saccavādino sadā pūjanīyā honti.
    → Những người nói thật luôn đáng được cúng dường.

12. Sampattivipattīsu akampanacitto hohi.
    → Hãy có tâm không dao động trong thịnh suy (thành công
    và thất bại).

13. Sādhusīlī sāvakā dhammasavanatthāya gantukāmā
    nagarato nikkhamiṃsu.
    → Các đệ tử có giới hạnh tốt, muốn đi nghe Pháp,
    đã rời khỏi thành phố.

14. Bhāsanadārakā paṇḍitehi gārayhā honti.
    → Những đứa trẻ lắm lời bị các bậc trí quả trách.
''',
        contentEn: '''
EXERCISE 23 — GROUP 1 (Sentences 1–14)

 1. "What gift gives strength? What gift gives beauty?
    What gift gives happiness? What gift gives eyesight?"
 2. "Food gives strength, clothing gives beauty,
    vehicles give happiness, lamps give eyesight."
 3. The path exists but no traveller, going exists but no goer,
    kamma exists but no doer.
 4. "One who drinks the Dhamma sleeps happily."
 5. "One who practises the Dhamma sleeps happily — in this world and the next."
 6. "Not doing any evil."
 7. "Not doing evil is happiness."
 8. The gift of Dhamma surpasses all gifts...
 9. A disciple who does no evil by body, speech, or mind is a Dhamma-bearer.
10. Your praise is of no use to me.
11. Truthful speakers are always worthy of offering.
12. Be unshaken in prosperity and adversity.
13. The virtuous disciples, wishing to hear the Dhamma, left the city.
14. Garrulous children are blamable by the wise.
''',
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 5: MIND GAME — Ghép câu 1-14
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson23_phase5',
        phaseTypeStr: 'mind_game',
        titleVi: '🧠 Trò Chơi Tư Duy: Dịch Câu 1-14',
        mixedSegments: const [
          // Câu 3
          MixedSegment(text: '③ '),
          MixedSegment(
            text: '[người đi]',
            isVietnamese: true,
            answer: 'maggiko',
          ),
          MixedSegment(text: ' ← magga+aka | '),
          MixedSegment(
            text: '[người làm]',
            isVietnamese: true,
            answer: 'kārako',
          ),
          MixedSegment(text: ' ← kara+aka\n\n'),

          // Câu 4
          MixedSegment(text: '④ '),
          MixedSegment(
            text: '[người uống Pháp]',
            isVietnamese: true,
            answer: 'Dhammapīti',
          ),
          MixedSegment(text: ' = dhammaṃ + pā + a\n\n'),

          // Câu 5
          MixedSegment(text: '⑤ '),
          MixedSegment(
            text: '[người hành Pháp]',
            isVietnamese: true,
            answer: 'Dhammacārī',
          ),
          MixedSegment(text: ' = dhamma + cara + ī (thói quen)\n\n'),

          // Câu 8
          MixedSegment(text: '⑧ '),
          MixedSegment(
            text: '[đoạn diệt ái]',
            isVietnamese: true,
            answer: 'Taṇhakkhayo',
          ),
          MixedSegment(text: ' = taṇhā + khaya (ái + diệt)\n\n'),

          // Câu 11
          MixedSegment(text: '⑪ '),
          MixedSegment(
            text: '[đáng cúng dường]',
            isVietnamese: true,
            answer: 'pūjanīyā',
          ),
          MixedSegment(text: ' = pūja + anīya (phải, xứng đáng)\n\n'),

          // Câu 14
          MixedSegment(text: '⑭ '),
          MixedSegment(
            text: '[lắm lời]',
            isVietnamese: true,
            answer: 'Bhāsana',
          ),
          MixedSegment(text: ' = bhāsa + ana | '),
          MixedSegment(
            text: '[đáng trách]',
            isVietnamese: true,
            answer: 'gārayhā',
          ),
          MixedSegment(text: ' = garaha + ya\n'),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 6: LISTENING QUIZ — Quiz câu 1-14
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson23_phase6',
        phaseTypeStr: 'listening_quiz',
        titleVi: '🎧 Quiz: Phân Tích Câu 1-14',
        questions: const [
          QuizQuestion(
            id: 'lesson23_q08',
            questionText: 'Câu 3: "maggiko" và "kārako" dùng hậu tố nào?',
            options: [
              'A. Ana (hành động)',
              'B. Aka (tác nhân)',
              'C. Ti (Nữ tánh)',
              'D. Ī (khuynh hướng)',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson23_q09',
            questionText: 'Câu 5: "Dhammacārī" = dhamma + cara + ī. Hậu tố "ī" nghĩa?',
            options: [
              'A. Phải, nên',
              'B. Hành động',
              'C. Khuynh hướng, thói quen (người quen hành Pháp)',
              'D. Sở hữu',
            ],
            correctIndex: 2,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson23_q10',
            questionText: 'Câu 8: "Taṇhakkhayo" = taṇhā + khaya. "khaya" từ căn nào?',
            options: [
              'A. kara (làm)',
              'B. khī (diệt) + a → khaya = đoạn diệt',
              'C. gamu (đi)',
              'D. ji (thắng)',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson23_q11',
            questionText: 'Câu 11: "pūjanīyā" dùng hậu tố nào?',
            options: [
              'A. Aka',
              'B. Ana',
              'C. Anīya (đáng, xứng đáng)',
              'D. Ti',
            ],
            correctIndex: 2,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson23_q12',
            questionText: 'Câu 14: "gārayhā" thuộc dạng nào?',
            options: [
              'A. Quy tắc: garaha + anīya',
              'B. Bất quy tắc: garaha + ya = gārayha (đáng trách)',
              'C. Bất quy tắc: garaha + ti',
              'D. Quy tắc: garaha + aka',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson23_q13',
            questionText: 'Câu 13: "gantukāmā" = gantuṃ + kāma. Cấu trúc?',
            options: [
              'A. Phân từ hiện tại + kāma',
              'B. Động từ nguyên thể (tuṃ) + kāma = muốn đi',
              'C. Danh từ + kāma',
              'D. Quá khứ phân từ + kāma',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
        ],
        fabAnswers: const [
          FabAnswerItem(
            en: 'Q8: Aka = agent',
            vi: '⑧ Aka = tác nhân. magga+aka=maggiko (người đi đường), kara+aka=kārako (người làm).',
          ),
          FabAnswerItem(
            en: 'Q9: ī = habit, disposed to',
            vi: '⑨ Ī = khuynh hướng. dhamma+cara+ī = Dhammacārī = người quen hành Pháp.',
          ),
          FabAnswerItem(
            en: 'Q10: khī + a = khaya',
            vi: '⑩ khī (diệt) + a = khaya (đoạn diệt). Taṇhakkhayo = đoạn diệt ái (ái + diệt).',
          ),
          FabAnswerItem(
            en: 'Q11: Anīya = worthy of',
            vi: '⑪ Anīya = đáng, xứng đáng. pūja+anīya = pūjanīya = đáng cúng dường.',
          ),
          FabAnswerItem(
            en: 'Q12: garaha + ya = gārayha (irregular)',
            vi: '⑫ Bất quy tắc: garaha+ya = gārayha (đáng trách). Tương tự: bhuji→bhojja, vada→vajja.',
          ),
          FabAnswerItem(
            en: 'Q13: infinitive (tuṃ) + kāma',
            vi: '⑬ gantuṃ (nguyên thể "đi") + kāma (muốn) = gantukāma = muốn đi.',
          ),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 7: READ & LISTEN — Câu 15-28
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson23_phase7',
        phaseTypeStr: 'read_listen',
        titleVi: '📖 Đọc hiểu: Câu 15-28 (Exercise 23)',
        contentVi: '''
📖 BÀI TẬP 23 — NHÓM 2 (Câu 15–28)
Dịch sang tiếng Việt:

15. Rāga-dosa-mohakkhayena muttiṃ labhanti.
    → Người ta đạt được giải thoát do đoạn diệt tham-sân-si.

16. Ayaṃ kumbhakhāro ayomayaghaṭe karoti.
    → Người thợ gốm này làm những cái bình bằng sắt.

17. Pāpakārino ca puññakārino ca kammehi ñātabbā.
    → Kẻ làm ác và người làm phước được biết qua hành động.

18. Dhammavādino sabbehi pūjetabbā.
    → Những người thuyết Pháp (chân chánh) nên được
    tất cả tôn kính.

19. Tassa vaṇṇena sāvakānaṃ kiṃ payojanaṃ?
    → Lời khen ngợi vị ấy có ích lợi gì cho các đệ tử?

20. Ahaṃ tassa gamanāgamanaṃ na jānāmi.
    → Tôi không biết việc đi và về của vị ấy.

21. Osadhaṃ kāyarogassa na ca mānasikarogassa atthi.
    → Không có thuốc cho bệnh thân và cũng không cho bệnh tâm.

22. Rathaṃ kattukāmo rathakāro ārāme ucciṭṭharukkhaṃ pātesi.
    → Người thợ đóng xe muốn làm xe đã đốn cây cao
    trong khu vườn.

23. Ko jānāti 'suve amhākaṃ maccu āgamissatī'ti?
    → Ai biết rằng 'ngày mai thần chết sẽ đến với chúng ta'?

24. Gatiyā ahaṃ 'so sādhusālī hotī'ti jānāmi.
    → Qua cách đi, tôi biết rằng 'vị ấy là người có bản tánh tốt'.

25. Saccavādino vādo suṇeyya.
    → Lời nói của người nói thật nên được lắng nghe.

26. Ayaṃ mālākāro pāpakārī na hoti.
    → Người thợ tràng hoa này không phải kẻ làm ác.

27. Pāpakammaṃ Dhammavādībhi kāyena vā vācāya vā cetasā
    vā na kareyya.
    → Người thuyết Pháp không nên làm điều ác bằng thân,
    bằng lời nói, hay bằng ý.

28. Dāyakā dhammasavaṇatthāya gantukāmā tehi pūjitasāvake
    upasaṅkamiṃsu.
    → Các thí chủ muốn đi nghe Pháp đã đến gần các đệ tử
    được tôn kính ấy.
''',
        contentEn: '''
EXERCISE 23 — GROUP 2 (Sentences 15–28)

15. By the destruction of greed, hatred, delusion, one attains release.
16. This potter makes iron pots.
17. Evil-doers and merit-doers are known by their actions.
18. Dhamma-speakers should be honored by all.
19. What use is his praise to the disciples?
20. I do not know his going and coming.
21. There is no medicine for bodily and mental disease.
22. The chariot-maker, wishing to make a chariot, felled a tall tree.
23. Who knows that death will come to us tomorrow?
24. By his gait I know he is good-natured.
25. The speech of a truthful speaker should be heard.
26. This garland-maker is not an evil-doer.
27. A Dhamma-speaker should not do evil by body, speech, or mind.
28. The donors, wishing to hear the Dhamma, approached the honored disciples.
''',
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 8: MIND GAME — Ghép câu 15-28
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson23_phase8',
        phaseTypeStr: 'mind_game',
        titleVi: '🧠 Trò Chơi Tư Duy: Dịch Câu 15-28',
        mixedSegments: const [
          // Câu 15
          MixedSegment(text: '⑮ '),
          MixedSegment(
            text: '[tham-sân-si]',
            isVietnamese: true,
            answer: 'Rāga-dosa-moha',
          ),
          MixedSegment(text: '\n   = lubha+a | dusa+a | muha+a (3 căn bất thiện)\n\n'),

          MixedSegment(text: '   '),
          MixedSegment(
            text: '[giải thoát]',
            isVietnamese: true,
            answer: 'muttiṃ',
          ),
          MixedSegment(text: ' = muca + ti (Nữ tánh)\n\n'),

          // Câu 18
          MixedSegment(text: '⑱ '),
          MixedSegment(
            text: '[người thuyết Pháp]',
            isVietnamese: true,
            answer: 'Dhammavādino',
          ),
          MixedSegment(text: ' = dhamma + vada + ī (thói quen)\n\n'),

          // Câu 22
          MixedSegment(text: '㉒ '),
          MixedSegment(
            text: '[muốn làm]',
            isVietnamese: true,
            answer: 'kattukāmo',
          ),
          MixedSegment(text: ' = kātuṃ + kāma (inf. + muốn)\n\n'),

          // Câu 23
          MixedSegment(text: '㉓ '),
          MixedSegment(
            text: '[thần chết]',
            isVietnamese: true,
            answer: 'maccu',
          ),
          MixedSegment(text: ' ← maccu (tử thần)\n\n'),

          // Câu 24
          MixedSegment(text: '㉔ '),
          MixedSegment(
            text: '[bản tánh tốt]',
            isVietnamese: true,
            answer: 'sādhusālī',
          ),
          MixedSegment(text: ' = sādhu + sīla + ī (có thói quen tốt)\n'),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 9: LISTENING QUIZ — Quiz câu 15-28
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson23_phase9',
        phaseTypeStr: 'listening_quiz',
        titleVi: '🎧 Quiz: Phân Tích Câu 15-28',
        questions: const [
          QuizQuestion(
            id: 'lesson23_q14',
            questionText: 'Câu 15: "Rāga-dosa-mohakkhayena" — ba căn bất thiện là gì?',
            options: [
              'A. Tham (lobha/rāga) + Sân (dosa) + Si (moha)',
              'B. Thân + Khẩu + Ý',
              'C. Quá khứ + Hiện tại + Vị lai',
              'D. Giới + Định + Tuệ',
            ],
            correctIndex: 0,
            practiceNumber: 'practice3',
          ),
          QuizQuestion(
            id: 'lesson23_q15',
            questionText: 'Câu 17: "Pāpakārino" và "puññakārino" — hậu tố nào?',
            options: [
              'A. Aka',
              'B. Ana',
              'C. Ī (kara + ī = kārī/kārino — kẻ làm)',
              'D. Ti',
            ],
            correctIndex: 2,
            practiceNumber: 'practice3',
          ),
          QuizQuestion(
            id: 'lesson23_q16',
            questionText: 'Câu 20: "gamanāgamanaṃ" = gamana + āgamana. Hậu tố?',
            options: [
              'A. A (trừu tượng)',
              'B. Ana (hành động): gamu+ana=gamana, ā+gamu+ana=āgamana',
              'C. Ti',
              'D. Aka',
            ],
            correctIndex: 1,
            practiceNumber: 'practice3',
          ),
          QuizQuestion(
            id: 'lesson23_q17',
            questionText: 'Câu 22: "kattukāmo" = kātuṃ + kāma. "kātuṃ" là gì?',
            options: [
              'A. Quá khứ phân từ của karoti',
              'B. Hiện tại phân từ',
              'C. Động từ nguyên thể (infinitive) của karoti',
              'D. Mệnh lệnh cách',
            ],
            correctIndex: 2,
            practiceNumber: 'practice3',
          ),
          QuizQuestion(
            id: 'lesson23_q18',
            questionText: 'Câu 24: "sādhusālī" = sādhu + sīla + ī. Hậu tố "ī" nghĩa?',
            options: [
              'A. Sở hữu',
              'B. Hành động',
              'C. Khuynh hướng, thói quen (người có thói quen giữ giới tốt)',
              'D. Phải, phù hợp',
            ],
            correctIndex: 2,
            practiceNumber: 'practice3',
          ),
          QuizQuestion(
            id: 'lesson23_q19',
            questionText: 'Tổng kết: Kitaka khác Taddhita ở điểm nào?',
            options: [
              'A. Kitaka thêm hậu tố vào danh từ, Taddhita vào động từ',
              'B. Kitaka thêm hậu tố vào CĂN ĐỘNG TỪ, Taddhita vào danh từ',
              'C. Không khác nhau',
              'D. Kitaka chỉ tạo Nữ tánh, Taddhita chỉ tạo Nam tánh',
            ],
            correctIndex: 1,
            practiceNumber: 'practice3',
          ),
        ],
        fabAnswers: const [
          FabAnswerItem(
            en: 'Q14: Lobha/Rāga + Dosa + Moha = 3 unwholesome roots',
            vi: '⑭ Ba căn bất thiện: Rāga/Lobha (tham) + Dosa (sân) + Moha (si). Tất cả tạo bằng hậu tố A với Vuddhi.',
          ),
          FabAnswerItem(
            en: 'Q15: ī = agent with habit',
            vi: '⑮ Ī = khuynh hướng. pāpa+kara+ī = pāpakārī (kẻ làm ác). puñña+kara+ī = puññakārī (người làm phước).',
          ),
          FabAnswerItem(
            en: 'Q16: Ana = action noun',
            vi: '⑯ Ana = hành động. gamu+ana = gamana (việc đi). ā+gamu+ana = āgamana (việc đến). gamanāgamana = việc đi-về.',
          ),
          FabAnswerItem(
            en: 'Q17: kātuṃ = infinitive of karoti',
            vi: '⑰ kātuṃ = động từ nguyên thể (infinitive) của karoti (làm). kātuṃ + kāma = kattukāma (muốn làm).',
          ),
          FabAnswerItem(
            en: 'Q18: ī = habit, disposed to',
            vi: '⑱ sādhu (tốt) + sīla (giới) + ī = sādhusālī (người có thói quen giữ giới tốt, bản tánh tốt).',
          ),
          FabAnswerItem(
            en: 'Q19: Kitaka = verbal roots, Taddhita = nouns',
            vi: '⑲ Kitaka thêm hậu tố vào CĂN ĐỘNG TỪ. Taddhita thêm hậu tố vào DANH TỪ. Đây là sự khác biệt cơ bản.',
          ),
        ],
      ),
    ],
  );
}

// =============================================================================
// PHẦN 5: HÀM TIỆN ÍCH
// =============================================================================

({LessonDay day1, LessonDay day2}) getLesson23Data() {
  return (
    day1: getLesson23Day1(),
    day2: getLesson23Day2(),
  );
}
