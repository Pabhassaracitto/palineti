// lesson_06_data.dart
// ---------------------------------------------------------------------------
// Bài học số 6 — An Elementary Pāḷi Course (Nārada Mahāthera)
// Chủ đề: Nữ tánh "-ā" & Nguyên thể
// Nguồn: Nārada Mahāthera, "An Elementary Pāḷi Course", Lesson 6
// ---------------------------------------------------------------------------

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

LessonMeta getLesson06Meta() => const LessonMeta(
  id: 'theme_06_fem_a_infinitive',
  lessonNumber: 6,
  titleVi: 'Nữ tánh "-ā" & Nguyên thể',
  titleEn: 'Feminine "-ā" & Infinitive',
  iconEmoji: '👩',
  colorValue: 0xFF6B8E23,
  description: 'Học về danh từ nữ tánh kết thúc bằng -ā và động từ nguyên thể',
      complexity: LessonComplexity.low,
      estimatedMinutes: 35,
);




// ──────────────────────────────────────────────────────────────
// VOCABULARY (55 items)
// ──────────────────────────────────────────────────────────────
final kLesson06Vocab = <PaliVocabModel>[
  PaliVocabModel(
      id: 'pv_L06_001',
      root: 'Kaññā',
      paradigmId: 'fem_a',
      wordVi: 'cô gái, thiếu nữ, trinh nữ (phạm trừ bài)',
      wordEn: 'Kaññā',
      lessonId: 'lesson_06',
      pronunciation: 'kañ-ñaa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_002',
      root: 'Bhariyā',
      paradigmId: 'fem_a',
      wordVi: 'người vợ, vợ',
      wordEn: 'Bhariyā',
      lessonId: 'lesson_06',
      pronunciation: 'bha-ri-yaa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_003',
      root: 'Bhāsā',
      paradigmId: 'fem_a',
      wordVi: 'ngôn ngữ, lời nói, tiếng',
      wordEn: 'Bhāsā',
      lessonId: 'lesson_06',
      pronunciation: 'bhaa-saa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_004',
      root: 'Dārikā',
      paradigmId: 'fem_a',
      wordVi: 'đứa bé gái, con gái',
      wordEn: 'Dārikā',
      lessonId: 'lesson_06',
      pronunciation: 'daa-ri-kaa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_005',
      root: 'Dhammasālā',
      paradigmId: 'fem_a',
      wordVi: 'giảng đường, pháp đường',
      wordEn: 'Dhammasālā',
      lessonId: 'lesson_06',
      pronunciation: 'dham-ma-saa-laa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_006',
      root: 'Gaṅgā',
      paradigmId: 'fem_a',
      wordVi: 'sông Hằng, dòng sông lớn',
      wordEn: 'Gaṅgā',
      lessonId: 'lesson_06',
      pronunciation: 'gaṅ-gaa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_007',
      root: 'Nāvā',
      paradigmId: 'fem_a',
      wordVi: 'tàu, thuyền',
      wordEn: 'Nāvā',
      lessonId: 'lesson_06',
      pronunciation: 'naa-vaa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_008',
      root: 'Osadhasālā',
      paradigmId: 'fem_a',
      wordVi: 'nhà thuốc, dược xá, phòng phát thuốc',
      wordEn: 'Osadhasālā',
      lessonId: 'lesson_06',
      pronunciation: 'o-sa-dha-saa-laa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_009',
      root: 'Pāḷibhāsā',
      paradigmId: 'fem_a',
      wordVi: 'tiếng Pāḷi, ngôn ngữ Pāḷi',
      wordEn: 'Pāḷibhāsā',
      lessonId: 'lesson_06',
      pronunciation: 'paa-ḷi-bhaa-saa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_010',
      root: 'Paññā',
      paradigmId: 'fem_a',
      wordVi: 'trí tuệ, tuệ, huệ',
      wordEn: 'Paññā',
      lessonId: 'lesson_06',
      pronunciation: 'pañ-ñaa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_011',
      root: 'Pāṭhasālā',
      paradigmId: 'fem_a',
      wordVi: 'trường học (pāṭhasālā = nơi học đọc)',
      wordEn: 'Pāṭhasālā',
      lessonId: 'lesson_06',
      pronunciation: 'paa-ṭha-saa-laa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_012',
      root: 'Saddhā',
      paradigmId: 'fem_a',
      wordVi: 'đức tin, tín tâm, lòng tin',
      wordEn: 'Saddhā',
      lessonId: 'lesson_06',
      pronunciation: 'sad-dhaa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_013',
      root: 'Sālā',
      paradigmId: 'fem_a',
      wordVi: 'sảnh đường, nhà rạp, gian nhà lớn',
      wordEn: 'Sālā',
      lessonId: 'lesson_06',
      pronunciation: 'saa-laa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_014',
      root: 'Gilānasālā',
      paradigmId: 'fem_a',
      wordVi: 'bệnh xá, bệnh viện (cho tỳ khưu / người bịnh)',
      wordEn: 'Gilānasālā',
      lessonId: 'lesson_06',
      pronunciation: 'gi-laa-na-saa-laa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_015',
      root: 'Visikhā',
      paradigmId: 'fem_a',
      wordVi: 'con đường, đường phố; mũi tên',
      wordEn: 'Visikhā',
      lessonId: 'lesson_06',
      pronunciation: 'vi-si-khaa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_016',
      root: 'Assā',
      paradigmId: 'fem_a',
      wordVi: 'con ngựa cái (ngựa)',
      wordEn: 'Assā',
      lessonId: 'lesson_06',
      pronunciation: 'as-saa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_017',
      root: 'Vejjasālā',
      paradigmId: 'fem_a',
      wordVi: 'trường y, nhà thương / phòng thuốc',
      wordEn: 'Vejjasālā',
      lessonId: 'lesson_06',
      pronunciation: 'vej-ja-saa-laa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_018',
      root: 'Sā',
      paradigmId: 'masc_a',
      wordVi: 'con chó (đực) — LƯU Ý: Nam tánh (m.) dù tận cùng -ā!',
      wordEn: 'Sā',
      lessonId: 'lesson_06',
      pronunciation: 'saa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_019',
      root: 'Icchati',
      paradigmId: 'verb_pres',
      wordVi: 'muốn, ước mong, mong muốn (đi với nguyên thể)',
      wordEn: 'Icchati (isu)',
      lessonId: 'lesson_06',
      pronunciation: 'ic-cha-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_020',
      root: 'Gacchati',
      paradigmId: 'verb_pres',
      wordVi: 'đi',
      wordEn: 'Gacchati (gamu)',
      lessonId: 'lesson_06',
      pronunciation: 'gac-cha-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_021',
      root: 'Āgacchati',
      paradigmId: 'verb_pres',
      wordVi: 'đến, đi đến, trở lại',
      wordEn: 'Āgacchati (ā+gamu)',
      lessonId: 'lesson_06',
      pronunciation: 'aa-gac-cha-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_022',
      root: 'Nahāyati',
      paradigmId: 'verb_pres',
      wordVi: 'tắm, tắm rửa',
      wordEn: 'Nahāyati (nahā)',
      lessonId: 'lesson_06',
      pronunciation: 'na-haa-ya-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_023',
      root: 'Pivati',
      paradigmId: 'verb_pres',
      wordVi: 'uống',
      wordEn: 'Pivati (pā)',
      lessonId: 'lesson_06',
      pronunciation: 'pi-va-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_024',
      root: 'Karoti',
      paradigmId: 'verb_pres',
      wordVi: 'làm, hành động',
      wordEn: 'Karoti (kara)',
      lessonId: 'lesson_06',
      pronunciation: 'ka-ro-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_025',
      root: 'Jānāti',
      paradigmId: 'verb_pres',
      wordVi: 'biết, hiểu biết',
      wordEn: 'Jānāti (ñā)',
      lessonId: 'lesson_06',
      pronunciation: 'jaa-naa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_026',
      root: 'Gaṇhāti',
      paradigmId: 'verb_pres',
      wordVi: 'lấy, nắm bắt, thọ nhận',
      wordEn: 'Gaṇhāti (gaha)',
      lessonId: 'lesson_06',
      pronunciation: 'gaṇ-haa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_027',
      root: 'Sallapati',
      paradigmId: 'verb_pres',
      wordVi: 'thảo luận, đàm luận, chuyện trò',
      wordEn: 'Sallapati (saṃ+lapa)',
      lessonId: 'lesson_06',
      pronunciation: 'sal-la-pa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_028',
      root: 'Tiṭṭhati',
      paradigmId: 'verb_pres',
      wordVi: 'đứng, đứng lại',
      wordEn: 'Tiṭṭhati (ṭhā)',
      lessonId: 'lesson_06',
      pronunciation: 'tiṭ-ṭha-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_029',
      root: 'Āruhati',
      paradigmId: 'verb_pres',
      wordVi: 'leo lên, đi lên, bước lên',
      wordEn: 'Āruhati (ā+ruha)',
      lessonId: 'lesson_06',
      pronunciation: 'aa-ru-ha-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_030',
      root: 'Oruhati',
      paradigmId: 'verb_pres',
      wordVi: 'đi xuống, bước xuống',
      wordEn: 'Oruhati (ava+ruha)',
      lessonId: 'lesson_06',
      pronunciation: 'o-ru-ha-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_031',
      root: 'Harati',
      paradigmId: 'verb_pres',
      wordVi: 'đem, mang, lấy đi, cầm đi',
      wordEn: 'Harati (hara)',
      lessonId: 'lesson_06',
      pronunciation: 'ha-ra-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_032',
      root: 'Labhati',
      paradigmId: 'verb_pres',
      wordVi: 'được, nhận được, đạt được',
      wordEn: 'Labhati (labha)',
      lessonId: 'lesson_06',
      pronunciation: 'lab-bha-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_033',
      root: 'Uggaṇhāti',
      paradigmId: 'verb_pres',
      wordVi: 'học, học tập, nắm vững',
      wordEn: 'Uggaṇhāti (u+gaha)',
      lessonId: 'lesson_06',
      pronunciation: 'ug-gaṇ-haa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_034',
      root: 'Saṅgaṇhāti',
      paradigmId: 'verb_pres',
      wordVi: 'chăm sóc, thăm hỏi, giúp đỡ, phụng dưỡng',
      wordEn: 'Saṅgaṇhāti (saṃ+gaha)',
      lessonId: 'lesson_06',
      pronunciation: 'saṅ-gaṇ-haa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_035',
      root: 'Nikkhamati',
      paradigmId: 'verb_pres',
      wordVi: 'đi ra, ra đi, xuất hành',
      wordEn: 'Nikkhamati (ni+khama)',
      lessonId: 'lesson_06',
      pronunciation: 'nik-kha-ma-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_036',
      root: 'Hoti',
      paradigmId: 'verb_pres',
      wordVi: 'là, trở thành, có mặt',
      wordEn: 'Hoti (hū)',
      lessonId: 'lesson_06',
      pronunciation: 'ho-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_037',
      root: 'gantuṃ',
      paradigmId: 'verb_inf',
      wordVi: 'để đi (nguyên thể của gamu / gacchati)',
      wordEn: 'gantuṃ',
      lessonId: 'lesson_06',
      pronunciation: 'gan-tuṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_038',
      root: 'āgantuṃ',
      paradigmId: 'verb_inf',
      wordVi: 'để đến (nguyên thể của āgacchati)',
      wordEn: 'āgantuṃ',
      lessonId: 'lesson_06',
      pronunciation: 'aa-gan-tuṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_039',
      root: 'pacituṃ',
      paradigmId: 'verb_inf',
      wordVi: 'để nấu',
      wordEn: 'pacituṃ',
      lessonId: 'lesson_06',
      pronunciation: 'pa-ci-tuṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_040',
      root: 'nahāyituṃ',
      paradigmId: 'verb_inf',
      wordVi: 'để tắm',
      wordEn: 'nahāyituṃ',
      lessonId: 'lesson_06',
      pronunciation: 'na-haa-yi-tuṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_041',
      root: 'icchituṃ',
      paradigmId: 'verb_inf',
      wordVi: 'để muốn (thường dùng dạng chính icchati)',
      wordEn: 'icchituṃ',
      lessonId: 'lesson_06',
      pronunciation: 'ic-chi-tuṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_042',
      root: 'bhuñjituṃ',
      paradigmId: 'verb_inf',
      wordVi: 'để ăn, để thọ dụng',
      wordEn: 'bhuñjituṃ',
      lessonId: 'lesson_06',
      pronunciation: 'bhuñ-ji-tuṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_043',
      root: 'sotuṃ',
      paradigmId: 'verb_inf',
      wordVi: 'để nghe',
      wordEn: 'sotuṃ / suṇituṃ',
      lessonId: 'lesson_06',
      pronunciation: 'so-tuṃ / su-ṇi-tuṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_044',
      root: 'passituṃ',
      paradigmId: 'verb_inf',
      wordVi: 'để thấy, để nhìn xem',
      wordEn: 'passituṃ',
      lessonId: 'lesson_06',
      pronunciation: 'pas-si-tuṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_045',
      root: 'kātuṃ',
      paradigmId: 'verb_inf',
      wordVi: 'để làm',
      wordEn: 'kātuṃ',
      lessonId: 'lesson_06',
      pronunciation: 'kaa-tuṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_046',
      root: 'dātuṃ',
      paradigmId: 'verb_inf',
      wordVi: 'để cho, để cúng dường',
      wordEn: 'dātuṃ',
      lessonId: 'lesson_06',
      pronunciation: 'daa-tuṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_047',
      root: 'pātuṃ',
      paradigmId: 'verb_inf',
      wordVi: 'để uống',
      wordEn: 'pātuṃ / pivituṃ',
      lessonId: 'lesson_06',
      pronunciation: 'paa-tuṃ / pi-vi-tuṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_048',
      root: 'nisīdetuṃ',
      paradigmId: 'verb_inf',
      wordVi: 'để ngồi (xuống)',
      wordEn: 'nisīdetuṃ / nisīdituṃ',
      lessonId: 'lesson_06',
      pronunciation: 'ni-sii-de-tuṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_049',
      root: 'kīḷituṃ',
      paradigmId: 'verb_inf',
      wordVi: 'để chơi đùa',
      wordEn: 'kīḷituṃ',
      lessonId: 'lesson_06',
      pronunciation: 'kii-ḷi-tuṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_050',
      root: 'harituṃ',
      paradigmId: 'verb_inf',
      wordVi: 'để mang / đem',
      wordEn: 'harituṃ',
      lessonId: 'lesson_06',
      pronunciation: 'ha-ri-tuṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_051',
      root: 'labhituṃ',
      paradigmId: 'verb_inf',
      wordVi: 'để được / đạt',
      wordEn: 'labhituṃ',
      lessonId: 'lesson_06',
      pronunciation: 'la-bhi-tuṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_052',
      root: 'likhituṃ',
      paradigmId: 'verb_inf',
      wordVi: 'để viết',
      wordEn: 'likhituṃ',
      lessonId: 'lesson_06',
      pronunciation: 'li-khi-tuṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_053',
      root: 'desetuṃ',
      paradigmId: 'verb_inf',
      wordVi: 'để thuyết giảng',
      wordEn: 'desetuṃ',
      lessonId: 'lesson_06',
      pronunciation: 'de-se-tuṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_054',
      root: 'pūjetuṃ',
      paradigmId: 'verb_inf',
      wordVi: 'để cúng dường',
      wordEn: 'pūjetuṃ',
      lessonId: 'lesson_06',
      pronunciation: 'uu-je-tuṃ',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L06_055',
      root: 'sallapituṃ',
      paradigmId: 'verb_inf',
      wordVi: 'để đàm luận, để nói chuyện',
      wordEn: 'sallapituṃ',
      lessonId: 'lesson_06',
      pronunciation: 'sal-la-pi-tuṃ',
      examplePali: '',
      exampleVi: '',
    ),
];


// ──────────────────────────────────────────────────────────────
// DAY 1: Học nền tảng — Ngữ pháp + Từ vựng
// ──────────────────────────────────────────────────────────────
LessonDay getLesson06Day1() {
  return LessonDay(
    id: 'lesson06_day1',
    dayNumber: 1,
    themeId: 'theme_06_fem_a_infinitive',
    titleVi: 'Ngày 1 — Lý thuyết & Từ vựng: Nữ tánh "-ā" & Nguyên thể',
    phases: [
      _buildDay1Phase1(),
      _buildDay1Phase2(),
    ],
  );
}

/// Phase 1: read_listen — Giải thích ngữ pháp
LessonPhase _buildDay1Phase1() {
  return LessonPhase(
    id: 'lesson06_phase1',
    phaseTypeStr: 'read_listen',
    titleVi: '📘 Lý thuyết: Nữ tánh "-ā" & Nguyên thể',
    contentVi: '''
BÀI 6 — DANH TỪ NỮ TÁNH "-ā" & ĐỘNG TỪ NGUYÊN THỂ

1) TÁM BIẾN CÁCH DANH TỪ NỮ TÁNH TẬN CÙNG "-ā" — phạm trù "kaññā" (thiếu nữ)

   Số ít (sg.) / Số nhiều (pl.):
   - Paṭhamā — Chủ cách (CC / Nom.):    kaññā        / kaññā, kaññāyo
   - Ālapana — Hô cách (HC / Voc.):     kaññe        / kaññā, kaññāyo
   - Dutiyā  — Đối cách (ĐC / Acc.):    kaññaṃ       / kaññā, kaññāyo
   - Tatiyā/Karaṇa (SDC) & Pañcamī (XXC):  kaññāya  / kaññābhi, kaññāhi
   - Catutthī (CĐC) & Chaṭṭhī (STC):    kaññāya      / kaññānaṃ
   - Sattamī — Định sở (ĐSC / Loc.):    kaññāya, kaññāyaṃ / kaññāsu

   Tóm tắt đuôi (Terminations) của "-ā" nữ tánh:
                            Số ít          Số nhiều
   CC (Nom.)               -ā              -ā, -āyo
   HC (Voc.)               -e              -ā, -āyo
   ĐC (Acc.)               -aṃ             -ā, -āyo
   SDC / XXC (Ins./Abl.)   -āya            -ābhi, -āhi
   CĐC / STC (Dat./Gen.)   -āya            -ānaṃ
   ĐSC (Loc.)              -āya, -āyaṃ     -āsu

   ⚠ LƯU Ý QUAN TRỌNG: Tất cả các danh từ tận cùng bằng "-ā" đều là NỮ TÁNH,
   NGOẠI TRỪ duy nhất từ "sā" (m.) = con chó (đực).

2) ĐỘNG TỪ NGUYÊN THỂ (Infinitive — vi: "để…", sự làm gì)

   - Được thành lập bằng cách thêm tiếp vĩ ngữ "-tuṃ" vào GỐC động từ.
   - Nếu gốc tận cùng bằng "-a" → "a" đó thường đổi thành "-i":
       * paca   + tuṃ = pacituṃ     (để nấu)
       * rakkha + tuṃ = rakkhituṃ   (để bảo vệ)
       * dā     + tuṃ = dātuṃ       (để cho / cúng dường)
       * desa   + tuṃ = desetuṃ     (để thuyết giảng)
       * kiṇa   + tuṃ = kiṇituṃ     (để mua)
       * bhuñja + tuṃ = bhuñjituṃ   (để ăn)
       * suṇa   + tuṃ = suṇituṃ, sotuṃ (để nghe)
       * pesa   + tuṃ = pesetuṃ     (để gởi)
   - Quy tắc thực hành: "-tuṃ" thường được thêm vào dạng gốc ở
     HIỆN TẠI NGÔI 3 SỐ NHIỀU (bỏ đuôi -anti / -enti / -onti).

3) BẢNG ĐỘNG TỪ (Verbal Table) — Nguyên thể các gốc thông dụng
   Gốc         Nghĩa              ht 3 nhiều  Nguyên thể
   -----------------------------------------------------------
   disa        thuyết (giảng)     desenti     desetuṃ
   disa        thấy               passanti    passituṃ
   gaha        lấy                gaṇhanti    gaṇhituṃ
   gamu        đi                 gacchanti   gantuṃ
   gamu + ā    đến / trở về       āgacchanti  āgantuṃ
   hū          là / trở thành     honti       hotuṃ
   isu         muốn / ước         icchanti    icchituṃ
   kara        làm                karonti     kātuṃ
   lapa (saṃ-) thảo luận          sallapanti  sallapituṃ
   ñā (jāna)   biết               jānanti     ñātuṃ, jānituṃ
   nahā        tắm                nahāyanti   nahāyituṃ
   pā          uống               pivanti     pātuṃ, pivituṃ
   ruha (+ā)   đi lên / leo       āruhanti    āruhituṃ
   ṭhā         đứng               tiṭṭhanti   ṭhātuṃ

4) CÁCH DÙNG NGUYÊN THỂ TRONG CÂU
   a) Chỉ mục đích: "… để làm gì"
      - Bhariyā dārikānaṃ dātuṃ odanaṃ pacati.
        = Người vợ nấu cơm ĐỂ cho các đứa bé gái.
      - Dārikāyo uggaṇhituṃ pāṭhasālaṃ gacchanti.
        = Các đứa bé gái đi đến trường ĐỂ học.
   b) Đứng sau động từ "icchati" (muốn): diễn tả ý muốn
      - Te gaṅgāyaṃ kīḷituṃ icchanti.
        = Họ MUỐN chơi ở sông Hằng.
      - Ahaṃ pāṭhasālaṃ gantuṃ icchāmi.
        = Tôi muốn đi đến trường.
   c) Nguyên thể đứng TRƯỚC động từ chính (giống tiếng Anh "to-V đi trước").

5) TÓM LƯỢI NHANH
   - Nữ tánh "-ā": CC ít = -ā; HC ít = -e; ĐC ít = -aṃ;
     3 cách gián tiếp ít đều -āya; ĐSC ít có thêm -āyaṃ;
     nhiều CC/HC/ĐC = -ā, -āyo; nhiều SDC/XXC = -ābhi, -āhi;
     nhiều CĐC/STC = -ānaṃ; nhiều ĐSC = -āsu.
   - Nguyên thể = gốc (+ biến âm) + tuṃ; gốc "-a" hay thành "-i".
   - Cặp mẫu mực: icchāmi gantuṃ (tôi muốn đi), sālāyaṃ nisīdati (ngồi tại sảnh đường),
     gaṅgāyaṃ nahāyituṃ gacchanti (họ đi tắm ở sông).
''',
    contentEn: '''LESSON 6 — FEMININE "-ā" & INFINITIVE

A. FEMININE "-ā" NOUNS (kaññā — maiden)
                    sg.              pl.
   Nom.            kaññā            kaññā, kaññāyo
   Voc.            kaññe            kaññā, kaññāyo
   Acc.            kaññaṃ           kaññā, kaññāyo
   Ins./Abl.       kaññāya          kaññābhi, kaññāhi
   Dat./Gen.       kaññāya          kaññānaṃ
   Loc.            kaññāya, kaññāyaṃ kaññāsu
   ⚠ All "-ā" final nouns are FEMININE, EXCEPT "sā" (m.) = dog.

B. INFINITIVE (-tuṃ)
   - Add "-tuṃ" to the verbal root.
   - If root ends in "-a", that "-a" usually becomes "-i":
       paca  + tuṃ → pacituṃ  (to cook)
       rakkha+ tuṃ → rakkhituṃ
       dā    + tuṃ → dātuṃ
       desa  + tuṃ → desetuṃ
       kiṇa  + tuṃ → kiṇituṃ
   - Practical rule: take the 3rd pl. present, drop -anti/-enti/-onti, add -tuṃ.

C. VERBAL TABLE — Infinitives of common roots
   disa (preach) → desetuṃ;  disa (see) → passituṃ;
   gaha → gaṇhituṃ;  gamu → gantuṃ;  ā+gamu → āgantuṃ;
   hū → hotuṃ;  isu → icchituṃ;  kara → kātuṃ;
   ñā (jāna) → ñātuṃ/jānituṃ;  nahā → nahāyituṃ;
   pā → pātuṃ/pivituṃ;  ruha+ā → āruhituṃ;  ṭhā → ṭhātuṃ.

D. USAGE
   a) Purpose ("in order to"): Bhariyā dārikānaṃ dātuṃ odanaṃ pacati.
   b) After icchati (want): Ahaṃ gantuṃ icchāmi = I want to go.
''',
    fabPhrases: [
          FabPhraseItem(
            phrase: 'kaññā / kaññe / kaññaṃ (số ít CC / HC / ĐC)',
            meaning: 'thiếu nữ / Này thiếu nữ! / thiếu nữ (tân ngữ).',
          ),
          FabPhraseItem(
            phrase: 'kaññā, kaññāyo (CC/HC/ĐC số nhiều)',
            meaning: 'Ba cách đầu số nhiều đều có dạng: -ā, -āyo.',
          ),
          FabPhraseItem(
            phrase: 'kaññāya (SDC/XXC/CĐC/STC ít) — kaññāya, kaññāyaṃ (ĐSC ít)',
            meaning:
                'Một đuôi -āya cho SDC, XXC, CĐC, STC số ít; ĐSC ít có thêm dạng -āyaṃ.',
          ),
          FabPhraseItem(
            phrase: 'paca + tuṃ → pacituṃ (nấu)',
            meaning:
                'Gốc tận cùng "-a" đổi thành "-i" khi thêm "-tuṃ": nguyên thể chỉ mục đích / ý muốn.',
          ),
          FabPhraseItem(
            phrase: 'X icchati + inf. → "muốn làm X"',
            meaning:
                'Động từ "icchati" (muốn) đi với nguyên thể để diễn tả ý muốn: gantuṃ icchāmi = tôi muốn đi.',
          ),
        ],
  );
}

/// Phase 2: read_listen — Từ vựng
LessonPhase _buildDay1Phase2() {
  return LessonPhase(
    id: 'lesson06_phase2',
    phaseTypeStr: 'read_listen',
    titleVi: '📖 Từ vựng: Nữ tánh "-ā" & Nguyên thể',
    contentVi: 'Học thuộc các danh từ Nữ tánh tận cùng "-ā" (ngoại trừ "sā" = con chó là Nam tánh) và các dạng nguyên thể (inf.) trong Bảng Động từ.',
    fabVocab: _buildVocabFabList(),
  );
}

List<FabVocabItem> _buildVocabFabList() {
  return const [
    FabVocabItem(
        wordEn: 'Kaññā',
        pronunciation: 'kañ-ñaa',
        wordVi: 'cô gái, thiếu nữ, trinh nữ (phạm trừ bài)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Bhariyā',
        pronunciation: 'bha-ri-yaa',
        wordVi: 'người vợ, vợ',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Bhāsā',
        pronunciation: 'bhaa-saa',
        wordVi: 'ngôn ngữ, lời nói, tiếng',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Dārikā',
        pronunciation: 'daa-ri-kaa',
        wordVi: 'đứa bé gái, con gái',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Dhammasālā',
        pronunciation: 'dham-ma-saa-laa',
        wordVi: 'giảng đường, pháp đường',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Gaṅgā',
        pronunciation: 'gaṅ-gaa',
        wordVi: 'sông Hằng, dòng sông lớn',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Nāvā',
        pronunciation: 'naa-vaa',
        wordVi: 'tàu, thuyền',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Osadhasālā',
        pronunciation: 'o-sa-dha-saa-laa',
        wordVi: 'nhà thuốc, dược xá, phòng phát thuốc',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Pāḷibhāsā',
        pronunciation: 'paa-ḷi-bhaa-saa',
        wordVi: 'tiếng Pāḷi, ngôn ngữ Pāḷi',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Paññā',
        pronunciation: 'pañ-ñaa',
        wordVi: 'trí tuệ, tuệ, huệ',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Pāṭhasālā',
        pronunciation: 'paa-ṭha-saa-laa',
        wordVi: 'trường học (pāṭhasālā = nơi học đọc)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Saddhā',
        pronunciation: 'sad-dhaa',
        wordVi: 'đức tin, tín tâm, lòng tin',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Sālā',
        pronunciation: 'saa-laa',
        wordVi: 'sảnh đường, nhà rạp, gian nhà lớn',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Gilānasālā',
        pronunciation: 'gi-laa-na-saa-laa',
        wordVi: 'bệnh xá, bệnh viện (cho tỳ khưu / người bịnh)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Visikhā',
        pronunciation: 'vi-si-khaa',
        wordVi: 'con đường, đường phố; mũi tên',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Assā',
        pronunciation: 'as-saa',
        wordVi: 'con ngựa cái (ngựa)',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Vejjasālā',
        pronunciation: 'vej-ja-saa-laa',
        wordVi: 'trường y, nhà thương / phòng thuốc',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Sā',
        pronunciation: 'saa',
        wordVi: 'con chó (đực) — LƯU Ý: Nam tánh (m.) dù tận cùng -ā!',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Icchati (isu)',
        pronunciation: 'ic-cha-ti',
        wordVi: 'muốn, ước mong, mong muốn (đi với nguyên thể)',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Gacchati (gamu)',
        pronunciation: 'gac-cha-ti',
        wordVi: 'đi',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Āgacchati (ā+gamu)',
        pronunciation: 'aa-gac-cha-ti',
        wordVi: 'đến, đi đến, trở lại',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Nahāyati (nahā)',
        pronunciation: 'na-haa-ya-ti',
        wordVi: 'tắm, tắm rửa',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Pivati (pā)',
        pronunciation: 'pi-va-ti',
        wordVi: 'uống',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Karoti (kara)',
        pronunciation: 'ka-ro-ti',
        wordVi: 'làm, hành động',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Jānāti (ñā)',
        pronunciation: 'jaa-naa-ti',
        wordVi: 'biết, hiểu biết',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Gaṇhāti (gaha)',
        pronunciation: 'gaṇ-haa-ti',
        wordVi: 'lấy, nắm bắt, thọ nhận',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Sallapati (saṃ+lapa)',
        pronunciation: 'sal-la-pa-ti',
        wordVi: 'thảo luận, đàm luận, chuyện trò',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Tiṭṭhati (ṭhā)',
        pronunciation: 'tiṭ-ṭha-ti',
        wordVi: 'đứng, đứng lại',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Āruhati (ā+ruha)',
        pronunciation: 'aa-ru-ha-ti',
        wordVi: 'leo lên, đi lên, bước lên',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Oruhati (ava+ruha)',
        pronunciation: 'o-ru-ha-ti',
        wordVi: 'đi xuống, bước xuống',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Harati (hara)',
        pronunciation: 'ha-ra-ti',
        wordVi: 'đem, mang, lấy đi, cầm đi',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Labhati (labha)',
        pronunciation: 'lab-bha-ti',
        wordVi: 'được, nhận được, đạt được',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Uggaṇhāti (u+gaha)',
        pronunciation: 'ug-gaṇ-haa-ti',
        wordVi: 'học, học tập, nắm vững',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Saṅgaṇhāti (saṃ+gaha)',
        pronunciation: 'saṅ-gaṇ-haa-ti',
        wordVi: 'chăm sóc, thăm hỏi, giúp đỡ, phụng dưỡng',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Nikkhamati (ni+khama)',
        pronunciation: 'nik-kha-ma-ti',
        wordVi: 'đi ra, ra đi, xuất hành',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Hoti (hū)',
        pronunciation: 'ho-ti',
        wordVi: 'là, trở thành, có mặt',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'gantuṃ',
        pronunciation: 'gan-tuṃ',
        wordVi: 'để đi (nguyên thể của gamu / gacchati)',
        partOfSpeech: 'inf.',
      ),
    FabVocabItem(
        wordEn: 'āgantuṃ',
        pronunciation: 'aa-gan-tuṃ',
        wordVi: 'để đến (nguyên thể của āgacchati)',
        partOfSpeech: 'inf.',
      ),
    FabVocabItem(
        wordEn: 'pacituṃ',
        pronunciation: 'pa-ci-tuṃ',
        wordVi: 'để nấu',
        partOfSpeech: 'inf.',
      ),
    FabVocabItem(
        wordEn: 'nahāyituṃ',
        pronunciation: 'na-haa-yi-tuṃ',
        wordVi: 'để tắm',
        partOfSpeech: 'inf.',
      ),
    FabVocabItem(
        wordEn: 'icchituṃ',
        pronunciation: 'ic-chi-tuṃ',
        wordVi: 'để muốn (thường dùng dạng chính icchati)',
        partOfSpeech: 'inf.',
      ),
    FabVocabItem(
        wordEn: 'bhuñjituṃ',
        pronunciation: 'bhuñ-ji-tuṃ',
        wordVi: 'để ăn, để thọ dụng',
        partOfSpeech: 'inf.',
      ),
    FabVocabItem(
        wordEn: 'sotuṃ / suṇituṃ',
        pronunciation: 'so-tuṃ / su-ṇi-tuṃ',
        wordVi: 'để nghe',
        partOfSpeech: 'inf.',
      ),
    FabVocabItem(
        wordEn: 'passituṃ',
        pronunciation: 'pas-si-tuṃ',
        wordVi: 'để thấy, để nhìn xem',
        partOfSpeech: 'inf.',
      ),
    FabVocabItem(
        wordEn: 'kātuṃ',
        pronunciation: 'kaa-tuṃ',
        wordVi: 'để làm',
        partOfSpeech: 'inf.',
      ),
    FabVocabItem(
        wordEn: 'dātuṃ',
        pronunciation: 'daa-tuṃ',
        wordVi: 'để cho, để cúng dường',
        partOfSpeech: 'inf.',
      ),
    FabVocabItem(
        wordEn: 'pātuṃ / pivituṃ',
        pronunciation: 'paa-tuṃ / pi-vi-tuṃ',
        wordVi: 'để uống',
        partOfSpeech: 'inf.',
      ),
    FabVocabItem(
        wordEn: 'nisīdetuṃ / nisīdituṃ',
        pronunciation: 'ni-sii-de-tuṃ',
        wordVi: 'để ngồi (xuống)',
        partOfSpeech: 'inf.',
      ),
    FabVocabItem(
        wordEn: 'kīḷituṃ',
        pronunciation: 'kii-ḷi-tuṃ',
        wordVi: 'để chơi đùa',
        partOfSpeech: 'inf.',
      ),
    FabVocabItem(
        wordEn: 'harituṃ',
        pronunciation: 'ha-ri-tuṃ',
        wordVi: 'để mang / đem',
        partOfSpeech: 'inf.',
      ),
    FabVocabItem(
        wordEn: 'labhituṃ',
        pronunciation: 'la-bhi-tuṃ',
        wordVi: 'để được / đạt',
        partOfSpeech: 'inf.',
      ),
    FabVocabItem(
        wordEn: 'likhituṃ',
        pronunciation: 'li-khi-tuṃ',
        wordVi: 'để viết',
        partOfSpeech: 'inf.',
      ),
    FabVocabItem(
        wordEn: 'desetuṃ',
        pronunciation: 'de-se-tuṃ',
        wordVi: 'để thuyết giảng',
        partOfSpeech: 'inf.',
      ),
    FabVocabItem(
        wordEn: 'pūjetuṃ',
        pronunciation: 'uu-je-tuṃ',
        wordVi: 'để cúng dường',
        partOfSpeech: 'inf.',
      ),
    FabVocabItem(
        wordEn: 'sallapituṃ',
        pronunciation: 'sal-la-pi-tuṃ',
        wordVi: 'để đàm luận, để nói chuyện',
        partOfSpeech: 'inf.',
      ),
  ];
}


// ──────────────────────────────────────────────────────────────
// DAY 2: Luyện tập — Mind Game + Quiz
// ──────────────────────────────────────────────────────────────
LessonDay getLesson06Day2() {
  return LessonDay(
    id: 'lesson06_day2',
    dayNumber: 2,
    themeId: 'theme_06_fem_a_infinitive',
    titleVi: 'Ngày 2 — Luyện tập: Nữ tánh "-ā" & Nguyên thể',
    phases: [
      _buildDay2MindGame(),
      _buildDay2Quiz(),
    ],
  );
}

/// Phase 3: mind_game — Trò chơi tư duy với Exercise
LessonPhase _buildDay2MindGame() {
  return LessonPhase(
    id: 'lesson06_phase3',
    phaseTypeStr: 'mind_game',
    titleVi: '🧠 Ghép câu: Nữ tánh "-ā" & Nguyên thể',
    contentVi: 'Nhấn vào cụm tiếng Việt để nói to cụm Pāḷi tương ứng; nhấn lại để xem đáp án. Chú ý dạng NỮ TÁNH "-ā" và các động từ NGUYÊN THỂ (đuôi -tuṃ).',
    mixedSegments: kLesson06MindGameSegments,
  );
}

/// Mind Game segments cho bài tập 6
class _Seg {
  final String pali;
  final String vi;
  const _Seg(this.pali, this.vi);
}

final kLesson06MindGameSegments = <MixedSegment>[
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
    // 1. Kaññāyo gaṅgāyaṃ nahāyituṃ gacchanti.
    ...sent(const [
      _Seg('Kaññāyo', 'Những thiếu nữ'),
      _Seg('gaṅgāyaṃ', 'dưới / tại sông Hằng'),
      _Seg('nahāyituṃ', 'để tắm'),
      _Seg('gacchanti', '(họ) đi'),
    ]),
    // 2. Ahaṃ pāṭhasālaṃ gantuṃ icchāmi.
    ...sent(const [
      _Seg('Ahaṃ', 'Tôi'),
      _Seg('pāṭhasālaṃ', '(đến) trường học'),
      _Seg('gantuṃ', 'để đi'),
      _Seg('icchāmi', '(tôi) muốn'),
    ]),
    // 3. Mayaṃ Dhammaṃ sotuṃ sālāyaṃ nisīdāma.
    ...sent(const [
      _Seg('Mayaṃ', 'Chúng tôi'),
      _Seg('Dhammaṃ', 'Giáo Pháp'),
      _Seg('sotuṃ', 'để nghe'),
      _Seg('sālāyaṃ', 'tại giảng đường'),
      _Seg('nisīdāma', '(chúng tôi) ngồi'),
    ]),
    // 5. Dārikāyo saddhāya Buddhaṃ vandanti.
    ...sent(const [
      _Seg('Dārikāyo', 'Các cô bé gái'),
      _Seg('saddhāya', 'với lòng tin'),
      _Seg('Buddhaṃ', 'Đức Phật'),
      _Seg('vandanti', '(các em) đảnh lễ'),
    ]),
    // 6. Sissā idāni Pāḷibhāsāya lekhanāni likhituṃ jānanti.
    ...sent(const [
      _Seg('Sissā', 'Các đệ tử / học trò'),
      _Seg('idāni', 'bây giờ'),
      _Seg('Pāḷibhāsāya', 'bằng tiếng Pāḷi'),
      _Seg('lekhanāni', 'những lá thư'),
      _Seg('likhituṃ', 'để viết'),
      _Seg('jānanti', '(họ) biết / có thể'),
    ]),
    // 7. Narā paññaṃ labhituṃ bhāsāyo uggaṇhanti.
    ...sent(const [
      _Seg('Narā', 'Người ta / các người đàn ông'),
      _Seg('paññaṃ', 'trí tuệ'),
      _Seg('labhituṃ', 'để đạt được'),
      _Seg('bhāsāyo', 'các ngôn ngữ'),
      _Seg('uggaṇhanti', '(họ) học hỏi / nắm bắt'),
    ]),
    // 8. Kaññe, kuhiṃ tvaṃ pupphāni harituṃ icchasi?
    ...sent(const [
      _Seg('Kaññe,', 'Này thiếu nữ,'),
      _Seg('kuhiṃ', 'đâu'),
      _Seg('tvaṃ', 'bạn / cô'),
      _Seg('pupphāni', 'các bông hoa'),
      _Seg('harituṃ', 'để mang / đem'),
      _Seg('icchasi?', '(cô) muốn?'),
    ]),
    // 11. Sā ācariyassa bhariyā hoti.
    ...sent(const [
      _Seg('Sā', 'Bà ấy / Cô ấy'),
      _Seg('ācariyassa', '(của) vị thầy'),
      _Seg('bhariyā', '(là) người vợ'),
      _Seg('hoti', 'là / trở thành'),
    ]),
    // 13. Narā bhariyānaṃ dātuṃ āpaṇehi vatthāni kiṇanti.
    ...sent(const [
      _Seg('Narā', 'Những người đàn ông'),
      _Seg('bhariyānaṃ', '(cho) những người vợ'),
      _Seg('dātuṃ', 'để cho'),
      _Seg('āpaṇehi', 'từ các cửa hàng / chợ'),
      _Seg('vatthāni', 'quần áo / vải vóc'),
      _Seg('kiṇanti', '(họ) mua'),
    ]),
    // 14. Dārikā gharaṃ gantuṃ maggaṃ na jānāti.
    ...sent(const [
      _Seg('Dārikā', 'Đứa bé gái'),
      _Seg('gharaṃ', '(đến) nhà'),
      _Seg('gantuṃ', 'để đi'),
      _Seg('maggaṃ', 'đường đi'),
      _Seg('na', 'không'),
      _Seg('jānāti', '(em) biết'),
    ]),
    // 16. Gilānā gharāni gantuṃ osadhasālāya nikkhamanti.
    ...sent(const [
      _Seg('Gilānā', 'Những người bịnh'),
      _Seg('gharāni', '(về) những căn nhà'),
      _Seg('gantuṃ', 'để đi'),
      _Seg('osadhasālāya', 'khỏi nhà thuốc'),
      _Seg('nikkhamanti', '(họ) ra đi / xuất hành'),
    ]),
    // 17. Mayaṃ ācariyehi saddhiṃ pāḷibhāsāya sallapāma.
    ...sent(const [
      _Seg('Mayaṃ', 'Chúng tôi'),
      _Seg('ācariyehi saddhiṃ', 'với các vị thầy'),
      _Seg('pāḷibhāsāya', 'bằng tiếng Pāḷi'),
      _Seg('sallapāma', '(chúng tôi) đàm luận'),
    ]),
    // 20. Paññaṃ ca saddhaṃ ca labhituṃ mayaṃ Dhammaṃ suṇāma.
    ...sent(const [
      _Seg('Paññaṃ ca', 'Trí tuệ và'),
      _Seg('saddhaṃ ca', 'và đức tin'),
      _Seg('labhituṃ', 'để đạt được'),
      _Seg('mayaṃ', 'chúng tôi'),
      _Seg('Dhammaṃ', 'Giáo Pháp'),
      _Seg('suṇāma', '(chúng tôi) nghe'),
    ]),
    // 27. Dārikā saddhāya Buddhaṃ pupphehi pūjetuṃ gacchati.
    ...sent(const [
      _Seg('Dārikā', 'Cô bé gái'),
      _Seg('saddhāya', 'với lòng tin'),
      _Seg('Buddhaṃ', 'Đức Phật'),
      _Seg('pupphehi', 'bằng các bông hoa'),
      _Seg('pūjetuṃ', 'để cúng dường'),
      _Seg('gacchati', '(em) đi'),
    ]),
    // 29. Dārakā ca dārikāyo ca gaṅgāsu nahāyituṃ icchanti.
    ...sent(const [
      _Seg('Dārakā ca', 'Các bé trai và'),
      _Seg('dārikāyo ca', 'các bé gái'),
      _Seg('gaṅgāsu', 'trên các dòng sông'),
      _Seg('nahāyituṃ', 'để tắm'),
      _Seg('icchanti', '(chúng) muốn'),
    ]),
    // 36. So bhariyāya dātuṃ potthakaṃ āharati.
    ...sent(const [
      _Seg('So', 'Anh ta / Ông ấy'),
      _Seg('bhariyāya', '(cho) người vợ'),
      _Seg('dātuṃ', 'để cho'),
      _Seg('potthakaṃ', 'quyển sách'),
      _Seg('āharati', '(anh ta) đem đến'),
    ]),
  ];
}

/// Phase 4: listening_quiz — Bài tập trắc nghiệm
LessonPhase _buildDay2Quiz() {
  return LessonPhase(
    id: 'lesson06_phase4',
    phaseTypeStr: 'listening_quiz',
    titleVi: '🎧 Quiz: Nữ tánh "-ā" & Nguyên thể',
    questions: _buildQuiz(),
    fabAnswers: _buildQuizAnswers(),
  );
}

List<QuizQuestion> _buildQuiz() {
  return [
    QuizQuestion(
        id: 'lesson06_q01_01',
        questionText: '1. Hô cách (Vocative) số ít của danh từ Nữ tánh tận cùng "-ā" (vd. kaññā) mang đuôi nào? Cụm từ dùng để gọi: "Này thiếu nữ!" là hình thức nào?',
        options: [
        'A. kaññā (đuôi -ā)',
        'B. kaññe (đuôi -e)',
        'C. kaññaṃ (đuôi -aṃ)',
        'D. kaññāya (đuôi -āya)',
      ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson06_q01_02',
        questionText: '2. Dạng NGUYÊN THỂ nào sau đây là ĐÚNG của gốc "paca" (nấu)?',
        options: [
        'A. pacātuṃ',
        'B. pacatuṃ (giữ nguyên "a" cuối)',
        'C. pacituṃ ("a" cuối đổi thành "i" rồi thêm -tuṃ)',
        'D. pacitvā',
      ],
        correctIndex: 2,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson06_q01_03',
        questionText: '3. Câu "Ahaṃ pāṭhasālaṃ gantuṃ icchāmi" có nghĩa gì? Cấu trúc ngữ pháp nào được dùng?',
        options: [
        'A. "Tôi đã đi học rồi" — dùng quá khứ phân từ.',
        'B. "Tôi sẽ đi học ngày mai" — dùng thì vị lai.',
        'C. "Tôi MUỐN đi đến trường" — "icchāmi" (muốn, ngôi 1 ít) đi với ĐỘNG TỪ NGUYÊN THỂ "gantuṃ" (để đi) để diễn ý muốn.',
        'D. "Tôi đang đi học" — dùng thì hiện tại tiếp diễn kép.',
      ],
        correctIndex: 2,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson06_q01_04',
        questionText: '4. Tất cả các danh từ tận cùng bằng "-ā" trong Pāḷi đều thuộc giống Nữ tánh, NGOẠI TRỪ danh từ nào? Danh từ đó giống gì và nghĩa là gì?',
        options: [
        'A. "mātā" (mẹ) là Nam tánh.',
        'B. "bhariyā" (vợ) là Trung tánh.',
        'C. "sā" là Nam tánh (m.), nghĩa là "con chó (đực)".',
        'D. Tất cả "-ā" đều là Nữ tánh, không có ngoại lệ.',
      ],
        correctIndex: 2,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson06_q01_05',
        questionText: '5. Định sở cách (Locative / Sattamī) số nhiều của danh từ Nữ tánh "-ā" có đuôi gì? Ví dụ "trong các dòng sông" là?',
        options: [
        'A. -esu (naresu, giống Nam tánh)',
        'B. -āsu (gaṅgāsu)',
        'C. -ānaṃ (gaṅgānaṃ)',
        'D. -āhi (gaṅgāhi)',
      ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
  ];
}

List<FabAnswerItem> _buildQuizAnswers() {
  return [
    FabAnswerItem(
        en: 'Q1 → B: see Vietnamese for full explanation.',
        vi: 'Câu 1: Hô cách (HC) số ít của nữ tánh "-ā" là đuôi "-e": kaññe = "Này thiếu nữ!"; số nhiều CC/HC/ĐC là -ā, -āyo.',
      ),
    FabAnswerItem(
        en: 'Q2 → C: see Vietnamese for full explanation.',
        vi: 'Câu 2: Nguyên thể đúng là "pacituṃ": khi thêm -tuṃ, gốc "paca" đổi "-a" cuối thành "-i" (quy tắc chuẩn cho gốc -a).',
      ),
    FabAnswerItem(
        en: 'Q3 → C: see Vietnamese for full explanation.',
        vi: 'Câu 3: "icchati + nguyên thể" có nghĩa "muốn (làm gì)". "Ahaṃ gantuṃ icchāmi" = "Tôi muốn đi".',
      ),
    FabAnswerItem(
        en: 'Q4 → C: see Vietnamese for full explanation.',
        vi: 'Câu 4: Tất cả danh từ tận cùng "-ā" đều là NỮ TÁNH, NGOẠI TRỪ một từ duy nhất "sā" (m.) = con chó.',
      ),
    FabAnswerItem(
        en: 'Q5 → B: see Vietnamese for full explanation.',
        vi: 'Câu 5: Định sở cách số nhiều của nữ tánh "-ā" là đuôi "-āsu": kaññāsu = "trong các cô gái / nơi các cô gái"; gaṅgāsu = "trên các sông".',
      ),
  ];
}
