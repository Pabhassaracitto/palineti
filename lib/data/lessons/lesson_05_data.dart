// lesson_05_data.dart
// ---------------------------------------------------------------------------
// Bài học số 5 — An Elementary Pāḷi Course (Nārada Mahāthera)
// Chủ đề: 8 Biến cách & Trung tánh "-a"
// Nguồn: Nārada Mahāthera, "An Elementary Pāḷi Course", Lesson 5
// ---------------------------------------------------------------------------

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

LessonMeta getLesson05Meta() => const LessonMeta(
  id: 'theme_05_neuter_a_8_cases',
  lessonNumber: 5,
  titleVi: 'Trung tánh "-a" & 8 Biến cách',
  titleEn: 'Neuter "-a" & 8 Cases',
  iconEmoji: '🌱',
  colorValue: 0xFF2E8B57,
  description: 'Học 8 biến cách và áp dụng vào từ trung tánh đuôi -a',
);




// ──────────────────────────────────────────────────────────────
// VOCABULARY (31 items)
// ──────────────────────────────────────────────────────────────
final kLesson05Vocab = <PaliVocabModel>[
  PaliVocabModel(
      id: 'pv_L05_001',
      root: 'Bīja',
      paradigmId: 'neuter_a',
      wordVi: 'hạt giống, mầm',
      wordEn: 'Bīja',
      lessonId: 'lesson_05',
      pronunciation: 'bii-ja',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_002',
      root: 'Bhaṇḍa',
      paradigmId: 'neuter_a',
      wordVi: 'hàng hóa, đồ dùng, vật dụng',
      wordEn: 'Bhaṇḍa',
      lessonId: 'lesson_05',
      pronunciation: 'bhaṇ-ḍa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_003',
      root: 'Ghara',
      paradigmId: 'neuter_a',
      wordVi: 'nhà cửa, tổ ấm',
      wordEn: 'Ghara',
      lessonId: 'lesson_05',
      pronunciation: 'gha-ra',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_004',
      root: 'Khetta',
      paradigmId: 'neuter_a',
      wordVi: 'cánh đồng, ruộng, điền',
      wordEn: 'Khetta',
      lessonId: 'lesson_05',
      pronunciation: 'khet-ta',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_005',
      root: 'Lekhana',
      paradigmId: 'neuter_a',
      wordVi: 'lá thư, bức thư, văn tự',
      wordEn: 'Lekhana',
      lessonId: 'lesson_05',
      pronunciation: 'le-kha-na',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_006',
      root: 'Mitta',
      paradigmId: 'neuter_a',
      wordVi: 'người bạn (có thể là m. hay n.)',
      wordEn: 'Mitta',
      lessonId: 'lesson_05',
      pronunciation: 'mit-ta',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_007',
      root: 'Mukha',
      paradigmId: 'neuter_a',
      wordVi: 'khuôn mặt, miệng',
      wordEn: 'Mukha',
      lessonId: 'lesson_05',
      pronunciation: 'mu-kha',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_008',
      root: 'Nagara',
      paradigmId: 'neuter_a',
      wordVi: 'kinh thành, thành phố',
      wordEn: 'Nagara',
      lessonId: 'lesson_05',
      pronunciation: 'na-ga-ra',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_009',
      root: 'Pāda',
      paradigmId: 'neuter_a',
      wordVi: 'bàn chân (có thể là m. hay n.)',
      wordEn: 'Pāda',
      lessonId: 'lesson_05',
      pronunciation: 'paa-da',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_010',
      root: 'Pīṭha',
      paradigmId: 'neuter_a',
      wordVi: 'ghế, trượng kỷ, bục ngồi',
      wordEn: 'Pīṭha',
      lessonId: 'lesson_05',
      pronunciation: 'pii-ṭha',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_011',
      root: 'Potthaka',
      paradigmId: 'neuter_a',
      wordVi: 'cuốn sách',
      wordEn: 'Potthaka',
      lessonId: 'lesson_05',
      pronunciation: 'pot-tha-ka',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_012',
      root: 'Puppha',
      paradigmId: 'neuter_a',
      wordVi: 'bông hoa',
      wordEn: 'Puppha',
      lessonId: 'lesson_05',
      pronunciation: 'pup-ha',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_013',
      root: 'Udaka',
      paradigmId: 'neuter_a',
      wordVi: 'nước',
      wordEn: 'Udaka',
      lessonId: 'lesson_05',
      pronunciation: 'u-da-ka',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_014',
      root: 'Vattha',
      paradigmId: 'neuter_a',
      wordVi: 'vải vóc, y phục, quần áo',
      wordEn: 'Vattha',
      lessonId: 'lesson_05',
      pronunciation: 'vat-tha',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_015',
      root: 'Phala',
      paradigmId: 'neuter_a',
      wordVi: 'trái cây, quả (phạm trừ Trung tánh chuẩn)',
      wordEn: 'Phala',
      lessonId: 'lesson_05',
      pronunciation: 'pha-la',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_016',
      root: 'Āhāra',
      paradigmId: 'masc_a',
      wordVi: 'thức ăn, đồ ăn',
      wordEn: 'Āhāra',
      lessonId: 'lesson_05',
      pronunciation: 'aa-haa-ra',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_017',
      root: 'Osadha',
      paradigmId: 'neuter_a',
      wordVi: 'thuốc men, dược phẩm',
      wordEn: 'Osadha',
      lessonId: 'lesson_05',
      pronunciation: 'o-sa-dha',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_018',
      root: 'Bhuñjati',
      paradigmId: 'verb_pres',
      wordVi: 'ăn, thọ dụng (thường chỉ đồ ăn mềm / món đã nấu)',
      wordEn: 'Bhuñjati (bhuja)',
      lessonId: 'lesson_05',
      pronunciation: 'bhuñ-ja-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_019',
      root: 'Khādati',
      paradigmId: 'verb_pres',
      wordVi: 'ăn, nhai, cắn (thức ăn cứng, trái cây, cơm v.v.)',
      wordEn: 'Khādati (khāda)',
      lessonId: 'lesson_05',
      pronunciation: 'khaa-da-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_020',
      root: 'Likhati',
      paradigmId: 'verb_pres',
      wordVi: 'viết',
      wordEn: 'Likhati (likha)',
      lessonId: 'lesson_05',
      pronunciation: 'li-kha-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_021',
      root: 'Nisīdati',
      paradigmId: 'verb_pres',
      wordVi: 'ngồi (ngồi xuống)',
      wordEn: 'Nisīdati (ni + sada)',
      lessonId: 'lesson_05',
      pronunciation: 'ni-sii-da-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_022',
      root: 'Pūjeti',
      paradigmId: 'verb_pres',
      wordVi: 'cúng dường, tôn kính, dâng cúng',
      wordEn: 'Pūjeti (pūja)',
      lessonId: 'lesson_05',
      pronunciation: 'uu-je-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_023',
      root: 'Vapati',
      paradigmId: 'verb_pres',
      wordVi: 'gieo (hạt giống)',
      wordEn: 'Vapati (vapa)',
      lessonId: 'lesson_05',
      pronunciation: 'va-pa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_024',
      root: 'Patati',
      paradigmId: 'verb_pres',
      wordVi: 'rụng, rơi',
      wordEn: 'Patati (pata)',
      lessonId: 'lesson_05',
      pronunciation: 'pa-ta-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_025',
      root: 'Dhovati',
      paradigmId: 'verb_pres',
      wordVi: 'rửa, tắm rửa',
      wordEn: 'Dhovati (dhova)',
      lessonId: 'lesson_05',
      pronunciation: 'dho-va-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_026',
      root: 'Kiṇāti',
      paradigmId: 'verb_pres',
      wordVi: 'mua',
      wordEn: 'Kiṇāti (kiṇa)',
      lessonId: 'lesson_05',
      pronunciation: 'ki-ṇaa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_027',
      root: 'Vikkiṇāti',
      paradigmId: 'verb_pres',
      wordVi: 'bán (mua đi / bán rải)',
      wordEn: 'Vikkiṇāti (vi + kiṇa)',
      lessonId: 'lesson_05',
      pronunciation: 'vik-ki-ṇaa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_028',
      root: 'Āharati',
      paradigmId: 'verb_pres',
      wordVi: 'đem đến, mang đến, đem lại',
      wordEn: 'Āharati (ā + hara)',
      lessonId: 'lesson_05',
      pronunciation: 'aa-ha-ra-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_029',
      root: 'Peseti',
      paradigmId: 'verb_pres',
      wordVi: 'gửi, sai phái, gởi đi',
      wordEn: 'Peseti (pesa)',
      lessonId: 'lesson_05',
      pronunciation: 'pe-se-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_030',
      root: 'Nikkhamati',
      paradigmId: 'verb_pres',
      wordVi: 'ra đi, xuất hành, đi ra khỏi',
      wordEn: 'Nikkhamati (ni + khama)',
      lessonId: 'lesson_05',
      pronunciation: 'nik-kha-ma-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L05_031',
      root: 'Deti',
      paradigmId: 'verb_pres',
      wordVi: 'cho, ban cho, trao',
      wordEn: 'Deti (dā)',
      lessonId: 'lesson_05',
      pronunciation: 'de-ti',
      examplePali: '',
      exampleVi: '',
    ),
];


// ──────────────────────────────────────────────────────────────
// DAY 1: Học nền tảng — Ngữ pháp + Từ vựng
// ──────────────────────────────────────────────────────────────
LessonDay getLesson05Day1() {
  return LessonDay(
    id: 'lesson05_day1',
    dayNumber: 1,
    themeId: 'theme_05_neuter_a_eight_cases',
    titleVi: 'Ngày 1: 8 Biến cách & Trung tánh "-a" — Lý thuyết & Từ vựng',
    phases: [
      _buildDay1Phase1(),
      _buildDay1Phase2(),
    ],
  );
}

/// Phase 1: read_listen — Giải thích ngữ pháp
LessonPhase _buildDay1Phase1() {
  return LessonPhase(
    id: 'lesson05_phase1',
    phaseTypeStr: 'read_listen',
    titleVi: 'Bài đọc: 8 Biến cách & Trung tánh "-a"',
    contentVi: '''
BÀI 5 — TỔNG HỢP 8 BIẾN CÁCH "-a" & DANH TỪ TRUNG TÁNH

1) TÁM BIẾN CÁCH DANH TỪ NAM TÁNH "-a" (phạm trù "nara" — người đàn ông)
   Số ít / Số nhiều:
   - Paṭhamā (Cách 1)  — Chủ cách (CC / Nominative):      naro   / narā
   - Ālapana           — Hô cách (HC / Vocative):          nara, narā / narā
   - Dutiyā (Cách 2)   — Đối cách (ĐC / Accusative):       naraṃ  / nare
   - Tatiyā / Karaṇa (Cách 3) — Bổ trợ / Sử dụng (SDC):    narena / narebhi, narehi
   - Catutthī (Cách 4) — Chỉ đích / Cách dữ (CĐC / Dative): narāya, narassa / narānaṃ
   - Pañcamī (Cách 5)  — Xuất xứ (XXC / Ablative):         narā, naramhā, narasmā / narebhi, narehi
   - Chaṭṭhī (Cách 6)  — Sở thuộc (STC / Genitive):        narassa / narānaṃ
   - Sattamī (Cách 7)  — Định sở (ĐSC / Locative):         nare, naramhi, narasmiṃ / naresu

   Ghi chú: Tatiyā (Bổ trợ cách) và Karaṇa (Sử dụng cách) có cùng đuôi (-ena / -ehi, -ebhi) nên trong bảng biến cách người ta thường chỉ nêu Sử dụng cách.

2) DANH TỪ TRUNG TÁNH (neuter / n.) tận cùng "-a" — phạm trù "phala" (trái cây)
   Điểm KHÁC duy nhất so với Nam tánh "-a" nằm ở 3 cách số nhiều (CC / HC / ĐC);
   TẤT CẢ các biến thể còn lại (SDC, CĐC, XXC, STC, ĐSC cả ít lẫn nhiều, và các cách số ít) ĐỀU GIỐNG HỆT Nam tánh "-a".

   Bảng nhanh:
                            Số ít (n.)          Số nhiều (n.)
   Paṭhamā (CC/Nom.)        phalaṃ              phalā, phalāni
   Ālapana  (HC/Voc.)       phala, phalā        phalā, phalāni
   Dutiyā   (ĐC/Acc.)       phalaṃ              phale, phalāni
   Còn lại (cách 3→7)       GIỐNG Nam tánh "nara"

   Qui tắc phát âm quan trọng:
   Các nguyên âm đứng trước các vĩ tố -ni, -bhi, -hi, -naṃ và -su LUÔN được kéo dài (là nguyên âm dài). Vì vậy ta có: -ena (và không phải -ĕna), -ānaṃ, -ehi, -ebhi, -esu.

3) BẢNG THUẬT NGỮ CÁC CÁCH TRONG PĀḶI (cần học thuộc)
   - Paṭhamā  (thứ 1)  = Chú cách / Nominative
   - Ālapana          = Hô cách / Vocative
   - Dutiyā   (thứ 2)  = Đối cách / Accusative
   - Tatiyā   (thứ 3)  = Bổ trợ cách / Auxiliary
   - Karaṇa           = Sử dụng cách / Instrumental
   - Catutthī (thứ 4)  = Chỉ đích cách / Dative
   - Pañcamī  (thứ 5)  = Xuất xứ cách / Ablative
   - Chaṭṭhī  (thứ 6)  = Sở thuộc cách / Genitive
   - Sattamī  (thứ 7)  = Định sở cách / Locative

4) HÀI ÂM (SANDHI): mukhaṃ + ca = mukhañca
   Khi niggahita (ṃ) đứng trước một phụ âm thuộc nhóm cổ (velar: k, kh, g, gh), răng lợi (cerebral: ṭ, ṭh, ḍ, ḍh), răng (dental: t, th, d, dh), hoặc môi (labial: p, ph, b, bh) thì ṃ đổi thành âm mũi cùng hạng với phụ âm đó:
     - trước k/kh/g/gh → ṅ (niggahita cổ)
     - trước c/ch/j/jh → ñ (mũi ngạc cứng, palatal nasal)
     - trước ṭ/ṭh/ḍ/ḍh/ṇ → ṇ
     - trước t/th/d/dh/n → n
     - trước p/ph/b/bh/m → m
   Ví dụ:
     * mukhaṃ + ca  = mukhañca (ṃ → ñ vì đứng trước c) = "và mặt / và miệng".
     * pāde ca mukhañca = "chân và mặt".
     * Tương tự: ahaṃ + api = aham'pi (ṃ → m trước p) — đã học ở Bài 4.

5) CÁCH NHẬN BIẾT DANH TỪ TRUNG TÁNH TRONG CÂU
   - Khi làm chủ ngữ / tân ngữ số nhiều, các danh từ n. thường có đuôi -āni:
       phalāni khādanti = (chúng) ăn các trái cây.
       bījāni vapanti = (họ) gieo các hạt giống.
       pupphāni = các bông hoa; potthakāni = các quyển sách.
   - Khi làm chủ ngữ / tân ngữ số ít, đuôi -aṃ (trùng với Đối cách Nam tánh số ít) — cần đoán nghĩa qua ngữ cảnh hoặc qua dạng động từ:
       phalaṃ patati = trái cây rụng (không phải "họ rụng trái cây" vì động từ số ít).
''',
    contentEn: '''LESSON 5 — EIGHT CASES OF "-a" & NEUTER NOUNS

A. EIGHT CASES OF MASCULINE "-a" (nara paradigm)
   1. Paṭhamā  (Nom.) — naro / narā
   2. Ālapana  (Voc.) — nara, narā / narā
   3. Dutiyā   (Acc.) — naraṃ / nare
   4. Tatiyā/Karaṇa (Ins.) — narena / narebhi, narehi
   5. Catutthī (Dat.) — narāya, narassa / narānaṃ
   6. Pañcamī  (Abl.) — narā, naramhā, narasmā / narebhi, narehi
   7. Chaṭṭhī  (Gen.) — narassa / narānaṃ
   8. Sattamī  (Loc.) — nare, naramhi, narasmiṃ / naresu

B. NEUTER "-a" NOUNS (phala paradigm — fruit)
   - The ONLY difference from masculine "-a" is in the Nom./Voc./Acc. plural
     (and Nom./Voc./Acc. sg. are both -aṃ):
                    sg.              pl.
   Nom./Voc./Acc.   phalaṃ           phalā / phalāni / phale
   The rest of the cases (Ins.–Loc., sg. & pl.) are IDENTICAL to masc. "-a".

C. VOWEL-LENGTH RULE
   - A vowel before -ni, -bhi, -hi, -naṃ, -su is always LONG:
     -ena, -esu, -ānaṃ, -ehi (not -ĕsu, -anaṃ).

D. SANDHI: mukhaṃ + ca = mukhañca
   - Niggahita ṃ changes to the nasal of the same class as the following consonant:
       k/kh/g/gh → ṅ;  c/ch/j/jh → ñ;  ṭ/ṭh/ḍ/ḍh/ṇ → ṇ;
       t/th/d/dh/n → n;  p/ph/b/bh/m → m.
''',
    fabPhrases: [
          FabPhraseItem(
            phrase: 'phalaṃ → phalā / phalāni (CC / HC / ĐC số nhiều)',
            meaning:
                'Trung tánh khác Nam tánh ở 3 cách số nhiều này; tất cả các cách còn lại GIỐNG HỆT Nam tánh "-a".',
          ),
          FabPhraseItem(
            phrase: 'CC / ĐC ít n. = -aṃ',
            meaning:
                'Số ít Trung tánh: Chủ cách và Đối cách đều có đuôi -aṃ (phal-aṃ).',
          ),
          FabPhraseItem(
            phrase: 'CC / HC / ĐC nhiều n. = -ā / -āni / -e',
            meaning:
                'CC & HC nhiều: -ā, -āni; ĐC nhiều: -e, -āni. Thường dùng -āni.',
          ),
          FabPhraseItem(
            phrase: 'Nguyên âm trước -ni, -bhi, -hi, -naṃ, -su luôn DÀI',
            meaning:
                'Vì thế ta có -ena, -esu, -ānaṃ, -ehi... (không phải -ěsu, -anaṃ).',
          ),
          FabPhraseItem(
            phrase: 'Mukhaṃ + ca = mukhañca',
            meaning:
                'Sandhi: niggahita (ṃ) trước "c" đổi thành "ñ" (mũi ngạc cứng), viết dính thành mukhañca = "và mặt / miệng".',
          ),
        ],
  );
}

/// Phase 2: read_listen — Từ vựng
LessonPhase _buildDay1Phase2() {
  return LessonPhase(
    id: 'lesson05_phase2',
    phaseTypeStr: 'read_listen',
    titleVi: 'Từ vựng Bài 5 — Danh từ Trung tánh & Động từ mới',
    contentVi: 'Toàn bộ danh từ Trung tánh "-a" và các động từ mới của Bài 5. Lưu ý: hai từ "mitta" (bạn) và "pāda" (bàn chân) có thể chia như Nam tánh HOẶC Trung tánh (m./n.).',
    fabVocab: _buildVocabFabList(),
  );
}

List<FabVocabItem> _buildVocabFabList() {
  return const [
    FabVocabItem(
        wordEn: 'Bīja',
        pronunciation: 'bii-ja',
        wordVi: 'hạt giống, mầm',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Bhaṇḍa',
        pronunciation: 'bhaṇ-ḍa',
        wordVi: 'hàng hóa, đồ dùng, vật dụng',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Ghara',
        pronunciation: 'gha-ra',
        wordVi: 'nhà cửa, tổ ấm',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Khetta',
        pronunciation: 'khet-ta',
        wordVi: 'cánh đồng, ruộng, điền',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Lekhana',
        pronunciation: 'le-kha-na',
        wordVi: 'lá thư, bức thư, văn tự',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Mitta',
        pronunciation: 'mit-ta',
        wordVi: 'người bạn (có thể là m. hay n.)',
        partOfSpeech: 'n./m.',
      ),
    FabVocabItem(
        wordEn: 'Mukha',
        pronunciation: 'mu-kha',
        wordVi: 'khuôn mặt, miệng',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Nagara',
        pronunciation: 'na-ga-ra',
        wordVi: 'kinh thành, thành phố',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Pāda',
        pronunciation: 'paa-da',
        wordVi: 'bàn chân (có thể là m. hay n.)',
        partOfSpeech: 'n./m.',
      ),
    FabVocabItem(
        wordEn: 'Pīṭha',
        pronunciation: 'pii-ṭha',
        wordVi: 'ghế, trượng kỷ, bục ngồi',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Potthaka',
        pronunciation: 'pot-tha-ka',
        wordVi: 'cuốn sách',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Puppha',
        pronunciation: 'pup-ha',
        wordVi: 'bông hoa',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Udaka',
        pronunciation: 'u-da-ka',
        wordVi: 'nước',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Vattha',
        pronunciation: 'vat-tha',
        wordVi: 'vải vóc, y phục, quần áo',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Phala',
        pronunciation: 'pha-la',
        wordVi: 'trái cây, quả (phạm trừ Trung tánh chuẩn)',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Āhāra',
        pronunciation: 'aa-haa-ra',
        wordVi: 'thức ăn, đồ ăn',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Osadha',
        pronunciation: 'o-sa-dha',
        wordVi: 'thuốc men, dược phẩm',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Bhuñjati (bhuja)',
        pronunciation: 'bhuñ-ja-ti',
        wordVi: 'ăn, thọ dụng (thường chỉ đồ ăn mềm / món đã nấu)',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Khādati (khāda)',
        pronunciation: 'khaa-da-ti',
        wordVi: 'ăn, nhai, cắn (thức ăn cứng, trái cây, cơm v.v.)',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Likhati (likha)',
        pronunciation: 'li-kha-ti',
        wordVi: 'viết',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Nisīdati (ni + sada)',
        pronunciation: 'ni-sii-da-ti',
        wordVi: 'ngồi (ngồi xuống)',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Pūjeti (pūja)',
        pronunciation: 'uu-je-ti',
        wordVi: 'cúng dường, tôn kính, dâng cúng',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Vapati (vapa)',
        pronunciation: 'va-pa-ti',
        wordVi: 'gieo (hạt giống)',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Patati (pata)',
        pronunciation: 'pa-ta-ti',
        wordVi: 'rụng, rơi',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Dhovati (dhova)',
        pronunciation: 'dho-va-ti',
        wordVi: 'rửa, tắm rửa',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Kiṇāti (kiṇa)',
        pronunciation: 'ki-ṇaa-ti',
        wordVi: 'mua',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Vikkiṇāti (vi + kiṇa)',
        pronunciation: 'vik-ki-ṇaa-ti',
        wordVi: 'bán (mua đi / bán rải)',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Āharati (ā + hara)',
        pronunciation: 'aa-ha-ra-ti',
        wordVi: 'đem đến, mang đến, đem lại',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Peseti (pesa)',
        pronunciation: 'pe-se-ti',
        wordVi: 'gửi, sai phái, gởi đi',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Nikkhamati (ni + khama)',
        pronunciation: 'nik-kha-ma-ti',
        wordVi: 'ra đi, xuất hành, đi ra khỏi',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Deti (dā)',
        pronunciation: 'de-ti',
        wordVi: 'cho, ban cho, trao',
        partOfSpeech: 'v.',
      ),
  ];
}


// ──────────────────────────────────────────────────────────────
// DAY 2: Luyện tập — Mind Game + Quiz
// ──────────────────────────────────────────────────────────────
LessonDay getLesson05Day2() {
  return LessonDay(
    id: 'lesson05_day2',
    dayNumber: 2,
    themeId: 'theme_05_neuter_a_eight_cases',
    titleVi: 'Ngày 2: Thực hành Mind Game & Quiz — 8 Biến cách & Trung tánh "-a"',
    phases: [
      _buildDay2MindGame(),
      _buildDay2Quiz(),
    ],
  );
}

/// Phase 3: mind_game — Trò chơi tư duy với Exercise
LessonPhase _buildDay2MindGame() {
  return LessonPhase(
    id: 'lesson05_phase3',
    phaseTypeStr: 'mind_game',
    titleVi: 'Trò Chơi Tư Duy — Bài Tập 5',
    contentVi: 'Nhấn vào cụm tiếng Việt để nói to cụm Pāḷi tương ứng, rồi nhấn lại để xem đáp án. Chú ý các dạng số nhiều Trung tánh đuôi "-āni".',
    mixedSegments: kLesson05MindGameSegments,
  );
}

/// Mind Game segments cho bài tập 5
class _Seg {
  final String pali;
  final String vi;
  const _Seg(this.pali, this.vi);
}

final kLesson05MindGameSegments = <MixedSegment>[
  ..._buildMindGameSegments(),
];

List<MixedSegment> _buildMindGameSegments() {
List<MixedSegment> sent(List<_Seg> parts) {
    final result = <MixedSegment>[];
    for (int i = 0; i < parts.length; i++) {
      final p = parts[i];
      result.add(MixedSegment(text: p.pali, isVietnamese: false));
      result.add(MixedSegment(
        text: p.vi,
        isVietnamese: true,
        answer: p.pali,
      ));
      if (i < parts.length - 1) {
        result.add(const MixedSegment(text: ' ', isVietnamese: false));
      }
    }
    result.add(const MixedSegment(text: '.\n', isVietnamese: false));
    return result;
  }

  return [
    // 1. Sakuṇā phalāni khādanti.
    ...sent(const [
      _Seg('Sakuṇā', 'Những con chim'),
      _Seg('phalāni', 'các trái cây'),
      _Seg('khādanti', '(chúng) ăn / cắn'),
    ]),
    // 2. Mayaṃ pīṭhesu nisīdāma, mañcesu supāma.
    ...sent(const [
      _Seg('Mayaṃ', 'Chúng tôi'),
      _Seg('pīṭhesu', 'trên các ghế'),
      _Seg('nisīdāma,', '(chúng tôi) ngồi,'),
      _Seg('mañcesu', 'trên các giường'),
      _Seg('supāma.', '(chúng tôi) ngủ.'),
    ]),
    // 4. Phalāni rukkhehi patanti.
    ...sent(const [
      _Seg('Phalāni', 'Những trái cây'),
      _Seg('rukkhehi', 'từ các cội cây'),
      _Seg('patanti', '(chúng) rụng / rơi'),
    ]),
    // 5. Kassakā khettesu bījāni vapanti.
    ...sent(const [
      _Seg('Kassakā', 'Những người nông dân'),
      _Seg('khettesu', 'trên các cánh đồng'),
      _Seg('bījāni', 'các hạt giống'),
      _Seg('vapanti', '(họ) gieo'),
    ]),
    // 6. Sabbadā mayaṃ udakena pāde ca mukhañca dhovāma.
    ...sent(const [
      _Seg('Sabbadā', 'Hằng ngày'),
      _Seg('mayaṃ', 'chúng tôi'),
      _Seg('udakena', 'bằng nước'),
      _Seg('pāde ca', '(các) bàn chân và'),
      _Seg('mukhañca', 'và mặt (mukhaṃ+ca)'),
      _Seg('dhovāma.', '(chúng tôi) rửa.'),
    ]),
    // 7. Sissā ācariyānaṃ lekhanāni likhanti.
    ...sent(const [
      _Seg('Sissā', 'Các đệ tử'),
      _Seg('ācariyānaṃ', '(cho) các vị thầy'),
      _Seg('lekhanāni', 'các lá thư'),
      _Seg('likhanti.', '(họ) viết.'),
    ]),
    // 9. Dāso taḷākasmiṃ vatthāni dhovati.
    ...sent(const [
      _Seg('Dāso', 'Người tớ / kẻ nô lệ'),
      _Seg('taḷākasmiṃ', 'tại cái ao'),
      _Seg('vatthāni', 'quần áo / vải vóc'),
      _Seg('dhovati.', '(anh ta) giặt / rửa.'),
    ]),
    // 10. So pupphehi Buddhaṃ pūjeti.
    ...sent(const [
      _Seg('So', 'Ông ấy'),
      _Seg('pupphehi', 'bằng các bông hoa'),
      _Seg('Buddhaṃ', 'Đức Phật'),
      _Seg('pūjeti.', '(ông ấy) cúng dường.'),
    ]),
    // 11. Kasmā tvaṃ āhāraṃ na bhuñjasi?
    ...sent(const [
      _Seg('Kasmā', 'Tại sao'),
      _Seg('tvaṃ', 'bạn / ngươi'),
      _Seg('āhāraṃ', 'thức ăn'),
      _Seg('na', 'không'),
      _Seg('bhuñjasi?', '(bạn) ăn?'),
    ]),
    // 15. Mayaṃ nagare gharāni passāma.
    ...sent(const [
      _Seg('Mayaṃ', 'Chúng tôi'),
      _Seg('nagare', 'trong thành phố'),
      _Seg('gharāni', 'các ngôi nhà'),
      _Seg('passāma.', '(chúng tôi) thấy.'),
    ]),
    // 18. Mittaṃ ācariyassa potthakaṃ pūjeti.
    ...sent(const [
      _Seg('Mittaṃ', 'Người bạn'),
      _Seg('ācariyassa', '(cho) vị thầy'),
      _Seg('potthakaṃ', 'quyển sách'),
      _Seg('pūjeti.', '(anh ta) dâng / cúng.'),
    ]),
    // 21. Ahaṃ mittāya lekhanaṃ likhāmi.
    ...sent(const [
      _Seg('Ahaṃ', 'Tôi'),
      _Seg('mittāya', '(cho) người bạn'),
      _Seg('lekhanaṃ', 'bức thư'),
      _Seg('likhāmi.', '(tôi) viết.'),
    ]),
    // 22. Mayaṃ phalāni khādāma.
    ...sent(const [
      _Seg('Mayaṃ', 'Chúng tôi'),
      _Seg('phalāni', 'các trái cây'),
      _Seg('khādāma.', '(chúng tôi) ăn.'),
    ]),
    // 26. Puttā udakena janakassa pāde dhovanti.
    ...sent(const [
      _Seg('Puttā', 'Các người con trai'),
      _Seg('udakena', 'bằng nước'),
      _Seg('janakassa', '(của) người cha'),
      _Seg('pāde', '(các) bàn chân'),
      _Seg('dhovanti.', '(họ) rửa.'),
    ]),
    // 30. Ahaṃ dāsena potthakāni gharaṃ pesemi.
    ...sent(const [
      _Seg('Ahaṃ', 'Tôi'),
      _Seg('dāsena', 'nhờ người tớ'),
      _Seg('potthakāni', 'các quyển sách'),
      _Seg('gharaṃ', '(về) nhà'),
      _Seg('pesemi.', '(tôi) gởi.'),
    ]),
  ];
}

/// Phase 4: listening_quiz — Bài tập trắc nghiệm
LessonPhase _buildDay2Quiz() {
  return LessonPhase(
    id: 'lesson05_phase4',
    phaseTypeStr: 'listening_quiz',
    titleVi: 'Quiz — Kiểm tra kiến thức Bài 5',
    questions: _buildQuiz(),
    fabAnswers: _buildQuizAnswers(),
  );
}

List<QuizQuestion> _buildQuiz() {
  return [
    QuizQuestion(
        id: 'lesson05_q01_01',
        questionText: '1. Đuôi số nhiều Chủ cách (CC) / Hô cách (HC) / Đối cách (ĐC) của các danh từ Trung tánh "-a" (vd. phala, bīja, puppha) là dạng nào?',
        options: [
        'A. -ā / -ā / -e (giống hệt Nam tánh)',
        'B. -e / -e / -āni',
        'C. -ā hoặc -āni (CC/HC) và -e hoặc -āni (ĐC); dạng thường dùng là -āni',
        'D. -ena / -ehi / -esu',
      ],
        correctIndex: 2,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson05_q01_02',
        questionText: '2. Sattamī (Cách thứ 7) trong bảng thuật ngữ Pāḷi tương ứng với biến cách nào dưới đây?',
        options: [
        'A. Hô cách (Vocative) — dùng để gọi.',
        'B. Định sở cách (Locative) — chỉ nơi chốn / thời gian ("trong, trên, tại").',
        'C. Xuất xứ cách (Ablative) — nghĩa "từ".',
        'D. Sở thuộc cách (Genitive) — nghĩa "của".',
      ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson05_q01_03',
        questionText: '3. Phát biểu nào ĐÚNG về sự khác nhau giữa biến cách Nam tánh và Trung tánh "-a"?',
        options: [
        'A. Trung tánh khác Nam tánh ở TẤT CẢ các cách, cả ít lẫn nhiều.',
        'B. Trung tánh và Nam tánh giống hệt nhau hoàn toàn; chỉ khác nghĩa từ.',
        'C. Trung tánh chỉ khác Nam tánh ở 3 cách số nhiều: CC, HC và ĐC (đuôi -āni); TẤT CẢ các cách còn lại GIỐNG HỆT Nam tánh.',
        'D. Trung tánh không có đuôi -esu ở Định sở cách số nhiều.',
      ],
        correctIndex: 2,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson05_q01_04',
        questionText: '4. Tại sao "mukhaṃ + ca" lại trở thành "mukhañca" theo luật Hài âm (Sandhi)?',
        options: [
        'A. Niggahita (ṃ) luôn đổi thành "y" khi trước phụ âm.',
        'B. Niggahita (ṃ) trước phụ âm nhóm ngạc cứng (c, ch, j, jh) đổi thành "ñ" (mũi ngạc cứng), sau đó hai từ viết dính thành một.',
        'C. "ca" luôn đổi thành "ñca" sau mọi nguyên âm.',
        'D. Nguyên âm "a" của "mukha" được kéo dài thành "ā" rồi thêm "ña".',
      ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson05_q01_05',
        questionText: '5. Karaṇa là tên Pāḷi của cách nào? Đuôi số ít / số nhiều là gì?',
        options: [
        'A. Chủ cách (Nominative) — đuôi -o / -ā.',
        'B. Sử dụng cách (Instrumental) — đuôi -ena (ít) / -ehi, -ebhi (nhiều); nghĩa "bằng, do, nhờ, với".',
        'C. Cách dữ (Dative) — đuôi -āya / -ānaṃ.',
        'D. Hô cách (Vocative) — đuôi -a, -ā / -ā.',
      ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
  ];
}

List<FabAnswerItem> _buildQuizAnswers() {
  return [
    FabAnswerItem(
        en: 'Q1 → C: see Vietnamese for full explanation.',
        vi: 'Câu 1: Đuôi số nhiều Chủ/Hô/Đối cách của Trung tánh là "-āni" (cùng với dạng thay thế -ā cho CC/HC và -e cho ĐC).',
      ),
    FabAnswerItem(
        en: 'Q2 → B: see Vietnamese for full explanation.',
        vi: 'Câu 2: Sattamī (thứ 7) là ĐỊNH SỞ CÁCH (Locative), chỉ nơi chốn ("trong, trên, tại").',
      ),
    FabAnswerItem(
        en: 'Q3 → C: see Vietnamese for full explanation.',
        vi: 'Câu 3: Danh từ Trung tánh "-a" KHÁC Nam tánh duy nhất ở CC / HC / ĐC số nhiều; tất cả các cách còn lại (SDC, CĐC, XXC, STC, ĐSC) GIỐNG HỆT Nam tánh.',
      ),
    FabAnswerItem(
        en: 'Q4 → B: see Vietnamese for full explanation.',
        vi: 'Câu 4: "Mukhaṃ + ca = mukhañca" — niggahita (ṃ) trước phụ âm "c" (nhóm ngạc cứng) đổi thành "ñ", rồi hai từ viết dính liền.',
      ),
    FabAnswerItem(
        en: 'Q5 → B: see Vietnamese for full explanation.',
        vi: 'Câu 5: Karaṇa là SỬ DỤNG CÁCH (Instrumental, cách 3), chỉ phương tiện/do/bằng; có đuôi -ena (ít), -ehi / -ebhi (nhiều).',
      ),
  ];
}
