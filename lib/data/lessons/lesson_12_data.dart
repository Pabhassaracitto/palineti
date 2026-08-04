// lesson_12_data.dart
// ---------------------------------------------------------------------------
// Bài học số 12 — An Elementary Pāḷi Course (Nārada Mahāthera)
// Chủ đề: Đại từ & Khả năng cách
// Nguồn: Nārada Mahāthera, "An Elementary Pāḷi Course", Lesson 12
// ---------------------------------------------------------------------------

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

LessonMeta getLesson12Meta() => const LessonMeta(
  id: 'theme_12_pronouns_potential',
  lessonNumber: 12,
  titleVi: 'Đại từ & Khả năng cách',
  titleEn: 'Pronouns & Potential Mood',
  iconEmoji: '👈',
  colorValue: 0xFF4682B4,
  description: 'Cách sử dụng Đại từ nhân xưng và Khả năng cách',
);




// ──────────────────────────────────────────────────────────────
// VOCABULARY (51 items)
// ──────────────────────────────────────────────────────────────
final kLesson12Vocab = <PaliVocabModel>[
  PaliVocabModel(
      id: 'pv_L12_001',
      root: 'ahaṃ',
      paradigmId: 'pronoun',
      wordVi: 'tôi (CC số ít)',
      wordEn: 'ahaṃ',
      lessonId: 'lesson_12',
      pronunciation: 'a-haṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_002',
      root: 'mayaṃ',
      paradigmId: 'pronoun',
      wordVi: 'chúng tôi (CC số nhiều)',
      wordEn: 'mayaṃ / amhe',
      lessonId: 'lesson_12',
      pronunciation: 'ma-yaṃ / a-mhe',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_003',
      root: 'maṃ',
      paradigmId: 'pronoun',
      wordVi: 'tôi (ĐC số ít)',
      wordEn: 'maṃ / mamaṃ',
      lessonId: 'lesson_12',
      pronunciation: 'maṃ / ma-maṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_004',
      root: 'mayā',
      paradigmId: 'pronoun',
      wordVi: 'do/bởi tôi, với tôi (SDC/XXC số ít)',
      wordEn: 'mayā',
      lessonId: 'lesson_12',
      pronunciation: 'ma-yaa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_005',
      root: 'mama',
      paradigmId: 'pronoun',
      wordVi: 'của tôi, cho tôi (STC/CĐC số ít)',
      wordEn: 'mama / mayhaṃ',
      lessonId: 'lesson_12',
      pronunciation: 'ma-ma / may-haṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_006',
      root: 'mayi',
      paradigmId: 'pronoun',
      wordVi: 'nơi tôi, trong tôi (ĐSC số ít)',
      wordEn: 'mayi',
      lessonId: 'lesson_12',
      pronunciation: 'ma-yi',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_007',
      root: 'me',
      paradigmId: 'pronoun',
      wordVi: 'tôi / của tôi / cho tôi (enclitic, không đầu câu)',
      wordEn: 'me',
      lessonId: 'lesson_12',
      pronunciation: 'me',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_008',
      root: 'no',
      paradigmId: 'pronoun',
      wordVi: 'chúng tôi / của chúng tôi (enclitic, không đầu câu)',
      wordEn: 'no',
      lessonId: 'lesson_12',
      pronunciation: 'no',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_009',
      root: 'tvaṃ',
      paradigmId: 'pronoun',
      wordVi: 'bạn, ngươi (CC số ít)',
      wordEn: 'tvaṃ / tuvaṃ',
      lessonId: 'lesson_12',
      pronunciation: 'tvaṃ / tu-vaṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_010',
      root: 'tumhe',
      paradigmId: 'pronoun',
      wordVi: 'các bạn (CC/ĐC số nhiều)',
      wordEn: 'tumhe',
      lessonId: 'lesson_12',
      pronunciation: 'tum-he',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_011',
      root: 'taṃ',
      paradigmId: 'pronoun',
      wordVi: 'bạn (ĐC số ít)',
      wordEn: 'taṃ / tavaṃ',
      lessonId: 'lesson_12',
      pronunciation: 'taṃ / ta-vaṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_012',
      root: 'tvayā',
      paradigmId: 'pronoun',
      wordVi: 'do/bởi bạn (SDC/XXC số ít)',
      wordEn: 'tvayā / tayā',
      lessonId: 'lesson_12',
      pronunciation: 'tva-yaa / ta-yaa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_013',
      root: 'tava',
      paradigmId: 'pronoun',
      wordVi: 'của bạn, cho bạn (STC/CĐC số ít)',
      wordEn: 'tava / tuyhaṃ',
      lessonId: 'lesson_12',
      pronunciation: 'ta-va / tuy-haṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_014',
      root: 'tvayi',
      paradigmId: 'pronoun',
      wordVi: 'nơi bạn, trong bạn (ĐSC số ít)',
      wordEn: 'tvayi / tayi',
      lessonId: 'lesson_12',
      pronunciation: 'tva-yi / ta-yi',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_015',
      root: 'te',
      paradigmId: 'pronoun',
      wordVi: 'bạn / của bạn / cho bạn (enclitic, không đầu câu)',
      wordEn: 'te',
      lessonId: 'lesson_12',
      pronunciation: 'te',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_016',
      root: 'vo',
      paradigmId: 'pronoun',
      wordVi: 'các bạn / của các bạn (enclitic, không đầu câu)',
      wordEn: 'vo',
      lessonId: 'lesson_12',
      pronunciation: 'vo',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_017',
      root: 'Alikavādī',
      paradigmId: 'masc_i_long',
      wordVi: 'kẻ nói dối, người nói lời không thật (nam)',
      wordEn: 'Alikavādī',
      lessonId: 'lesson_12',
      pronunciation: 'a-li-ka-vaa-dii',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_018',
      root: 'Āroceti',
      paradigmId: 'verb_pres',
      wordVi: 'báo cáo, thông báo, nói cho biết',
      wordEn: 'Āroceti (ā+ruca)',
      lessonId: 'lesson_12',
      pronunciation: 'aa-ro-ce-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_019',
      root: 'Asādhu',
      paradigmId: 'masc_u',
      wordVi: 'kẻ xấu, người không tốt; xấu, ác (nam/tính từ)',
      wordEn: 'Asādhu',
      lessonId: 'lesson_12',
      pronunciation: 'a-saa-dhu',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_020',
      root: 'Bhajati',
      paradigmId: 'verb_pres',
      wordVi: 'cọng tác, giao du, gần gũi, phụng sự',
      wordEn: 'Bhajati (bhaja)',
      lessonId: 'lesson_12',
      pronunciation: 'bha-ja-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_021',
      root: 'Bhaṇati',
      paradigmId: 'verb_pres',
      wordVi: 'nói, tụng đọc, thuyết (v.d. bhaṇeyya = nên nói)',
      wordEn: 'Bhaṇati (bhaṇa)',
      lessonId: 'lesson_12',
      pronunciation: 'bha-ṇa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_022',
      root: 'Dāna',
      paradigmId: 'neuter_a',
      wordVi: 'sự bố thí, sự cho, của thí (trung)',
      wordEn: 'Dāna',
      lessonId: 'lesson_12',
      pronunciation: 'daa-na',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_023',
      root: 'Evaṃ',
      paradigmId: 'indeclinable',
      wordVi: 'như vậy, như thế (bất biến từ)',
      wordEn: 'Evaṃ',
      lessonId: 'lesson_12',
      pronunciation: 'e-vaṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_024',
      root: 'Jināti',
      paradigmId: 'verb_pres',
      wordVi: 'chiến thắng, chinh phục',
      wordEn: 'Jināti (ji)',
      lessonId: 'lesson_12',
      pronunciation: 'ji-naa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_025',
      root: 'Kadariya',
      paradigmId: 'masc_a',
      wordVi: 'kẻ keo kiệt, bủn xỉn (nam)',
      wordEn: 'Kadariya',
      lessonId: 'lesson_12',
      pronunciation: 'ka-da-ri-ya',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_026',
      root: 'Kodha',
      paradigmId: 'masc_a',
      wordVi: 'sân, sự tức giận (nam)',
      wordEn: 'Kodha',
      lessonId: 'lesson_12',
      pronunciation: 'ko-dha',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_027',
      root: 'Khippaṃ',
      paradigmId: 'indeclinable',
      wordVi: 'nhanh, lập tức (trạng từ)',
      wordEn: 'Khippaṃ',
      lessonId: 'lesson_12',
      pronunciation: 'khip-paṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_028',
      root: 'Paṇḍita',
      paradigmId: 'masc_a',
      wordVi: 'bậc trí tuệ, người học rộng (nam)',
      wordEn: 'Paṇḍita',
      lessonId: 'lesson_12',
      pronunciation: 'paṇ-ḍi-ta',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_029',
      root: 'Pāpaka',
      paradigmId: 'masc_a',
      wordVi: 'xấu, ác, tội lỗi (tính từ)',
      wordEn: 'Pāpaka',
      lessonId: 'lesson_12',
      pronunciation: 'paa-pa-ka',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_030',
      root: 'Sādhu',
      paradigmId: 'indeclinable',
      wordVi: 'người tốt; tốt, lành; lành thay! (nam/tt/thán từ)',
      wordEn: 'Sādhu',
      lessonId: 'lesson_12',
      pronunciation: 'saa-dhu',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_031',
      root: 'Vāyamati',
      paradigmId: 'verb_pres',
      wordVi: 'cố gắng, tinh tấn, nỗ lực',
      wordEn: 'Vāyamati (ā+vi+yama)',
      lessonId: 'lesson_12',
      pronunciation: 'vaa-ya-ma-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_032',
      root: 'Vaṇṇa',
      paradigmId: 'masc_a',
      wordVi: 'dung sắc, màu da, sắc đẹp, sự khen, hạng (nam)',
      wordEn: 'Vaṇṇa',
      lessonId: 'lesson_12',
      pronunciation: 'vaṇ-ṇa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_033',
      root: 'Sacca',
      paradigmId: 'neuter_a',
      wordVi: 'chân lý, sự thật (trung)',
      wordEn: 'Sacca',
      lessonId: 'lesson_12',
      pronunciation: 'sac-ca',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_034',
      root: 'Yadā',
      paradigmId: 'indeclinable',
      wordVi: 'khi nào (đại từ liên hệ, bất biến từ)',
      wordEn: 'Yadā',
      lessonId: 'lesson_12',
      pronunciation: 'ya-daa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_035',
      root: 'Tadā',
      paradigmId: 'indeclinable',
      wordVi: 'lúc bấy giờ, khi ấy (bất biến từ)',
      wordEn: 'Tadā',
      lessonId: 'lesson_12',
      pronunciation: 'ta-daa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_036',
      root: 'Sace',
      paradigmId: 'indeclinable',
      wordVi: 'nếu (liên từ điều kiện)',
      wordEn: 'Sace / Yadi / Ce',
      lessonId: 'lesson_12',
      pronunciation: 'sa-ce / ya-di / ce',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_037',
      root: 'Yāva',
      paradigmId: 'indeclinable',
      wordVi: 'cho đến khi, chừng nào (liên từ)',
      wordEn: 'Yāva',
      lessonId: 'lesson_12',
      pronunciation: 'yaa-va',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_038',
      root: 'Tāva',
      paradigmId: 'indeclinable',
      wordVi: 'thì, cho đến lúc ấy (liên từ tương quan với yāva)',
      wordEn: 'Tāva',
      lessonId: 'lesson_12',
      pronunciation: 'taa-va',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_039',
      root: 'Sādhukaṃ',
      paradigmId: 'indeclinable',
      wordVi: 'một cách khéo léo, cẩn thận (trạng từ)',
      wordEn: 'Sādhukaṃ',
      lessonId: 'lesson_12',
      pronunciation: 'saa-dhu-kaṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_040',
      root: 'Akkodha',
      paradigmId: 'masc_a',
      wordVi: 'không sân, vô sân (nam)',
      wordEn: 'Akkodha',
      lessonId: 'lesson_12',
      pronunciation: 'ak-ko-dha',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_041',
      root: 'Kujjhati',
      paradigmId: 'verb_pres',
      wordVi: 'nổi giận, tức tối (v.d. na kujjheyya = không nên nổi giận)',
      wordEn: 'Kujjhati (kudh)',
      lessonId: 'lesson_12',
      pronunciation: 'kuj-jha-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_042',
      root: 'Abhibhavati',
      paradigmId: 'verb_pres',
      wordVi: 'chinh phục, chế ngự, thắng hơn',
      wordEn: 'Abhibhavati (abhi+bhu)',
      lessonId: 'lesson_12',
      pronunciation: 'a-bhi-bha-va-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_043',
      root: 'Adhipati',
      paradigmId: 'masc_i',
      wordVi: 'chúa tể, người lãnh đạo, chồng (nam)',
      wordEn: 'Adhipati',
      lessonId: 'lesson_12',
      pronunciation: 'a-dhi-pa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_044',
      root: 'Bhante',
      paradigmId: 'verb_pres',
      wordVi: 'bạch ngài (xưng hô với tỳ-khưu / Sa-môn)',
      wordEn: 'Bhante',
      lessonId: 'lesson_12',
      pronunciation: 'bhan-te',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_045',
      root: 'Pañha',
      paradigmId: 'masc_a',
      wordVi: 'câu hỏi (nam)',
      wordEn: 'Pañha',
      lessonId: 'lesson_12',
      pronunciation: 'pañ-ha',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_046',
      root: 'Pucchati',
      paradigmId: 'verb_pres',
      wordVi: 'hỏi (pucchituṃ = để hỏi)',
      wordEn: 'Pucchati (puccha)',
      lessonId: 'lesson_12',
      pronunciation: 'puc-cha-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_047',
      root: 'Niccaṃ',
      paradigmId: 'indeclinable',
      wordVi: 'thường luôn, luôn luôn (trạng từ)',
      wordEn: 'Niccaṃ',
      lessonId: 'lesson_12',
      pronunciation: 'nic-caṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_048',
      root: 'Peseti',
      paradigmId: 'verb_pres',
      wordVi: 'gởi, sai bảo',
      wordEn: 'Peseti (pesa)',
      lessonId: 'lesson_12',
      pronunciation: 'pe-se-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_049',
      root: 'Bujjhati',
      paradigmId: 'verb_pres',
      wordVi: 'giác ngộ, tỉnh thức, hiểu biết',
      wordEn: 'Bujjhati (budh)',
      lessonId: 'lesson_12',
      pronunciation: 'buj-jha-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_050',
      root: 'Mittā',
      paradigmId: 'masc_a',
      wordVi: 'bạn bè (nam / nữ)',
      wordEn: 'Mittā / Mitta',
      lessonId: 'lesson_12',
      pronunciation: 'mit-taa / mit-ta',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L12_051',
      root: 'Āharati',
      paradigmId: 'verb_pres',
      wordVi: 'đem đến, mang đến (āhareyyāsi = bạn nên đem)',
      wordEn: 'Āharati (ā+hara)',
      lessonId: 'lesson_12',
      pronunciation: 'aa-ha-ra-ti',
      examplePali: '',
      exampleVi: '',
    ),
];


// ──────────────────────────────────────────────────────────────
// DAY 1: Học nền tảng — Ngữ pháp + Từ vựng
// ──────────────────────────────────────────────────────────────
LessonDay getLesson12Day1() {
  return LessonDay(
    id: 'lesson12_day1',
    dayNumber: 1,
    themeId: 'theme_12_pronouns_optative',
    titleVi: 'Ngày 1: Đại từ & Khả năng cách — Lý thuyết & Từ vựng',
    phases: [
      _buildDay1Phase1(),
      _buildDay1Phase2(),
    ],
  );
}

/// Phase 1: read_listen — Giải thích ngữ pháp
LessonPhase _buildDay1Phase1() {
  return LessonPhase(
    id: 'lesson12_phase1',
    phaseTypeStr: 'read_listen',
    titleVi: 'Bài đọc: Đại từ & Khả năng cách',
    contentVi: '''
BÀI 12 — ĐẠI TỪ NHÂN XƯNG & KHẢ NĂNG CÁCH (SATTAMĪ)

1) ĐẠI TỪ NHÂN XƯNG AMHA ("tôi")
                            Số ít (sg.)                  Số nhiều (pl.)
   CC (Nominative)          ahaṃ                         mayaṃ, amhe, (no)
   ĐC (Accusative)          maṃ, mamaṃ                   amhe, amhākaṃ, (no)
   SDC (Instrumental)       mayā, (me)                   amhebhi, amhehi, (no)
   XXC (Ablative)           mayā                         amhebhi, amhehi
   CĐC/STC (Dat./Gen.)      mama, mayhaṃ, mamaṃ, (me)   amhaṃ, amhākaṃ, amhe, (no)
   ĐSC (Locative)           mayi                         amhesu

   Quy tắc cho enclitic "(me) / (no)":
     - me  = cho tôi, của tôi (có thể thay thế ĐC, SDC, STC/CĐC số ít)
     - no  = cho chúng tôi, của chúng tôi (thay thế các cách số nhiều tương ứng)
     - Chúng KHÔNG BAO GIỜ đứng ở đầu câu; luôn đứng sau một từ khác.

2) ĐẠI TỪ NHÂN XƯNG TUMHA ("bạn / các bạn")
                            Số ít (sg.)                     Số nhiều (pl.)
   CC                       tvaṃ, tuvaṃ                    tumhe, (vo)
   ĐC                       taṃ, tavaṃ, tvaṃ, tuvaṃ       tumhākaṃ, tumhe, (vo)
   SDC                      tvayā, tayā, (te)              tumhebhi, tumhehi, (vo)
   XXC                      tvayā, tayā                    tumhebhi, tumhehi
   CĐC/STC                  tava, tuyhaṃ, tumhaṃ, (te)   tumhākaṃ, tumhaṃ, (vo)
   ĐSC                      tvayi, tayi                    tumhesu

   Quy tắc cho enclitic "(te) / (vo)":
     - te  = cho bạn / của bạn (ngôi 2 số ít)
     - vo  = cho các bạn / của các bạn (ngôi 2 số nhiều)
     - Cũng không đứng đầu câu.

   Ví dụ:
     * Dhammaṃ vo desessāmi  = Tôi sẽ thuyết pháp cho CÁC BẠN (vo = tumhākaṃ).
     * Sace tvaṃ me ovādaṃ suṇeyyāsi = Nếu bạn nghe lời khuyên của TÔI (me = mama/mayhaṃ).
     * Tvaṃ me lekhanaṃ āhareyyāsi? = Bạn đem thư đến cho TÔI nhé? (me = mayhaṃ/mama → cho tôi).

3) KHẢ NĂNG CÁCH / MONG MỎI CÁCH (Sattamī / Optative – Conditional)

   Biến tố thêm ngay sau gốc động từ (nguyên âm trước đổi thành "-i-" như
   ở thì tương lai; đôi khi còn giữ "-a-" trong loại paca → pace/paceyya):
                            Số ít (sg.)              Số nhiều (pl.)
   Ngôi 3                   eyya (hoặc -e)          eyyuṃ
   Ngôi 2                   eyyāsi                   eyyātha
   Ngôi 1                   eyyāmi                   eyyāma

   Ví dụ với paca (nấu):
                            Số ít                    Số nhiều
   Ngôi 3                   pace / paceyya           paceyyuṃ
                            (anh ấy nên nấu)         (họ nên nấu)
   Ngôi 2                   paceyyāsi                paceyyātha
                            (bạn nên nấu)            (các bạn nên nấu)
   Ngôi 1                   paceyyāmi                paceyyāma
                            (tôi nên nấu)            (chúng tôi nên nấu)

   Ghi chú:
     - Ngôi 3 số ít "-eyya" thường rút gọn thành "-e": pace, gacche, bhaṇe, kare.
     - Động từ gốc bất quy tắc:
         * atthi (là/có)  → assa / siyā
         * hoti (là)      → heyya / heyyāsi / heyyāmi …
         * karoti (làm)   → kareyya / kare
         * gacchati (đi)  → gaccheyya / gacche
         * bujjhati (giác/ngộ) → bujjheyyāmi
         * jānāti (biết)  → jāneyya

4) CÁCH DÙNG CỦA KHẢ NĂNG CÁCH
   a) Mong muốn / cầu nguyện / lời chúc:
        * Sādhu bhante, evaṃ no kareyyāma. = Lành thay, bạch ngài, chúng con
          xin nên làm như vậy.
   b) Mệnh lệnh một cách nhẹ nhàng / khuyên bảo:
        * Saccaṃ bhaṇe = Hãy nói sự thật.
        * Na bhaje pāpake mitte = Chớ giao du với bạn ác.
   c) Điều kiện ("nếu… thì…"), thường bắt đầu bằng sace / yadi / ce:
        * Sace bhikkhū dhammaṃ deseyyuṃ, mayaṃ sādhukaṃ suṇeyyāma.
          = Nếu chư tỳ-khưu thuyết Pháp, chúng ta nên nghe một cách khéo léo.
        * Yadi tvaṃ vāyāmeyyāsi, khippaṃ paṇḍito bhaveyyāsi.
          = Nếu bạn (nên) tinh cần, bạn sẽ sớm trở thành bậc trí.
   d) Lưu ý: "yāva … tāva" (chừng nào … thì … / cho đến khi …) cũng thường đi
      với Khả năng cách trong văn cảnh khuyến tấn:
        * Yāva tumhe muttiṃ labheyyātha, tāva appamādena vāyameyyātha.
          = Cho đến khi các bạn chứng được giải thoát, các bạn hãy tinh cần không phóng dật.

5) CÁC CỤM TỪ / BẤT BIẾN TỪ CẦN NHỚ
   - sādhu  = lành thay, tốt thay; người tốt (có thể làm thán từ hoặc danh từ/tính từ).
   - asādhu = không tốt, xấu, ác; kẻ ác.
   - evaṃ   = như vậy, như thế.
   - khippaṃ = nhanh chóng, lập tức.
   - niccaṃ = thường xuyên, luôn luôn.
   - yadā … tadā … = khi nào … thì khi ấy … (cặp đại từ liên hệ-chỉ định).
   - sādhukaṃ = một cách khéo léo / kỹ lưỡng (trạng từ của sādhu).
''',
    contentEn: '''LESSON 12 — PERSONAL PRONOUNS & OPTATIVE (Sattamī)

A. PERSONAL PRONOUN amha (I)
           sg.                            pl.
   Nom.    ahaṃ                           mayaṃ, amhe
   Acc.    maṃ, mamaṃ                     amhe, amhākaṃ
   Ins.    mayā                           amhebhi, amhehi
   Abl.    mayā                           amhebhi, amhehi
   Dat./Gen. mama, mayhaṃ, mamaṃ (+me)    amhaṃ, amhākaṃ, amhe (+no)
   Loc.    mayi                           amhesu
   Enclitics: me = to me / my / me; no = to us / our / us. NEVER first word.

B. PERSONAL PRONOUN tumha (you)
           sg.                            pl.
   Nom.    tvaṃ, tuvaṃ                    tumhe
   Acc.    taṃ, tavaṃ                     tumhākaṃ, tumhe
   Ins.    tvayā, tayā                    tumhebhi, tumhehi
   Abl.    tvayā, tayā                    tumhebhi, tumhehi
   Dat./Gen. tava, tuyhaṃ (+te)           tumhākaṃ, tumhaṃ (+vo)
   Loc.    tvayi, tayi                    tumhesu
   Enclitics: te = to you / your / you; vo = to you (pl.) / your.

C. OPTATIVE-CONDITIONAL (-eyya-)
   - Add "-eyya-" between root and endings; root vowel becomes -i- (like future);
     sometimes preserved -a- (paca → pace/paceyya).
              sg.             pl.
   3rd       -eyya (or -e)   -eyyuṃ
   2nd       -eyyāsi         -eyyātha
   1st       -eyyāmi         -eyyāma
   Irregular: atthi → assa/siyā; hoti → heyya; karoti → kareyya/kare;
              gacchati → gaccheyya/gacche.

D. USAGE
   a) Wish/blessing: Sādhu bhante, evaṃ no kareyyāma.
   b) Mild command/advice: Saccaṃ bhaṇe = Speak the truth.
   c) Conditional (if…then) with sace/yadi/ce:
      Sace bhikkhū dhammaṃ deseyyuṃ, mayaṃ sādhukaṃ suṇeyyāma.
   d) With yāva…tāva (as long as / until) for exhortation:
      Yāva tumhe muttiṃ labheyyātha, tāva appamādena vāyameyyātha.

E. USEFUL PARTICLES
   sādhu = good/good person; asādhu = bad/evil; evaṃ = thus;
   khippaṃ = quickly; niccaṃ = always; sādhukaṃ = carefully;
   yadā…tadā = when…then.
''',
    fabPhrases: [
          FabPhraseItem(
            phrase: 'ahaṃ → mayaṃ (chúng tôi)',
            meaning:
                'Ngôi thứ nhất: CC ahaṃ/mayaṃ; ĐC maṃ; SDC/XXC mayā; STC mama/mayhaṃ (+me); ĐSC mayi.',
          ),
          FabPhraseItem(
            phrase: 'tvaṃ → tumhe (các bạn)',
            meaning:
                'Ngôi thứ hai: CC tvaṃ/tuvaṃ/tumhe; ĐC taṃ/tavaṃ; SDC tvayā/tayā; STC tava/tuyhaṃ (+te); ĐSC tvayi/tayi.',
          ),
          FabPhraseItem(
            phrase: 'Enclitics: me, no, te, vo',
            meaning:
                'me = cho tôi / của tôi; no = cho chúng tôi / của chúng tôi; te = cho bạn/của bạn; vo = cho các bạn/của các bạn. KHÔNG đứng đầu câu.',
          ),
          FabPhraseItem(
            phrase: '-eyyāmi / -eyyāsi / -eyya (ít)',
            meaning:
                'Khả năng cách số ít: ngôi 1/2/3. Ngôi 3 có thể rút gọn "-eyya" → "-e" (pace = anh ấy nên nấu).',
          ),
          FabPhraseItem(
            phrase: '-eyyāma / -eyyātha / -eyyuṃ (nhiều)',
            meaning: 'Khả năng cách số nhiều: chúng tôi nên / các bạn nên / họ nên.',
          ),
          FabPhraseItem(
            phrase: 'Sace / Yadi / Ce ...',
            meaning:
                'Từ nối "nếu" đứng đầu mệnh đề điều kiện, động từ chia Khả năng cách.',
          ),
        ],
  );
}

/// Phase 2: read_listen — Từ vựng
LessonPhase _buildDay1Phase2() {
  return LessonPhase(
    id: 'lesson12_phase2',
    phaseTypeStr: 'read_listen',
    titleVi: 'Từ vựng Bài 12',
    contentVi: 'Toàn bộ từ mới theo sách (tr.108-110) và các dạng đại từ nhân xưng. Học kỹ các enclitic "me/te/vo/no" và nghĩa của chúng trong câu.',
    fabVocab: _buildVocabFabList(),
  );
}

List<FabVocabItem> _buildVocabFabList() {
  return const [
    FabVocabItem(
        wordEn: 'ahaṃ',
        pronunciation: 'a-haṃ',
        wordVi: 'tôi (CC số ít)',
        partOfSpeech: 'pron.',
      ),
    FabVocabItem(
        wordEn: 'mayaṃ / amhe',
        pronunciation: 'ma-yaṃ / a-mhe',
        wordVi: 'chúng tôi (CC số nhiều)',
        partOfSpeech: 'pron.',
      ),
    FabVocabItem(
        wordEn: 'maṃ / mamaṃ',
        pronunciation: 'maṃ / ma-maṃ',
        wordVi: 'tôi (ĐC số ít)',
        partOfSpeech: 'pron.',
      ),
    FabVocabItem(
        wordEn: 'mayā',
        pronunciation: 'ma-yaa',
        wordVi: 'do/bởi tôi, với tôi (SDC/XXC số ít)',
        partOfSpeech: 'pron.',
      ),
    FabVocabItem(
        wordEn: 'mama / mayhaṃ',
        pronunciation: 'ma-ma / may-haṃ',
        wordVi: 'của tôi, cho tôi (STC/CĐC số ít)',
        partOfSpeech: 'pron.',
      ),
    FabVocabItem(
        wordEn: 'mayi',
        pronunciation: 'ma-yi',
        wordVi: 'nơi tôi, trong tôi (ĐSC số ít)',
        partOfSpeech: 'pron.',
      ),
    FabVocabItem(
        wordEn: 'me',
        pronunciation: 'me',
        wordVi: 'tôi / của tôi / cho tôi (enclitic, không đầu câu)',
        partOfSpeech: 'pron.enc.',
      ),
    FabVocabItem(
        wordEn: 'no',
        pronunciation: 'no',
        wordVi: 'chúng tôi / của chúng tôi (enclitic, không đầu câu)',
        partOfSpeech: 'pron.enc.',
      ),
    FabVocabItem(
        wordEn: 'tvaṃ / tuvaṃ',
        pronunciation: 'tvaṃ / tu-vaṃ',
        wordVi: 'bạn, ngươi (CC số ít)',
        partOfSpeech: 'pron.',
      ),
    FabVocabItem(
        wordEn: 'tumhe',
        pronunciation: 'tum-he',
        wordVi: 'các bạn (CC/ĐC số nhiều)',
        partOfSpeech: 'pron.',
      ),
    FabVocabItem(
        wordEn: 'taṃ / tavaṃ',
        pronunciation: 'taṃ / ta-vaṃ',
        wordVi: 'bạn (ĐC số ít)',
        partOfSpeech: 'pron.',
      ),
    FabVocabItem(
        wordEn: 'tvayā / tayā',
        pronunciation: 'tva-yaa / ta-yaa',
        wordVi: 'do/bởi bạn (SDC/XXC số ít)',
        partOfSpeech: 'pron.',
      ),
    FabVocabItem(
        wordEn: 'tava / tuyhaṃ',
        pronunciation: 'ta-va / tuy-haṃ',
        wordVi: 'của bạn, cho bạn (STC/CĐC số ít)',
        partOfSpeech: 'pron.',
      ),
    FabVocabItem(
        wordEn: 'tvayi / tayi',
        pronunciation: 'tva-yi / ta-yi',
        wordVi: 'nơi bạn, trong bạn (ĐSC số ít)',
        partOfSpeech: 'pron.',
      ),
    FabVocabItem(
        wordEn: 'te',
        pronunciation: 'te',
        wordVi: 'bạn / của bạn / cho bạn (enclitic, không đầu câu)',
        partOfSpeech: 'pron.enc.',
      ),
    FabVocabItem(
        wordEn: 'vo',
        pronunciation: 'vo',
        wordVi: 'các bạn / của các bạn (enclitic, không đầu câu)',
        partOfSpeech: 'pron.enc.',
      ),
    FabVocabItem(
        wordEn: 'Alikavādī',
        pronunciation: 'a-li-ka-vaa-dii',
        wordVi: 'kẻ nói dối, người nói lời không thật (nam)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Āroceti (ā+ruca)',
        pronunciation: 'aa-ro-ce-ti',
        wordVi: 'báo cáo, thông báo, nói cho biết',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Asādhu',
        pronunciation: 'a-saa-dhu',
        wordVi: 'kẻ xấu, người không tốt; xấu, ác (nam/tính từ)',
        partOfSpeech: 'm./adj.',
      ),
    FabVocabItem(
        wordEn: 'Bhajati (bhaja)',
        pronunciation: 'bha-ja-ti',
        wordVi: 'cọng tác, giao du, gần gũi, phụng sự',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Bhaṇati (bhaṇa)',
        pronunciation: 'bha-ṇa-ti',
        wordVi: 'nói, tụng đọc, thuyết (v.d. bhaṇeyya = nên nói)',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Dāna',
        pronunciation: 'daa-na',
        wordVi: 'sự bố thí, sự cho, của thí (trung)',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Evaṃ',
        pronunciation: 'e-vaṃ',
        wordVi: 'như vậy, như thế (bất biến từ)',
        partOfSpeech: 'indec.',
      ),
    FabVocabItem(
        wordEn: 'Jināti (ji)',
        pronunciation: 'ji-naa-ti',
        wordVi: 'chiến thắng, chinh phục',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Kadariya',
        pronunciation: 'ka-da-ri-ya',
        wordVi: 'kẻ keo kiệt, bủn xỉn (nam)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Kodha',
        pronunciation: 'ko-dha',
        wordVi: 'sân, sự tức giận (nam)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Khippaṃ',
        pronunciation: 'khip-paṃ',
        wordVi: 'nhanh, lập tức (trạng từ)',
        partOfSpeech: 'adv./indec.',
      ),
    FabVocabItem(
        wordEn: 'Paṇḍita',
        pronunciation: 'paṇ-ḍi-ta',
        wordVi: 'bậc trí tuệ, người học rộng (nam)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Pāpaka',
        pronunciation: 'paa-pa-ka',
        wordVi: 'xấu, ác, tội lỗi (tính từ)',
        partOfSpeech: 'adj.',
      ),
    FabVocabItem(
        wordEn: 'Sādhu',
        pronunciation: 'saa-dhu',
        wordVi: 'người tốt; tốt, lành; lành thay! (nam/tt/thán từ)',
        partOfSpeech: 'm./adj./indec.',
      ),
    FabVocabItem(
        wordEn: 'Vāyamati (ā+vi+yama)',
        pronunciation: 'vaa-ya-ma-ti',
        wordVi: 'cố gắng, tinh tấn, nỗ lực',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Vaṇṇa',
        pronunciation: 'vaṇ-ṇa',
        wordVi: 'dung sắc, màu da, sắc đẹp, sự khen, hạng (nam)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Sacca',
        pronunciation: 'sac-ca',
        wordVi: 'chân lý, sự thật (trung)',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Yadā',
        pronunciation: 'ya-daa',
        wordVi: 'khi nào (đại từ liên hệ, bất biến từ)',
        partOfSpeech: 'indec.',
      ),
    FabVocabItem(
        wordEn: 'Tadā',
        pronunciation: 'ta-daa',
        wordVi: 'lúc bấy giờ, khi ấy (bất biến từ)',
        partOfSpeech: 'indec.',
      ),
    FabVocabItem(
        wordEn: 'Sace / Yadi / Ce',
        pronunciation: 'sa-ce / ya-di / ce',
        wordVi: 'nếu (liên từ điều kiện)',
        partOfSpeech: 'indec.',
      ),
    FabVocabItem(
        wordEn: 'Yāva',
        pronunciation: 'yaa-va',
        wordVi: 'cho đến khi, chừng nào (liên từ)',
        partOfSpeech: 'indec.',
      ),
    FabVocabItem(
        wordEn: 'Tāva',
        pronunciation: 'taa-va',
        wordVi: 'thì, cho đến lúc ấy (liên từ tương quan với yāva)',
        partOfSpeech: 'indec.',
      ),
    FabVocabItem(
        wordEn: 'Sādhukaṃ',
        pronunciation: 'saa-dhu-kaṃ',
        wordVi: 'một cách khéo léo, cẩn thận (trạng từ)',
        partOfSpeech: 'adv.',
      ),
    FabVocabItem(
        wordEn: 'Akkodha',
        pronunciation: 'ak-ko-dha',
        wordVi: 'không sân, vô sân (nam)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Kujjhati (kudh)',
        pronunciation: 'kuj-jha-ti',
        wordVi: 'nổi giận, tức tối (v.d. na kujjheyya = không nên nổi giận)',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Abhibhavati (abhi+bhu)',
        pronunciation: 'a-bhi-bha-va-ti',
        wordVi: 'chinh phục, chế ngự, thắng hơn',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Adhipati',
        pronunciation: 'a-dhi-pa-ti',
        wordVi: 'chúa tể, người lãnh đạo, chồng (nam)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Bhante',
        pronunciation: 'bhan-te',
        wordVi: 'bạch ngài (xưng hô với tỳ-khưu / Sa-môn)',
        partOfSpeech: 'voc.',
      ),
    FabVocabItem(
        wordEn: 'Pañha',
        pronunciation: 'pañ-ha',
        wordVi: 'câu hỏi (nam)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Pucchati (puccha)',
        pronunciation: 'puc-cha-ti',
        wordVi: 'hỏi (pucchituṃ = để hỏi)',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Niccaṃ',
        pronunciation: 'nic-caṃ',
        wordVi: 'thường luôn, luôn luôn (trạng từ)',
        partOfSpeech: 'adv.',
      ),
    FabVocabItem(
        wordEn: 'Peseti (pesa)',
        pronunciation: 'pe-se-ti',
        wordVi: 'gởi, sai bảo',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Bujjhati (budh)',
        pronunciation: 'buj-jha-ti',
        wordVi: 'giác ngộ, tỉnh thức, hiểu biết',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Mittā / Mitta',
        pronunciation: 'mit-taa / mit-ta',
        wordVi: 'bạn bè (nam / nữ)',
        partOfSpeech: 'm./f.',
      ),
    FabVocabItem(
        wordEn: 'Āharati (ā+hara)',
        pronunciation: 'aa-ha-ra-ti',
        wordVi: 'đem đến, mang đến (āhareyyāsi = bạn nên đem)',
        partOfSpeech: 'v.',
      ),
  ];
}


// ──────────────────────────────────────────────────────────────
// DAY 2: Luyện tập — Mind Game + Quiz
// ──────────────────────────────────────────────────────────────
LessonDay getLesson12Day2() {
  return LessonDay(
    id: 'lesson12_day2',
    dayNumber: 2,
    themeId: 'theme_12_pronouns_optative',
    titleVi: 'Ngày 2: Thực hành Mind Game & Quiz — Đại từ & Khả năng cách',
    phases: [
      _buildDay2MindGame(),
      _buildDay2Quiz(),
    ],
  );
}

/// Phase 3: mind_game — Trò chơi tư duy với Exercise
LessonPhase _buildDay2MindGame() {
  return LessonPhase(
    id: 'lesson12_phase3',
    phaseTypeStr: 'mind_game',
    titleVi: 'Trò Chơi Tư Duy — Bài Tập 12',
    contentVi: 'Nhấn vào cụm tiếng Việt để nói to cụm Pāḷi tương ứng; nhấn lại để xem đáp án. Chú ý các dạng Khả năng cách (-eyyāmi/-eyyāsi/-eyya/-eyyuṃ/-eyyāma/-eyyātha) và enclitic me/te/vo/no.',
    mixedSegments: kLesson12MindGameSegments,
  );
}

/// Mind Game segments cho bài tập 12
class _Seg {
  final String pali;
  final String vi;
  const _Seg(this.pali, this.vi);
}

final kLesson12MindGameSegments = <MixedSegment>[
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
    // 1. "Gāmaṃ no gaccheyyāma."
    ...sent(const [
      _Seg('"Gāmaṃ', 'Làng'),
      _Seg('no', 'chúng tôi (cho chúng tôi / enclitic)'),
      _Seg('gaccheyyāma."', 'chúng ta nên đi / chúng tôi hãy đi."'),
    ]),
    // 2. "Buddho'pi Buddhassa bhaṇeyya vaṇṇaṃ."
    ...sent(const [
      _Seg('"Buddho\'pi', 'Dù là Đức Phật cũng'),
      _Seg('Buddhassa', '(về) phẩm hạnh của Đức Phật'),
      _Seg('bhaṇeyya', 'cũng nên nói / sẽ nói'),
      _Seg('vaṇṇaṃ."', 'lời tán thán / sắc đẹp."'),
    ]),
    // 3. "Na bhaje pāpake mitte."
    ...sent(const [
      _Seg('"Na', 'Chớ / Đừng'),
      _Seg('bhaje', 'giao du / kết bạn (nên giao du)'),
      _Seg('pāpake', 'với những kẻ xấu ác'),
      _Seg('mitte."', 'bạn bè."'),
    ]),
    // 4. "Saccaṃ bhaṇe, na kujjheyya."
    ...sent(const [
      _Seg('"Saccaṃ', 'Sự thật / lời chân thật'),
      _Seg('bhaṇe,', 'hãy nói,'),
      _Seg('na kujjheyya."', 'chớ nên nổi giận."'),
    ]),
    // 5. "Dhammaṃ vo desessāmi."
    ...sent(const [
      _Seg('"Dhammaṃ', 'Giáo Pháp'),
      _Seg('vo', 'cho các bạn'),
      _Seg('desessāmi."', 'tôi sẽ thuyết giảng."'),
    ]),
    // 6. Sace ahaṃ saccāni bujjheyyāmi te āroceyyāmi.
    ...sent(const [
      _Seg('Sace', 'Nếu'),
      _Seg('ahaṃ', 'tôi'),
      _Seg('saccāni', 'các chân lý'),
      _Seg('bujjheyyāmi', 'tôi nên giác ngộ / chứng ngộ'),
      _Seg('te', 'cho bạn (enclitic)'),
      _Seg('āroceyyāmi', 'tôi sẽ báo lại / thông báo'),
    ]),
    // 7. Yadi tvaṃ vāyāmeyyāsi khippaṃ paṇḍito bhaveyyāsi.
    ...sent(const [
      _Seg('Yadi', 'Nếu'),
      _Seg('tvaṃ', 'bạn'),
      _Seg('vāyāmeyyāsi', 'nên cố gắng / tinh cần'),
      _Seg('khippaṃ', 'sớm / nhanh chóng'),
      _Seg('paṇḍito', 'một bậc trí'),
      _Seg('bhaveyyāsi', 'bạn sẽ trở thành'),
    ]),
    // 9. Sace bhikkhū dhammaṃ deseyyuṃ mayaṃ sādhukaṃ suṇeyyāma.
    ...sent(const [
      _Seg('Sace', 'Nếu'),
      _Seg('bhikkhū', 'chư tỳ-khưu'),
      _Seg('dhammaṃ', 'Giáo Pháp'),
      _Seg('deseyyuṃ', 'nên thuyết giảng'),
      _Seg('mayaṃ', 'chúng ta / chúng tôi'),
      _Seg('sādhukaṃ', 'một cách khéo léo'),
      _Seg('suṇeyyāma', 'chúng ta nên lắng nghe'),
    ]),
    // 10. Sādhu bhante, evaṃ no kareyyāma.
    ...sent(const [
      _Seg('Sādhu', 'Lành thay!'),
      _Seg('bhante,', 'bạch ngài,'),
      _Seg('evaṃ', 'như vậy'),
      _Seg('no', 'chúng con (enclitic)'),
      _Seg('kareyyāma', 'xin hãy làm / sẽ làm'),
    ]),
    // 14. Yāva tumhe muttiṃ labheyyātha tāva appamādena vāyameyyātha.
    ...sent(const [
      _Seg('Yāva', 'Cho đến khi'),
      _Seg('tumhe', 'các bạn'),
      _Seg('muttiṃ', 'sự giải thoát'),
      _Seg('labheyyātha', 'các bạn chứng được / đạt được'),
      _Seg('tāva', 'thì / cho đến lúc đó'),
      _Seg('appamādena', 'với sự không phóng dật / tinh cần'),
      _Seg('vāyameyyātha', 'các bạn hãy nỗ lực'),
    ]),
    // 15. Câu kệ: Akkodhena jine kodhaṃ …
    ...sent(const [
      _Seg('"Akkodhena', 'Với vô sân (không giận)'),
      _Seg('jine', 'hãy chiến thắng'),
      _Seg('kodhaṃ', 'cơn giận'),
      _Seg('asādhuṃ', 'kẻ xấu / điều ác'),
      _Seg('sādhunā', 'bằng người tốt / điều thiện'),
      _Seg('jine', 'hãy chiến thắng'),
    ]),
    ...sent(const [
      _Seg('Jine', 'Hãy chiến thắng'),
      _Seg('kadariyaṃ', 'kẻ keo kiệt'),
      _Seg('dānena', 'bằng sự bố thí'),
      _Seg('saccena', 'bằng sự thật'),
      _Seg('alikavādinaṃ."', 'kẻ nói dối."'),
    ]),
    // 18. Dārakā, tumhe niccaṃ saccaṃ bhaṇeyyātha.
    ...sent(const [
      _Seg('Dārakā,', 'Này các bé trai,'),
      _Seg('tumhe', 'các con'),
      _Seg('niccaṃ', 'luôn luôn'),
      _Seg('saccaṃ', 'lời chân thật'),
      _Seg('bhaṇeyyātha', 'các con hãy nói'),
    ]),
    // 23. Sace tvaṃ me ovādaṃ suṇeyyāsi, ahaṃ te saddhiṃ have gaccheyyāmi.
    ...sent(const [
      _Seg('Sace', 'Nếu'),
      _Seg('tvaṃ', 'bạn'),
      _Seg('me', 'lời giáo giới của tôi (enclitic)'),
      _Seg('ovādaṃ', 'lời khuyên / giáo giới'),
      _Seg('suṇeyyāsi,', 'nghe / lắng nghe,'),
      _Seg('ahaṃ', 'tôi'),
      _Seg('te', 'với bạn (enclitic)'),
      _Seg('saddhiṃ', 'cùng'),
      _Seg('have', 'quả thật / chắc chắn'),
      _Seg('gaccheyyāmi', 'tôi sẽ đi'),
    ]),
    // 26. Mayaṃ dānena kadariye jineyyāma.
    ...sent(const [
      _Seg('Mayaṃ', 'Chúng tôi'),
      _Seg('dānena', 'bằng sự bố thí'),
      _Seg('kadariye', 'kẻ keo kiệt (tính bủn xỉn)'),
      _Seg('jineyyāma', 'chúng ta hãy chiến thắng'),
    ]),
    // 29. Sace sādhu asādhunā saddhiṃ bhajeyya, so asādhu api bhaveyya.
    ...sent(const [
      _Seg('Sace', 'Nếu'),
      _Seg('sādhu', 'người tốt'),
      _Seg('asādhunā saddhiṃ', 'với kẻ xấu'),
      _Seg('bhajeyya,', 'giao du / kết bạn,'),
      _Seg('so', 'người ấy'),
      _Seg('asādhu', '(thành) kẻ xấu'),
      _Seg('api', 'cũng'),
      _Seg('bhaveyya', 'sẽ trở thành'),
    ]),
    // 31. Sace tumhe sādhukaṃ maṃ suṇeyyatha, saddhā tumhesu jāyeyya.
    ...sent(const [
      _Seg('Sace', 'Nếu'),
      _Seg('tumhe', 'các bạn'),
      _Seg('sādhukaṃ', 'một cách khéo léo / chăm chú'),
      _Seg('maṃ', 'tôi'),
      _Seg('suṇeyyatha,', 'lắng nghe,'),
      _Seg('saddhā', 'niềm tin / đức tin'),
      _Seg('tumhesu', 'nơi các bạn'),
      _Seg('jāyeyya', 'sẽ sanh khởi'),
    ]),
  ];
}

/// Phase 4: listening_quiz — Bài tập trắc nghiệm
LessonPhase _buildDay2Quiz() {
  return LessonPhase(
    id: 'lesson12_phase4',
    phaseTypeStr: 'listening_quiz',
    titleVi: 'Quiz — Kiểm tra kiến thức Bài 12',
    questions: _buildQuiz(),
    fabAnswers: _buildQuizAnswers(),
  );
}

List<QuizQuestion> _buildQuiz() {
  return [
    QuizQuestion(
        id: 'lesson12_q01_01',
        questionText: '1. Từ "vo" trong câu "Dhammaṃ vo desessāmi" thuộc loại đại từ nào và có nghĩa gì?',
        options: [
        'A. Đại từ chỉ định "đó" (đứng đầu câu).',
        'B. Danh từ "tiếng nói".',
        'C. Enclitic ngôi 2 số nhiều của tumha, nghĩa là "cho các bạn / của các bạn"; không đứng đầu câu.',
        'D. Từ nối "vì vậy".',
      ],
        correctIndex: 2,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson12_q01_02',
        questionText: '2. Quy tắc nào sau đây ĐÚNG đối với các enclitic "me, te, vo, no"?',
        options: [
        'A. Chúng luôn đứng đầu câu để nhấn mạnh chủ thể.',
        'B. Chúng KHÔNG được dùng ở đầu câu; thay thế các cách gián tiếp của ahaṃ/tvaṃ (tương ứng: me=của tôi, te=của bạn, vo=của các bạn, no=của chúng tôi).',
        'C. Chúng chỉ dùng với Định sở cách.',
        'D. "me" là số nhiều của "no".',
      ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson12_q01_03',
        questionText: '3. Đuôi ngôi thứ 3 Khả năng cách (số ít / số nhiều) của động từ là gì?',
        options: [
        'A. -eyya (ít), -eyyuṃ (nhiều); trong đó ngôi 3 ít còn có dạng rút gọn -e.',
        'B. -ati / -anti (thì hiện tại).',
        'C. -issati / -issanti (thì tương lai).',
        'D. -tu / -antu (mệnh lệnh cách).',
      ],
        correctIndex: 0,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson12_q01_04',
        questionText: '4. Biến tố "-eyyāmi, -eyyāsi, -eyya" tương ứng với các ngôi nào (số ít)?',
        options: [
        'A. Ngôi 1, ngôi 2, ngôi 3 (tôi / bạn / anh ấy) số ít.',
        'B. Ngôi 3 / 2 / 1 (anh ấy / bạn / tôi) số ít.',
        'C. Số nhiều cả 3 ngôi.',
        'D. Quá khứ số ít cả 3 ngôi.',
      ],
        correctIndex: 0,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson12_q01_05',
        questionText: '5. Từ nối nào sau đây thường đứng đầu câu điều kiện dùng Khả năng cách với nghĩa "nếu"?',
        options: [
        'A. "iti" (rằng).',
        'B. "saddhiṃ" (với).',
        'C. "sace / ce / yadi" (nếu).',
        'D. "yadā … tadā" (khi nào… thì).',
      ],
        correctIndex: 2,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson12_q01_06',
        questionText: '6. Dạng "paceyyāma" thuộc chia nào của động từ paca (nấu)?',
        options: [
        'A. Ngôi 3 số nhiều thì hiện tại: "họ nấu".',
        'B. Ngôi 1 số nhiều Khả năng cách: "chúng ta nên nấu / chúng tôi hãy nấu".',
        'C. Ngôi 2 số nhiều mệnh lệnh: "hãy nấu".',
        'D. Nguyên thể: "để nấu".',
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
        vi: 'Câu 1: Đáp án C. "Dhammaṃ vo desessāmi" — "vo" là enclitic ngôi 2 số nhiều, nghĩa "cho các bạn / của các bạn"; cả câu: "Tôi sẽ thuyết pháp cho các bạn."',
      ),
    FabAnswerItem(
        en: 'Q2 → B: see Vietnamese for full explanation.',
        vi: 'Câu 2: Đáp án A. "me, te, vo, no" là các enclitic và KHÔNG ĐƯỢC ĐỨNG ĐẦU CÂU; chúng thay thế các cách gián tiếp của đại từ amha/tumha.',
      ),
    FabAnswerItem(
        en: 'Q3 → A: see Vietnamese for full explanation.',
        vi: 'Câu 3: Đáp án B. Đuôi ngôi thứ 3 số ít Khả năng cách là "-eyya" (thường rút gọn thành "-e"), ngôi 3 nhiều "-eyyuṃ". Ví dụ pace/paceyya = anh ấy nên nấu; paceyyuṃ = họ nên nấu.',
      ),
    FabAnswerItem(
        en: 'Q4 → A: see Vietnamese for full explanation.',
        vi: 'Câu 4: Đáp án A. "-eyyāmi / -eyyāsi / -eyya" theo thứ tự là ngôi 1/2/3 số ít. Số nhiều tương ứng là "-eyyāma / -eyyātha / -eyyuṃ".',
      ),
    FabAnswerItem(
        en: 'Q5 → C: see Vietnamese for full explanation.',
        vi: 'Câu 5: Đáp án C. Câu điều kiện với "sace / yadi / ce" (nếu) động từ được chia ở Khả năng cách; "yadā… tadā" có nghĩa "khi nào… thì khi ấy", không phải liên từ điều kiện.',
      ),
    FabAnswerItem(
        en: 'Q6 → B: see Vietnamese for full explanation.',
        vi: 'Câu 6: Đáp án B. "paceyyāma" là ngôi 1 số nhiều Khả năng cách của paca: "chúng tôi nên nấu" / "chúng ta hãy nấu".',
      ),
  ];
}
