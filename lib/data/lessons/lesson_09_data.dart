// lesson_09_data.dart
// ---------------------------------------------------------------------------
// Bài học số 9 — An Elementary Pāḷi Course (Nārada Mahāthera)
// Chủ đề: Nữ tánh "-i" & Tương lai
// Nguồn: Nārada Mahāthera, "An Elementary Pāḷi Course", Lesson 9
// ---------------------------------------------------------------------------

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

LessonMeta getLesson09Meta() => const LessonMeta(
  id: 'theme_09_fem_i_future',
  lessonNumber: 9,
  titleVi: 'Nữ tánh "-i" & Tương lai',
  titleEn: 'Feminine "-i" & Future Tense',
  iconEmoji: '🌍',
  colorValue: 0xFF8FBC8F,
  description: 'Học về nữ tánh kết thúc bằng -i ngắn và chia thì tương lai',
);




// ──────────────────────────────────────────────────────────────
// VOCABULARY (39 items)
// ──────────────────────────────────────────────────────────────
final kLesson09Vocab = <PaliVocabModel>[
  PaliVocabModel(
      id: 'pv_L09_001',
      root: 'Bhūmi',
      paradigmId: 'fem_i',
      wordVi: 'mặt đất, địa cầu, miền, xứ',
      wordEn: 'Bhūmi',
      lessonId: 'lesson_09',
      pronunciation: 'bhuu-mi',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_002',
      root: 'Aṅguḷi',
      paradigmId: 'fem_i',
      wordVi: 'ngón tay',
      wordEn: 'Aṅguḷi',
      lessonId: 'lesson_09',
      pronunciation: 'aṅ-gu-ḷi',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_003',
      root: 'Aṭavi',
      paradigmId: 'fem_i',
      wordVi: 'rừng, khu rừng',
      wordEn: 'Aṭavi',
      lessonId: 'lesson_09',
      pronunciation: 'a-ṭa-vi',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_004',
      root: 'Bhaya',
      paradigmId: 'neuter_a',
      wordVi: 'sự sợ hãi, nỗi sợ (trung tánh)',
      wordEn: 'Bhaya',
      lessonId: 'lesson_09',
      pronunciation: 'bha-ya',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_005',
      root: 'Mutti',
      paradigmId: 'fem_i',
      wordVi: 'sự giải thoát, sự thoát ly',
      wordEn: 'Mutti',
      lessonId: 'lesson_09',
      pronunciation: 'mut-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_006',
      root: 'Pīti',
      paradigmId: 'fem_i',
      wordVi: 'niềm hỷ lạc',
      wordEn: 'Pīti',
      lessonId: 'lesson_09',
      pronunciation: 'pii-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_007',
      root: 'Rati',
      paradigmId: 'fem_i',
      wordVi: 'sự dính mắc, ái luyến, vui thích',
      wordEn: 'Rati',
      lessonId: 'lesson_09',
      pronunciation: 'ra-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_008',
      root: 'Khanti',
      paradigmId: 'fem_i',
      wordVi: 'sự kham nhẫn, nhẫn nại',
      wordEn: 'Khanti',
      lessonId: 'lesson_09',
      pronunciation: 'khan-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_009',
      root: 'Ratti',
      paradigmId: 'fem_i',
      wordVi: 'ban đêm, đêm',
      wordEn: 'Ratti',
      lessonId: 'lesson_09',
      pronunciation: 'rat-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_010',
      root: 'Kuddāla',
      paradigmId: 'masc_a',
      wordVi: 'cái thuổng, cái cuốc, cái xẻng (m./n.)',
      wordEn: 'Kuddāla',
      lessonId: 'lesson_09',
      pronunciation: 'kud-daa-la',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_011',
      root: 'Soka',
      paradigmId: 'masc_a',
      wordVi: 'sự ưu sầu, phiền muộn',
      wordEn: 'Soka',
      lessonId: 'lesson_09',
      pronunciation: 'so-ka',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_012',
      root: 'Kūpa',
      paradigmId: 'masc_a',
      wordVi: 'cái giếng',
      wordEn: 'Kūpa',
      lessonId: 'lesson_09',
      pronunciation: 'kuu-pa',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_013',
      root: 'Suve',
      paradigmId: 'indeclinable',
      wordVi: 'ngày mai (phó từ)',
      wordEn: 'Suve / Sve',
      lessonId: 'lesson_09',
      pronunciation: 'su-ve / sve',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_014',
      root: 'Bhavati',
      paradigmId: 'verb_pres',
      wordVi: 'là, trở thành, hiện hữu; thì tương lai: bhavissati',
      wordEn: 'Bhavati (bhū)',
      lessonId: 'lesson_09',
      pronunciation: 'bha-va-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_015',
      root: 'Khaṇati',
      paradigmId: 'verb_pres',
      wordVi: 'đào, xới; tl: khaṇissati',
      wordEn: 'Khaṇati (khaṇa)',
      lessonId: 'lesson_09',
      pronunciation: 'kha-ṇa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_016',
      root: 'Jāyati',
      paradigmId: 'verb_pres',
      wordVi: 'nổi lên, sanh ra, sinh khởi; tl: jāyissati',
      wordEn: 'Jāyati (jana)',
      lessonId: 'lesson_09',
      pronunciation: 'jaa-ya-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_017',
      root: 'Pāpuṇāti',
      paradigmId: 'verb_pres',
      wordVi: 'đến nơi, đạt được, thành tựu; tl: pāpuṇissati',
      wordEn: 'Pāpuṇāti (pa+apa)',
      lessonId: 'lesson_09',
      pronunciation: 'paa-pu-ṇaa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_018',
      root: 'Pavisati',
      paradigmId: 'verb_pres',
      wordVi: 'đi vào, bước vào; tl: pavisissati',
      wordEn: 'Pavisati (pa+visa)',
      lessonId: 'lesson_09',
      pronunciation: 'pa-vi-sa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_019',
      root: 'Tarati',
      paradigmId: 'verb_pres',
      wordVi: 'băng qua, vượt qua; tl: tarissati',
      wordEn: 'Tarati (tara)',
      lessonId: 'lesson_09',
      pronunciation: 'ta-ra-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_020',
      root: 'Gahapati',
      paradigmId: 'masc_i',
      wordVi: 'gia chủ, chủ nhà, cư sĩ (nam tánh)',
      wordEn: 'Gahapati',
      lessonId: 'lesson_09',
      pronunciation: 'ga-ha-pa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_021',
      root: 'Narapati',
      paradigmId: 'masc_i',
      wordVi: 'vua, quốc vương (chúa tể loài người)',
      wordEn: 'Narapati',
      lessonId: 'lesson_09',
      pronunciation: 'na-ra-pa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_022',
      root: 'Muni',
      paradigmId: 'masc_i',
      wordVi: 'bậc thánh nhân, ẩn sĩ (nam tánh, đuôi -i)',
      wordEn: 'Muni',
      lessonId: 'lesson_09',
      pronunciation: 'mu-ni',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_023',
      root: 'Kapi',
      paradigmId: 'masc_i',
      wordVi: 'con khỉ (nam tánh, đuôi -i)',
      wordEn: 'Kapi',
      lessonId: 'lesson_09',
      pronunciation: 'ka-pi',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_024',
      root: 'Kavi',
      paradigmId: 'masc_i',
      wordVi: 'nhà thơ, thi sĩ (nam tánh, đuôi -i)',
      wordEn: 'Kavi',
      lessonId: 'lesson_09',
      pronunciation: 'ka-vi',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_025',
      root: 'Mani',
      paradigmId: 'masc_i',
      wordVi: 'viên ngọc, ngọc báu (nam tánh, đuôi -i)',
      wordEn: 'Mani',
      lessonId: 'lesson_09',
      pronunciation: 'ma-ṇi',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_026',
      root: 'Purato',
      paradigmId: 'indeclinable',
      wordVi: 'phía trước, ở trước (phó từ)',
      wordEn: 'Purato',
      lessonId: 'lesson_09',
      pronunciation: 'pu-ra-to',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_027',
      root: 'Ovāda',
      paradigmId: 'masc_a',
      wordVi: 'lời giáo giới, lời khuyên dạy (nam tánh)',
      wordEn: 'Ovāda',
      lessonId: 'lesson_09',
      pronunciation: 'o-vaa-da',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_028',
      root: 'Āharati',
      paradigmId: 'verb_pres',
      wordVi: 'đem đến, mang lại; tl: āharissati',
      wordEn: 'Āharati (ā+hara)',
      lessonId: 'lesson_09',
      pronunciation: 'aa-ha-ra-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_029',
      root: 'Gacchati',
      paradigmId: 'verb_pres',
      wordVi: 'đi; tl: gamissati (bất quy tắc)',
      wordEn: 'Gacchati (gamu)',
      lessonId: 'lesson_09',
      pronunciation: 'gac-cha-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_030',
      root: 'Passati',
      paradigmId: 'verb_pres',
      wordVi: 'thấy; tl: passissati',
      wordEn: 'Passati (disa)',
      lessonId: 'lesson_09',
      pronunciation: 'pas-sa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_031',
      root: 'Suṇāti',
      paradigmId: 'verb_pres',
      wordVi: 'nghe; tl: suṇissati',
      wordEn: 'Suṇāti (su)',
      lessonId: 'lesson_09',
      pronunciation: 'su-ṇaa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_032',
      root: 'Deseti',
      paradigmId: 'verb_pres',
      wordVi: 'thuyết giảng; tl: desessati',
      wordEn: 'Deseti (disa)',
      lessonId: 'lesson_09',
      pronunciation: 'de-se-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_033',
      root: 'Karoti',
      paradigmId: 'verb_pres',
      wordVi: 'làm; tl: karissati',
      wordEn: 'Karoti (kara)',
      lessonId: 'lesson_09',
      pronunciation: 'ka-ro-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_034',
      root: 'Tiṭṭhati',
      paradigmId: 'verb_pres',
      wordVi: 'đứng; tl: ṭhassati (bất quy tắc)',
      wordEn: 'Tiṭṭhati (ṭhā)',
      lessonId: 'lesson_09',
      pronunciation: 'tiṭ-ṭha-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_035',
      root: 'Patati',
      paradigmId: 'verb_pres',
      wordVi: 'rụng, rơi, ngã; tl: patissati',
      wordEn: 'Patati (pata)',
      lessonId: 'lesson_09',
      pronunciation: 'pa-ta-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_036',
      root: 'Uppajjati',
      paradigmId: 'verb_pres',
      wordVi: 'sanh, khởi lên; tl: uppajjissati',
      wordEn: 'Uppajjati (ud+pad)',
      lessonId: 'lesson_09',
      pronunciation: 'up-paj-ja-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_037',
      root: 'Vicarati',
      paradigmId: 'verb_pres',
      wordVi: 'đi lại, lang thang; tl: vicarissati',
      wordEn: 'Vicarati (vi+cara)',
      lessonId: 'lesson_09',
      pronunciation: 'vi-ca-ra-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_038',
      root: 'Vasati',
      paradigmId: 'verb_pres',
      wordVi: 'ở, cư ngụ; tl: vasissati',
      wordEn: 'Vasati (vasa)',
      lessonId: 'lesson_09',
      pronunciation: 'va-sa-ti',
      examplePali: '',
      exampleVi: '',
    ),
  PaliVocabModel(
      id: 'pv_L09_039',
      root: 'Bhuñjati',
      paradigmId: 'verb_pres',
      wordVi: 'ăn, thọ dụng; tl: bhuñjissati',
      wordEn: 'Bhuñjati (bhuja)',
      lessonId: 'lesson_09',
      pronunciation: 'bhuñ-ja-ti',
      examplePali: '',
      exampleVi: '',
    ),
];


// ──────────────────────────────────────────────────────────────
// DAY 1: Học nền tảng — Ngữ pháp + Từ vựng
// ──────────────────────────────────────────────────────────────
LessonDay getLesson09Day1() {
  return LessonDay(
    id: 'lesson09_day1',
    dayNumber: 1,
    themeId: 'theme_09_fem_i_future',
    titleVi: 'Ngày 1: Nữ tánh "-i" & Tương lai — Lý thuyết & Từ vựng',
    phases: [
      _buildDay1Phase1(),
      _buildDay1Phase2(),
    ],
  );
}

/// Phase 1: read_listen — Giải thích ngữ pháp
LessonPhase _buildDay1Phase1() {
  return LessonPhase(
    id: 'lesson09_phase1',
    phaseTypeStr: 'read_listen',
    titleVi: 'Bài đọc: Nữ tánh "-i" & Tương lai',
    contentVi: '''
BÀI 9 — DANH TỪ NỮ TÁNH "-i" & THÌ TƯƠNG LAI

1) DANH TỪ NỮ TÁNH TẬN CÙNG "-i" — phạm trù "bhūmi" (f., mặt đất / địa cầu / miền)

   Bảng biến cách:
                            Số ít (sg.)         Số nhiều (pl.)
   Paṭhamā / Ālapana (CC/HC)   bhūmi             bhūmī, bhūmiyo
   Dutiyā (ĐC)                 bhūmiṃ            bhūmī, bhūmiyo
   Tatiyā/Karaṇa (SDC)         bhūmiyā           bhūmībhi, bhūmīhi
   Pañcamī (XXC)               bhūmiyā           bhūmībhi, bhūmīhi
   Catutthī (CĐC)              bhūmiyā           bhūmīnaṃ
   Chaṭṭhī (STC)               bhūmiyā           bhūmīnaṃ
   Sattamī (ĐSC)               bhūmiyā, bhūmiyaṃ bhūmīsu

   Tóm tắt đuôi:
                         Số ít          Số nhiều
   CC / HC               -i             -ī, -iyo
   ĐC                    -iṃ            -ī, -iyo
   SDC / XXC             -iyā           -ībhi, -īhi
   CĐC / STC             -iyā           -īnaṃ
   ĐSC                   -iyā, -iyaṃ    -īsu

   ✅ Điểm cần nhớ để phân biệt với Nam tánh "-i" (Bài 8):
      - NỮ tánh "-i" CC/HC số ít trần "-i" (bhūmi), còn NAM tánh "-i" CC số ít thường là "-i" (như agini/aggi) và số nhiều là "-ayo" không phải "-iyo" — nhưng cách dễ nhất là tra từ điển hoặc nhớ giống của từ.
      - Gián tiếp số ít của NỮ "-i" luôn là "-iyā" (bhūmiyā); NAM "-i" có "-inā" (SDC), "-issa" (STC/CĐC), "-ismā" (XXC), "-ismiṃ" (ĐSC).
      - Định sở số nhiều của NỮ "-i" là "-īsu"; của NAM "-i" là "-īsu" (trùng).

2) THÌ TƯƠNG LAI (Bhavissanti / Future Tense) — Thể chủ động

   Cách thành lập: lấy đuôi thì hiện tại, thêm "ssa" vào giữa gốc và đuôi.
   Nguyên âm đứng ngay trước nhóm đuôi tương lai (-issa-) LUÔN đổi thành "-i-".

   Biến tố (terminations) thì tương lai:
                    Số ít                Số nhiều
   Ngôi 3 (he/they)      -issati          -issanti
   Ngôi 2 (you)          -issasi          -issatha
   Ngôi 1 (I/we)         -issāmi          -issāma

   Ví dụ với paca (nấu):
                    Số ít              Số nhiều
   Ngôi 3           pacissati          pacissanti   (sẽ nấu)
   Ngôi 2           pacissasi          pacissatha
   Ngôi 1           pacissāmi          pacissāma

   Một số ví dụ với động từ khác:
     * bhavati  (là / trở thành) → bhavissati  (sẽ là / sẽ trở thành)
     * khaṇati  (đào)            → khaṇissati  (sẽ đào)
     * jāyati   (sanh / khởi)    → jāyissati   (sẽ sanh)
     * pāpuṇāti (đến / đạt)      → pāpuṇissati (sẽ đến / sẽ đạt)
     * pavisati (vào)            → pavisissati (sẽ vào)
     * tarati   (băng qua)       → tarissati   (sẽ băng qua)
     * gacchati (đi)             → gamissati   (sẽ đi — bất quy tắc)
     * passati  (thấy)           → passissati  (sẽ thấy)
     * suṇāti   (nghe)           → suṇissati   (sẽ nghe)
     * deseti   (thuyết)         → desessati   (sẽ thuyết)
     * karoti   (làm)            → karissati   (sẽ làm)
     * tiṭṭhati (đứng)           → ṭhassati    (sẽ đứng — bất quy tắc)
     * patati   (rụng / ngã)     → patissati   (sẽ rụng / ngã)

3) CÁCH DÙNG THÌ TƯƠNG LAI
   - Diễn tả một hành động sẽ xảy ra trong tương lai:
       * Gahapati kūpaṃ khaṇissati = Gia chủ SẼ đào cái giếng.
       * Mayaṃ gaṅgaṃ tarissāma = Chúng ta SẼ băng qua sông Hằng.
   - Thường đi với các phó từ thời gian:
       * suve / sve (ngày mai), ajja (hôm nay), kadā (khi nào), sabbadā (hằng ngày).
   - Trong câu có mệnh đề chỉ mục đích dùng nguyên thể (-tuṃ), động từ chính vẫn có thể chia tương lai:
       * Sve mayaṃ muttiṃ labhituṃ Dhammassavanaṃ karissāma.
         = Ngày mai chúng tôi sẽ làm việc nghe Pháp để đạt được giải thoát.

4) GIỚI THIỆU NGẮN VỀ DANH ĐỘNG TỪ (Gerund / Indeclinable Past Participle)
   - Trong bài tập có dạng như: pavisitvā (đã vào), nisīditvā (đã ngồi),
     taritvā (đã băng qua), labhitvā (đã đạt được), gahetvā (đã lấy),
     nikkhamitvā (đã ra đi), gantvā (đã đi) — đuôi "-tvā" chỉ hành động
     xảy ra TRƯỚC hành động của động từ chính trong câu.
   - Cách này sẽ học kỹ ở Bài 8/Bài 10; ở Bài 9 chỉ cần nhận diện nghĩa.
''',
    contentEn: '''LESSON 9 — FEMININE "-i" & FUTURE TENSE

A. FEMININE "-i" NOUNS (bhūmi — earth/ground)
                    sg.              pl.
   Nom./Voc.       bhūmi            bhūmī, bhūmiyo
   Acc.            bhūmiṃ           bhūmī, bhūmiyo
   Ins./Abl.       bhūmiyā          bhūmībhi, bhūmīhi
   Dat./Gen.       bhūmiyā          bhūmīnaṃ
   Loc.            bhūmiyā, bhūmiyaṃ bhūmīsu
   ⚠ Differs from masc. "-i": oblique sg. is always -iyā; masc. -i has
   -inā / -issa / -ismā / -ismiṃ.

B. FUTURE TENSE (-issati / -issanti / ...)
   - Insert "-ssa-" between root and present endings; the vowel before the
     future suffix becomes "-i-":
              sg.             pl.
   3rd       -issati         -issanti
   2nd       -issasi         -issatha
   1st       -issāmi         -issāma
   Examples: pacati → pacissati (will cook);
             bhavati → bhavissati;  gacchati → gamissati (irregular);
             karoti → karissati;    tiṭṭhati → ṭhassati (irregular);
             deseti → desessati;    hoti → hessati.

C. TEMPORAL ADVERBS
   - suve / sve = tomorrow; ajja = today; kadā = when? sabbadā = always.

D. GERUND (absolutive, -tvā)
   - Forms like pavisitvā (having entered), nisīditvā (having sat),
     taritvā (having crossed), labhitvā (having obtained) denote an action
     BEFORE the main verb.
''',
    fabPhrases: [
          FabPhraseItem(
            phrase: 'bhūmi (f.) — mặt đất',
            meaning:
                'CC/HC/ĐC số ít: -i / -iṃ; số nhiều: -ī, -iyo. SDC/XXC/CĐC/STC số ít: -iyā.',
          ),
          FabPhraseItem(
            phrase: 'bhūmiyā / bhūmiyaṃ (ĐSC số ít)',
            meaning:
                'Định sở số ít nữ tánh "-i" có 2 dạng: -iyā và -iyaṃ (ở / tại mặt đất).',
          ),
          FabPhraseItem(
            phrase: 'bhūmīsu (ĐSC số nhiều)',
            meaning:
                'Định sở số nhiều nữ tánh "-i" có đuôi -īsu (nguyên âm i dài trước su).',
          ),
          FabPhraseItem(
            phrase: 'pacati → pacissati (sẽ nấu)',
            meaning:
                'Thêm "-ssa-" + đuôi hiện tại → tương lai. Nguyên âm trước đổi thành "i".',
          ),
          FabPhraseItem(
            phrase: '-issati / -issasi / -issāmi (ít)',
            meaning:
                'Ngôi 3 / 2 / 1 số ít thì tương lai. Số nhiều: -issanti / -issatha / -issāma.',
          ),
          FabPhraseItem(
            phrase: 'suve / sve (adv.)',
            meaning:
                'Phó từ chỉ thời gian: "ngày mai". Thường đi với thì tương lai.',
          ),
        ],
  );
}

/// Phase 2: read_listen — Từ vựng
LessonPhase _buildDay1Phase2() {
  return LessonPhase(
    id: 'lesson09_phase2',
    phaseTypeStr: 'read_listen',
    titleVi: 'Từ vựng Bài 9 — Nữ tánh "-i", Nam/Trung tánh, Động từ',
    contentVi: 'Học thuộc các từ mới bên dưới. Chú ý: các NỮ tánh "-i" chia theo bảng "bhūmi"; các NAM tánh tận cùng "-i" (ví dụ: agni — lửa, đã học ở Bài 8) chia theo một bảng KHÁC (đuôi số ít -i / -iṃ nhưng gián tiếp -inā, -ino…).',
    fabVocab: _buildVocabFabList(),
  );
}

List<FabVocabItem> _buildVocabFabList() {
  return const [
    FabVocabItem(
        wordEn: 'Bhūmi',
        pronunciation: 'bhuu-mi',
        wordVi: 'mặt đất, địa cầu, miền, xứ',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Aṅguḷi',
        pronunciation: 'aṅ-gu-ḷi',
        wordVi: 'ngón tay',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Aṭavi',
        pronunciation: 'a-ṭa-vi',
        wordVi: 'rừng, khu rừng',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Bhaya',
        pronunciation: 'bha-ya',
        wordVi: 'sự sợ hãi, nỗi sợ (trung tánh)',
        partOfSpeech: 'n.',
      ),
    FabVocabItem(
        wordEn: 'Mutti',
        pronunciation: 'mut-ti',
        wordVi: 'sự giải thoát, sự thoát ly',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Pīti',
        pronunciation: 'pii-ti',
        wordVi: 'niềm hỷ lạc',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Rati',
        pronunciation: 'ra-ti',
        wordVi: 'sự dính mắc, ái luyến, vui thích',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Khanti',
        pronunciation: 'khan-ti',
        wordVi: 'sự kham nhẫn, nhẫn nại',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Ratti',
        pronunciation: 'rat-ti',
        wordVi: 'ban đêm, đêm',
        partOfSpeech: 'f.',
      ),
    FabVocabItem(
        wordEn: 'Kuddāla',
        pronunciation: 'kud-daa-la',
        wordVi: 'cái thuổng, cái cuốc, cái xẻng (m./n.)',
        partOfSpeech: 'm./n.',
      ),
    FabVocabItem(
        wordEn: 'Soka',
        pronunciation: 'so-ka',
        wordVi: 'sự ưu sầu, phiền muộn',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Kūpa',
        pronunciation: 'kuu-pa',
        wordVi: 'cái giếng',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Suve / Sve',
        pronunciation: 'su-ve / sve',
        wordVi: 'ngày mai (phó từ)',
        partOfSpeech: 'adv.',
      ),
    FabVocabItem(
        wordEn: 'Bhavati (bhū)',
        pronunciation: 'bha-va-ti',
        wordVi: 'là, trở thành, hiện hữu; thì tương lai: bhavissati',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Khaṇati (khaṇa)',
        pronunciation: 'kha-ṇa-ti',
        wordVi: 'đào, xới; tl: khaṇissati',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Jāyati (jana)',
        pronunciation: 'jaa-ya-ti',
        wordVi: 'nổi lên, sanh ra, sinh khởi; tl: jāyissati',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Pāpuṇāti (pa+apa)',
        pronunciation: 'paa-pu-ṇaa-ti',
        wordVi: 'đến nơi, đạt được, thành tựu; tl: pāpuṇissati',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Pavisati (pa+visa)',
        pronunciation: 'pa-vi-sa-ti',
        wordVi: 'đi vào, bước vào; tl: pavisissati',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Tarati (tara)',
        pronunciation: 'ta-ra-ti',
        wordVi: 'băng qua, vượt qua; tl: tarissati',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Gahapati',
        pronunciation: 'ga-ha-pa-ti',
        wordVi: 'gia chủ, chủ nhà, cư sĩ (nam tánh)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Narapati',
        pronunciation: 'na-ra-pa-ti',
        wordVi: 'vua, quốc vương (chúa tể loài người)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Muni',
        pronunciation: 'mu-ni',
        wordVi: 'bậc thánh nhân, ẩn sĩ (nam tánh, đuôi -i)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Kapi',
        pronunciation: 'ka-pi',
        wordVi: 'con khỉ (nam tánh, đuôi -i)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Kavi',
        pronunciation: 'ka-vi',
        wordVi: 'nhà thơ, thi sĩ (nam tánh, đuôi -i)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Mani',
        pronunciation: 'ma-ṇi',
        wordVi: 'viên ngọc, ngọc báu (nam tánh, đuôi -i)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Purato',
        pronunciation: 'pu-ra-to',
        wordVi: 'phía trước, ở trước (phó từ)',
        partOfSpeech: 'adv.',
      ),
    FabVocabItem(
        wordEn: 'Ovāda',
        pronunciation: 'o-vaa-da',
        wordVi: 'lời giáo giới, lời khuyên dạy (nam tánh)',
        partOfSpeech: 'm.',
      ),
    FabVocabItem(
        wordEn: 'Āharati (ā+hara)',
        pronunciation: 'aa-ha-ra-ti',
        wordVi: 'đem đến, mang lại; tl: āharissati',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Gacchati (gamu)',
        pronunciation: 'gac-cha-ti',
        wordVi: 'đi; tl: gamissati (bất quy tắc)',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Passati (disa)',
        pronunciation: 'pas-sa-ti',
        wordVi: 'thấy; tl: passissati',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Suṇāti (su)',
        pronunciation: 'su-ṇaa-ti',
        wordVi: 'nghe; tl: suṇissati',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Deseti (disa)',
        pronunciation: 'de-se-ti',
        wordVi: 'thuyết giảng; tl: desessati',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Karoti (kara)',
        pronunciation: 'ka-ro-ti',
        wordVi: 'làm; tl: karissati',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Tiṭṭhati (ṭhā)',
        pronunciation: 'tiṭ-ṭha-ti',
        wordVi: 'đứng; tl: ṭhassati (bất quy tắc)',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Patati (pata)',
        pronunciation: 'pa-ta-ti',
        wordVi: 'rụng, rơi, ngã; tl: patissati',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Uppajjati (ud+pad)',
        pronunciation: 'up-paj-ja-ti',
        wordVi: 'sanh, khởi lên; tl: uppajjissati',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Vicarati (vi+cara)',
        pronunciation: 'vi-ca-ra-ti',
        wordVi: 'đi lại, lang thang; tl: vicarissati',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Vasati (vasa)',
        pronunciation: 'va-sa-ti',
        wordVi: 'ở, cư ngụ; tl: vasissati',
        partOfSpeech: 'v.',
      ),
    FabVocabItem(
        wordEn: 'Bhuñjati (bhuja)',
        pronunciation: 'bhuñ-ja-ti',
        wordVi: 'ăn, thọ dụng; tl: bhuñjissati',
        partOfSpeech: 'v.',
      ),
  ];
}


// ──────────────────────────────────────────────────────────────
// DAY 2: Luyện tập — Mind Game + Quiz
// ──────────────────────────────────────────────────────────────
LessonDay getLesson09Day2() {
  return LessonDay(
    id: 'lesson09_day2',
    dayNumber: 2,
    themeId: 'theme_09_fem_i_future',
    titleVi: 'Ngày 2: Thực hành Mind Game & Quiz — Nữ tánh "-i" & Tương lai',
    phases: [
      _buildDay2MindGame(),
      _buildDay2Quiz(),
    ],
  );
}

/// Phase 3: mind_game — Trò chơi tư duy với Exercise
LessonPhase _buildDay2MindGame() {
  return LessonPhase(
    id: 'lesson09_phase3',
    phaseTypeStr: 'mind_game',
    titleVi: 'Trò Chơi Tư Duy — Bài Tập 9',
    contentVi: 'Nhấn vào cụm tiếng Việt để nói to cụm Pāḷi tương ứng; nhấn lại để xem đáp án. Chú ý các dạng **thì tương lai** (-issati/-issanti/-issasi/-issatha/-issāmi/-issāma) và các từ Nữ tánh "-i" (bhūmiyā, rattiyaṃ, aṭavīsu …).',
    mixedSegments: kLesson09MindGameSegments,
  );
}

/// Mind Game segments cho bài tập 9
class _Seg {
  final String pali;
  final String vi;
  const _Seg(this.pali, this.vi);
}

final kLesson09MindGameSegments = <MixedSegment>[
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
    // 1. Gahapati kuddālena bhūmiyaṃ kūpaṃ khaṇissati.
    ...sent(const [
      _Seg('Gahapati', 'Vị gia chủ'),
      _Seg('kuddālena', 'bằng cái cuốc'),
      _Seg('bhūmiyaṃ', 'trên mặt đất'),
      _Seg('kūpaṃ', 'cái giếng'),
      _Seg('khaṇissati', 'sẽ đào'),
    ]),
    // 2. Khantiyā pīti uppajjissati.
    ...sent(const [
      _Seg('Khantiyā', 'Nhờ nhẫn nại'),
      _Seg('pīti', 'niềm hỷ'),
      _Seg('uppajjissati', 'sẽ sanh / sẽ khởi lên'),
    ]),
    // 3. Narapati sve aṭaviṃ pavisitvā muniṃ passissati.
    ...sent(const [
      _Seg('Narapati', 'Vị vua'),
      _Seg('sve', 'ngày mai'),
      _Seg('aṭaviṃ', '(vào) khu rừng'),
      _Seg('pavisitvā', 'sau khi đã vào'),
      _Seg('muniṃ', 'vị thánh nhân'),
      _Seg('passissati', 'sẽ thấy'),
    ]),
    // 5. Rattiyaṃ te aṭavīsu na vasissanti.
    ...sent(const [
      _Seg('Rattiyaṃ', 'Vào ban đêm'),
      _Seg('te', 'họ'),
      _Seg('aṭavīsu', 'trong các khu rừng'),
      _Seg('na vasissanti', 'sẽ không ở'),
    ]),
    // 7. Narapati, tvaṃ muttiṃ labhitvā Buddho bhavissasi.
    ...sent(const [
      _Seg('Narapati,', 'Tâu đại vương,'),
      _Seg('tvaṃ', 'ngài / bạn'),
      _Seg('muttiṃ', 'sự giải thoát'),
      _Seg('labhitvā', 'sau khi đã chứng đắc'),
      _Seg('Buddho', 'một vị Phật'),
      _Seg('bhavissasi', 'ngài sẽ trở thành'),
    ]),
    // 9. Kuhiṃ tvaṃ sve gamissasi?
    ...sent(const [
      _Seg('Kuhiṃ', 'Đâu'),
      _Seg('tvaṃ', 'bạn'),
      _Seg('sve', 'ngày mai'),
      _Seg('gamissasi?', 'sẽ đi?'),
    ]),
    // 10. Tumhe rattiyaṃ visikhāsu na vicarissatha.
    ...sent(const [
      _Seg('Tumhe', 'Các bạn / các ngươi'),
      _Seg('rattiyaṃ', 'ban đêm'),
      _Seg('visikhāsu', 'trên các con đường phố'),
      _Seg('na vicarissatha', 'sẽ không đi lại'),
    ]),
    // 11. Rattiyaṃ tumhe candaṃ passissatha.
    ...sent(const [
      _Seg('Rattiyaṃ', 'Ban đêm'),
      _Seg('tumhe', 'các bạn'),
      _Seg('candaṃ', 'mặt trăng'),
      _Seg('passissatha', 'các bạn sẽ thấy'),
    ]),
    // 14. Mayaṃ gaṅgaṃ taritvā sve aṭaviṃ pāpuṇissāma.
    ...sent(const [
      _Seg('Mayaṃ', 'Chúng tôi'),
      _Seg('gaṅgaṃ', 'sông Hằng'),
      _Seg('taritvā', 'sau khi đã băng qua'),
      _Seg('sve', 'ngày mai'),
      _Seg('aṭaviṃ', '(đến) khu rừng'),
      _Seg('pāpuṇissāma', 'chúng tôi sẽ đến / đạt'),
    ]),
    // 17. Kapi tassa aṅgulīhi phalāni bhuñjissati.
    ...sent(const [
      _Seg('Kapi', 'Con khỉ'),
      _Seg('tassa', 'của người ấy / nó'),
      _Seg('aṅgulīhi', 'bằng các ngón tay'),
      _Seg('phalāni', 'các trái cây'),
      _Seg('bhuñjissati', 'sẽ ăn'),
    ]),
    // 18. So sve aṭaviṃ tarissati.
    ...sent(const [
      _Seg('So', 'Ông ấy / Anh ta'),
      _Seg('sve', 'ngày mai'),
      _Seg('aṭaviṃ', '(qua) khu rừng'),
      _Seg('tarissati', 'sẽ vượt / băng qua'),
    ]),
    // 22. Munayo, kadā tumhe muttiṃ labhitvā lokāya Dhammaṃ desessatha?
    ...sent(const [
      _Seg('Munayo,', 'Này các bậc thánh nhân,'),
      _Seg('kadā', 'khi nào'),
      _Seg('tumhe', 'các ngài'),
      _Seg('muttiṃ', 'sự giải thoát'),
      _Seg('labhitvā', 'chứng được rồi'),
      _Seg('lokāya', 'cho đời / thế gian'),
      _Seg('Dhammaṃ', 'Giáo Pháp'),
      _Seg('desessatha?', 'sẽ thuyết giảng?'),
    ]),
    // 26. Ahaṃ kavi bhavissāmi.
    ...sent(const [
      _Seg('Ahaṃ', 'Tôi'),
      _Seg('kavi', '(một) nhà thơ'),
      _Seg('bhavissāmi', 'sẽ trở thành'),
    ]),
    // 28. Khantiyā mayaṃ muttiṃ labhissāma.
    ...sent(const [
      _Seg('Khantiyā', 'Nhờ lòng nhẫn nại'),
      _Seg('mayaṃ', 'chúng tôi'),
      _Seg('muttiṃ', 'sự giải thoát'),
      _Seg('labhissāma', 'sẽ đạt được'),
    ]),
    // 30. Mayam'eva pītiyā gilāne saṅgaṇhissāma.
    ...sent(const [
      _Seg("Mayam'eva", 'Chính chúng tôi'),
      _Seg('pītiyā', 'bằng niềm hỷ'),
      _Seg('gilāne', 'những người bịnh'),
      _Seg('saṅgaṇhissāma', 'sẽ chăm sóc / phụng dưỡng'),
    ]),
  ];
}

/// Phase 4: listening_quiz — Bài tập trắc nghiệm
LessonPhase _buildDay2Quiz() {
  return LessonPhase(
    id: 'lesson09_phase4',
    phaseTypeStr: 'listening_quiz',
    titleVi: 'Quiz — Kiểm tra kiến thức Bài 9',
    questions: _buildQuiz(),
    fabAnswers: _buildQuizAnswers(),
  );
}

List<QuizQuestion> _buildQuiz() {
  return [
    QuizQuestion(
        id: 'lesson09_q01_01',
        questionText: '1. Định sở cách (Locative / Sattamī) số nhiều của danh từ NỮ tánh tận cùng "-i" (vd. bhūmi, aṭavi, ratti) mang đuôi nào?',
        options: [
        'A. -īsu (bhūmīsu, aṭavīsu, rattīsu)',
        'B. -esu (giống nam tánh "-a")',
        'C. -āsu (giống nữ tánh "-ā")',
        'D. -īhi (bhūmīhi)',
      ],
        correctIndex: 0,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson09_q01_02',
        questionText: '2. Chia động từ "paca" (nấu) ở thì TƯƠNG LAI ngôi thứ 3 số ít ("anh ta sẽ nấu") là dạng nào?',
        options: [
        'A. pacitā',
        'B. pacissati',
        'C. pacissāmi',
        'D. pacanti',
      ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson09_q01_03',
        questionText: '3. Từ "suve / sve" thuộc loại từ nào và có nghĩa là gì?',
        options: [
        'A. Danh từ Nữ tánh "-i" nghĩa là "mặt trời".',
        'B. Danh từ Nam tánh "-a" nghĩa là "người bạn".',
        'C. Phó từ (adv.), nghĩa là "ngày mai"; thường dùng với thì tương lai.',
        'D. Đại từ nhân xưng ngôi 3 nghĩa là "họ".',
      ],
        correctIndex: 2,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson09_q01_04',
        questionText: '4. Bộ đuôi thì TƯƠNG LAI cho các NGÔI SỐ ÍT (ngôi 3 / ngôi 2 / ngôi 1) là nào?',
        options: [
        'A. -ati / -asi / -āmi (như thì hiện tại)',
        'B. -issati / -issasi / -issāmi',
        'C. -issanti / -issatha / -issāma (bộ này là số nhiều)',
        'D. -tu / -hi / -mi (mệnh lệnh cách)',
      ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
    QuizQuestion(
        id: 'lesson09_q01_05',
        questionText: '5. Phát biểu nào ĐÚNG về sự KHÁC NHAU chính giữa biến cách NỮ tánh "-i" (bhūmi) và NAM tánh "-i" (vd. muni, kapi, aggi)?',
        options: [
        'A. Hoàn toàn giống hệt nhau, chỉ khác giống (gender).',
        'B. NỮ tánh "-i" có đuôi gián tiếp số ít "-iyā" (bhūmiyā) dùng chung cho SDC/XXC/CĐC/STC, còn NAM tánh "-i" có các đuôi RIÊNG: -inā (SDC), -issa (STC/CĐC), -ismā (XXC), -ismiṃ (ĐSC).',
        'C. Cả hai đều có số nhiều CC là "-āyo".',
        'D. Nữ tánh "-i" không có ĐC số ít, nam tánh thì có.',
      ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
  ];
}

List<FabAnswerItem> _buildQuizAnswers() {
  return [
    FabAnswerItem(
        en: 'Q1 → A: see Vietnamese for full explanation.',
        vi: 'Câu 1: Định sở (Locative) số nhiều của NỮ tánh "-i" là đuôi "-īsu" (nguyên âm i DÀI + su). Ví dụ bhūmīsu = "trong các xứ / trên mặt đất (nhiều nơi)"; aṭavīsu = "trong các khu rừng". Nam tánh "-i" cũng có ĐSC nhiều "-īsu".',
      ),
    FabAnswerItem(
        en: 'Q2 → B: see Vietnamese for full explanation.',
        vi: 'Câu 2: Đáp án đúng là "pacissati" — thêm "-ssa-" vào giữa gốc paca (với -a- đổi thành -i-) và đuôi ngôi 3 ít là "-ti" → pa-c-i-ssa-ti = pacissati (anh ta sẽ nấu).',
      ),
    FabAnswerItem(
        en: 'Q3 → C: see Vietnamese for full explanation.',
        vi: 'Câu 3: "Suve / Sve" là PHÓ TỪ (adv.), nghĩa là "ngày mai", thường đi với thì tương lai: suve gacchati = ngày mai anh ta sẽ đi.',
      ),
    FabAnswerItem(
        en: 'Q4 → B: see Vietnamese for full explanation.',
        vi: 'Câu 4: Biến tố SỐ ÍT thì tương lai là: ngôi 3 "-issati", ngôi 2 "-issasi", ngôi 1 "-issāmi". Cặp "pacissanti / pacissāma" là số nhiều (ngôi 3 / ngôi 1).',
      ),
    FabAnswerItem(
        en: 'Q5 → B: see Vietnamese for full explanation.',
        vi: 'Câu 5: Khác biệt chính: NỮ tánh "-i" có gián tiếp số ít "-iyā" (bhūmiyā) cho SDC/XXC/CĐC/STC, và ĐSC số ít là "-iyā/-iyaṃ"; NAM tánh "-i" có SDC "-inā", STC "-issa", XXC "-ismā", ĐSC "-ismiṃ" — hệ thống đuôi khác hẳn.',
      ),
  ];
}
