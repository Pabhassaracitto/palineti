// lesson_10_data.dart
// ---------------------------------------------------------------------------
// Bài học số 10 — An Elementary Pāḷi Course (Nārada Mahāthera)
// Chủ đề: Nam/Nữ "-ī" & Lập Nữ tánh
// Nguồn: Nārada Mahāthera, "An Elementary Pāḷi Course", Lesson 10
// ---------------------------------------------------------------------------

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

LessonMeta getLesson10Meta() => const LessonMeta(
  id: 'theme_10_masc_fem_i_long',
  lessonNumber: 10,
  titleVi: 'Nam/Nữ "-ī" & Lập Nữ tánh',
  titleEn: 'Masc/Fem "-ī" & Feminine Formation',
  iconEmoji: '👑',
  colorValue: 0xFF00CED1,
  description: 'Khám phá từ vựng kết thúc bằng -ī và quy tắc tạo từ nữ tánh',
      complexity: LessonComplexity.low,
      estimatedMinutes: 35,
);




// ──────────────────────────────────────────────────────────────
// VOCABULARY (51 items)
// ──────────────────────────────────────────────────────────────
final kLesson10Vocab = <PaliVocabModel>[
  PaliVocabModel(
      id: 'pv_L10_001',
      root: 'Sāmī',
      paradigmId: 'masc_i_long',
      wordVi: 'ngài, chồng, chúa tể, chủ nhân (nam -ī)',
      wordEn: 'Sāmī',
      lessonId: 'lesson_10',
      pronunciation: 'saa-mii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_002',
      root: 'Nārī',
      paradigmId: 'fem_i_long',
      wordVi: 'người nữ, đàn bà (nữ -ī)',
      wordEn: 'Nārī',
      lessonId: 'lesson_10',
      pronunciation: 'naa-rii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_003',
      root: 'Appamāda',
      paradigmId: 'masc_a',
      wordVi: 'sự không phóng dật, tinh cần (nam)',
      wordEn: 'Appamāda',
      lessonId: 'lesson_10',
      pronunciation: 'ap-pa-maa-da',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_004',
      root: 'Bhaginī',
      paradigmId: 'fem_i_long',
      wordVi: 'người chị / người em gái (nữ)',
      wordEn: 'Bhaginī',
      lessonId: 'lesson_10',
      pronunciation: 'bha-gi-nii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_005',
      root: 'Brahmacārī',
      paradigmId: 'masc_i_long',
      wordVi: 'người sống phạm hạnh / độc thân (nam -ī)',
      wordEn: 'Brahmacārī',
      lessonId: 'lesson_10',
      pronunciation: 'brahma-caa-rii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_006',
      root: 'Dhammacārī',
      paradigmId: 'masc_i_long',
      wordVi: 'người thực hành chánh pháp (nam -ī)',
      wordEn: 'Dhammacārī',
      lessonId: 'lesson_10',
      pronunciation: 'dhamma-caa-rii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_007',
      root: 'Dhana',
      paradigmId: 'neuter_a',
      wordVi: 'của cải, tài sản (trung)',
      wordEn: 'Dhana',
      lessonId: 'lesson_10',
      pronunciation: 'dha-na',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_008',
      root: 'Duggati',
      paradigmId: 'fem_i',
      wordVi: 'cõi khổ, ác thú (nữ)',
      wordEn: 'Duggati',
      lessonId: 'lesson_10',
      pronunciation: 'du-gga-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_009',
      root: 'Have',
      paradigmId: 'indeclinable',
      wordVi: 'thật vậy, dĩ nhiên, quả thật (bất biến từ)',
      wordEn: 'Have',
      lessonId: 'lesson_10',
      pronunciation: 'ha-ve',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_010',
      root: 'Iva',
      paradigmId: 'indeclinable',
      wordVi: 'như, giống như, tựa như (bất biến từ)',
      wordEn: 'Iva',
      lessonId: 'lesson_10',
      pronunciation: 'i-va',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_011',
      root: 'Jananī',
      paradigmId: 'fem_i_long',
      wordVi: 'người mẹ (nữ -ī)',
      wordEn: 'Jananī',
      lessonId: 'lesson_10',
      pronunciation: 'ja-na-nii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_012',
      root: 'Mahesī',
      paradigmId: 'fem_i_long',
      wordVi: 'hoàng hậu, phi tần (nữ -ī)',
      wordEn: 'Mahesī',
      lessonId: 'lesson_10',
      pronunciation: 'ma-he-sii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_013',
      root: 'Medhāvī',
      paradigmId: 'masc_i_long',
      wordVi: 'bậc có trí tuệ, người thông thái (nam -ī)',
      wordEn: 'Medhāvī',
      lessonId: 'lesson_10',
      pronunciation: 'me-dhaa-vii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_014',
      root: 'Pāpa',
      paradigmId: 'neuter_a',
      wordVi: 'điều ác, tội lỗi (trung)',
      wordEn: 'Pāpa',
      lessonId: 'lesson_10',
      pronunciation: 'paa-pa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_015',
      root: 'Pāpakārī',
      paradigmId: 'masc_i_long',
      wordVi: 'kẻ làm ác (nam -ī)',
      wordEn: 'Pāpakārī',
      lessonId: 'lesson_10',
      pronunciation: 'paa-pa-kaa-rii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_016',
      root: 'Puñña',
      paradigmId: 'neuter_a',
      wordVi: 'phước đức, việc lành (trung)',
      wordEn: 'Puñña',
      lessonId: 'lesson_10',
      pronunciation: 'puñ-ña',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_017',
      root: 'Puññakārī',
      paradigmId: 'masc_i_long',
      wordVi: 'người làm phước (nam -ī)',
      wordEn: 'Puññakārī',
      lessonId: 'lesson_10',
      pronunciation: 'puñ-ña-kaa-rii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_018',
      root: 'Seṭṭha',
      paradigmId: 'masc_a',
      wordVi: 'tối thượng, tối thắng, bậc nhất (tính từ)',
      wordEn: 'Seṭṭha',
      lessonId: 'lesson_10',
      pronunciation: 'seṭ-ṭha',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_019',
      root: 'Sugati',
      paradigmId: 'fem_i',
      wordVi: 'cõi lành, thiện thú, an lạc (nữ)',
      wordEn: 'Sugati',
      lessonId: 'lesson_10',
      pronunciation: 'su-ga-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_020',
      root: 'Ajā',
      paradigmId: 'fem_a',
      wordVi: 'con dê cái (nữ, từ aja)',
      wordEn: 'Ajā',
      lessonId: 'lesson_10',
      pronunciation: 'a-jaa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_021',
      root: 'Assā',
      paradigmId: 'fem_a',
      wordVi: 'con ngựa cái (nữ, từ assa)',
      wordEn: 'Assā',
      lessonId: 'lesson_10',
      pronunciation: 'as-saa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_022',
      root: 'Upāsikā',
      paradigmId: 'fem_a',
      wordVi: 'cư sĩ nữ, tín nữ (nữ, từ upāsaka)',
      wordEn: 'Upāsikā',
      lessonId: 'lesson_10',
      pronunciation: 'u-paa-si-kaa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_023',
      root: 'Dāsī',
      paradigmId: 'fem_i_long',
      wordVi: 'nữ tì, tớ gái (nữ, từ dāsa)',
      wordEn: 'Dāsī',
      lessonId: 'lesson_10',
      pronunciation: 'daa-sii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_024',
      root: 'Devī',
      paradigmId: 'fem_i_long',
      wordVi: 'nữ thần, hoàng hậu (nữ, từ deva)',
      wordEn: 'Devī',
      lessonId: 'lesson_10',
      pronunciation: 'de-vii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_025',
      root: 'Rājinī',
      paradigmId: 'fem_i_long',
      wordVi: 'hoàng hậu (nữ, từ rāja)',
      wordEn: 'Rājinī',
      lessonId: 'lesson_10',
      pronunciation: 'raa-ji-nii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_026',
      root: 'Hatthinī',
      paradigmId: 'fem_i_long',
      wordVi: 'voi cái (nữ, từ hatthi)',
      wordEn: 'Hatthinī',
      lessonId: 'lesson_10',
      pronunciation: 'hat-thi-nii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_027',
      root: 'Medhāvinī',
      paradigmId: 'fem_i_long',
      wordVi: 'người nữ có trí tuệ (nữ, từ medhāvī)',
      wordEn: 'Medhāvinī',
      lessonId: 'lesson_10',
      pronunciation: 'me-dhaa-vi-nii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_028',
      root: 'Bhikkhunī',
      paradigmId: 'fem_i_long',
      wordVi: 'tỳ-khưu-ni (nữ, từ bhikkhu)',
      wordEn: 'Bhikkhunī',
      lessonId: 'lesson_10',
      pronunciation: 'bhik-khu-nii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_029',
      root: 'Mātulānī',
      paradigmId: 'fem_i_long',
      wordVi: 'người dì / cô / mợ (nữ, bất quy tắc từ mātula)',
      wordEn: 'Mātulānī',
      lessonId: 'lesson_10',
      pronunciation: 'maa-tu-laa-nii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_030',
      root: 'Gahapatānī',
      paradigmId: 'fem_i_long',
      wordVi: 'bà gia chủ (nữ, bất quy tắc từ gahapati)',
      wordEn: 'Gahapatānī',
      lessonId: 'lesson_10',
      pronunciation: 'ga-ha-pa-taanii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_031',
      root: 'Sabhaginī',
      paradigmId: 'fem_i_long',
      wordVi: 'cùng chị em gái (nữ)',
      wordEn: 'Sabhaginī',
      lessonId: 'lesson_10',
      pronunciation: 'sa-bha-gi-nii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_032',
      root: 'Pupphahatthā',
      paradigmId: 'fem_a',
      wordVi: 'người tay cầm hoa (nữ)',
      wordEn: 'Pupphahatthā',
      lessonId: 'lesson_10',
      pronunciation: 'pup-pa-hat-thaa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_033',
      root: 'Rakkhati',
      paradigmId: 'verb_pres',
      wordVi: 'bảo vệ, hộ trì',
      wordEn: 'Rakkhati (rakkha)',
      lessonId: 'lesson_10',
      pronunciation: 'rak-kha-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_034',
      root: 'Karoti',
      paradigmId: 'verb_pres',
      wordVi: 'làm; quá khứ: akaṃsu / katvā (sau khi làm)',
      wordEn: 'Karoti (kara)',
      lessonId: 'lesson_10',
      pronunciation: 'ka-ro-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_035',
      root: 'Deti',
      paradigmId: 'verb_pres',
      wordVi: 'cho, ban cho; qk. adaṃsu (họ đã cho)',
      wordEn: 'Deti (dā)',
      lessonId: 'lesson_10',
      pronunciation: 'de-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_036',
      root: 'Agamā',
      paradigmId: 'verb_pres',
      wordVi: 'đã đi (quá khứ của gacchati)',
      wordEn: 'Agamā / Agami',
      lessonId: 'lesson_10',
      pronunciation: 'a-ga-maa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_037',
      root: 'Pāpuṇāti',
      paradigmId: 'verb_pres',
      wordVi: 'đến nơi, đạt đến; tl. pāpuṇissati; qk. pāpuṇi',
      wordEn: 'Pāpuṇāti (pa+apa)',
      lessonId: 'lesson_10',
      pronunciation: 'paa-pu-ṇaa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_038',
      root: 'Saṅgaṇhāti',
      paradigmId: 'verb_pres',
      wordVi: 'chăm sóc, phụng dưỡng, thăm hỏi',
      wordEn: 'Saṅgaṇhāti (saṃ+gaha)',
      lessonId: 'lesson_10',
      pronunciation: 'saṅ-gaṇ-haa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_039',
      root: 'Hoti',
      paradigmId: 'verb_pres',
      wordVi: 'là, trở thành; qk. āsi / hosim? (pl. homa = chúng ta là / trở thành)',
      wordEn: 'Hoti (bhū)',
      lessonId: 'lesson_10',
      pronunciation: 'ho-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_040',
      root: 'Patati',
      paradigmId: 'verb_pres',
      wordVi: 'rụng, rơi, đáp xuống; qk. pati (đã rơi)',
      wordEn: 'Patati (pata)',
      lessonId: 'lesson_10',
      pronunciation: 'pa-ta-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_041',
      root: 'Passati',
      paradigmId: 'verb_pres',
      wordVi: 'thấy; qk. addasa / disvā (sau khi thấy)',
      wordEn: 'Passati (disa)',
      lessonId: 'lesson_10',
      pronunciation: 'pas-sa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_042',
      root: 'Dhāvati',
      paradigmId: 'verb_pres',
      wordVi: 'chạy; qk. dhāviṃsu (chúng đã chạy)',
      wordEn: 'Dhāvati (dhāva)',
      lessonId: 'lesson_10',
      pronunciation: 'dhaa-va-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_043',
      root: 'Palāyati',
      paradigmId: 'verb_pres',
      wordVi: 'chạy trốn; qk. palāyiṃsu (chúng đã chạy trốn)',
      wordEn: 'Palāyati (palā)',
      lessonId: 'lesson_10',
      pronunciation: 'pa-laa-ya-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_044',
      root: 'Uggaṇhāti',
      paradigmId: 'verb_pres',
      wordVi: 'học, nắm vững',
      wordEn: 'Uggaṇhāti (u+gaha)',
      lessonId: 'lesson_10',
      pronunciation: 'ug-gaṇ-haa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_045',
      root: 'Āruhati',
      paradigmId: 'verb_pres',
      wordVi: 'leo lên, cỡi lên',
      wordEn: 'Āruhati (ā+ruha)',
      lessonId: 'lesson_10',
      pronunciation: 'aa-ru-ha-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_046',
      root: 'Hatthin',
      paradigmId: 'masc_a',
      wordVi: 'con voi (nam -i/-ī)',
      wordEn: 'Hatthin / Hatthī',
      lessonId: 'lesson_10',
      pronunciation: 'hat-thii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_047',
      root: 'Hatthino',
      paradigmId: 'masc_a',
      wordVi: 'các con voi (CC nhiều của hatthī / voi đực)',
      wordEn: 'Hatthino',
      lessonId: 'lesson_10',
      pronunciation: 'hat-thi-no',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_048',
      root: 'Mayhaṃ',
      paradigmId: 'pronoun',
      wordVi: 'của tôi (đại từ sở hữu)',
      wordEn: 'Mayhaṃ',
      lessonId: 'lesson_10',
      pronunciation: 'may-haṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_049',
      root: 'Tassa',
      paradigmId: 'pronoun',
      wordVi: 'của người ấy / cô ấy (đại từ)',
      wordEn: 'Tassa / Tassā',
      lessonId: 'lesson_10',
      pronunciation: 'tas-saa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_050',
      root: 'Paṇṇākāra',
      paradigmId: 'masc_a',
      wordVi: 'vật thực (được đi khất thực), đồ ăn (nam)',
      wordEn: 'Paṇṇākāra',
      lessonId: 'lesson_10',
      pronunciation: 'paṇ-ṇaa-kaa-ra',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L10_051',
      root: 'Hīyo',
      paradigmId: 'indeclinable',
      wordVi: 'hôm qua (phó từ thời gian)',
      wordEn: 'Hīyo / Hiyo',
      lessonId: 'lesson_10',
      pronunciation: 'hii-yo',
      examplePali: '',
      exampleVi: '',
    ),
];


// ──────────────────────────────────────────────────────────────
// DAY 1: Học nền tảng — Ngữ pháp + Từ vựng
// ──────────────────────────────────────────────────────────────
LessonDay getLesson10Day1() {
  return LessonDay(
    id: 'lesson10_day1',
    dayNumber: 1,
    themeId: 'theme_10_masc_i_fem_i_feminine_formation',
    titleVi: 'Ngày 1 — Lý thuyết & Từ vựng: Nam/Nữ "-ī" & Lập Nữ tánh',
    phases: [
      _buildDay1Phase1(),
      _buildDay1Phase2(),
    ],
  );
}

/// Phase 1: read_listen — Giải thích ngữ pháp
LessonPhase _buildDay1Phase1() {
  return LessonPhase(
    id: 'lesson10_phase1',
    phaseTypeStr: 'read_listen',
    titleVi: '📘 Lý thuyết: Nam/Nữ "-ī" & Lập Nữ tánh',
    contentVi: '''
BÀI 10 — DANH TỪ NAM TÁNH "-ī" & NỮ TÁNH "-ī" — CÁCH LẬP DANH TỪ NỮ TÁNH

1) DANH TỪ NAM TÁNH TẬN CÙNG "-ī" — phạm trù "sāmī" (m., ngài / chồng / chúa tể)

   Bảng biến cách:
                            Số ít (sg.)            Số nhiều (pl.)
   Paṭhamā (CC)              sāmī                  sāmī, sāmino
   Ālapana (HC)              sāmī                  sāmī, sāmino
   Dutiyā (ĐC)               sāmiṃ                 sāmī, sāmino
   Tatiyā/Karaṇa (SDC)       sāminā                sāmībhi, sāmīhi
   Pañcamī (XXC)             sāminā, sāmimhā, sāmismā   sāmībhi, sāmīhi
   Catutthī/Chaṭṭhī (CĐC/STC) sāmino, sāmissa      sāmīnaṃ
   Sattamī (ĐSC)             sāmini, sāmimhi, sāmismiṃ  sāmīsu

   Tóm tắt đuôi Nam "-ī":
                           Số ít              Số nhiều
   CC / HC                  -ī                  -ī, -ino
   ĐC                       -iṃ                 -ī, -ino
   SDC                      -inā                -ībhi, -īhi
   XXC                      -inā, -imhā, -ismā  -ībhi, -īhi
   CĐC / STC                -ino, -issa         -īnaṃ
   ĐSC                      -ini, -imhi, -ismiṃ -īsu

   💡 Mẹo nhớ: Nam "-ī" phần lớn giống Nam "-i" (muni, Bài 8), CHỈ khác:
      - CC/HC/ĐC số ít trần "-ī" (dài) chứ không phải "-i" ngắn.
      - Có thêm đuôi "-ino" cho CC/HC/ĐC số nhiều (bên cạnh "-ī").
      - ĐỊNH SỞ CÁCH số ít có THÊM đuôi "-ini" (sāmini), khác với Nam "-i" là -ismiṃ/-imhi.

2) DANH TỪ NỮ TÁNH TẬN CÙNG "-ī" — phạm trù "nārī" (f., người nữ)

   Bảng biến cách:
                            Số ít (sg.)            Số nhiều (pl.)
   Paṭhamā (CC)              nārī                  nārī, nāriyo
   Ālapana (HC)              nārī, nāri            nārī, nāriyo
   Dutiyā (ĐC)               nārī, nāriṃ           nārī, nāriyo
   Tatiyā/Karaṇa (SDC)       nārīyā                nārībhi, nārīhi
   Pañcamī (XXC)             nārīyā                nārībhi, nārīhi
   Catutthī/Chaṭṭhī (CĐC/STC) nārīyā               nārīnaṃ
   Sattamī (ĐSC)             nārīyā, nārīyaṃ       nārīsu

   Tóm tắt đuôi Nữ "-ī":
                           Số ít              Số nhiều
   CC                       -ī                  -ī, -iyo
   HC                       -ī / -i             -ī, -iyo
   ĐC                       -ī / -iṃ            -ī, -iyo
   SDC/XXC                  -iyā                -ībhi, -īhi
   CĐC/STC                  -iyā                -īnaṃ
   ĐSC                      -iyā / -iyaṃ        -īsu

   💡 Mẹo nhớ: Nữ "-ī" GIỐNG HỆT Nữ "-i" (bhūmi, Bài 9), chỉ khác:
      - CC số ít là "-ī" (nguyên âm DÀI), và
      - Có thêm dạng "-i" cho HC/ĐC số ít và "-iṃ" cho ĐC số ít.
      - Số nhiều dùng -iyo (không phải -āyo của Nữ "-ā").

3) CÁCH THÀNH LẬP DANH TỪ NỮ TÁNH TỪ DANH TỪ NAM TÁNH

   a) Thêm "-ā" hoặc "-ī" vào gốc Nam tánh tận cùng "-a":
      - aja (dê đực)      → ajā   (dê cái)
      - assa (ngựa đực)   → assā  (ngựa cái)
      - upāsaka (thiện nam) → upāsikā (tín nữ)  — nếu gốc tận cùng -ka thì
        nguyên âm trước thường đổi thành "-i".
      - dāraka (bé trai)  → dārikā (bé gái)
      - deva (thiên nam)  → devī  (thiên nữ)
      - dāsa (tôi đòi nam) → dāsī (tớ gái / nữ tì)
      - nara (người nam)  → nārī  (người nữ)

   b) Thêm "-inī" / "-nī" vào các gốc Nam tánh tận cùng "-a", "-i", "-ī", "-u":
      - rāja (vua)        → rājinī    (hoàng hậu)
      - hatthi (voi đực)  → hatthinī  (voi cái)
      - medhāvī (bậc trí nam) → medhāvinī (bậc trí nữ)
      - bhikkhu (tỳ-khưu) → bhikkhunī (tỳ-khưu-ni)

   c) Một dạng bất quy tắc:
      - mātula (cậu / người chú) → mātulānī (dì / người cô / mợ)
      - gahapati (gia chủ nam)   → gahapatānī (bà gia chủ)

4) LUẬT NIGGAHITA (Ṃ) VỚI NHÓM PHỤ ÂM (Sandhi)

   Khi niggahita (ṃ) đứng trước một phụ âm, nó biến thành âm MŨI của chính
   nhóm phụ âm đó:
     - trước k/kh/g/gh        → ṅ (mũi cổ):       saṃ + gaho   = saṅgaho
     - trước c/ch/j/jh       → ñ (mũi ngạc cứng): saṃ + cetanā = (ví dụ ahaṃ+ca=ahañca)
     - trước ṭ/ṭh/ḍ/ḍh/ṇ     → ṇ (mũi ngạc mềm): saṃ + ṭhāna  = saṇṭhāna
     - trước t/th/d/dh/n     → n (mũi răng):     taṃ + dhanaṃ = tandhanaṃ
     - trước p/ph/b/bh/m     → m (mũi môi):      ahaṃ + pi    = aham'pi

   Ngoài ra:
     - seṭṭhaṃ + iva = seṭṭhaṃ'va (co rút nguyên âm "i"): "như của tối thượng".
     - Tương tự cho các sandhi quen: bhikkhunīnañca = bhikkhunīnaṃ + ca
       (niggahita trước "c" → ñ: n-nañ-ca).

5) CÁCH DÙNG TRONG CÂU — Nhận xét nhanh về Exercise 10
   - Từ "have" (thật vậy, dĩ nhiên) và "iva" (như, giống như) là bất biến từ.
   - Động từ trong Exercise có cả thì QUÁ KHỨ đơn: agami (đã đi), adaṃsu (đã cho),
     agamiṃsu (đã đi), dhāviṃsu / palāyiṃsu (đã chạy), pāpuṇi (đã đến), pati
     (đã rơi) — các em chỉ cần nhận diện nghĩa; thì quá khứ sẽ học kỹ ở bài sau.
   - "appamāda" (không phóng dật / tinh cần) và "dhana" (của cải) là danh từ trung;
     "puñña" (phước), "pāpa" (ác) cũng là trung tánh.
''',
    contentEn: '''LESSON 10 — MASC. "-ī" / FEM. "-ī" & FORMATION OF FEMININES

A. MASCULINE "-ī" (sāmī — lord/husband/master)
                    sg.                   pl.
   Nom./Voc.       sāmī                  sāmī, sāmino
   Acc.            sāmiṃ                 sāmī, sāmino
   Ins.            sāminā                sāmībhi, sāmīhi
   Abl.            sāminā, sāmimhā, sāmismā sāmībhi, sāmīhi
   Dat./Gen.       sāmino, sāmissa       sāmīnaṃ
   Loc.            sāmini, sāmimhi, sāmismiṃ sāmīsu

B. FEMININE "-ī" (nārī — woman)
                    sg.                   pl.
   Nom.            nārī                  nārī, nāriyo
   Voc.            nārī, nāri            nārī, nāriyo
   Acc.            nārī, nāriṃ           nārī, nāriyo
   Ins./Abl.       nārīyā                nārībhi, nārīhi
   Dat./Gen.       nārīyā                nārīnaṃ
   Loc.            nārīyā, nārīyaṃ       nārīsu
   💡 Identical to fem. "-i" (bhūmi) except sg. Nom. has long "-ī" and sg. Voc./Acc.
      have additional short forms -i / -iṃ.

C. FORMING FEMININES FROM MASCULINES
   a) Add "-ā" or "-ī" to masc. "-a":
       aja → ajā (she-goat); assa → assā (mare);
       upāsaka → upāsikā (laywoman: -ka → -ikā); dāraka → dārikā (girl);
       deva → devī (goddess); dāsa → dāsī (slave woman); nara → nārī (woman).
   b) Add "-inī/-nī" to masc. -a/-i/-ī/-u:
       rāja → rājinī (queen); hatthi → hatthinī (female elephant);
       medhāvī → medhāvinī (wise woman); bhikkhu → bhikkhunī (bhikkhunī).
   c) Irregular: mātula → mātulānī (aunt); gahapati → gahapatānī (lady of house).

D. NIGGAHITA SANDHI
   - ṅ before k/kh/g/gh (saṃ+gaho = saṅgaho);
     ñ before c/ch/j/jh (ahaṃ+ca = ahañca);
     ṇ before ṭ/ṭh/ḍ/ḍh/ṇ (saṃ+ṭhāna = saṇṭhāna);
     n before t/th/d/dh/n  (taṃ+dhanaṃ = tandhanaṃ);
     m before p/ph/b/bh/m (ahaṃ+pi = aham'pi).
   - seṭṭhaṃ + iva = seṭṭhaṃ'va (vowel contraction, not ṃ change).
''',
    fabPhrases: [
          FabPhraseItem(
            phrase: 'sāmī (m.) — ngài, người chồng, chúa tể',
            meaning:
                'CC/HC/ĐC số ít: -ī / -iṃ; SDC -inā; XXC -inā/-imhā/-ismā; CĐC/STC -ino/-issa; ĐSC -ini/-imhi/-ismiṃ. Số nhiều: -ino/-īnaṃ/-īsu.',
          ),
          FabPhraseItem(
            phrase: 'nārī (f.) — người nữ',
            meaning:
                'Giống NỮ "-ī" chia theo hệ bhūmi (nữ "-i"): gián tiếp -iyā; ĐSC ít -iyā/-iyaṃ; nhiều -īhi/-īnaṃ/-īsu.',
          ),
          FabPhraseItem(
            phrase: 'Nam "-a" → Nữ "-ā / -ī": dāraka→dārikā; deva→devī',
            meaning:
                'Nếu gốc tận cùng "-ka", nguyên âm trước thường đổi sang "-i" (upāsaka→upāsikā).',
          ),
          FabPhraseItem(
            phrase: 'Nam "-a/-i/-ī/-u" → Nữ "-inī / -nī": bhikkhu→bhikkhunī',
            meaning:
                'medhāvī→medhāvinī; rāja→rājinī; hatthi→hatthinī.',
          ),
          FabPhraseItem(
            phrase: 'Niggahita + phụ âm → mũi cùng nhóm',
            meaning:
                'saṃ+gaho=saṅgaho; saṃ+ṭhāna=saṇṭhāna; ahaṃ+ca=ahañca; taṃ+dhanaṃ=tandhanaṃ.',
          ),
        ],
  );
}

/// Phase 2: read_listen — Từ vựng
LessonPhase _buildDay1Phase2() {
  return LessonPhase(
    id: 'lesson10_phase2',
    phaseTypeStr: 'read_listen',
    titleVi: '📖 Từ vựng: Nam/Nữ "-ī" & Lập Nữ tánh',
    contentVi: 'Học thuộc các từ mới sau (danh từ Nam/Nữ tánh "-ī", Trung tánh, tính từ, bất biến từ) và các cặp Nam/Nữ minh hoạ cho quy tắc thành lập nữ tánh.',
    fabVocab: _buildVocabFabList(),
  );
}

List<FabVocabItem> _buildVocabFabList() {
  return const [
    FabVocabItem(
        wordEn: 'Sāmī',
        pronunciation: 'saa-mii',
        wordVi: 'ngài, chồng, chúa tể, chủ nhân (nam -ī)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Nārī',
        pronunciation: 'naa-rii',
        wordVi: 'người nữ, đàn bà (nữ -ī)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Appamāda',
        pronunciation: 'ap-pa-maa-da',
        wordVi: 'sự không phóng dật, tinh cần (nam)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Bhaginī',
        pronunciation: 'bha-gi-nii',
        wordVi: 'người chị / người em gái (nữ)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Brahmacārī',
        pronunciation: 'brahma-caa-rii',
        wordVi: 'người sống phạm hạnh / độc thân (nam -ī)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Dhammacārī',
        pronunciation: 'dhamma-caa-rii',
        wordVi: 'người thực hành chánh pháp (nam -ī)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Dhana',
        pronunciation: 'dha-na',
        wordVi: 'của cải, tài sản (trung)',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Duggati',
        pronunciation: 'du-gga-ti',
        wordVi: 'cõi khổ, ác thú (nữ)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Have',
        pronunciation: 'ha-ve',
        wordVi: 'thật vậy, dĩ nhiên, quả thật (bất biến từ)',
        partOfSpeech: 'indec.',
      ),
    FabVocabItem(
        wordEn: 'Iva',
        pronunciation: 'i-va',
        wordVi: 'như, giống như, tựa như (bất biến từ)',
        partOfSpeech: 'indec.',
      ),
    FabVocabItem(
        wordEn: 'Jananī',
        pronunciation: 'ja-na-nii',
        wordVi: 'người mẹ (nữ -ī)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Mahesī',
        pronunciation: 'ma-he-sii',
        wordVi: 'hoàng hậu, phi tần (nữ -ī)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Medhāvī',
        pronunciation: 'me-dhaa-vii',
        wordVi: 'bậc có trí tuệ, người thông thái (nam -ī)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Pāpa',
        pronunciation: 'paa-pa',
        wordVi: 'điều ác, tội lỗi (trung)',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Pāpakārī',
        pronunciation: 'paa-pa-kaa-rii',
        wordVi: 'kẻ làm ác (nam -ī)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Puñña',
        pronunciation: 'puñ-ña',
        wordVi: 'phước đức, việc lành (trung)',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Puññakārī',
        pronunciation: 'puñ-ña-kaa-rii',
        wordVi: 'người làm phước (nam -ī)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Seṭṭha',
        pronunciation: 'seṭ-ṭha',
        wordVi: 'tối thượng, tối thắng, bậc nhất (tính từ)',
        partOfSpeech: 'adj.',
      ),
    FabVocabItem(
        wordEn: 'Sugati',
        pronunciation: 'su-ga-ti',
        wordVi: 'cõi lành, thiện thú, an lạc (nữ)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Ajā',
        pronunciation: 'a-jaa',
        wordVi: 'con dê cái (nữ, từ aja)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Assā',
        pronunciation: 'as-saa',
        wordVi: 'con ngựa cái (nữ, từ assa)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Upāsikā',
        pronunciation: 'u-paa-si-kaa',
        wordVi: 'cư sĩ nữ, tín nữ (nữ, từ upāsaka)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Dāsī',
        pronunciation: 'daa-sii',
        wordVi: 'nữ tì, tớ gái (nữ, từ dāsa)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Devī',
        pronunciation: 'de-vii',
        wordVi: 'nữ thần, hoàng hậu (nữ, từ deva)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Rājinī',
        pronunciation: 'raa-ji-nii',
        wordVi: 'hoàng hậu (nữ, từ rāja)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Hatthinī',
        pronunciation: 'hat-thi-nii',
        wordVi: 'voi cái (nữ, từ hatthi)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Medhāvinī',
        pronunciation: 'me-dhaa-vi-nii',
        wordVi: 'người nữ có trí tuệ (nữ, từ medhāvī)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Bhikkhunī',
        pronunciation: 'bhik-khu-nii',
        wordVi: 'tỳ-khưu-ni (nữ, từ bhikkhu)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Mātulānī',
        pronunciation: 'maa-tu-laa-nii',
        wordVi: 'người dì / cô / mợ (nữ, bất quy tắc từ mātula)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Gahapatānī',
        pronunciation: 'ga-ha-pa-taanii',
        wordVi: 'bà gia chủ (nữ, bất quy tắc từ gahapati)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Sabhaginī',
        pronunciation: 'sa-bha-gi-nii',
        wordVi: 'cùng chị em gái (nữ)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Pupphahatthā',
        pronunciation: 'pup-pa-hat-thaa',
        wordVi: 'người tay cầm hoa (nữ)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Rakkhati (rakkha)',
        pronunciation: 'rak-kha-ti',
        wordVi: 'bảo vệ, hộ trì',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Karoti (kara)',
        pronunciation: 'ka-ro-ti',
        wordVi: 'làm; quá khứ: akaṃsu / katvā (sau khi làm)',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Deti (dā)',
        pronunciation: 'de-ti',
        wordVi: 'cho, ban cho; qk. adaṃsu (họ đã cho)',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Agamā / Agami',
        pronunciation: 'a-ga-maa',
        wordVi: 'đã đi (quá khứ của gacchati)',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Pāpuṇāti (pa+apa)',
        pronunciation: 'paa-pu-ṇaa-ti',
        wordVi: 'đến nơi, đạt đến; tl. pāpuṇissati; qk. pāpuṇi',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Saṅgaṇhāti (saṃ+gaha)',
        pronunciation: 'saṅ-gaṇ-haa-ti',
        wordVi: 'chăm sóc, phụng dưỡng, thăm hỏi',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Hoti (bhū)',
        pronunciation: 'ho-ti',
        wordVi: 'là, trở thành; qk. āsi / hosim? (pl. homa = chúng ta là / trở thành)',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Patati (pata)',
        pronunciation: 'pa-ta-ti',
        wordVi: 'rụng, rơi, đáp xuống; qk. pati (đã rơi)',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Passati (disa)',
        pronunciation: 'pas-sa-ti',
        wordVi: 'thấy; qk. addasa / disvā (sau khi thấy)',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Dhāvati (dhāva)',
        pronunciation: 'dhaa-va-ti',
        wordVi: 'chạy; qk. dhāviṃsu (chúng đã chạy)',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Palāyati (palā)',
        pronunciation: 'pa-laa-ya-ti',
        wordVi: 'chạy trốn; qk. palāyiṃsu (chúng đã chạy trốn)',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Uggaṇhāti (u+gaha)',
        pronunciation: 'ug-gaṇ-haa-ti',
        wordVi: 'học, nắm vững',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Āruhati (ā+ruha)',
        pronunciation: 'aa-ru-ha-ti',
        wordVi: 'leo lên, cỡi lên',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Hatthin / Hatthī',
        pronunciation: 'hat-thii',
        wordVi: 'con voi (nam -i/-ī)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Hatthino',
        pronunciation: 'hat-thi-no',
        wordVi: 'các con voi (CC nhiều của hatthī / voi đực)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Mayhaṃ',
        pronunciation: 'may-haṃ',
        wordVi: 'của tôi (đại từ sở hữu)',
        partOfSpeech: 'pron.',
      ),
    FabVocabItem(
        wordEn: 'Tassa / Tassā',
        pronunciation: 'tas-saa',
        wordVi: 'của người ấy / cô ấy (đại từ)',
        partOfSpeech: 'pron.',
      ),
    FabVocabItem(
        wordEn: 'Paṇṇākāra',
        pronunciation: 'paṇ-ṇaa-kaa-ra',
        wordVi: 'vật thực (được đi khất thực), đồ ăn (nam)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Hīyo / Hiyo',
        pronunciation: 'hii-yo',
        wordVi: 'hôm qua (phó từ thời gian)',
        partOfSpeech: 'adv.',
      ),
  ];
}


// ──────────────────────────────────────────────────────────────
// DAY 2: Luyện tập — Mind Game + Quiz
// ──────────────────────────────────────────────────────────────
LessonDay getLesson10Day2() {
  return LessonDay(
    id: 'lesson10_day2',
    dayNumber: 2,
    themeId: 'theme_10_masc_i_fem_i_feminine_formation',
    titleVi: 'Ngày 2 — Luyện tập: Nam/Nữ "-ī" & Lập Nữ tánh',
    phases: [
      _buildDay2MindGame(),
      _buildDay2Quiz(),
    ],
  );
}

/// Phase 3: mind_game — Trò chơi tư duy với Exercise
LessonPhase _buildDay2MindGame() {
  return LessonPhase(
    id: 'lesson10_phase3',
    phaseTypeStr: 'mind_game',
    titleVi: '🧠 Ghép câu: Nam/Nữ "-ī" & Lập Nữ tánh',
    contentVi: 'Nhấn vào cụm tiếng Việt để nói to cụm Pāḷi rồi xem đáp án. Chú ý các dạng Nam "-ī" / Nữ "-ī" và luật niggahita với nhóm phụ âm (saṅgaho, ahañca, bhikkhunīnañca).',
    mixedSegments: kLesson10MindGameSegments,
  );
}

/// Mind Game segments cho bài tập 10
class _Seg {
  final String pali;
  final String vi;
  const _Seg(this.pali, this.vi);
}

final kLesson10MindGameSegments = <MixedSegment>[
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
    // 1. "Dhammo have rakkhati Dhammacārī."
    ...sent(const [
      _Seg('"Dhammo', 'Chánh pháp'),
      _Seg('have', 'thật vậy / quả nhiên'),
      _Seg('rakkhati', 'hộ trì / bảo vệ'),
      _Seg('Dhammacārī."', 'người thực hành Chánh pháp."'),
    ]),
    // 2. "Na duggatiṃ gacchati dhammacārī."
    ...sent(const [
      _Seg('Na', 'Không'),
      _Seg('duggatiṃ', '(đến) cõi khổ / ác thú'),
      _Seg('gacchati', 'đi đến'),
      _Seg('dhammacārī.', 'người hành Chánh pháp.'),
    ]),
    // 3. Narā ca nāriyo ca puññaṃ katvā sugatīsu uppajjissanti.
    ...sent(const [
      _Seg('Narā ca', 'Người nam và'),
      _Seg('nāriyo ca', 'người nữ thì'),
      _Seg('puññaṃ', 'phước đức'),
      _Seg('katvā', 'sau khi đã làm'),
      _Seg('sugatīsu', 'trong các cõi lành'),
      _Seg('uppajjissanti', 'sẽ tái sanh'),
    ]),
    // 4. Bhaginī tassā sāminā saddhiṃ jananiṃ passituṃ sve gamissati.
    ...sent(const [
      _Seg('Bhaginī', 'Người chị gái'),
      _Seg('tassā', '(cùng) chồng của cô ấy'),
      _Seg('sāminā saddhiṃ', 'với chồng của cô'),
      _Seg('jananiṃ', 'mẹ'),
      _Seg('passituṃ', 'để thăm / để thấy'),
      _Seg('sve', 'ngày mai'),
      _Seg('gamissati', 'sẽ đi'),
    ]),
    // 5. Pāpakārī, tumhe pāpaṃ katvā duggatīsu uppajjissatha.
    ...sent(const [
      _Seg('Pāpakārī,', 'Này kẻ làm ác,'),
      _Seg('tumhe', 'các ngươi'),
      _Seg('pāpaṃ', 'điều ác'),
      _Seg('katvā', 'sau khi làm'),
      _Seg('duggatīsu', 'trong các cõi khổ'),
      _Seg('uppajjissatha', 'các ngươi sẽ tái sanh'),
    ]),
    // 7. Mahesiyo nārīnaṃ puññaṃ kātuṃ dhanaṃ denti.
    ...sent(const [
      _Seg('Mahesiyo', 'Các hoàng hậu'),
      _Seg('nārīnaṃ', '(cho) các người nữ'),
      _Seg('puññaṃ', 'phước đức'),
      _Seg('kātuṃ', 'để làm / tạo'),
      _Seg('dhanaṃ', 'của cải'),
      _Seg('denti', '(họ) ban cho'),
    ]),
    // 8. Hatthino ca hatthiniyo ca aṭavīsu ca pabbatesu ca vasanti.
    ...sent(const [
      _Seg('Hatthino ca', 'Các voi đực và'),
      _Seg('hatthiniyo ca', 'các voi cái thì'),
      _Seg('aṭavīsu ca', 'trong rừng và'),
      _Seg('pabbatesu ca', 'trên núi'),
      _Seg('vasanti', '(chúng) sống'),
    ]),
    // 10. Mahesī narapatinā saddhiṃ sve nagaraṃ pāpuṇissati.
    ...sent(const [
      _Seg('Mahesī', 'Hoàng hậu'),
      _Seg('narapatinā saddhiṃ', 'cùng với vua'),
      _Seg('sve', 'ngày mai'),
      _Seg('nagaraṃ', '(đến) kinh thành'),
      _Seg('pāpuṇissati', 'sẽ đến nơi'),
    ]),
    // 11. Medhāvino ca medhāviniyo ca appamādena Dhammaṃ uggaṇhitvā muttiṃ labhissanti.
    ...sent(const [
      _Seg('Medhāvino ca', 'Các bậc nam trí và'),
      _Seg('medhāviniyo ca', 'các bậc nữ trí thì'),
      _Seg('appamādena', 'nhờ sự tinh cần / không phóng dật'),
      _Seg('Dhammaṃ', 'Giáo Pháp'),
      _Seg('uggaṇhitvā', 'sau khi học thông'),
      _Seg('muttiṃ', 'sự giải thoát'),
      _Seg('labhissanti', 'sẽ chứng đạt'),
    ]),
    // 14. Bhikkhuniyo gahapatānīnaṃ ovādaṃ adaṃsu.
    ...sent(const [
      _Seg('Bhikkhuniyo', 'Các tỳ-khưu-ni'),
      _Seg('gahapatānīnaṃ', '(cho) các bà gia chủ'),
      _Seg('ovādaṃ', 'lời giáo giới'),
      _Seg('adaṃsu', 'đã ban cho'),
    ]),
    // 15. "Appamādañca medhāvī - dhanaṃ seṭṭhaṃ'va rakkhati."
    ...sent(const [
      _Seg('"Appamādañca', 'Sự tinh cần thì'),
      _Seg('medhāvī', 'người trí'),
      _Seg("dhanaṃ seṭṭhaṃ'va", 'như của cải tối thượng'),
      _Seg('rakkhati."', 'gìn giữ."'),
    ]),
    // 18. Mayhaṃ sāmī hatthiṃ āruhitvā bhūmiyaṃ pati.
    ...sent(const [
      _Seg('Mayhaṃ', 'Của tôi'),
      _Seg('sāmī', 'chồng / ngài'),
      _Seg('hatthiṃ', 'con voi'),
      _Seg('āruhitvā', 'sau khi đã cỡi lên'),
      _Seg('bhūmiyaṃ', 'xuống đất'),
      _Seg('pati', 'đã rơi / ngã'),
    ]),
    // 24. Janani, ahaṃ suve (mayhaṃ) mātulaṃ ca mātulāniṃ ca passituṃ gamissāmi.
    ...sent(const [
      _Seg('Janani,', 'Thưa mẹ,'),
      _Seg('ahaṃ', 'con'),
      _Seg('suve', 'ngày mai'),
      _Seg('mātulaṃ ca', 'cậu và'),
      _Seg('mātulāniṃ ca', 'dì thì'),
      _Seg('passituṃ', 'để thăm'),
      _Seg('gamissāmi', 'sẽ đi'),
    ]),
  ];
}

/// Phase 4: listening_quiz — Bài tập trắc nghiệm
LessonPhase _buildDay2Quiz() {
  return LessonPhase(
    id: 'lesson10_phase4',
    phaseTypeStr: 'listening_quiz',
    titleVi: '🎧 Quiz: Nam/Nữ "-ī" & Lập Nữ tánh',
    questions: _buildQuiz(),
    fabAnswers: _buildQuizAnswers(),
  );
}

List<QuizQuestion> _buildQuiz() {
  return [
    QuizQuestion(
        id: 'lesson10_q01_01',
        questionText: '1. Số nhiều CC/HC/ĐC của danh từ NAM tánh tận cùng "-ī" (vd. sāmī, medhāvī, brahmacārī) mang đuôi nào sau đây?',
        options: [
        'A. -ī, -ino (vd. medhāvino)',
        'B. -ayo (như nam tánh "-a")',
        'C. -iyo (như nữ tánh "-i")',
        'D. -āni (như trung tánh "-a")',
      ],
        correctIndex: 0,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson10_q01_02',
        questionText: '2. Phát biểu nào ĐÚNG về cách chia của danh từ NỮ tánh tận cùng "-ī" (vd. nārī, bhaginī, mahesī)?',
        options: [
        'A. Khác hẳn nữ "-i" (bhūmi) ở mọi cách.',
        'B. Chỉ có số nhiều, không có số ít.',
        'C. Cơ bản GIỐNG hệ nữ "-i" (bhūmi), chỉ dùng "-ī" (dài) ở CC số ít và các đuôi phụ -i/-iṃ cho HC/ĐC số ít; gián tiếp "-iyā", số nhiều "-iyo" / "-īhi" / "-īnaṃ" / "-īsu".',
        'D. Giống hệt nam "-ī" (sāmī).',
      ],
        correctIndex: 2,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson10_q01_03',
        questionText: '3. Khi thành lập danh từ NỮ tánh từ nam tánh "-aka" (vd. upāsaka → ???, dāraka → dārikā), quy tắc nào được áp dụng?',
        options: [
        'A. Giữ nguyên rồi thêm "-ī": upāsaka→upāsakī.',
        'B. Nguyên âm trước -ka đổi thành "-i" rồi thêm "-ā": upāsaka→upāsikā, dāraka→dārikā.',
        'C. Thêm "-nī": upāsaka→upāsakanī.',
        'D. Thêm "-ānī": upāsaka→upāsakānī.',
      ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson10_q01_04',
        questionText: '4. Cặp nào sau đây thể hiện quy tắc thêm "-nī/-inī" để tạo nữ tánh từ nam tánh tận cùng nguyên âm dài / "-u"?',
        options: [
        'A. nara → nārī',
        'B. deva → devī',
        'C. aja → ajā',
        'D. bhikkhu → bhikkhunī',
      ],
        correctIndex: 3,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson10_q01_05',
        questionText: '5. Ví dụ nào sau đây minh hoạ đúng luật niggahita (ṃ) biến thành âm mũi cùng nhóm trước một phụ âm cổ (k/kh/g/gh)?',
        options: [
        'A. seṭṭhaṃ + iva = seṭṭhaṃ\'va',
        'B. ahaṃ + pi = aham\'pi',
        'C. saṃ + gaho = saṅgaho',
        'D. itipi so bhagavā (không có niggahita)',
      ],
        correctIndex: 2,
        practiceNumber: 'practice1',
      ),
  ];
}

List<FabAnswerItem> _buildQuizAnswers() {
  return [
    FabAnswerItem(
        en: 'Q1 → A: see Vietnamese for full explanation.',
        vi: 'Câu 1: Đáp án A. "-ino" là một trong các đuôi số nhiều CC/HC/ĐC của nam tánh "-ī" (bên cạnh "-ī"). Ví dụ: sāmino, medhāvino, brahmacārino, puññakārino.',
      ),
    FabAnswerItem(
        en: 'Q2 → C: see Vietnamese for full explanation.',
        vi: 'Câu 2: Đáp án C. Nữ "-ī" (nārī) GIỐNG hệt cách chia của nữ "-i" (bhūmi), chỉ khác CC/HC/ĐC số ít dùng "-ī" dài và có thêm dạng -i/-iṃ cho HC/ĐC số ít.',
      ),
    FabAnswerItem(
        en: 'Q3 → B: see Vietnamese for full explanation.',
        vi: 'Câu 3: Đáp án B. "upāsaka → upāsikā" — khi gốc tận cùng -ka thì nguyên âm trước đổi thành "-i" rồi thêm "-ā". Tương tự dāraka→dārikā.',
      ),
    FabAnswerItem(
        en: 'Q4 → D: see Vietnamese for full explanation.',
        vi: 'Câu 4: Đáp án D. "bhikkhu → bhikkhunī" thêm "-nī" (hoặc "-inī") vào gốc nam tánh tận cùng "-u" để tạo nữ tánh.',
      ),
    FabAnswerItem(
        en: 'Q5 → C: see Vietnamese for full explanation.',
        vi: 'Câu 5: Đáp án C. "saṃ + gaho = saṅgaho" — niggahita ṃ trước nhóm k/kh/g/gh đổi thành "ṅ" (mũi cổ). "seṭṭhaṃ+iva=seṭṭhaṃ\'va" là co rút nguyên âm i chứ không phải đổi ṃ.',
      ),
  ];
}
