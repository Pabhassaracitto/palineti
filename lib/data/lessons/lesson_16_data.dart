// lesson_16_data.dart
// ---------------------------------------------------------------------------
// Bài học số 16 — An Elementary Pāḷi Course (Nārada Mahāthera)
// Chủ đề: Số đếm & Số thứ tự
// Nguồn: Nārada Mahāthera, "An Elementary Pāḷi Course", Lesson 16
// ---------------------------------------------------------------------------

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

LessonMeta getLesson16Meta() => const LessonMeta(
  id: 'theme_16_numerals',
  lessonNumber: 16,
  titleVi: 'Số đếm & Số thứ tự',
  titleEn: 'Cardinal & Ordinal Numerals',
  iconEmoji: '🔢',
  colorValue: 0xFFDAA520,
  description: 'Học về cách đếm và số thứ tự trong tiếng Pāḷi',
);




// ──────────────────────────────────────────────────────────────
// VOCABULARY (83 items)
// ──────────────────────────────────────────────────────────────
final kLesson16Vocab = <PaliVocabModel>[
  PaliVocabModel(
      id: 'pv_L16_001',
      root: 'eka',
      paradigmId: 'numeral_card',
      wordVi: 'một (1) — chia 3 giống: eko / ekā / ekaṃ',
      wordEn: 'eka',
      lessonId: 'lesson_16',
      pronunciation: 'e-ka',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_002',
      root: 'dvi',
      paradigmId: 'numeral_card',
      wordVi: 'hai (2) — chỉ số nhiều: dve / duve',
      wordEn: 'dvi',
      lessonId: 'lesson_16',
      pronunciation: 'dvi',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_003',
      root: 'ti',
      paradigmId: 'numeral_card',
      wordVi: 'ba (3) — tayo / tīni / tisso',
      wordEn: 'ti',
      lessonId: 'lesson_16',
      pronunciation: 'ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_004',
      root: 'catu',
      paradigmId: 'numeral_card',
      wordVi: 'bốn (4) — cattāro/caturo / cattāri / catasso',
      wordEn: 'catu',
      lessonId: 'lesson_16',
      pronunciation: 'ca-tu',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_005',
      root: 'pañca',
      paradigmId: 'numeral_card',
      wordVi: 'năm (5) — pañca / pañcannaṃ / pañcasu',
      wordEn: 'pañca',
      lessonId: 'lesson_16',
      pronunciation: 'pañ-ca',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_006',
      root: 'cha',
      paradigmId: 'numeral_card',
      wordVi: 'sáu (6)',
      wordEn: 'cha',
      lessonId: 'lesson_16',
      pronunciation: 'cha',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_007',
      root: 'satta',
      paradigmId: 'numeral_card',
      wordVi: 'bảy (7)',
      wordEn: 'satta',
      lessonId: 'lesson_16',
      pronunciation: 'sat-ta',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_008',
      root: 'aṭṭha',
      paradigmId: 'numeral_card',
      wordVi: 'tám (8)',
      wordEn: 'aṭṭha',
      lessonId: 'lesson_16',
      pronunciation: 'aṭ-ṭha',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_009',
      root: 'nava',
      paradigmId: 'numeral_card',
      wordVi: 'chín (9)',
      wordEn: 'nava',
      lessonId: 'lesson_16',
      pronunciation: 'na-va',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_010',
      root: 'dasa',
      paradigmId: 'numeral_card',
      wordVi: 'mười (10)',
      wordEn: 'dasa',
      lessonId: 'lesson_16',
      pronunciation: 'da-sa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_011',
      root: 'ekādasa',
      paradigmId: 'numeral_card',
      wordVi: 'mười một (11)',
      wordEn: 'ekādasa',
      lessonId: 'lesson_16',
      pronunciation: 'e-kaa-da-sa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_012',
      root: 'dvādasa',
      paradigmId: 'numeral_card',
      wordVi: 'mười hai (12)',
      wordEn: 'dvādasa / bārasa',
      lessonId: 'lesson_16',
      pronunciation: 'dvaa-da-sa / baa-ra-sa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_013',
      root: 'terasa',
      paradigmId: 'numeral_card',
      wordVi: 'mười ba (13)',
      wordEn: 'terasa / teḷasa',
      lessonId: 'lesson_16',
      pronunciation: 'te-ra-sa / te-ḷa-sa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_014',
      root: 'cuddasa',
      paradigmId: 'numeral_card',
      wordVi: 'mười bốn (14)',
      wordEn: 'cuddasa / catuddasa',
      lessonId: 'lesson_16',
      pronunciation: 'cud-da-sa / ca-tud-da-sa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_015',
      root: 'pañcadasa',
      paradigmId: 'numeral_card',
      wordVi: 'mười năm (15)',
      wordEn: 'pañcadasa / paṇṇarasa',
      lessonId: 'lesson_16',
      pronunciation: 'pañ-ca-da-sa / paṇ-ṇa-ra-sa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_016',
      root: 'soḷasa',
      paradigmId: 'numeral_card',
      wordVi: 'mười sáu (16)',
      wordEn: 'soḷasa / sorasa',
      lessonId: 'lesson_16',
      pronunciation: 'so-ḷa-sa / so-ra-sa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_017',
      root: 'sattarasa',
      paradigmId: 'numeral_card',
      wordVi: 'mười bảy (17)',
      wordEn: 'sattarasa / sattārasa',
      lessonId: 'lesson_16',
      pronunciation: 'sat-ta-ra-sa / sat-taara-sa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_018',
      root: 'aṭṭhadasa',
      paradigmId: 'numeral_card',
      wordVi: 'mười tám (18)',
      wordEn: 'aṭṭhadasa / aṭṭhārasa',
      lessonId: 'lesson_16',
      pronunciation: 'aṭ-ṭha-da-sa / aṭ-ṭhaa-ra-sa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_019',
      root: "ek'ūnavīsati",
      paradigmId: 'numeral_card',
      wordVi: "mười chín (19, 'một còn thiếu của 20')",
      wordEn: "ek'ūnavīsati",
      lessonId: 'lesson_16',
      pronunciation: 'ek-uu-na-vii-sa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_020',
      root: 'vīsati',
      paradigmId: 'numeral_card',
      wordVi: 'hai mươi (20) — nữ "-i"',
      wordEn: 'vīsati / vīsaṃ',
      lessonId: 'lesson_16',
      pronunciation: 'vii-sa-ti / vii-saṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_021',
      root: 'tiṃsati',
      paradigmId: 'numeral_card',
      wordVi: 'ba mươi (30)',
      wordEn: 'tiṃsati / tiṃsā',
      lessonId: 'lesson_16',
      pronunciation: 'tiṃ-sa-ti / tiṃ-saa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_022',
      root: 'cattāḷīsati',
      paradigmId: 'numeral_card',
      wordVi: 'bốn mươi (40)',
      wordEn: 'cattāḷīsati / cattāḷīsā',
      lessonId: 'lesson_16',
      pronunciation: 'cat-taalii-sa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_023',
      root: 'paññāsa',
      paradigmId: 'numeral_card',
      wordVi: 'năm mươi (50)',
      wordEn: 'paññāsa / paṇṇāsa',
      lessonId: 'lesson_16',
      pronunciation: 'pañ-ñaa-sa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_024',
      root: 'saṭṭhi',
      paradigmId: 'numeral_card',
      wordVi: 'sáu mươi (60) — nữ "-i"',
      wordEn: 'saṭṭhi',
      lessonId: 'lesson_16',
      pronunciation: 'saṭ-ṭhi',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_025',
      root: 'sattati',
      paradigmId: 'numeral_card',
      wordVi: 'bảy mươi (70)',
      wordEn: 'sattati',
      lessonId: 'lesson_16',
      pronunciation: 'sat-ta-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_026',
      root: 'asīti',
      paradigmId: 'numeral_card',
      wordVi: 'tám mươi (80)',
      wordEn: 'asīti',
      lessonId: 'lesson_16',
      pronunciation: 'a-sii-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_027',
      root: 'navuti',
      paradigmId: 'numeral_card',
      wordVi: 'chín mươi (90)',
      wordEn: 'navuti',
      lessonId: 'lesson_16',
      pronunciation: 'na-vu-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_028',
      root: 'sataṃ',
      paradigmId: 'numeral_card',
      wordVi: 'một trăm (100) — trung "-a"',
      wordEn: 'sataṃ',
      lessonId: 'lesson_16',
      pronunciation: 'sa-taṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_029',
      root: 'sahassaṃ',
      paradigmId: 'numeral_card',
      wordVi: 'một ngàn (1.000)',
      wordEn: 'sahassaṃ',
      lessonId: 'lesson_16',
      pronunciation: 'sa-has-saṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_030',
      root: 'lakkha',
      paradigmId: 'numeral_card',
      wordVi: 'một trăm ngàn (100.000)',
      wordEn: 'lakkha',
      lessonId: 'lesson_16',
      pronunciation: 'lak-kha',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_031',
      root: 'koṭi',
      paradigmId: 'numeral_card',
      wordVi: 'mười triệu (10.000.000) — nữ "-i"',
      wordEn: 'koṭi',
      lessonId: 'lesson_16',
      pronunciation: 'ko-ṭi',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_032',
      root: 'paṭhama',
      paradigmId: 'numeral_ord',
      wordVi: 'thứ nhất — nữ paṭhamā',
      wordEn: 'paṭhama',
      lessonId: 'lesson_16',
      pronunciation: 'pa-ṭha-ma',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_033',
      root: 'dutiya',
      paradigmId: 'numeral_ord',
      wordVi: 'thứ hai — nữ dutiyā',
      wordEn: 'dutiya',
      lessonId: 'lesson_16',
      pronunciation: 'du-ti-ya',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_034',
      root: 'tatiya',
      paradigmId: 'numeral_ord',
      wordVi: 'thứ ba — nữ tatiyā',
      wordEn: 'tatiya',
      lessonId: 'lesson_16',
      pronunciation: 'ta-ti-ya',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_035',
      root: 'catuttha',
      paradigmId: 'numeral_ord',
      wordVi: 'thứ tư — nữ catutthī',
      wordEn: 'catuttha (catutthī)',
      lessonId: 'lesson_16',
      pronunciation: 'ca-tut-tha',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_036',
      root: 'pañcama',
      paradigmId: 'numeral_ord',
      wordVi: 'thứ năm — nữ pañcamī',
      wordEn: 'pañcama (pañcamī)',
      lessonId: 'lesson_16',
      pronunciation: 'pañ-ca-ma',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_037',
      root: 'chaṭṭha',
      paradigmId: 'numeral_ord',
      wordVi: 'thứ sáu — nữ chaṭṭhī',
      wordEn: 'chaṭṭha (chaṭṭhī)',
      lessonId: 'lesson_16',
      pronunciation: 'chaṭ-ṭha',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_038',
      root: 'sattama',
      paradigmId: 'numeral_ord',
      wordVi: 'thứ bảy — nữ sattamī ("sattame divase" = vào ngày thứ 7)',
      wordEn: 'sattama (sattamī)',
      lessonId: 'lesson_16',
      pronunciation: 'sat-ta-ma',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_039',
      root: 'aṭṭhama',
      paradigmId: 'numeral_ord',
      wordVi: 'thứ tám — nữ aṭṭhamī',
      wordEn: 'aṭṭhama (aṭṭhamī)',
      lessonId: 'lesson_16',
      pronunciation: 'aṭ-ṭha-ma',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_040',
      root: 'navama',
      paradigmId: 'numeral_ord',
      wordVi: 'thứ chín — nữ navamī',
      wordEn: 'navama (navamī)',
      lessonId: 'lesson_16',
      pronunciation: 'na-va-ma',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_041',
      root: 'dasama',
      paradigmId: 'numeral_ord',
      wordVi: 'thứ mười — nữ dasamī',
      wordEn: 'dasama (dasamī)',
      lessonId: 'lesson_16',
      pronunciation: 'da-sa-ma',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_042',
      root: 'ekādasī',
      paradigmId: 'numeral_ord',
      wordVi: 'ngày thứ 11 (nữ)',
      wordEn: 'ekādasī / ekādasamī',
      lessonId: 'lesson_16',
      pronunciation: 'e-kaa-da-sii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_043',
      root: 'dvādasamaṃ',
      paradigmId: 'numeral_ord',
      wordVi: 'thứ mười hai (vd. chương thứ 12)',
      wordEn: 'dvādasamaṃ',
      lessonId: 'lesson_16',
      pronunciation: 'dvaa-da-sa-maṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_044',
      root: 'soḷasama',
      paradigmId: 'numeral_ord',
      wordVi: 'thứ mười sáu (soḷasamo paricchedo = chương thứ 16)',
      wordEn: 'soḷasama',
      lessonId: 'lesson_16',
      pronunciation: 'so-ḷa-sa-ma',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_045',
      root: 'paññarasa',
      paradigmId: 'numeral_ord',
      wordVi: 'mười lăm / ngày thứ 15 (paṇṇarasame divase)',
      wordEn: 'paññarasa / paṇṇarasama',
      lessonId: 'lesson_16',
      pronunciation: 'paṇ-ṇa-ra-sa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_046',
      root: 'aṭṭhavīsati',
      paradigmId: 'numeral_ord',
      wordVi: 'hai mươi tám — ngày thứ 28 (aṭṭha-vīsatime divase)',
      wordEn: 'aṭṭhavīsati / aṭṭhavīsatima',
      lessonId: 'lesson_16',
      pronunciation: 'aṭ-ṭha-vii-sa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_047',
      root: 'ekūnatima',
      paradigmId: 'numeral_ord',
      wordVi: "thứ 29 ('ek'ūna-tiṃsatime vasse' = vào năm thứ 29)",
      wordEn: "ekūnatima (ek'ūna-tiṃsatima)",
      lessonId: 'lesson_16',
      pronunciation: 'ek-uu-na-tiṃ-sa-ti-ma',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_048',
      root: 'pañcatiṃsatima',
      paradigmId: 'numeral_ord',
      wordVi: 'thứ 35 / năm thứ 35 (pañca-tiṃsatime vasse)',
      wordEn: 'pañcatiṃsatima',
      lessonId: 'lesson_16',
      pronunciation: 'pañ-ca-tiṃ-sa-ti-ma',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_049',
      root: 'Divasa',
      paradigmId: 'masc_a',
      wordVi: 'ngày (nam/trung)',
      wordEn: 'Divasa',
      lessonId: 'lesson_16',
      pronunciation: 'di-va-sa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_050',
      root: 'Ito',
      paradigmId: 'indeclinable',
      wordVi: 'từ đây, từ nay, cách đây, ago (bất biến từ)',
      wordEn: 'Ito',
      lessonId: 'lesson_16',
      pronunciation: 'i-to',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_051',
      root: 'Māsa',
      paradigmId: 'masc_a',
      wordVi: 'tháng (nam/trung)',
      wordEn: 'Māsa',
      lessonId: 'lesson_16',
      pronunciation: 'maa-sa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_052',
      root: 'Pana',
      paradigmId: 'indeclinable',
      wordVi: 'nhưng, tuy nhiên, hơn nữa (bất biến từ)',
      wordEn: 'Pana',
      lessonId: 'lesson_16',
      pronunciation: 'pa-na',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_053',
      root: 'Pariccheda',
      paradigmId: 'masc_a',
      wordVi: 'chương, phần, giới hạn, mức độ (nam)',
      wordEn: 'Pariccheda',
      lessonId: 'lesson_16',
      pronunciation: 'pa-ric-che-da',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_054',
      root: 'Saraṇa',
      paradigmId: 'neuter_a',
      wordVi: 'sự nương tựa, quy y (trung)',
      wordEn: 'Saraṇa',
      lessonId: 'lesson_16',
      pronunciation: 'sa-ra-ṇa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_055',
      root: 'Sīla',
      paradigmId: 'neuter_a',
      wordVi: 'giới, đức hạnh, điều luật (trung, thường số nhiều sīlāni)',
      wordEn: 'Sīla',
      lessonId: 'lesson_16',
      pronunciation: 'sii-la',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_056',
      root: 'Vassa',
      paradigmId: 'masc_a',
      wordVi: 'năm, mùa mưa (nam/trung)',
      wordEn: 'Vassa',
      lessonId: 'lesson_16',
      pronunciation: 'vas-sa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_057',
      root: 'Sacca',
      paradigmId: 'neuter_a',
      wordVi: 'sự thật / Chân lý (Ariya-saccāni = Tứ Thánh Đế)',
      wordEn: 'Sacca',
      lessonId: 'lesson_16',
      pronunciation: 'sac-ca',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_058',
      root: 'Loka',
      paradigmId: 'masc_a',
      wordVi: 'thế giới (nam)',
      wordEn: 'Loka',
      lessonId: 'lesson_16',
      pronunciation: 'lo-ka',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_059',
      root: 'Aṅguli',
      paradigmId: 'fem_i',
      wordVi: 'ngón tay (nữ -i, số nhiều aṅguliyo)',
      wordEn: 'Aṅguli',
      lessonId: 'lesson_16',
      pronunciation: 'aṅ-gu-ḷi',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_060',
      root: 'Hattha',
      paradigmId: 'masc_a',
      wordVi: 'bàn tay (nam)',
      wordEn: 'Hattha',
      lessonId: 'lesson_16',
      pronunciation: 'hat-tha',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_061',
      root: 'Gāma',
      paradigmId: 'masc_a',
      wordVi: 'làng (nam)',
      wordEn: 'Gāma',
      lessonId: 'lesson_16',
      pronunciation: 'gaa-ma',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_062',
      root: 'Potthaka',
      paradigmId: 'neuter_a',
      wordVi: 'sách, quyển sách (trung)',
      wordEn: 'Potthaka',
      lessonId: 'lesson_16',
      pronunciation: 'pot-tha-ka',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_063',
      root: 'Putta',
      paradigmId: 'masc_a',
      wordVi: 'con trai (nam)',
      wordEn: 'Putta',
      lessonId: 'lesson_16',
      pronunciation: 'put-ta',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_064',
      root: 'Phala',
      paradigmId: 'neuter_a',
      wordVi: 'quả, trái cây (trung)',
      wordEn: 'Phala',
      lessonId: 'lesson_16',
      pronunciation: 'pha-la',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_065',
      root: 'Itthī',
      paradigmId: 'fem_i_long',
      wordVi: 'người nữ, đàn bà (nữ -ī)',
      wordEn: 'Itthī',
      lessonId: 'lesson_16',
      pronunciation: 'it-thii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_066',
      root: 'Antima',
      paradigmId: 'masc_a',
      wordVi: 'cuối cùng, cuối (tính từ)',
      wordEn: 'Antima',
      lessonId: 'lesson_16',
      pronunciation: 'an-ti-ma',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_067',
      root: 'Gahapati',
      paradigmId: 'masc_i',
      wordVi: 'gia chủ; dạng số nhiều gahapatī (nam -i)',
      wordEn: 'Gahapati / Gahapatī',
      lessonId: 'lesson_16',
      pronunciation: 'ga-ha-pa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_068',
      root: 'Guṇavant',
      paradigmId: 'masc_a',
      wordVi: 'có đức, có giới hạnh (tính từ)',
      wordEn: 'Guṇavant',
      lessonId: 'lesson_16',
      pronunciation: 'gu-ṇa-vant',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_069',
      root: 'Uposatha',
      paradigmId: 'masc_a',
      wordVi: '''ngày trai giới (nam): aṭṭhamī = ngày mồng 8; cātuddasī = ngày 14; pañcadasī = ngày 15 (trăng tròn).''',
      wordEn: 'Uposatha',
      lessonId: 'lesson_16',
      pronunciation: 'u-po-sa-tha',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_070',
      root: 'Bhikkhu',
      paradigmId: 'masc_u',
      wordVi: 'vị tỳ-khưu (nam -u)',
      wordEn: 'Bhikkhu',
      lessonId: 'lesson_16',
      pronunciation: 'bhik-khu',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_071',
      root: 'Sikkhāpada',
      paradigmId: 'neuter_a',
      wordVi: 'học giới, giới điều (trung)',
      wordEn: 'Sikkhāpada',
      lessonId: 'lesson_16',
      pronunciation: 'sik-khaa-pa-da',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_072',
      root: 'Seṭṭhin',
      paradigmId: 'masc_a',
      wordVi: 'trưởng giả, triệu phú (nam)',
      wordEn: 'Seṭṭhin',
      lessonId: 'lesson_16',
      pronunciation: 'seṭ-ṭhin',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_073',
      root: 'Catu-paññāsakoṭi',
      paradigmId: 'numeral_card',
      wordVi: 'bốn mươi lăm koṭi / 450 triệu (số từ ghép)',
      wordEn: 'Catu-paññāsakoṭi',
      lessonId: 'lesson_16',
      pronunciation: 'ca-tu-pañ-ñaa-sa-ko-ṭi',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_074',
      root: 'Āyu',
      paradigmId: 'masc_u',
      wordVi: 'tuổi thọ, mạng sống (nam/trung)',
      wordEn: 'Āyu',
      lessonId: 'lesson_16',
      pronunciation: 'aa-yu',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_075',
      root: 'Sammāsambuddha',
      paradigmId: 'masc_a',
      wordVi: 'Chánh Đẳng Chánh Giác (nam; một Đức Phật Toàn Giác)',
      wordEn: 'Sammāsambuddha',
      lessonId: 'lesson_16',
      pronunciation: 'sam-maasam-bud-dha',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_076',
      root: 'Cakkhu',
      paradigmId: 'neuter_a',
      wordVi: 'mắt (nam, số nhiều cakkhūni)',
      wordEn: 'Cakkhu',
      lessonId: 'lesson_16',
      pronunciation: 'cak-khu',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_077',
      root: 'Mukha',
      paradigmId: 'neuter_a',
      wordVi: 'mặt, miệng (trung)',
      wordEn: 'Mukha',
      lessonId: 'lesson_16',
      pronunciation: 'mu-kha',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_078',
      root: 'Amba',
      paradigmId: 'neuter_a',
      wordVi: 'xoài (nam/trung)',
      wordEn: 'Amba',
      lessonId: 'lesson_16',
      pronunciation: 'am-ba',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_079',
      root: 'Tisaraṇa',
      paradigmId: 'neuter_a',
      wordVi: 'Tam quy (trung: Buddha, Dhamma, Saṅgha)',
      wordEn: 'Tisaraṇa',
      lessonId: 'lesson_16',
      pronunciation: 'ti-sa-ra-ṇa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_080',
      root: 'Pañcasīla',
      paradigmId: 'neuter_a',
      wordVi: 'ngũ giới (trung, số nhiều pañca sīlāni)',
      wordEn: 'Pañcasīla',
      lessonId: 'lesson_16',
      pronunciation: 'pañ-ca-sii-la',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_081',
      root: 'Gilāna',
      paradigmId: 'masc_a',
      wordVi: 'người bịnh (nam/trung)',
      wordEn: 'Gilāna',
      lessonId: 'lesson_16',
      pronunciation: 'gi-laa-na',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_082',
      root: 'Āyu',
      paradigmId: 'masc_u',
      wordVi: 'tuổi thọ (đã ghi ở trên)',
      wordEn: 'Āyu',
      lessonId: 'lesson_16',
      pronunciation: 'aa-yu',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L16_083',
      root: 'Dhamma',
      paradigmId: 'masc_a',
      wordVi: 'Giáo Pháp (nam, số nhiều Dhammā / Dhammāni tùy giống)',
      wordEn: 'Dhamma',
      lessonId: 'lesson_16',
      pronunciation: 'dham-ma',
      examplePali: '',
      exampleVi: '',
    ),
];


// ──────────────────────────────────────────────────────────────
// DAY 1: Học nền tảng — Ngữ pháp + Từ vựng
// ──────────────────────────────────────────────────────────────
LessonDay getLesson16Day1() {
  return LessonDay(
    id: 'lesson16_day1',
    dayNumber: 1,
    themeId: 'theme_16_numerals',
    titleVi: 'Ngày 1: Số đếm & Số thứ tự — Lý thuyết & Từ vựng',
    phases: [
      _buildDay1Phase1(),
      _buildDay1Phase2(),
    ],
  );
}

/// Phase 1: read_listen — Giải thích ngữ pháp
LessonPhase _buildDay1Phase1() {
  return LessonPhase(
    id: 'lesson16_phase1',
    phaseTypeStr: 'read_listen',
    titleVi: 'Bài đọc: Số đếm & Số thứ tự',
    contentVi: '''
BÀI 16 — SỐ ĐẾM (CARDINALS) VÀ SỐ THỨ TỰ (ORDINALS)

1) SỐ ĐẾM TỪ 1 → 1 TỈ
   1  eka              21 eka-vīsati
   2  dvi              22 dve-vīsati / dvā-vīsati
   3  ti               23 te-vīsati
   4  catu             24 catu-vīsati
   5  pañca            25 pañca-vīsati
   6  cha              26 chabbīsati
   7  satta            27 satta-vīsati
   8  aṭṭha            28 aṭṭha-vīsati
   9  nava             29 ek'ūna-tiṃsati   (một còn thiếu của 30)
   10 dasa             30 tiṃsati / tiṃsa
   11 ekādasa          31 ekatiṃsati
   12 dvādasa / bārasa 32 dvattiṃsati
   13 terasa / teḷasa  33 tettiṃsati
   14 cuddasa / catuddasa 34 catuttiṃsati
   15 pañcadasa / paṇṇarasa 35 pañca-tiṃsati
   16 soḷasa / sorasa  36 chattiṃsati
   17 sattadasa / sattārasa 37 satta-tiṃsati
   18 aṭṭhadasa / aṭṭhārasa 38 aṭṭha-tiṃsati
   19 ek'ūna-vīsati    39 ek'ūna-cattāḷīsati
   20 vīsati / vīsaṃ   40 cattāḷīsati / cattāḷīsaṃ / cattāḷīsā
   49 ek'ūna-paññāsā   50 paṇṇāsa / paññāsa
   60 saṭṭhi           70 sattati
   79 ek'ūnāsīti       80 asīti
   90 navuti           99 ek'ūna-sataṃ
   100 sataṃ            200 dve sataṃ / dvi sataṃ
   1.000     sahassaṃ (1 ngàn)
   10.000    dasa-sahassaṃ / nahuta
   100.000   sata-sahassaṃ / lakkha
   10.000.000 koṭi (10 triệu)
   100.000.000  dasa-koṭi
   1.000.000.000 sata-koṭi (1 tỉ)

2) QUY TẮC BIẾN CÁCH SỐ ĐẾM
   a) EKA (1): chia cả 3 giống (nam/nữ/trung), ĐA SỐ chỉ khi có nghĩa "một vài /
      nào đó / kẻ nọ" (eke narā = một vài người).
      Hình thức tiêu biểu (số ít):
                 Nam       Nữ        Trung
      CC         eko       ekā       ekaṃ
      ĐC         ekaṃ      ekaṃ      ekaṃ
      SDC        ekena     ekāya     ekena
      XXC        ekamhā/ekasmā   ekāya   ekamhā/ekasmā
      CĐC/STC    ekassa    ekissā    ekassa
      ĐSC        ekasmiṃ/ekamhi ekissaṃ   ekasmiṃ/ekamhi
   b) DVI (2): chỉ có số nhiều, dùng chung cả 3 giống.
      CC/ĐC dve, duve; SDC/XXC dvībhi, dvīhi; CĐC/STC dvinnaṃ; ĐSC dvīsu.
   c) TI (3) — có 3 giống (số nhiều):
                 Nam        Trung     Nữ
      CC/ĐC     tayo       tīni      tisso
      SDC/XXC   tībhi, tīhi
      CĐC/STC   tiṇṇaṃ    tiṇṇannaṃ tissannaṃ
      ĐSC       tīsu
   d) CATU (4) — có 3 giống (số nhiều):
                 Nam (cattāro, caturo)   Trung (cattāri)   Nữ (catasso)
      SDC/XXC   catūbhi, catūhi
      CĐC/STC   catunnaṃ     catussannaṃ
      ĐSC       catusu, catūsu
   e) PAÑCA (5) → AṬṬHĀRASA (18): CHUNG cả 3 giống, chỉ có số nhiều.
      CC/ĐC   giữ nguyên (pañca, cha, satta, aṭṭha, … dasa, ekādasa …)
      SDC/XXC …bhi / …hi    (pañcabhi / pañcahi)
      CĐC/STC …naṃ          (pañcannaṃ)
      ĐSC     …su            (pañcasu)
   f) Số từ 19 → 89 & koṭi (kết thúc bằng -i / -ī / -ā) là NỮ TÁNH, chỉ số ít,
      biến cách như nữ "-i" (bhūmi). Riêng tiṃsā/cattāḷīsā/paññāsā biến cách như
      nữ "-ā" (kaññā).
   g) Số từ ek'ūnasata → lakkha (kết thúc -a) là TRUNG TÁNH, chỉ số ít, chia như
      phala (n.). Khi dùng theo nghĩa tập hợp có thể lấy số nhiều:
      dve vīsatiyo (2 × 20 = 40), tīṇi satāni (300 = ba trăm).

3) SỐ THỨ TỰ (Ordinals)
   a) Bảng 1–10:
      1 paṭhama     2 dutiya     3 tatiya
      4 catuttha    5 pañcama    6 chaṭṭha
      7 sattama     8 aṭṭhama     9 navama  (thường đọc navama)
      10 dasama
      Từ thứ 7 trở đi: số đếm + hậu tố "-ma" (sattama, aṭṭhama, navama, dasama,
      ekādasama…).
   b) Hòa hợp (agreement) với danh từ: số thứ tự hòa hợp về GIỐNG, SỐ, CÁCH
      với danh từ nó bổ nghĩa.
      - Nam: chia như nara (-a) → paṭhamo puriso.
      - Trung: chia như phala (-a) → paṭhamaṃ divasaṃ.
      - Nữ:
          * paṭhamā / dutiyā / tatiyā → chia như kaññā (nữ -ā) → paṭhamāya
            rattiyā, dutiyāya bhūmiyā;
          * Từ catuttha đến dasama, đổi "-a" cuối thành "-ī" rồi chia như nārī
            (nữ -ī): catuttha → catutthī (catutthiyā, catutthiyaṃ, catuttīsu);
            sattama → sattamī; pañcama → pañcamī; chaṭṭha → chaṭṭhī;
            dasama → dasamī;
          * Từ 11 lên (ekādasādimā): nữ hóa bằng cách thêm "-ī" trực tiếp:
            ekādasa → ekādasī; dvādasamā → dvādasamī;
            sattamī divase = "vào ngày thứ 7".
   c) Cách dùng:
      - Số thứ tự thường đứng trước danh từ, đôi khi ở ĐỊNH SỞ CÁCH với nghĩa
        "vào ngày thứ mấy" (sattame divase = vào ngày thứ 7).
      - Thường đi với ito (cách nay / từ nay): ito sattame divase = "cách nay
        (từ nay) ngày thứ 7, tức 7 ngày nữa".

4) MẸO NHỚ NHANH
   - 1 eka: 3 giống; 2 dvi: chung; 3/4 có dạng m./n./f. riêng; 5–18 chung giống,
     chỉ số nhiều.
   - Số tròn chục "-i/-ī/-ā" là nữ; số trăm ngàn "-a" là trung.
   - Số thứ tự nam/trung "-a", nữ đầu (1-3) "-ā", nữ từ 4 lên "-ī".
''',
    contentEn: '''LESSON 16 — CARDINALS AND ORDINALS

A. CARDINAL NUMERALS 1 → 1 koṭi (10 million)
   1 eka ... 10 dasa; 11 ekādasa ... 18 aṭṭhārasa; 19 ek'ūnabīsati;
   20 vīsati; 30 tiṃsati; 40 cattāḷīsati; 50 paññāsa; 60 saṭṭhi;
   70 sattati; 80 asīti; 90 navuti; 100 sataṃ; 1,000 sahassaṃ;
   100,000 lakkha; 10,000,000 koṭi.

B. DECLENSION
   a) eka (1): declines in all three genders (eko m., ekā f., ekaṃ n.);
      plural means "some / certain".
   b) dvi (2): plural only, common to all genders:
      Nom./Acc. dve/duve; Ins. dvībhi/dvīhi; Gen. dvinnaṃ; Loc. dvīsu.
   c) ti (3): m. tayo; n. tīni; f. tisso (plural).
   d) catu (4): m. cattāro/caturo; n. cattāri; f. catasso.
   e) pañca (5) → aṭṭhārasa (18): common gender, plural only;
      Ins. -bhi/-hi; Gen. -naṃ; Loc. -su (pañcasu).
   f) 19 → 89 and koṭi (ending -i/-ī/-ā) are FEMININE in -i (bhūmi);
      tiṃsā/cattāḷīsā/paññāsā decline in -ā (kaññā).
   g) ek'ūnasata → lakkha (ending -a) are NEUTER (phala); may have plurals
      for aggregates: dve vīsatiyo (=40), tīṇi satāni (=300).

C. ORDINALS
   1 paṭhama, 2 dutiya, 3 tatiya, 4 catuttha, 5 pañcama, 6 chaṭṭha,
   7 sattama, 8 aṭṭhama, 9 navama, 10 dasama. From 7 on: cardinal + -ma.
   - Masculine follows nara (-a): paṭhamo puriso.
   - Neuter follows phala (-a): paṭhamaṃ divasaṃ.
   - Feminine: paṭhamā/dutiyā/tatiyā follow kaññā (-ā); from catuttha onward
     change final -a → -ī and follow nārī (catutthī, pañcamī, sattamī, dasamī);
     from 11 onward add -ī directly (ekādasī).

D. USAGE
   - Ordinals in Locative express "on the Nth day": sattame divase = on the
     7th day. Often with ito: ito sattame divase = seven days from today.
''',
    fabPhrases: [
          FabPhraseItem(
            phrase: 'eko / ekā / ekaṃ (m./f./n.) — một',
            meaning:
                'Biến cách theo 3 giống (như nara / kaññā / phala). Số ít; chỉ dùng số nhiều khi nghĩa "một vài / nào đó".',
          ),
          FabPhraseItem(
            phrase: 'dve / duve (cả 3 giống) — hai',
            meaning:
                'Chỉ có số nhiều: CC/ĐC dve; SDC/XXC dvībhi/dvīhi; STC dvinnaṃ; ĐSC dvīsu.',
          ),
          FabPhraseItem(
            phrase: 'tayo / tīni / tisso — ba',
            meaning: 'Nam: tayo; Trung: tīni; Nữ: tisso (số nhiều).',
          ),
          FabPhraseItem(
            phrase: 'cattāro/caturo / cattāri / catasso — bốn',
            meaning:
                'Nam: cattāro, caturo; Trung: cattāri; Nữ: catasso (số nhiều).',
          ),
          FabPhraseItem(
            phrase: 'pañca 5 → aṭṭhārasa 18: chung cả 3 giống',
            meaning:
                'CC/ĐC giữ nguyên; Súc/XX: -bhi/-hi; STC: -nnaṃ; ĐSC: -su (vd pañcasu).',
          ),
          FabPhraseItem(
            phrase: 'Số thứ tự: hậu tố -ma (từ thứ 7+)',
            meaning:
                '1 paṭhama, 2 dutiya, 3 tatiya, 4 catuttha, 5 pañcama, 6 chaṭṭha, 7 sattama, 8 aṭṭhama… Nữ: -ī (catutthī, sattamī, ekādasī).',
          ),
        ],
  );
}

/// Phase 2: read_listen — Từ vựng
LessonPhase _buildDay1Phase2() {
  return LessonPhase(
    id: 'lesson16_phase2',
    phaseTypeStr: 'read_listen',
    titleVi: 'Số đếm từ 1 đến koṭi + Từ vựng mới',
    contentVi: 'Học thuộc danh sách số đếm từ 1 → 1 tỉ và các từ vựng mới (divasa, ito, māsa…). Các số từ 19 trở lên có ghi chú giống / cách chia.',
    fabVocab: _buildVocabFabList(),
  );
}

List<FabVocabItem> _buildVocabFabList() {
  return const [
    FabVocabItem(
        wordEn: 'eka',
        pronunciation: 'e-ka',
        wordVi: 'một (1) — chia 3 giống: eko / ekā / ekaṃ',
        partOfSpeech: 'num.',
      ),
    FabVocabItem(
        wordEn: 'dvi',
        pronunciation: 'dvi',
        wordVi: 'hai (2) — chỉ số nhiều: dve / duve',
        partOfSpeech: 'num.',
      ),
    FabVocabItem(
        wordEn: 'ti',
        pronunciation: 'ti',
        wordVi: 'ba (3) — tayo / tīni / tisso',
        partOfSpeech: 'num.',
      ),
    FabVocabItem(
        wordEn: 'catu',
        pronunciation: 'ca-tu',
        wordVi: 'bốn (4) — cattāro/caturo / cattāri / catasso',
        partOfSpeech: 'num.',
      ),
    FabVocabItem(
        wordEn: 'pañca',
        pronunciation: 'pañ-ca',
        wordVi: 'năm (5) — pañca / pañcannaṃ / pañcasu',
        partOfSpeech: 'num.',
      ),
    FabVocabItem(
        wordEn: 'cha',
        pronunciation: 'cha',
        wordVi: 'sáu (6)',
        partOfSpeech: 'num.',
      ),
    FabVocabItem(
        wordEn: 'satta',
        pronunciation: 'sat-ta',
        wordVi: 'bảy (7)',
        partOfSpeech: 'num.',
      ),
    FabVocabItem(
        wordEn: 'aṭṭha',
        pronunciation: 'aṭ-ṭha',
        wordVi: 'tám (8)',
        partOfSpeech: 'num.',
      ),
    FabVocabItem(
        wordEn: 'nava',
        pronunciation: 'na-va',
        wordVi: 'chín (9)',
        partOfSpeech: 'num.',
      ),
    FabVocabItem(
        wordEn: 'dasa',
        pronunciation: 'da-sa',
        wordVi: 'mười (10)',
        partOfSpeech: 'num.',
      ),
    FabVocabItem(
        wordEn: 'ekādasa',
        pronunciation: 'e-kaa-da-sa',
        wordVi: 'mười một (11)',
        partOfSpeech: 'num.',
      ),
    FabVocabItem(
        wordEn: 'dvādasa / bārasa',
        pronunciation: 'dvaa-da-sa / baa-ra-sa',
        wordVi: 'mười hai (12)',
        partOfSpeech: 'num.',
      ),
    FabVocabItem(
        wordEn: 'terasa / teḷasa',
        pronunciation: 'te-ra-sa / te-ḷa-sa',
        wordVi: 'mười ba (13)',
        partOfSpeech: 'num.',
      ),
    FabVocabItem(
        wordEn: 'cuddasa / catuddasa',
        pronunciation: 'cud-da-sa / ca-tud-da-sa',
        wordVi: 'mười bốn (14)',
        partOfSpeech: 'num.',
      ),
    FabVocabItem(
        wordEn: 'pañcadasa / paṇṇarasa',
        pronunciation: 'pañ-ca-da-sa / paṇ-ṇa-ra-sa',
        wordVi: 'mười năm (15)',
        partOfSpeech: 'num.',
      ),
    FabVocabItem(
        wordEn: 'soḷasa / sorasa',
        pronunciation: 'so-ḷa-sa / so-ra-sa',
        wordVi: 'mười sáu (16)',
        partOfSpeech: 'num.',
      ),
    FabVocabItem(
        wordEn: 'sattarasa / sattārasa',
        pronunciation: 'sat-ta-ra-sa / sat-taara-sa',
        wordVi: 'mười bảy (17)',
        partOfSpeech: 'num.',
      ),
    FabVocabItem(
        wordEn: 'aṭṭhadasa / aṭṭhārasa',
        pronunciation: 'aṭ-ṭha-da-sa / aṭ-ṭhaa-ra-sa',
        wordVi: 'mười tám (18)',
        partOfSpeech: 'num.',
      ),
    FabVocabItem(
        wordEn: "ek'ūnavīsati",
        pronunciation: 'ek-uu-na-vii-sa-ti',
        wordVi: "mười chín (19, 'một còn thiếu của 20')",
        partOfSpeech: 'num.',
      ),
    FabVocabItem(
        wordEn: 'vīsati / vīsaṃ',
        pronunciation: 'vii-sa-ti / vii-saṃ',
        wordVi: 'hai mươi (20) — nữ "-i"',
        partOfSpeech: 'num. (f.)',
      ),
    FabVocabItem(
        wordEn: 'tiṃsati / tiṃsā',
        pronunciation: 'tiṃ-sa-ti / tiṃ-saa',
        wordVi: 'ba mươi (30)',
        partOfSpeech: 'num. (f.)',
      ),
    FabVocabItem(
        wordEn: 'cattāḷīsati / cattāḷīsā',
        pronunciation: 'cat-taalii-sa-ti',
        wordVi: 'bốn mươi (40)',
        partOfSpeech: 'num. (f.)',
      ),
    FabVocabItem(
        wordEn: 'paññāsa / paṇṇāsa',
        pronunciation: 'pañ-ñaa-sa',
        wordVi: 'năm mươi (50)',
        partOfSpeech: 'num. (f.)',
      ),
    FabVocabItem(
        wordEn: 'saṭṭhi',
        pronunciation: 'saṭ-ṭhi',
        wordVi: 'sáu mươi (60) — nữ "-i"',
        partOfSpeech: 'num. (f.)',
      ),
    FabVocabItem(
        wordEn: 'sattati',
        pronunciation: 'sat-ta-ti',
        wordVi: 'bảy mươi (70)',
        partOfSpeech: 'num. (f.)',
      ),
    FabVocabItem(
        wordEn: 'asīti',
        pronunciation: 'a-sii-ti',
        wordVi: 'tám mươi (80)',
        partOfSpeech: 'num. (f.)',
      ),
    FabVocabItem(
        wordEn: 'navuti',
        pronunciation: 'na-vu-ti',
        wordVi: 'chín mươi (90)',
        partOfSpeech: 'num. (f.)',
      ),
    FabVocabItem(
        wordEn: 'sataṃ',
        pronunciation: 'sa-taṃ',
        wordVi: 'một trăm (100) — trung "-a"',
        partOfSpeech: 'num. (n.)',
      ),
    FabVocabItem(
        wordEn: 'sahassaṃ',
        pronunciation: 'sa-has-saṃ',
        wordVi: 'một ngàn (1.000)',
        partOfSpeech: 'num. (n.)',
      ),
    FabVocabItem(
        wordEn: 'lakkha',
        pronunciation: 'lak-kha',
        wordVi: 'một trăm ngàn (100.000)',
        partOfSpeech: 'num. (n.)',
      ),
    FabVocabItem(
        wordEn: 'koṭi',
        pronunciation: 'ko-ṭi',
        wordVi: 'mười triệu (10.000.000) — nữ "-i"',
        partOfSpeech: 'num. (f.)',
      ),
    FabVocabItem(
        wordEn: 'paṭhama',
        pronunciation: 'pa-ṭha-ma',
        wordVi: 'thứ nhất — nữ paṭhamā',
        partOfSpeech: 'num.ord.',
      ),
    FabVocabItem(
        wordEn: 'dutiya',
        pronunciation: 'du-ti-ya',
        wordVi: 'thứ hai — nữ dutiyā',
        partOfSpeech: 'num.ord.',
      ),
    FabVocabItem(
        wordEn: 'tatiya',
        pronunciation: 'ta-ti-ya',
        wordVi: 'thứ ba — nữ tatiyā',
        partOfSpeech: 'num.ord.',
      ),
    FabVocabItem(
        wordEn: 'catuttha (catutthī)',
        pronunciation: 'ca-tut-tha',
        wordVi: 'thứ tư — nữ catutthī',
        partOfSpeech: 'num.ord.',
      ),
    FabVocabItem(
        wordEn: 'pañcama (pañcamī)',
        pronunciation: 'pañ-ca-ma',
        wordVi: 'thứ năm — nữ pañcamī',
        partOfSpeech: 'num.ord.',
      ),
    FabVocabItem(
        wordEn: 'chaṭṭha (chaṭṭhī)',
        pronunciation: 'chaṭ-ṭha',
        wordVi: 'thứ sáu — nữ chaṭṭhī',
        partOfSpeech: 'num.ord.',
      ),
    FabVocabItem(
        wordEn: 'sattama (sattamī)',
        pronunciation: 'sat-ta-ma',
        wordVi: 'thứ bảy — nữ sattamī ("sattame divase" = vào ngày thứ 7)',
        partOfSpeech: 'num.ord.',
      ),
    FabVocabItem(
        wordEn: 'aṭṭhama (aṭṭhamī)',
        pronunciation: 'aṭ-ṭha-ma',
        wordVi: 'thứ tám — nữ aṭṭhamī',
        partOfSpeech: 'num.ord.',
      ),
    FabVocabItem(
        wordEn: 'navama (navamī)',
        pronunciation: 'na-va-ma',
        wordVi: 'thứ chín — nữ navamī',
        partOfSpeech: 'num.ord.',
      ),
    FabVocabItem(
        wordEn: 'dasama (dasamī)',
        pronunciation: 'da-sa-ma',
        wordVi: 'thứ mười — nữ dasamī',
        partOfSpeech: 'num.ord.',
      ),
    FabVocabItem(
        wordEn: 'ekādasī / ekādasamī',
        pronunciation: 'e-kaa-da-sii',
        wordVi: 'ngày thứ 11 (nữ)',
        partOfSpeech: 'num.ord. (f.)',
      ),
    FabVocabItem(
        wordEn: 'dvādasamaṃ',
        pronunciation: 'dvaa-da-sa-maṃ',
        wordVi: 'thứ mười hai (vd. chương thứ 12)',
        partOfSpeech: 'num.ord.',
      ),
    FabVocabItem(
        wordEn: 'soḷasama',
        pronunciation: 'so-ḷa-sa-ma',
        wordVi: 'thứ mười sáu (soḷasamo paricchedo = chương thứ 16)',
        partOfSpeech: 'num.ord.',
      ),
    FabVocabItem(
        wordEn: 'paññarasa / paṇṇarasama',
        pronunciation: 'paṇ-ṇa-ra-sa',
        wordVi: 'mười lăm / ngày thứ 15 (paṇṇarasame divase)',
        partOfSpeech: 'num./ord.',
      ),
    FabVocabItem(
        wordEn: 'aṭṭhavīsati / aṭṭhavīsatima',
        pronunciation: 'aṭ-ṭha-vii-sa-ti',
        wordVi: 'hai mươi tám — ngày thứ 28 (aṭṭha-vīsatime divase)',
        partOfSpeech: 'num./ord.',
      ),
    FabVocabItem(
        wordEn: "ekūnatima (ek'ūna-tiṃsatima)",
        pronunciation: 'ek-uu-na-tiṃ-sa-ti-ma',
        wordVi: "thứ 29 ('ek'ūna-tiṃsatime vasse' = vào năm thứ 29)",
        partOfSpeech: 'num.ord.',
      ),
    FabVocabItem(
        wordEn: 'pañcatiṃsatima',
        pronunciation: 'pañ-ca-tiṃ-sa-ti-ma',
        wordVi: 'thứ 35 / năm thứ 35 (pañca-tiṃsatime vasse)',
        partOfSpeech: 'num.ord.',
      ),
    FabVocabItem(
        wordEn: 'Divasa',
        pronunciation: 'di-va-sa',
        wordVi: 'ngày (nam/trung)',
        partOfSpeech: 'm./n.',
      ),
    FabVocabItem(
        wordEn: 'Ito',
        pronunciation: 'i-to',
        wordVi: 'từ đây, từ nay, cách đây, ago (bất biến từ)',
        partOfSpeech: 'indec.',
      ),
    FabVocabItem(
        wordEn: 'Māsa',
        pronunciation: 'maa-sa',
        wordVi: 'tháng (nam/trung)',
        partOfSpeech: 'm./n.',
      ),
    FabVocabItem(
        wordEn: 'Pana',
        pronunciation: 'pa-na',
        wordVi: 'nhưng, tuy nhiên, hơn nữa (bất biến từ)',
        partOfSpeech: 'indec.',
      ),
    FabVocabItem(
        wordEn: 'Pariccheda',
        pronunciation: 'pa-ric-che-da',
        wordVi: 'chương, phần, giới hạn, mức độ (nam)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Saraṇa',
        pronunciation: 'sa-ra-ṇa',
        wordVi: 'sự nương tựa, quy y (trung)',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Sīla',
        pronunciation: 'sii-la',
        wordVi: 'giới, đức hạnh, điều luật (trung, thường số nhiều sīlāni)',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Vassa',
        pronunciation: 'vas-sa',
        wordVi: 'năm, mùa mưa (nam/trung)',
        partOfSpeech: 'm./n.',
      ),
    FabVocabItem(
        wordEn: 'Sacca',
        pronunciation: 'sac-ca',
        wordVi: 'sự thật / Chân lý (Ariya-saccāni = Tứ Thánh Đế)',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Loka',
        pronunciation: 'lo-ka',
        wordVi: 'thế giới (nam)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Aṅguli',
        pronunciation: 'aṅ-gu-ḷi',
        wordVi: 'ngón tay (nữ -i, số nhiều aṅguliyo)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Hattha',
        pronunciation: 'hat-tha',
        wordVi: 'bàn tay (nam)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Gāma',
        pronunciation: 'gaa-ma',
        wordVi: 'làng (nam)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Potthaka',
        pronunciation: 'pot-tha-ka',
        wordVi: 'sách, quyển sách (trung)',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Putta',
        pronunciation: 'put-ta',
        wordVi: 'con trai (nam)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Phala',
        pronunciation: 'pha-la',
        wordVi: 'quả, trái cây (trung)',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Itthī',
        pronunciation: 'it-thii',
        wordVi: 'người nữ, đàn bà (nữ -ī)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Antima',
        pronunciation: 'an-ti-ma',
        wordVi: 'cuối cùng, cuối (tính từ)',
        partOfSpeech: 'adj.',
      ),
    FabVocabItem(
        wordEn: 'Gahapati / Gahapatī',
        pronunciation: 'ga-ha-pa-ti',
        wordVi: 'gia chủ; dạng số nhiều gahapatī (nam -i)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Guṇavant',
        pronunciation: 'gu-ṇa-vant',
        wordVi: 'có đức, có giới hạnh (tính từ)',
        partOfSpeech: 'adj.',
      ),
    FabVocabItem(
        wordEn: 'Uposatha',
        pronunciation: 'u-po-sa-tha',
        wordVi: 'ngày trai giới (nam): aṭṭhamī = ngày mồng 8; cātuddasī = ngày 14; pañcadasī = ngày 15 (trăng tròn).',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Bhikkhu',
        pronunciation: 'bhik-khu',
        wordVi: 'vị tỳ-khưu (nam -u)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Sikkhāpada',
        pronunciation: 'sik-khaa-pa-da',
        wordVi: 'học giới, giới điều (trung)',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Seṭṭhin',
        pronunciation: 'seṭ-ṭhin',
        wordVi: 'trưởng giả, triệu phú (nam)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Catu-paññāsakoṭi',
        pronunciation: 'ca-tu-pañ-ñaa-sa-ko-ṭi',
        wordVi: 'bốn mươi lăm koṭi / 450 triệu (số từ ghép)',
        partOfSpeech: 'num.',
      ),
    FabVocabItem(
        wordEn: 'Āyu',
        pronunciation: 'aa-yu',
        wordVi: 'tuổi thọ, mạng sống (nam/trung)',
        partOfSpeech: 'm./n.',
      ),
    FabVocabItem(
        wordEn: 'Sammāsambuddha',
        pronunciation: 'sam-maasam-bud-dha',
        wordVi: 'Chánh Đẳng Chánh Giác (nam; một Đức Phật Toàn Giác)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Cakkhu',
        pronunciation: 'cak-khu',
        wordVi: 'mắt (nam, số nhiều cakkhūni)',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Mukha',
        pronunciation: 'mu-kha',
        wordVi: 'mặt, miệng (trung)',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Amba',
        pronunciation: 'am-ba',
        wordVi: 'xoài (nam/trung)',
        partOfSpeech: 'n./m.',
      ),
    FabVocabItem(
        wordEn: 'Tisaraṇa',
        pronunciation: 'ti-sa-ra-ṇa',
        wordVi: 'Tam quy (trung: Buddha, Dhamma, Saṅgha)',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Pañcasīla',
        pronunciation: 'pañ-ca-sii-la',
        wordVi: 'ngũ giới (trung, số nhiều pañca sīlāni)',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Gilāna',
        pronunciation: 'gi-laa-na',
        wordVi: 'người bịnh (nam/trung)',
        partOfSpeech: 'm./n.',
      ),
    FabVocabItem(
        wordEn: 'Āyu',
        pronunciation: 'aa-yu',
        wordVi: 'tuổi thọ (đã ghi ở trên)',
        partOfSpeech: 'm./n.',
      ),
    FabVocabItem(
        wordEn: 'Dhamma',
        pronunciation: 'dham-ma',
        wordVi: 'Giáo Pháp (nam, số nhiều Dhammā / Dhammāni tùy giống)',
        partOfSpeech: 'm.',
      ),
  ];
}


// ──────────────────────────────────────────────────────────────
// DAY 2: Luyện tập — Mind Game + Quiz
// ──────────────────────────────────────────────────────────────
LessonDay getLesson16Day2() {
  return LessonDay(
    id: 'lesson16_day2',
    dayNumber: 2,
    themeId: 'theme_16_numerals',
    titleVi: 'Ngày 2: Thực hành Mind Game & Quiz — Số đếm & Số thứ tự',
    phases: [
      _buildDay2MindGame(),
      _buildDay2Quiz(),
    ],
  );
}

/// Phase 3: mind_game — Trò chơi tư duy với Exercise
LessonPhase _buildDay2MindGame() {
  return LessonPhase(
    id: 'lesson16_phase3',
    phaseTypeStr: 'mind_game',
    titleVi: 'Trò Chơi Tư Duy — Bài Tập 16',
    contentVi: 'Nhấn vào cụm tiếng Việt để nói to cụm Pāḷi tương ứng, rồi nhấn lại để xem đáp án. Chú ý các dạng số đếm (tayo/tīni/tisso/cattāro/cattāri/catasso) và số thứ tự đuôi "-ma" (hòa hợp giống/cách).',
    mixedSegments: kLesson16MindGameSegments,
  );
}

/// Mind Game segments cho bài tập 16
class _Seg {
  final String pali;
  final String vi;
  const _Seg(this.pali, this.vi);
}

final kLesson16MindGameSegments = <MixedSegment>[
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

  final result = <MixedSegment>[];

  // Mở đầu kinh kệ Tam quy
  result.addAll(sent(const [
    _Seg('"Buddhaṃ', 'Đức Phật'),
    _Seg('saraṇaṃ', 'nương náu'),
    _Seg('gacchāmi.', 'con xin đi về."'),
  ]));
  result.addAll(sent(const [
    _Seg("Dutiyam'pi", 'Lần thứ hai cũng vậy'),
    _Seg('Buddhaṃ', 'Đức Phật'),
    _Seg('saraṇaṃ', 'nương náu'),
    _Seg('gacchāmi.', 'con xin đi về."'),
  ]));
  result.addAll(sent(const [
    _Seg("Tatiyam'pi", 'Lần thứ ba cũng vậy'),
    _Seg('Buddhaṃ', 'Đức Phật'),
    _Seg('saraṇaṃ', 'nương náu'),
    _Seg('gacchāmi."', 'con xin đi về."'),
  ]));

  // 1. Cattār'imāni, bhikkhave, saccāni.
  result.addAll(sent(const [
    _Seg("Cattār'imāni", 'Bốn cái này'),
    _Seg('bhikkhave,', 'này các tỳ-khưu,'),
    _Seg('saccāni.', '(là các) Chân lý / Thánh đế.'),
  ]));
  // 3. Tīsu lokesu sattā uppajjanti.
  result.addAll(sent(const [
    _Seg('Tīsu', 'Trong ba'),
    _Seg('lokesu', 'thế giới (địa ngục, nhân loại, thiên giới)'),
    _Seg('sattā', 'chúng sanh'),
    _Seg('uppajjanti', 'sanh ra / tái sanh.'),
  ]));
  // 4. Ekasmiṃ hatthe pañca aṅguliyo honti.
  result.addAll(sent(const [
    _Seg('Ekasmiṃ', 'Trên một'),
    _Seg('hatthe', 'bàn tay'),
    _Seg('pañca', 'năm'),
    _Seg('aṅguliyo', 'ngón tay (nữ, số nhiều)'),
    _Seg('honti.', 'có.'),
  ]));
  // 5. Ito sattame divase ahaṃ gamissāmi.
  result.addAll(sent(const [
    _Seg('Ito', 'Từ nay / cách nay'),
    _Seg('sattame', 'thứ bảy (định sở)'),
    _Seg('divase', 'ngày'),
    _Seg('ahaṃ', 'tôi'),
    _Seg('gamissāmi.', 'sẽ đi.'),
  ]));
  // 6. Mayaṃ tīṇi vassāni imasmiṃ gāme vasimhā.
  result.addAll(sent(const [
    _Seg('Mayaṃ', 'Chúng tôi'),
    _Seg('tīṇi', 'ba (trung)'),
    _Seg('vassāni', 'năm'),
    _Seg('imasmiṃ', 'trong này / tại... này'),
    _Seg('gāme', 'làng'),
    _Seg('vasimhā.', 'đã ở.'),
  ]));
  // 7. Ayaṃ pana imasmiṃ potthake soḷasamo paricchedo hoti.
  result.addAll(sent(const [
    _Seg('Ayaṃ', 'Này / Đây'),
    _Seg('pana', 'thì'),
    _Seg('imasmiṃ', 'trong quyển này'),
    _Seg('potthake', 'sách'),
    _Seg('soḷasamo', 'thứ mười sáu'),
    _Seg('paricchedo', 'chương'),
    _Seg('hoti.', 'là.'),
  ]));
  // 9. So tassa tiṇṇaṃ puttānaṃ cattāri cattāri katvā dvādasa phalāni adāsi.
  result.addAll(sent(const [
    _Seg('So', 'Ông ấy'),
    _Seg('tassa', 'cho người ấy / cho hắn'),
    _Seg('tiṇṇaṃ', 'ba (cho ba người)'),
    _Seg('puttānaṃ', 'người con trai'),
    _Seg('cattāri cattāri', 'bốn, bốn quả (mỗi người bốn)'),
    _Seg('katvā', 'làm xong / chia'),
    _Seg('dvādasa', 'mười hai'),
    _Seg('phalāni', 'trái cây'),
    _Seg('adāsi.', 'đã cho.'),
  ]));
  // 10. Etasmiṃ ghare catasso itthiyo vasanti.
  result.addAll(sent(const [
    _Seg('Etasmiṃ', 'Trong ngôi nhà này / ấy'),
    _Seg('ghare', 'nhà'),
    _Seg('catasso', 'bốn (nữ)'),
    _Seg('itthiyo', 'người phụ nữ / đàn bà'),
    _Seg('vasanti.', 'đang ở.'),
  ]));
  // 14. Guṇavanto sadā pañca sīlāni ca aṭṭhamiyaṃ cātuddasiyaṃ pañcadasiyaṃ ca aṭṭha sīlāni rakkhanti.
  result.addAll(sent(const [
    _Seg('Guṇavanto', 'Những người có đức'),
    _Seg('sadā', 'luôn luôn'),
    _Seg('pañca', 'năm'),
    _Seg('sīlāni', 'giới'),
    _Seg('ca', 'và'),
    _Seg('aṭṭhamiyaṃ', '(vào) ngày mồng 8'),
    _Seg('cātuddasiyaṃ', '(vào) ngày 14'),
    _Seg('pañcadasiyaṃ', '(vào) ngày 15'),
    _Seg('ca', 'và'),
    _Seg('aṭṭha', 'tám'),
    _Seg('sīlāni', 'giới'),
    _Seg('rakkhanti.', 'gìn giữ.'),
  ]));
  // 17. Ekasmiṃ māse tiṃsa divasā honti. Ekasmiṃ vasse pana tisata pañcasaṭṭhī divasā honti.
  result.addAll(sent(const [
    _Seg('Ekasmiṃ', 'Trong một'),
    _Seg('māse', 'tháng'),
    _Seg('tiṃsa', 'ba mươi'),
    _Seg('divasā', 'ngày'),
    _Seg('honti.', 'có.'),
  ]));
  result.addAll(sent(const [
    _Seg('Ekasmiṃ', 'Trong một'),
    _Seg('vasse', 'năm'),
    _Seg('pana', 'thì'),
    _Seg('tisata', 'ba trăm'),
    _Seg('pañcasaṭṭhī', 'sáu mươi lăm'),
    _Seg('divasā', 'ngày'),
    _Seg('honti.', 'có (tổng cộng 365 ngày).'),
  ]));
  // 21. Amhākaṃ dve cakkhūni, api ca ekaṃ mukhaṃ.
  result.addAll(sent(const [
    _Seg('Amhākaṃ', 'Của chúng ta'),
    _Seg('dve', 'hai'),
    _Seg('cakkhūni', 'con mắt'),
    _Seg('api ca', 'và cũng có / lại nữa'),
    _Seg('ekaṃ', 'một'),
    _Seg('mukhaṃ.', 'cái miệng / mặt.'),
  ]));
  // 25. Dārako tayo ambe kiṇitvā ekaṃ bhuñjitvā dve gharaṃ hari.
  result.addAll(sent(const [
    _Seg('Dārako', 'Đứa bé trai'),
    _Seg('tayo', 'ba (nam)'),
    _Seg('ambe', 'quả xoài'),
    _Seg('kiṇitvā', 'mua xong'),
    _Seg('ekaṃ', 'một'),
    _Seg('bhuñjitvā', 'ăn xong'),
    _Seg('dve', 'hai'),
    _Seg('gharaṃ', '(về) nhà'),
    _Seg('hari.', 'đã đem.'),
  ]));
  // 29. Ito sattame divase me janako mamaṃ passituṃ āgamissati.
  result.addAll(sent(const [
    _Seg('Ito', 'Từ nay'),
    _Seg('sattame', 'thứ bảy'),
    _Seg('divase', 'ngày'),
    _Seg('me', 'cho tôi (enclitic)'),
    _Seg('janako', 'người cha'),
    _Seg('mamaṃ', 'tôi (ĐC)'),
    _Seg('passituṃ', 'để thăm / thấy'),
    _Seg('āgamissati.', 'sẽ đến.'),
  ]));
  // 35. Mayhaṃ āyu aṭṭhadasa vassā hoti.
  result.addAll(sent(const [
    _Seg('Mayhaṃ', 'Của tôi'),
    _Seg('āyu', 'tuổi thọ'),
    _Seg('aṭṭhadasa', 'mười tám'),
    _Seg('vassā', 'năm (tuổi)'),
    _Seg('hoti.', 'là (năm nay tôi 18 tuổi).'),
  ]));

  return result;
}

/// Phase 4: listening_quiz — Bài tập trắc nghiệm
LessonPhase _buildDay2Quiz() {
  return LessonPhase(
    id: 'lesson16_phase4',
    phaseTypeStr: 'listening_quiz',
    titleVi: 'Quiz — Kiểm tra kiến thức Bài 16',
    questions: _buildQuiz(),
    fabAnswers: _buildQuizAnswers(),
  );
}

List<QuizQuestion> _buildQuiz() {
  return [
    QuizQuestion(
        id: 'lesson16_q01_01',
        questionText: '1. Cụm "vào ngày thứ 7 (cách nay 7 ngày nữa)" trong Pāḷi diễn đạt bằng hình thức nào?',
        options: [
        'A. satta divasā (chỉ dùng số đếm)',
        'B. sattame divase (sattama ở Định sở cách + divasa cũng ở Định sở)',
        'C. sattama divaso (chủ cách)',
        'D. satta divase (không dùng số thứ tự)',
      ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson16_q01_02',
        questionText: '2. Các số đếm nào sau đây BIẾN CÁCH theo cả ba giống (nam/nữ/trung)?',
        options: [
        'A. eka (1), ti (3), catu (4)',
        'B. pañca (5) đến aṭṭhārasa (18)',
        'C. dvi (2) và các số hàng trăm',
        'D. Tất cả các số đếm đều chia đủ ba giống.',
      ],
        correctIndex: 0,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson16_q01_03',
        questionText: '3. Nữ tánh của các số thứ tự từ thứ 4 (catuttha) đến thứ 10 (dasama) được thành lập như thế nào và chia giống nào?',
        options: [
        'A. Thêm "-ā", chia như kaññā (nữ -ā).',
        'B. Đổi "-a" cuối thành "-ī" (catutthī, sattamī, dasamī…), chia như nārī (nữ -ī).',
        'C. Giữ nguyên nam dạng cho cả nữ.',
        'D. Thêm "-nī" (như medhāvinī).',
      ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson16_q01_04',
        questionText: '4. Bộ ba "tayo / tīni / tisso" tương ứng với các giống nào của số đếm "ba"?',
        options: [
        'A. Nữ / Trung / Nam (tisso / tīni / tayo).',
        'B. Trung / Nam / Nữ.',
        'C. Nam / Trung / Nữ (đáp số).',
        'D. Không có thứ tự nhất định.',
      ],
        correctIndex: 2,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson16_q01_05',
        questionText: '5. Phát biểu nào ĐÚNG về số đếm "dvi" (hai)?',
        options: [
        'A. Chia đủ cả số ít lẫn số nhiều, cả ba giống.',
        'B. Chỉ có dạng số ít, chung giống.',
        'C. Có ba dạng giống như ti (dvayo/dveni/dvissā).',
        'D. Chỉ dùng ở số nhiều; CC/ĐC là "dve / duve" (chung cả 3 giống); STC/CĐC "dvinnaṃ"; ĐSC "dvīsu".',
      ],
        correctIndex: 3,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson16_q01_06',
        questionText: '6. Về giống/cách chia của các số TỪ 19 TRỞ LÊN (19 → 89) và koṭi, phát biểu nào ĐÚNG?',
        options: [
        'A. Tất cả đều là trung tánh, chia như phala (-a).',
        'B. Tất cả đều là nam tánh, chia như nara (-a).',
        'C. Những số kết thúc bằng -i/-ī/-ā (vd. vīsati, saṭṭhi, asīti, koṭi, cattāḷīsā…) là NỮ TÁNH chỉ số ít (chia như bhūmi hoặc kaññā); số trăm/ngàn kết thúc bằng -a (sataṃ, sahassaṃ) là trung tánh.',
        'D. Các số 19-99 có cả số ít và số nhiều, chia đều cả 3 giống.',
      ],
        correctIndex: 2,
        practiceNumber: 'practice1',
      ),
  ];
}

List<FabAnswerItem> _buildQuizAnswers() {
  return [
    FabAnswerItem(
        en: 'Q1 → B: see Vietnamese for full explanation.',
        vi: 'Câu 1: Đáp án B. Sattame divase: "sattama" ở ĐỊNH SỞ CÁCH số ít (giống n./m.), nghĩa là "trong / vào ngày thứ 7" ("ito sattame divase" = cách nay 7 ngày nữa).',
      ),
    FabAnswerItem(
        en: 'Q2 → A: see Vietnamese for full explanation.',
        vi: 'Câu 2: Đáp án A. Số đếm 1 eka, 3 ti, 4 catu BIẾN CÁCH theo cả 3 giống; số 2 dvi dùng chung giống (chỉ số nhiều); từ 5 trở lên chung giống.',
      ),
    FabAnswerItem(
        en: 'Q3 → B: see Vietnamese for full explanation.',
        vi: 'Câu 3: Đáp án B. Nữ của số thứ tự từ thứ 4 (catuttha) đến thứ 10 (dasama) thành lập bằng cách đổi "-a" cuối thành "-ī": catutthī, pañcamī, chaṭṭhī, sattamī, aṭṭhamī, navamī, dasamī; chia như nārī (nữ -ī).',
      ),
    FabAnswerItem(
        en: 'Q4 → C: see Vietnamese for full explanation.',
        vi: 'Câu 4: Đáp án C. "tayo / tīni / tisso" tương ứng Nam / Trung / Nữ của số 3 "ti"; tương tự cho số 4 là cattāro/caturo / cattāri / catasso.',
      ),
    FabAnswerItem(
        en: 'Q5 → D: see Vietnamese for full explanation.',
        vi: 'Câu 5: Đáp án D. "dvi" chỉ có dạng số nhiều; CC/ĐC là "dve / duve" cho cả 3 giống; SDC dvīhi/dvībhi; STC dvinnaṃ; ĐSC dvīsu. Không có dạng số ít nào.',
      ),
    FabAnswerItem(
        en: 'Q6 → C: see Vietnamese for full explanation.',
        vi: 'Câu 6: Đáp án A. Số từ 19→89 và koṭi kết thúc bằng -i/-ī/-ā là NỮ TÁNH, chỉ số ít, chia như bhūmi (nữ -i), riêng tiṃsā/cattāḷīsā/paññāsā chia như kaññā (nữ -ā). Số trăm ngàn kết thúc bằng -a là TRUNG tánh.',
      ),
  ];
}
