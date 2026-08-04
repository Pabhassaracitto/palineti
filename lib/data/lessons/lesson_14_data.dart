// lesson_14.dart
// Bài học số 14: Các loại Phân từ (Participles)
// An Elementary Pāḷi Course – Nārada Mahāthera – trang 126-139
//
// Cấu trúc theo chuẩn lib/data/lessons (giống lesson_01 … lesson_20):
//   import '../models/...'
//   final kLesson14Vocab = <PaliVocabModel>[...]
//   LessonDay getLesson14Day1()
//   LessonDay getLesson14Day2()
//   List<LessonDay> getLesson14Data()
//   class Lesson14Bundle { … meta, day1, day2, all }
// ---------------------------------------------------------------------------

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

// ──────────────────────────────────────────────────────────────
// LESSON META
// ──────────────────────────────────────────────────────────────
LessonMeta getLesson14Meta() => const LessonMeta(
      id: 'theme_14_participles',
      lessonNumber: 14,
      titleVi: 'Các loại Phân từ',
      titleEn: 'Participles – Present, Past, Potential',
      iconEmoji: '📜',
      colorValue: 0xFF8B4513,
      description:
          'Hiện tại Phân từ anta/māna, Quá khứ ta/na, Khả năng tabba/anīya/ya',
      complexity: LessonComplexity.medium,
      estimatedMinutes: 45,
    );

// ──────────────────────────────────────────────────────────────
// VOCABULARY (tổng hợp FabVocabItem của 5 phase Day1 + từ bổ sung)
// ──────────────────────────────────────────────────────────────
final kLesson14Vocab = <PaliVocabModel>[
  // ---------- Present Active Participle (-anta / -māna) ----------
  _v(1, 'pacanta', 'part_pres_act', 'đang nấu', 'pacanta / pacamāna',
      'pa-chan-ta', 'pacanto puriso odanaṃ pacati.', 'Người đàn ông đang nấu thì nấu cơm.'),
  _v(2, 'gacchanta', 'part_pres_act', 'đang đi', 'gacchanta / gacchamāna',
      'gac-chan-ta', 'Ahaṃ magge gacchanto taṃ purisaṃ passiṃ.', 'Tôi thấy người ấy trong khi đang đi trên đường.'),
  _v(3, 'vadamāna', 'part_pres_act', 'đang nói', 'vadamāna',
      'va-da-mā-na', 'So vadamāno gacchati.', 'Anh ấy vừa nói vừa đi.'),
  _v(4, 'passanta', 'part_pres_act', 'đang thấy', 'passanta / passamāna',
      'pas-san-ta', 'Passanto puriso candaṃ passati.', 'Người đàn ông đang thấy thì thấy mặt trăng.'),
  _v(5, 'bhuñjanta', 'part_pres_act', 'đang ăn', 'bhuñjanta / bhuñjamāna',
      'bhun-jan-ta', 'Bhuñjamānarūpo puriso phalāni khādati.', 'Người đàn ông với dáng vẻ đang ăn thì ăn trái cây.'),
  _v(6, 'karonta', 'part_pres_act', 'đang làm', 'karonta / kurumana',
      'ka-ron-ta', 'So kammaṃ karonto gacchati.', 'Anh ấy vừa làm công việc vừa đi.'),
  _v(7, 'suṇanta', 'part_pres_act', 'đang nghe', 'suṇanta / suṇamāna',
      'su-ṇan-ta', 'Sabbā itthiyo dhammaṃ sunantiyo nisīdiṃsu.', 'Tất cả những người nữ đang nghe Pháp đã ngồi xuống.'),
  _v(8, 'gacchamāna', 'part_pres_act', 'đang đi (bị động-ish)',
      'gacchamāna', 'gac-cha-mā-na', '', ''),
  _v(9, 'pacamāna', 'part_pres_act', 'đang nấu (-māna)', 'pacamāna',
      'pa-ca-mā-na', '', ''),
  _v(10, 'nisinna', 'part_pres_act', 'đã ngồi, đang ngồi', 'nisinna',
      'ni-sin-na', 'Tasmiṃ rukkhe nisinnaṃ sakuṇaṃ passati.', 'Anh ấy thấy con chim đang đậu trên cây ấy.'),

  // ---------- Present Passive Participle (-īyamāna) ----------
  _v(11, 'pacīyamāna', 'part_pres_pass', 'đang được nấu', 'pacīyamāna',
      'pa-cī-ya-mā-na', 'Pacīyamānaṃ odanaṃ puriso passati.', 'Người đàn ông thấy cơm đang được nấu.'),
  _v(12, 'rakkhīyamāna', 'part_pres_pass', 'đang được bảo vệ', 'rakkhīyamāna',
      'rak-khī-ya-mā-na', 'Rakkhīyamānaṃ nagaraṃ balavā hoti.', 'Thành phố đang được bảo vệ thì vững mạnh.'),
  _v(13, 'sūyamāna', 'part_pres_pass', 'đang được nghe', 'sūyamāna',
      'sū-ya-mā-na', 'Sūyamāno dhammo sotāpattiphalena upeto hoti.', 'Pháp đang được nghe đi kèm quả dự lưu.'),
  _v(14, 'karīyamāna', 'part_pres_pass', 'đang được làm', 'karīyamāna / kayiramāna',
      'ka-rī-ya-mā-na', 'Kayiramānaṃ kammaṃ sādhu hotu.', 'Việc đang được làm, xin hãy là việc tốt.'),
  _v(15, 'desīyamāna', 'part_pres_pass', 'đang được thuyết', 'desīyamāna',
      'de-sī-ya-mā-na', 'Desīyamāne dhamme sāvakā tuṇhī bhavanti.', 'Khi Pháp đang được thuyết, các thinh văn lặng thinh.'),
  _v(16, 'passīyamāna', 'part_pres_pass', 'đang được thấy', 'passīyamāna',
      'pas-sī-ya-mā-na', '', ''),
  _v(17, 'bhuñjīyamāna', 'part_pres_pass', 'đang được ăn', 'bhuñjīyamāna',
      'bhuñ-jī-ya-mā-na', '', ''),
  _v(18, 'pīyamāna', 'part_pres_pass', 'đang được uống', 'pīyamāna',
      'pī-ya-mā-na', 'Pīyamānaṃ udakaṃ sītaṃ hoti.', 'Nước đang được uống là nước lạnh.'),

  // ---------- Past Participle (-ta / -na) ----------
  _v(19, 'ñāta', 'part_past', 'đã được biết', 'ñāta', 'ñā-ta',
      'Ñātaṃ dhammaṃ bhikkhū desenti.', 'Chư tỳ-khưu thuyết Pháp đã được biết.'),
  _v(20, 'suta', 'part_past', 'đã được nghe', 'suta', 'su-ta',
      'Evaṃ me sutaṃ.', 'Tôi đã được nghe như vậy (kinh mở đầu).'),
  _v(21, 'pacita', 'part_past', 'đã được nấu', 'pacita', 'pa-ci-ta',
      'Pacitena odanena dāso yāpeti.', 'Người hầu sống nhờ cơm đã được nấu.'),
  _v(22, 'rakkhita', 'part_past', 'đã được bảo vệ', 'rakkhita', 'rak-khi-ta',
      'Idaṃ nagaraṃ balavantena rakkhitaṃ.', 'Thành phố này đã được vị có sức mạnh bảo vệ.'),
  _v(23, 'gata', 'part_past', 'đã đi', 'gata', 'ga-ta',
      'So gato hoti.', 'Anh ấy đã đi.'),
  _v(24, 'ṭhita', 'part_past', 'đã đứng', 'ṭhita', 'ṭhi-ta',
      'Ṭhito naro magge tiṭṭhati.', 'Người nam đã đứng thì đứng trên đường.'),
  _v(25, 'chinna', 'part_past', 'đã bị cắt', 'chinna', 'chin-na',
      'Sākhā tena chinnā.', 'Cành cây đã bị hắn cắt.'),
  _v(26, 'bhinna', 'part_past', 'đã bị vỡ', 'bhinna', 'bhin-na',
      'Bhinno ghaṭo bhūmiyaṃ patati.', 'Cái bình đã bị vỡ rơi trên đất.'),
  _v(27, 'diṭṭha', 'part_past', 'đã thấy', 'diṭṭha', 'diṭ-ṭha',
      'Diṭṭhadhammo arahaṃ hoti.', 'Bậc đã thấy Pháp là A-la-hán.'),
  _v(28, 'bhutta', 'part_past', 'đã ăn', 'bhutta', 'bhut-ta',
      'Bhuttaṃ bhattaṃ bhuttāvī na icchati.', 'Người đã ăn cơm rồi thì không muốn nữa.'),
  _v(29, 'kata', 'part_past', 'đã làm', 'kata', 'ka-ta',
      'Kiṃ tena kataṃ?', 'Cái gì đã được làm bởi hắn?'),
  _v(30, 'pīta', 'part_past', 'đã uống', 'pīta', 'pī-ta',
      'Pītaṃ udakaṃ na puna pātabbaṃ.', 'Nước đã uống thì không nên uống lại.'),
  _v(31, 'desita', 'part_past', 'đã được thuyết', 'desita', 'de-si-ta',
      'Buddhena desito dhammo.', 'Pháp đã được Đức Phật thuyết.'),
  _v(32, 'āgata', 'part_past', 'đã đến', 'āgata', 'ā-ga-ta',
      'So gharaṃ āgato hoti.', 'Anh ấy đã về đến nhà.'),

  // ---------- Potential Participle (-tabba / -anīya / -ya) ----------
  _v(33, 'dātabba', 'part_pot', 'nên được cho, phải cho', 'dātabba',
      'dā-tab-ba', 'Dānaṃ sappurisehi dātabbaṃ.', 'Bố thí nên được cho bởi các bậc thiện nhân.'),
  _v(34, 'ñātabba', 'part_pot', 'nên được biết', 'ñātabba', 'ñā-tab-ba',
      'Cattāri saccāni ñātabbāni.', 'Bốn sự thật nên được biết.'),
  _v(35, 'pacitabba', 'part_pot', 'nên được nấu', 'pacitabba',
      'pa-ci-tab-ba', 'Odano pacitabbo.', 'Cơm nên được nấu.'),
  _v(36, 'kattabba', 'part_pot', 'nên làm, phải làm', 'kattabba / kātabba',
      'kat-tab-ba', 'Puññaṃ kattabbaṃ, pāpaṃ na kātabbaṃ.', 'Phước nên làm, ác không nên làm.'),
  _v(37, 'gantabba', 'part_pot', 'nên đi', 'gantabba', 'gan-tab-ba',
      'Tayā gantabbaṃ.', 'Bạn nên đi.'),
  _v(38, 'sotabba', 'part_pot', 'nên nghe', 'sotabba', 'so-tab-ba',
      'Bhikkhūhi dhammo sotabbo.', 'Pháp nên được nghe bởi chư tỳ-khưu.'),
  _v(39, 'desetabba', 'part_pot', 'nên thuyết', 'desetabba', 'de-se-tab-ba',
      'Bhikkhūhi lokassa dhammo desetabbo.', 'Pháp nên được thuyết cho đời bởi chư tỳ-khưu.'),
  _v(40, 'vanditabba', 'part_pot', 'xứng đáng đảnh lễ', 'vanditabba',
      'van-di-tab-ba', 'Janako vanditabbo.', 'Người cha đáng được đảnh lễ.'),
  _v(41, 'rakkhitabba', 'part_pot', 'cần được bảo vệ', 'rakkhitabba',
      'rak-khi-tab-ba', 'Cittaṃ rakkhitabbaṃ.', 'Tâm cần được hộ trì.'),
  _v(42, 'karaṇīya', 'part_pot', 'việc nên làm', 'karaṇīya', 'ka-ra-ṇī-ya',
      'Karaṇīyaṃ kammaṃ karomi.', 'Tôi làm việc cần phải làm.'),
  _v(43, 'dassanīya', 'part_pot', 'đáng được nhìn', 'dassanīya',
      'das-sa-nī-ya', 'Buddho dassanīyo hoti.', 'Đức Phật đáng được nhìn chiêm.'),
  _v(44, 'pūjanīya', 'part_pot', 'đáng được cúng dường', 'pūjanīya',
      'pū-ja-nī-ya', 'Arahaṃ pūjanīyo hoti.', 'Bậc Ứng Cúng đáng được cúng dường.'),

  // ---------- Words from verb table (tr.134-136) and Exercise support ----------
  _v(45, 'denta', 'part_pres_act', 'đang cho (HT của dā)', 'denta', 'den-ta',
      '', ''),
  _v(46, 'dīyamāna', 'part_pres_pass', 'đang được cho (HT bị động của dā)', 'dīyamāna',
      'dī-ya-mā-na', '', ''),
  _v(47, 'dinna', 'part_past', 'đã cho (QK của dā)', 'dinna', 'din-na',
      'Mayā dinnaṃ dānaṃ.', 'Sự bố thí đã được tôi cho.'),
  _v(48, 'desenta', 'part_pres_act', 'đang thuyết', 'desenta / desamāna',
      'de-sen-ta', '', ''),
  _v(49, 'gaṇhanta', 'part_pres_act', 'đang cầm/lấy', 'gaṇhanta / gaṇhamāna',
      'gaṇ-han-ta', '', ''),
  _v(50, 'gahita', 'part_past', 'đã cầm/lấy', 'gahita', 'ga-hi-ta', '', ''),
  _v(51, 'gahetabba', 'part_pot', 'nên được lấy', 'gahetabba',
      'ga-he-tab-ba', '', ''),
  _v(52, 'pibanta', 'part_pres_act', 'đang uống', 'pibanta / pivanta / pibamāna',
      'pi-ban-ta', '', ''),
  _v(53, 'sunanta', 'part_pres_act', 'đang nghe (spelling var)', 'suṇanta / suṇamāna',
      'su-ṇan-ta', '', ''),
  _v(54, 'suṇitabba', 'part_pot', 'nên nghe (var)', 'sotabba / suṇitabba',
      'su-ṇi-tab-ba', '', ''),

  // ---------- Support words in Exercise 14 ----------
  _v(55, 'atthi', 'verb_pres', 'có, là, thì', 'atthi', 'at-thi',
      'Atthi Bhagavā.', 'Có Đức Thế Tôn.'),
  _v(56, 'aviheṭhayanta', 'part_pres_act', 'không tổn hại (a- + viheṭheti)',
      'aviheṭhayanta', 'a-vi-he-ṭha-yan-ta', 'Aviheṭhayaṃ aññataram’pi tesaṃ.',
      'Không làm tổn hại một ai trong những người ấy.'),
  _v(57, 'bhūta', 'part_past', 'đã được, đã sanh; chúng sanh (n.)', 'bhūta',
      'bhū-ta', 'Sabbāni bhūtāni sukhitāni hontu.', 'Mong tất cả chúng sanh được hạnh phúc.'),
  _v(58, 'upasaṅkamati', 'verb_pres', 'tiếp cận, lại gần', 'upasaṅkamati',
      'u-pa-saṅ-ka-ma-ti', 'So maṃ upasaṅkami.', 'Anh ấy lại gần tôi.'),
  _v(59, 'khaggavisāṇakappa', 'n_m', 'như tê giác (đơn độc)',
      'khaggavisāṇakappa', 'khag-ga-vi-sā-ṇa-kap-pa',
      'Eko care khaggavisāṇakappo.', 'Hãy sống một mình như tê giác (kệ).'),
  _v(60, 'nidhāya', 'gerund', 'sau khi đặt xuống, đã từ bỏ', 'nidhāya',
      'ni-dhā-ya', 'Sabbesu bhūtesu nidhāya daṇḍaṃ.',
      'Sau khi đặt gậy xuống đối với tất cả chúng sanh.'),
  _v(61, 'pema', 'n_n', 'tình yêu, ái luyến', 'pema', 'pe-ma',
      'Pemato jāyati soko.', 'Do ái luyến sanh sầu.'),
  _v(62, 'sahāya', 'n_m', 'người bạn', 'sahāya', 'sa-hā-ya',
      'Sahāyena vinā n’atthi sukhaṃ.', 'Không có an lạc không có bạn.'),
  _v(63, 'taṇhā', 'n_f', 'tham ái, ái dục', 'taṇhā', 'taṇ-hā',
      'Taṇhāya vippamuttassa n’atthi soko.', 'Với người thoát ái, không có sầu.'),
  _v(64, 'carati', 'verb_pres', 'đi, hành trì', 'carati', 'ca-ra-ti',
      'Brahmacariyaṃ carati.', 'Anh ấy thực hành phạm hạnh.'),
];

/// Helper ngắn, tạo một PaliVocabModel với đủ tham số.
PaliVocabModel _v(int id, String root, String paradigmId, String wordVi,
    String wordEn, String pronunciation, String examplePali, String exampleVi) {
  final num = id.toString().padLeft(3, '0');
  return PaliVocabModel(
    id: 'pv_L14_$num',
    root: root,
    paradigmId: paradigmId,
    wordVi: wordVi,
    wordEn: wordEn,
    lessonId: 'lesson_14',
    pronunciation: pronunciation,
    examplePali: examplePali,
    exampleVi: exampleVi,
  );
}

// ──────────────────────────────────────────────────────────────
// DAY 1 – Lý thuyết Phân từ + bảng biến cách pacanta
// ──────────────────────────────────────────────────────────────
LessonDay getLesson14Day1() => LessonDay(
      id: 'lesson_14_day_1',
      dayNumber: 1,
      themeId: 'theme_14_participles',
      titleVi: 'Ngày 1 — Lý thuyết & Từ vựng: Các loại Phân từ',
      phases: [
        _buildDay1Phase1(),
        _buildDay1Phase2(),
        _buildDay1Phase3(),
        _buildDay1Phase4(),
        _buildDay1Phase5(),
        _buildDay1Phase6(),
      ],
    );

LessonPhase _buildDay1Phase1() {
  return LessonPhase(
    id: 'lesson14_phase1',
    phaseTypeStr: 'read_listen',
    titleVi: '📘 Lý thuyết: Các loại Phân từ',
    contentVi: '''
Hiện tại Chủ động Phân từ (Present Active Participle) được thành lập bằng cách thêm tiếp vĩ ngữ “anta” và “māna” sau gốc động từ.

• paca + anta = pacanta – đang nấu
• paca + māna = pacamāna – đang nấu

Các phân từ này BIẾN CÁCH và hòa hợp với danh từ/đại từ mà chúng bổ nghĩa về Tánh – Số – Cách.

Dùng để chỉ tính đồng thời của hành động. Nghĩa tương đương tiếng Anh: as, since, while, whilst – “trong khi, khi, vì”.

BẢNG BIẾN CÁCH pacanta – NAM TÁNH:

Số ít:
• CC: pacaṃ, pacanto
• HC: pacaṃ, paca, pacā
• ĐC: pacantaṃ
• SDC: pacatā, pacantena
• XXC: pacatā, pacantamhā, pacantasmā
• CĐC/STC: pacato, pacantassa
• ĐSC: pacati, pacante, pacantamhi, pacantasmiṃ

Số nhiều:
• CC/HC: pacanto, pacantā
• ĐC: pacante
• SDC/XXC: pacantebhi, pacantehi
• STC: pacataṃ, pacantānaṃ
• ĐSC: pacantesu

NỮ TÁNH: pacanta + ī = pacantī → biến cách như danh từ nữ -ī (Bài 10).

TRUNG TÁNH:
CC/HC số ít: pacaṃ
CC/HC số nhiều: pacantā, pacantāni
ĐC số ít: pacantaṃ / số nhiều: pacante, pacantāni

Còn lại giống Nam tánh.

Phân từ tận cùng -māna: biến cách như nara / kaññā / phala:
pacamāno (m), pacamānā (f), pacamānaṃ (n)
''',
    contentEn: '''
PRESENT ACTIVE PARTICIPLE – -anta / -māna

Add -anta or -māna to the verbal root.
• paca + anta  = pacanta  (cooking)
• paca + māna = pacamāna (cooking)

These participles decline in all three genders, agreeing with the noun they
qualify in gender, number, and case. They express simultaneous action:
"while, as, since".

Masculine declension of pacanta:
  sg. Nom. pacaṃ/pacanto; Acc. pacantaṃ; Ins. pacatā/pacantena;
      Abl. pacatā/pacantamhā/pacantasmā; Dat./Gen. pacato/pacantassa;
      Loc. pacati/pacante/pacantamhi/pacantasmiṃ.
  pl. Nom./Voc. pacanto/pacantā; Acc. pacante;
      Ins./Abl. pacantebhi/pacantehi; Gen. pacataṃ/pacantānaṃ; Loc. pacantesu.

Feminine: pacantī (like nārī). Neuter: sg. Nom./Voc. pacaṃ; pl. -ā/-āni.

The -māna participle declines like nara / kaññā / phala:
pacamāno (m), pacamānā (f), pacamānaṃ (n).
''',
    fabVocab: const [
      FabVocabItem(
          wordEn: 'pacanta / pacamāna',
          pronunciation: 'pa-chan-ta',
          wordVi: 'đang nấu',
          partOfSpeech: 'htpt'),
      FabVocabItem(
          wordEn: 'gacchanta / gacchamāna',
          pronunciation: 'gac-chan-ta',
          wordVi: 'đang đi',
          partOfSpeech: 'htpt'),
      FabVocabItem(
          wordEn: 'vadamāna',
          pronunciation: 'va-da-mā-na',
          wordVi: 'đang nói',
          partOfSpeech: 'htpt'),
      FabVocabItem(
          wordEn: 'passanta / passamāna',
          pronunciation: 'pas-san-ta',
          wordVi: 'đang thấy',
          partOfSpeech: 'htpt'),
      FabVocabItem(
          wordEn: 'bhuñjanta',
          pronunciation: 'bhun-jan-ta',
          wordVi: 'đang ăn',
          partOfSpeech: 'htpt'),
      FabVocabItem(
          wordEn: 'karonta / kurumana',
          pronunciation: 'ka-ron-ta',
          wordVi: 'đang làm',
          partOfSpeech: 'htpt'),
      FabVocabItem(
          wordEn: 'suṇanta',
          pronunciation: 'su-ṇan-ta',
          wordVi: 'đang nghe',
          partOfSpeech: 'htpt'),
    ],
    fabPhrases: const [
      FabPhraseItem(
          phrase: 'gacchanto puriso',
          meaning: 'người nam đang đi / người nam mà đang đi'),
      FabPhraseItem(
          phrase: 'gacchantassa purisassa',
          meaning: 'đến / của người nam đang đi – CĐC/STC'),
      FabPhraseItem(
          phrase: 'pacantī / pacamānā itthī',
          meaning: 'người nữ đang nấu'),
      FabPhraseItem(
          phrase: 'so vadamāno gacchati',
          meaning: 'anh ấy vừa nói vừa đi'),
      FabPhraseItem(
          phrase: 'patamānaṃ phalaṃ',
          meaning: 'trái cây đang rơi'),
      FabPhraseItem(
          phrase: 'rakkhīyamānaṃ nagaraṃ',
          meaning: 'thành phố đang được bảo vệ'),
      FabPhraseItem(
          phrase: 'Ahaṃ magge gacchanto taṃ purisaṃ passiṃ',
          meaning: 'Tôi thấy người đàn ông ấy trong khi tôi đang đi trên đường'),
    ],
  );
}

LessonPhase _buildDay1Phase2() {
  return LessonPhase(
    id: 'lesson14_phase2',
    phaseTypeStr: 'read_listen',
    titleVi: '📖 Từ vựng: Các loại Phân từ',
    contentVi: '''
Hiện tại Bị động Phân từ được thành lập bằng cách thêm tiếp vĩ ngữ Bị động “ya” giữa gốc động từ và “māna”.

Nếu tận cùng gốc là “a” hoặc “ā” → đổi thành “i”:

• paca + ya + māna = pacīyamāna – đang được nấu
• sū + ya + māna = sūyamāna – đang được nghe
→ rakkhīyamāna – đang được bảo vệ
→ kayiramāna / karīyamāna – đang được làm
→ desīyamāna – đang được thuyết
→ passīyamāna – đang được thấy
→ bhuñjīyamāna – đang được ăn
→ gacchīyamāna
→ pīyamāna – đang được uống

Cũng biến cách đầy đủ 3 tánh, hòa hợp Số – Cách.
''',
    contentEn: '''
PRESENT PASSIVE PARTICIPLE – -īyamāna

Insert the passive suffix -ya- between root and -māna. A final root vowel
-a or -ā is strengthened to -i-:
  paca + ya + māna → pacīyamāna (being cooked)
  sū   + ya + māna → sūyamāna   (being heard)

Examples: rakkhīyamāna (being protected), kayiramāna/karīyamāna (being done),
desīyamāna (being preached), passīyamāna (being seen), bhuñjīyamāna
(being eaten), gacchīyamāna, pīyamāna (being drunk).

Declines in all three genders, agreeing with the noun it qualifies.
''',
    fabVocab: const [
      FabVocabItem(
          wordEn: 'pacīyamāna',
          pronunciation: 'pa-cī-ya-mā-na',
          wordVi: 'đang được nấu',
          partOfSpeech: 'ht.bđ.pt'),
      FabVocabItem(
          wordEn: 'rakkhīyamāna',
          pronunciation: 'rak-khī-ya-mā-na',
          wordVi: 'đang được bảo vệ',
          partOfSpeech: 'ht.bđ.pt'),
      FabVocabItem(
          wordEn: 'sūyamāna',
          pronunciation: 'sū-ya-mā-na',
          wordVi: 'đang được nghe',
          partOfSpeech: 'ht.bđ.pt'),
      FabVocabItem(
          wordEn: 'karīyamāna / kayiramāna',
          pronunciation: 'ka-rī-ya-mā-na',
          wordVi: 'đang được làm',
          partOfSpeech: 'ht.bđ.pt'),
      FabVocabItem(
          wordEn: 'desīyamāna',
          pronunciation: 'de-sī-ya-mā-na',
          wordVi: 'đang được thuyết',
          partOfSpeech: 'ht.bđ.pt'),
    ],
    fabPhrases: const [
      FabPhraseItem(
          phrase: 'rakkhīyamānaṃ nagaraṃ',
          meaning: 'thành đang được bảo vệ'),
      FabPhraseItem(
          phrase: 'sūyamāna dhamma',
          meaning: 'Pháp đang được nghe'),
    ],
  );
}

LessonPhase _buildDay1Phase3() {
  return LessonPhase(
    id: 'lesson14_phase3',
    phaseTypeStr: 'read_listen',
    titleVi: '📘 Lý thuyết: Các loại Phân từ',
    contentVi: '''
Quá khứ Chủ động và Bị động Phân từ được thành lập bằng tiếp vĩ ngữ “ta” hoặc “na” sau gốc / thân động từ.

Nếu tận cùng gốc là “a” → thường đổi thành “i”.

Ví dụ:
• ñā + ta = ñāta – đã được biết
• su + ta = suta – đã được nghe
• paca + ta = pacita – đã được nấu
• rakkha + ta = rakkhita – đã được bảo vệ
• chidi + na = chinna – đã bị cắt
• bhidi + na = bhinna – đã bị vỡ

→ Cũng biến cách đầy đủ, hòa hợp Tánh–Số–Cách.
→ Thường dùng thay thế động từ, đôi khi kèm trợ động từ asa/atthi và hu/hoti.

Ví dụ:
• So gato. – Anh ấy đã đi / anh ấy là đã đi (hoti hiểu ngầm).
• Ṭhito naro – người nam đã đứng
• Ṭhitassa narassa – đến người nam đã đứng
• Ṭhitāya nāriyā – đến người nữ đã đứng
• Buddhena desito dhammo – Pháp đã được thuyết bởi Đức Phật
• Sissehi pucchitassa pañhassa – đến câu hỏi đã được hỏi bởi các học trò
''',
    contentEn: '''
PAST PARTICIPLE – -ta / -na

Add -ta or -na to the (guṇa-strengthened) root. A final -a becomes -i.
  ñā  + ta → ñāta   (known)
  su  + ta → suta   (heard)
  paca + ta → pacita (cooked)
  rakkha + ta → rakkhita (protected)
  chidi + na → chinna (cut)
  bhidi + na → bhinna (broken)

Declines fully, agreeing in gender/number/case. Often stands for a finite
verb, optionally with hoti/atthi as auxiliary.
  So gato = He has gone.
  Buddhena desito dhammo = The Dhamma preached by the Buddha.
''',
    fabVocab: const [
      FabVocabItem(
          wordEn: 'ñāta', pronunciation: 'ñā-ta', wordVi: 'đã được biết', partOfSpeech: 'qkpt'),
      FabVocabItem(
          wordEn: 'suta', pronunciation: 'su-ta', wordVi: 'đã được nghe', partOfSpeech: 'qkpt'),
      FabVocabItem(
          wordEn: 'pacita', pronunciation: 'pa-ci-ta', wordVi: 'đã được nấu', partOfSpeech: 'qkpt'),
      FabVocabItem(
          wordEn: 'rakkhita',
          pronunciation: 'rak-khi-ta',
          wordVi: 'đã được bảo vệ',
          partOfSpeech: 'qkpt'),
      FabVocabItem(
          wordEn: 'gata', pronunciation: 'ga-ta', wordVi: 'đã đi', partOfSpeech: 'qkpt'),
      FabVocabItem(
          wordEn: 'ṭhita', pronunciation: 'ṭhi-ta', wordVi: 'đã đứng', partOfSpeech: 'qkpt'),
      FabVocabItem(
          wordEn: 'chinna', pronunciation: 'chin-na', wordVi: 'đã bị cắt', partOfSpeech: 'qkpt'),
      FabVocabItem(
          wordEn: 'bhinna', pronunciation: 'bhin-na', wordVi: 'đã bị vỡ', partOfSpeech: 'qkpt'),
      FabVocabItem(
          wordEn: 'diṭṭha', pronunciation: 'diṭ-ṭha', wordVi: 'đã thấy', partOfSpeech: 'qkpt'),
      FabVocabItem(
          wordEn: 'bhutta', pronunciation: 'bhut-ta', wordVi: 'đã ăn', partOfSpeech: 'qkpt'),
      FabVocabItem(
          wordEn: 'kata', pronunciation: 'ka-ta', wordVi: 'đã làm', partOfSpeech: 'qkpt'),
      FabVocabItem(
          wordEn: 'pīta', pronunciation: 'pī-ta', wordVi: 'đã uống', partOfSpeech: 'qkpt'),
    ],
    fabPhrases: const [
      FabPhraseItem(
          phrase: 'So gato', meaning: 'anh ấy đã đi'),
      FabPhraseItem(
          phrase: 'Buddhena desito dhammo',
          meaning: 'Pháp đã được Đức Phật thuyết'),
      FabPhraseItem(
          phrase: 'ṭhitāya nāriyā',
          meaning: 'đến người nữ đã đứng – CĐC'),
    ],
  );
}

LessonPhase _buildDay1Phase4() {
  return LessonPhase(
    id: 'lesson14_phase4',
    phaseTypeStr: 'read_listen',
    titleVi: '📘 Lý thuyết: Các loại Phân từ',
    contentVi: '''
Khả năng Phân từ (Potential Participle) mang nghĩa “nên, cần phải, phải được”.

Thành lập bằng tiếp vĩ ngữ “tabba” (phổ biến nhất), thêm “anīya”, “ya”.

Nếu gốc tận cùng “a” → thường đổi thành “i”.

• dā + tabba = dātabba – nên / phải được cho
• ñā + tabba = ñātabba – nên được biết
• paca + tabba = pacitabba – nên được nấu
→ Cũng hòa hợp Tánh–Số–Cách.
→ Thường dùng với Sử Dụng Cách (tác nhân).

Ví dụ:
• Janako vanditabbo – người cha xứng đáng được đảnh lễ
• Jananī rakkhitabbā – người mẹ đáng được bảo vệ
• Cittaṃ rakkhitabbaṃ – tâm cần phải được hộ trì
• Tayā gantabbaṃ – bạn nên đi / bạn cần phải đi (SDC + KNPT trung tánh)
• Sāvakehi dhammo sotabbo – Pháp nên được nghe bởi các Thinh văn

Các dạng -anīya / -ya:
• karaṇīya – việc nên làm
• dassanīya – đáng được nhìn
• pūjanīya – đáng được cúng dường
''',
    contentEn: '''
POTENTIAL PARTICIPLE – -tabba / -anīya / -ya

Expresses “should be, must be, fit to be”.
Add -tabba (most common), -anīya, or -ya. A final -a becomes -i.
  dā   + tabba → dātabba   (should be given)
  ñā   + tabba → ñātabba   (should be known)
  paca + tabba → pacitabba (should be cooked)

Agrees in gender/number/case, and commonly takes the agent in the
Instrumental case:
  Tayā gantabbaṃ = You should go (Ins. + n. sg. potential participle).
  Sāvakehi dhammo sotabbo = The Dhamma should be heard by disciples.

-anīya / -ya forms: karaṇīya (duty, should be done), dassanīya (worth
seeing), pūjanīya (worthy of offerings).
''',
    fabVocab: const [
      FabVocabItem(
          wordEn: 'dātabba',
          pronunciation: 'dā-tab-ba',
          wordVi: 'nên được cho, phải cho',
          partOfSpeech: 'knpt'),
      FabVocabItem(
          wordEn: 'ñātabba',
          pronunciation: 'ñā-tab-ba',
          wordVi: 'nên được biết',
          partOfSpeech: 'knpt'),
      FabVocabItem(
          wordEn: 'pacitabba',
          pronunciation: 'pa-ci-tab-ba',
          wordVi: 'nên được nấu',
          partOfSpeech: 'knpt'),
      FabVocabItem(
          wordEn: 'kattabba / kātabba',
          pronunciation: 'kat-tab-ba',
          wordVi: 'nên làm, phải làm',
          partOfSpeech: 'knpt'),
      FabVocabItem(
          wordEn: 'gantabba',
          pronunciation: 'gan-tab-ba',
          wordVi: 'nên đi',
          partOfSpeech: 'knpt'),
      FabVocabItem(
          wordEn: 'sotabba',
          pronunciation: 'so-tab-ba',
          wordVi: 'nên nghe',
          partOfSpeech: 'knpt'),
      FabVocabItem(
          wordEn: 'desetabba',
          pronunciation: 'de-se-tab-ba',
          wordVi: 'nên thuyết',
          partOfSpeech: 'knpt'),
      FabVocabItem(
          wordEn: 'vanditabba',
          pronunciation: 'van-di-tab-ba',
          wordVi: 'xứng đáng đảnh lễ',
          partOfSpeech: 'knpt'),
      FabVocabItem(
          wordEn: 'rakkhitabba',
          pronunciation: 'rak-khi-tab-ba',
          wordVi: 'cần được bảo vệ',
          partOfSpeech: 'knpt'),
      FabVocabItem(
          wordEn: 'karaṇīya',
          pronunciation: 'ka-ra-ṇī-ya',
          wordVi: 'việc nên làm',
          partOfSpeech: 'knpt'),
    ],
    fabPhrases: const [
      FabPhraseItem(
          phrase: 'Puññaṃ kattabbaṃ, pāpaṃ na kātabbaṃ',
          meaning: 'Phước nên làm, ác không nên làm'),
      FabPhraseItem(
          phrase: 'Tayā gantabbaṃ',
          meaning: 'bạn nên đi – SDC + KNPT'),
      FabPhraseItem(
          phrase: 'Bhikkhūhi dhammo desetabbo',
          meaning: 'Pháp nên được thuyết bởi chư Tỳ-khưu'),
      FabPhraseItem(
          phrase: 'Cittaṃ rakkhitabbaṃ',
          meaning: 'tâm cần được hộ trì'),
    ],
  );
}

LessonPhase _buildDay1Phase5() {
  return LessonPhase(
    id: 'lesson14_phase5',
    phaseTypeStr: 'read_listen',
    titleVi: '📘 Lý thuyết: Các loại Phân từ',
    contentVi: '''
BẢNG TỔNG HỢP CÁC PHÂN TỪ QUAN TRỌNG:

dā – cho:
 HT chủ: denta
 HT bị: dīyamāna
 QK: dinna
 KN: dātabba

disa (1) thuyết / (2) thấy:
 HT: desenta, desamāna / passanta, passamāna
 HT bị: desīyamāna / passīyamāna
 QK: desita / diṭṭha
 KN: desetabba / passitabba

bhuja – ăn:
 bhuñjanta / bhuñjamāna – bhuñjīyamāna – bhutta – bhuñjitabba

gamu – đi:
 gacchanta / gacchamāna – gacchīyamāna – gata – gantabba

gaha – cầm, lấy:
 gaṇhanta / gaṇhamāna – gayhamāna – gahita – gahetabba

kara – làm:
 karonta / kurumana – kayiramāna / karīyamāna – kata – kattabba / kātabba

pā – uống:
 pibanta / pivanta / pibamāna – pīyamāna – pīta – pātabba

su – nghe:
 suṇanta / suṇamāna – sūyamāna – suta – sotabba / suṇitabba
''',
    contentEn: '''
PARTICIPLE TABLE (selected roots)
  dā (give):
    pres. act. denta; pres. pass. dīyamāna; past dinna; pot. dātabba
  disa (preach / see):
    desenta/desamāna & passanta/passamāna;
    desīyamāna / passīyamāna; desita / diṭṭha; desetabba / passitabba
  bhuja (eat): bhuñjanta/bhuñjamāna – bhuñjīyamāna – bhutta – bhuñjitabba
  gamu (go): gacchanta/gacchamāna – gacchīyamāna – gata – gantabba
  gaha (take): gaṇhanta/gaṇhamāna – gayhamāna – gahita – gahetabba
  kara (do): karonta/kurumana – kayiramāna/karīyamāna – kata – kattabba/kātabba
  pā (drink): pibanta/pivanta/pibamāna – pīyamāna – pīta – pātabba
  su (hear): suṇanta/suṇamāna – sūyamāna – suta – sotabba/suṇitabba
''',
    fabVocab: const [
      FabVocabItem(
          wordEn: 'atthi',
          pronunciation: 'at-thi',
          wordVi: 'có, là, thì',
          partOfSpeech: 'đt'),
      FabVocabItem(
          wordEn: 'aviheṭhayanta',
          pronunciation: 'a-vi-he-ṭha-yan-ta',
          wordVi: 'không tổn hại – htpt',
          partOfSpeech: 'htpt'),
      FabVocabItem(
          wordEn: 'bhūta',
          pronunciation: 'bhū-ta',
          wordVi: 'đã được, đã sanh; chúng sanh',
          partOfSpeech: 'qkpt/n'),
      FabVocabItem(
          wordEn: 'carati',
          pronunciation: 'ca-ra-ti',
          wordVi: 'đi lang thang; thực hành',
          partOfSpeech: 'đt'),
      FabVocabItem(
          wordEn: 'khaggavisāṇakappa',
          pronunciation: 'khag-ga-vi-sā-ṇa-kap-pa',
          wordVi: 'như tê giác (sống một mình)',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'nidhāya',
          pronunciation: 'ni-dhā-ya',
          wordVi: 'sau khi đặt xuống, đã từ bỏ',
          partOfSpeech: 'bbqkpt'),
      FabVocabItem(
          wordEn: 'pema',
          pronunciation: 'pe-ma',
          wordVi: 'tình yêu, luyến ái',
          partOfSpeech: 'n.'),
      FabVocabItem(
          wordEn: 'sahāya',
          pronunciation: 'sa-hā-ya',
          wordVi: 'người bạn',
          partOfSpeech: 'm'),
      FabVocabItem(
          wordEn: 'taṇhā',
          pronunciation: 'taṇ-hā',
          wordVi: 'tham ái',
          partOfSpeech: 'f'),
      FabVocabItem(
          wordEn: 'upasaṅkamati',
          pronunciation: 'u-pa-saṅ-ka-ma-ti',
          wordVi: 'lại gần, tiếp cận',
          partOfSpeech: 'đt'),
    ],
    fabPhrases: const [],
  );
}

LessonPhase _buildDay1Phase6() {
  return LessonPhase(
    id: 'lesson14_phase6',
    phaseTypeStr: 'listening_quiz',
    titleVi: '🎧 Quiz: Các loại Phân từ',
    contentVi:
        'Chọn đáp án đúng để phân biệt Hiện tại Chủ động / Bị động, Quá khứ, Khả năng Phân từ.',
    contentEn:
        'Choose the correct answer to distinguish present active / passive, past, and potential participles.',
    questions: const [
      QuizQuestion(
        id: 'lesson14_q01',
        questionText: 'pacanto, gacchanto, vadamāno thuộc loại Phân từ nào?',
        options: [
          'Hiện tại Chủ động Phân từ – anta / māna',
          'Hiện tại Bị động Phân từ – īyamāna',
          'Quá khứ Phân từ – ta / na',
          'Khả năng Phân từ – tabba',
        ],
        correctIndex: 0,
        practiceNumber: 'practice1',
      ),
      QuizQuestion(
        id: 'lesson14_q02',
        questionText: 'pacīyamāna, rakkhīyamāna, sūyamāna là:',
        options: [
          'Quá khứ Phân từ',
          'Hiện tại Bị động Phân từ – ya + māna, a→i',
          'Khả năng Phân từ',
          'Danh động từ',
        ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
      QuizQuestion(
        id: 'lesson14_q03',
        questionText: 'ñāta, suta, gata, ṭhita, kata – hậu tố nào?',
        options: [
          'anta / māna',
          'tabba / anīya',
          'ta / na – Quá khứ Phân từ, a thường → i',
          'īyamāna',
        ],
        correctIndex: 2,
        practiceNumber: 'practice1',
      ),
      QuizQuestion(
        id: 'lesson14_q04',
        questionText: 'dātabba, ñātabba, kattabba, gantabba mang nghĩa gì?',
        options: [
          'đang …',
          'đã …',
          'đang được …',
          'nên / cần phải … – Khả năng Phân từ',
        ],
        correctIndex: 3,
        practiceNumber: 'practice1',
      ),
      QuizQuestion(
        id: 'lesson14_q05',
        questionText: 'Trong “Buddhena desito dhammo”, desito là:',
        options: [
          'Hiện tại Chủ động',
          'Quá khứ Bị động Phân từ, hòa hợp với dhammo (nam, CC số ít)',
          'Khả năng Phân từ',
          'Động từ chia Hiện tại',
        ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
      QuizQuestion(
        id: 'lesson14_q06',
        questionText: '“Tayā gantabbaṃ” – cấu trúc ngữ pháp đúng là:',
        options: [
          'Chủ Cách + động từ chia',
          'Sử Dụng Cách (tác nhân) + Khả năng Phân từ trung tánh',
          'Định Sở Cách Tuyệt đối',
          'Hiện tại Phân từ',
        ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
      QuizQuestion(
        id: 'lesson14_q07',
        questionText: '“Mayi gate so āgato.” – Mayi gate là cấu trúc gì?',
        options: [
          'Quá khứ Phân từ thường',
          'Tuyệt đối Định Sở Cách – Locative Absolute: khi tôi đã đi / sau khi tôi đi',
          'Khả năng Phân từ',
          'Hiện tại Bị động',
        ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
    ],
    fabAnswers: const [
      FabAnswerItem(
          en: 'Q1 → A: -anta/-māna = Present Active Participle.',
          vi: '1) anta/māna = Hiện tại Chủ động Phân từ. Biến cách như pacanta.'),
      FabAnswerItem(
          en: 'Q2 → B: -īyamāna = Present Passive.',
          vi: '2) īyamāna = Hiện tại Bị động. a/ā → i + ya + māna.'),
      FabAnswerItem(
          en: 'Q3 → C: -ta/-na = Past Participle.',
          vi: '3) ta/na = Quá khứ Phân từ. a→i: paca→pacita.'),
      FabAnswerItem(
          en: 'Q4 → D: -tabba/-anīya/-ya = Potential.',
          vi: '4) tabba/anīya/ya = Khả năng Phân từ: “nên, phải”.'),
      FabAnswerItem(
          en: 'Q5 → B: Past participle agrees with dhammo.',
          vi: '5) QKPT hòa hợp Tánh–Số–Cách với danh từ bổ nghĩa.'),
      FabAnswerItem(
          en: 'Q6 → B: Ins. (agent) + Potential Participle.',
          vi: '6) KNPT + SDC chỉ tác nhân: Tayā / mayā / bhikkhūhi + -tabbaṃ.'),
      FabAnswerItem(
          en: 'Q7 → B: Locative Absolute construction.',
          vi: '7) Tuyệt đối Định Sở Cách: Danh từ + Phân từ ở ĐSC, diễn tả “khi / sau khi / mặc dù”.'),
    ],
    fabVocab: const [],
    fabPhrases: const [],
  );
}

// ──────────────────────────────────────────────────────────────
// DAY 2 – Luyện dịch Exercise 14 + Locative Absolute
// ──────────────────────────────────────────────────────────────
LessonDay getLesson14Day2() => LessonDay(
      id: 'lesson_14_day_2',
      dayNumber: 2,
      themeId: 'theme_14_participles',
      titleVi: 'Ngày 2 — Luyện tập: Các loại Phân từ',
      phases: [
        _buildDay2MindGame(),
        _buildDay2Quiz(),
      ],
    );

LessonPhase _buildDay2MindGame() {
  return LessonPhase(
    id: 'lesson14_phase7',
    phaseTypeStr: 'mind_game',
    titleVi: '🧠 Ghép câu: Các loại Phân từ',
    contentVi:
        'Nhấn câu tiếng Việt → nói to tiếng Pāḷi → kiểm tra đáp án. Chú ý các câu Tuyệt đối Định Sở Cách.',
    mixedSegments: const [
      // 1
      MixedSegment(
          text: '1. “Như vậy tôi nghe.” / “Tôi đã được nghe như vầy.”',
          isVietnamese: true,
          answer: 'Evaṃ me sutaṃ.'),
      MixedSegment(text: 'Evaṃ me sutaṃ.\n\n', isVietnamese: false),
      // 2 – Locative Absolute
      MixedSegment(
          text: '2. Khi tôi đã đi / Sau khi tôi đi, anh ấy đã đến. [Tuyệt đối ĐSC]',
          isVietnamese: true,
          answer: 'Mayi gate so āgato.'),
      MixedSegment(text: 'Mayi gate so āgato.\n\n', isVietnamese: false),
      // 3
      MixedSegment(
          text: '3. Cái gì đã được làm bởi hắn?',
          isVietnamese: true,
          answer: 'Kiṃ tena kataṃ?'),
      MixedSegment(text: 'Kiṃ tena kataṃ?\n\n', isVietnamese: false),
      // 4
      MixedSegment(
          text: '4. Anh ấy, đang nói lời khen của vị ấy, đã đến gần tôi.',
          isVietnamese: true,
          answer: 'So tassa vaṇṇaṃ bhaṇamāno maṃ upasaṃkami.'),
      MixedSegment(
          text: 'So tassa vaṇṇaṃ bhaṇamāno maṃ upasaṃkami.\n\n',
          isVietnamese: false),
      // 5
      MixedSegment(
          text: '5. Tôi đang đi trên đường, thấy con chim đậu trên cây ấy.',
          isVietnamese: true,
          answer: 'Ahaṃ magge gacchanto tasmiṃ rukkhe nisinnaṃ sakuṇaṃ passiṃ.'),
      MixedSegment(
          text:
              'Ahaṃ magge gacchanto tasmiṃ rukkhe nisinnaṃ sakuṇaṃ passiṃ.\n\n',
          isVietnamese: false),
      // 6
      MixedSegment(
          text: '6. Pháp nên được thuyết cho đời bởi chư Tỳ-khưu.',
          isVietnamese: true,
          answer: 'Bhikkhūhi lokassa dhammo desetabbo.'),
      MixedSegment(
          text: 'Bhikkhūhi lokassa dhammo desetabbo.\n\n',
          isVietnamese: false),
      // 7
      MixedSegment(
          text: '7. Phước nên làm, ác không nên làm.',
          isVietnamese: true,
          answer: 'Puññaṃ kattabbaṃ, pāpaṃ na kātabbaṃ.'),
      MixedSegment(
          text: 'Puññaṃ kattabbaṃ, pāpaṃ na kātabbaṃ.\n\n',
          isVietnamese: false),
      // 8
      MixedSegment(
          text: '8. Hôm nay tôi nên đi bằng con đường này.',
          isVietnamese: true,
          answer: 'Ajja etena maggena mayā gantabbaṃ.'),
      MixedSegment(
          text: 'Ajja etena maggena mayā gantabbaṃ.\n\n', isVietnamese: false),
      // 9
      MixedSegment(
          text: '9. Tất cả những người nữ đang nghe Pháp đã ngồi trong hội trường ấy.',
          isVietnamese: true,
          answer:
              'Sabbā itthiyo dhammaṃ sunantiyo etāya sālāya nisīdiṃsu.'),
      MixedSegment(
          text:
              'Sabbā itthiyo dhammaṃ sunantiyo etāya sālāya nisīdiṃsu.\n\n',
          isVietnamese: false),
      // 10
      MixedSegment(
          text: '10. Các bậc hiền trí, đi đến xứ nào, ở nơi ấy được cúng dường.',
          isVietnamese: true,
          answer:
              'Paṇḍitā yaṃ yaṃ desaṃ bhajanti tattha tatth’eva pūjitā honti.'),
      MixedSegment(
          text:
              'Paṇḍitā yaṃ yaṃ desaṃ bhajanti tattha tatth’eva pūjitā honti.\n\n',
          isVietnamese: false),
      // 11
      MixedSegment(
          text: '11. Các sự thật đã được Đức Phật giác ngộ, tôi cũng cần phải giác ngộ.',
          isVietnamese: true,
          answer: 'Buddhena bujjhitāni saccāni mayā’pi bujjhitabbāni.'),
      MixedSegment(
          text: 'Buddhena bujjhitāni saccāni mayā’pi bujjhitabbāni.\n\n',
          isVietnamese: false),
      // 12 – Locative Absolute
      MixedSegment(
          text:
              '12. Khi bạn đi đến đời sau, phước hay tội bạn đã làm sẽ đi cùng bạn. [gacchante – ĐSC]',
          isVietnamese: true,
          answer:
              'Paraṃ lokaṃ gacchante tayā kataṃ puññaṃ vā pāpaṃ vā tayā saddhiṃ gacchati.'),
      MixedSegment(
          text:
              'Paraṃ lokaṃ gacchante tayā kataṃ puññaṃ vā pāpaṃ vā tayā saddhiṃ gacchati.\n\n',
          isVietnamese: false),
      // 13
      MixedSegment(
          text: '13. Dù đứng, ngồi, đi hay nằm, tôi rải tâm từ đến mọi chúng sanh.',
          isVietnamese: true,
          answer:
              'Ṭhito vā nisinno vā gacchanto vā sayanto vā ahaṃ sabbesu sattesu mettaṃ karomi.'),
      MixedSegment(
          text:
              'Ṭhito vā nisinno vā gacchanto vā sayanto vā ahaṃ sabbesu sattesu mettaṃ karomi.\n\n',
          isVietnamese: false),
      // 14
      MixedSegment(
          text:
              '14. Đối với các bệnh nhân đang ở tại y xá, thuốc nên cho trước, sau mới cho những người khác.',
          isVietnamese: true,
          answer:
              'Vejjasālāya vasantānaṃ gilānānaṃ pure osadhaṃ dātabbaṃ, pacchā aparesaṃ dātabbaṃ.'),
      MixedSegment(
          text:
              'Vejjasālāya vasantānaṃ gilānānaṃ pure osadhaṃ dātabbaṃ, pacchā aparesaṃ dātabbaṃ.\n\n',
          isVietnamese: false),
      // 15
      MixedSegment(
          text: '15. Không biết “phải làm gì?”, họ đứng trước mặt tôi.',
          isVietnamese: true,
          answer: 'Kiṃ nu kattabban’ti ajānantā te mama purato aṭṭhaṃsu.'),
      MixedSegment(
          text: 'Kiṃ nu kattabban’ti ajānantā te mama purato aṭṭhaṃsu.\n\n',
          isVietnamese: false),
      // 16 – kệ pema
      MixedSegment(
          text: '16. “Do ái sinh sầu, do ái sinh sợ; với người thoát ái, không sầu, sợ đâu?”',
          isVietnamese: true,
          answer:
              'Pemato jāyati soko – pemato jāyati bhayaṃ; Pemato vippamuttassa – n’atthi soko kuto bhayaṃ.'),
      MixedSegment(
          text:
              'Pemato jāyati soko – pemato jāyati bhayaṃ; Pemato vippamuttassa – n’atthi soko kuto bhayaṃ.\n\n',
          isVietnamese: false),
      // 17 – kệ taṇhā
      MixedSegment(
          text: '17. “Do tham ái sinh sầu …”',
          isVietnamese: true,
          answer:
              'Taṇhāya jāyati soko – taṇhāya jāyati bhayaṃ; Taṇhāya vippamuttassa – n’atthi soko kuto bhayaṃ.'),
      MixedSegment(
          text:
              'Taṇhāya jāyati soko – taṇhāya jāyati bhayaṃ; Taṇhāya vippamuttassa – n’atthi soko kuto bhayaṃ.\n\n',
          isVietnamese: false),
      // 18
      MixedSegment(
          text:
              '18. Một vị trời … đang hỏi, Đức Phật đã thuyết pháp như vầy.',
          isVietnamese: true,
          answer:
              'Pucchantassa devassa Buddho evaṃ dhammaṃ desesi.'),
      MixedSegment(
          text: 'Pucchantassa devassa Buddho evaṃ dhammaṃ desesi.\n\n',
          isVietnamese: false),
      // 19
      MixedSegment(
          text: '19. Chúng tôi thấy họ đang tắm trên sông Hằng.',
          isVietnamese: true,
          answer: 'Te gaṅgāyaṃ nahāyante mayaṃ passimhā.'),
      MixedSegment(
          text: 'Te gaṅgāyaṃ nahāyante mayaṃ passimhā.\n\n',
          isVietnamese: false),
      // 20 – kệ Khaggavisāṇa
      MixedSegment(
          text:
              '20. “Bỏ gậy với mọi loài, không hại một ai, không cầu con, huống bạn – hãy sống riêng như tê giác.”',
          isVietnamese: true,
          answer:
              'Sabbesu bhūtesu nidhāya daṇḍaṃ Aviheṭhayaṃ aññataram’pi tesaṃ Na puttam’iccheyya kuto sahāyaṃ Eko care Khaggavisāṇakappo.'),
      MixedSegment(
          text:
              'Sabbesu bhūtesu nidhāya daṇḍaṃ Aviheṭhayaṃ aññataram’pi tesaṃ Na puttam’iccheyya kuto sahāyaṃ Eko care Khaggavisāṇakappo.\n\n',
          isVietnamese: false),
      // 21-35 rút gọn trọng điểm
      MixedSegment(
          text: '21. Cái này đã được làm bởi bạn.',
          isVietnamese: true,
          answer: 'Idaṃ te kataṃ.'),
      MixedSegment(text: 'Idaṃ te kataṃ.\n\n', isVietnamese: false),
      MixedSegment(
          text: '22. Cành cây đã bị cắt bởi hắn.',
          isVietnamese: true,
          answer: 'Sākhā tena chinnā.'),
      MixedSegment(text: 'Sākhā tena chinnā.\n\n', isVietnamese: false),
      MixedSegment(
          text: '23. Tôi thấy người nam đang đi trên đường.',
          isVietnamese: true,
          answer: 'Ahaṃ visikhāya gacchantaṃ naraṃ passiṃ.'),
      MixedSegment(
          text: 'Ahaṃ visikhāya gacchantaṃ naraṃ passiṃ.\n\n', isVietnamese: false),
      MixedSegment(
          text: '24. Cô ấy đứng đảnh lễ vị ẩn sĩ.',
          isVietnamese: true,
          answer: 'Sā muniṃ vandantī aṭṭhāsi.'),
      MixedSegment(
          text: 'Sā muniṃ vandantī aṭṭhāsi.\n\n', isVietnamese: false),
      MixedSegment(
          text: '25. Khi vị ấy đã đi đến trường, tôi đã về nhà. [TUYỆT ĐỐI ĐSC]',
          isVietnamese: true,
          answer: 'Tasmiṃ pāṭhasālaṃ gate ahaṃ gharaṃ āgato.'),
      MixedSegment(
          text: 'Tasmiṃ pāṭhasālaṃ gate ahaṃ gharaṃ āgato.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '26. Những con khỉ ăn trái cây đã rụng.',
          isVietnamese: true,
          answer: 'Kapayo patitāni phalāni khādiṃsu.'),
      MixedSegment(
          text: 'Kapayo patitāni phalāni khādiṃsu.\n\n', isVietnamese: false),
      MixedSegment(
          text: '27. Họ thấy cô ấy đang ngồi trong hội trường.',
          isVietnamese: true,
          answer: 'Te sālāya nisīdantiṃ taṃ passiṃsu.'),
      MixedSegment(
          text: 'Te sālāya nisīdantiṃ taṃ passiṃsu.\n\n', isVietnamese: false),
      MixedSegment(
          text: '28. Bạn không nên tắm ở sông Hằng.',
          isVietnamese: true,
          answer: 'Tayā gaṅgāyaṃ na nahātabbaṃ.'),
      MixedSegment(
          text: 'Tayā gaṅgāyaṃ na nahātabbaṃ.\n\n', isVietnamese: false),
      MixedSegment(
          text: '29. Việc gì nên làm, hãy để anh ấy làm việc ấy.',
          isVietnamese: true,
          answer: 'Yaṃ kattabbaṃ taṃ so karotu.'),
      MixedSegment(
          text: 'Yaṃ kattabbaṃ taṃ so karotu.\n\n', isVietnamese: false),
      MixedSegment(
          text: '30. Bạn nên thấy nó như vậy.',
          isVietnamese: true,
          answer: 'Evaṃ te taṃ daṭṭhabbaṃ.'),
      MixedSegment(
          text: 'Evaṃ te taṃ daṭṭhabbaṃ.\n\n', isVietnamese: false),
      MixedSegment(
          text: '31. Những quyển sách tôi đã viết không nên đưa cho họ.',
          isVietnamese: true,
          answer: 'Mayā likhitāni potthakāni na tesaṃ dātabbāni.'),
      MixedSegment(
          text: 'Mayā likhitāni potthakāni na tesaṃ dātabbāni.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '32. Bạn tôi thấy viên ngọc đã bị ném vào lửa.',
          isVietnamese: true,
          answer: 'Mayhaṃ mittāni aggimhi khittaṃ maṇiṃ passiṃsu.'),
      MixedSegment(
          text: 'Mayhaṃ mittāni aggimhi khittaṃ maṇiṃ passiṃsu.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '33. Đang nghe Pháp đã được chư Tỳ-khưu thuyết, tôi ngồi trên đất.',
          isVietnamese: true,
          answer:
              'Bhikkhūhi desitaṃ dhammaṃ suṇanto ahaṃ bhūmiyaṃ nisīdiṃ.'),
      MixedSegment(
          text: 'Bhikkhūhi desitaṃ dhammaṃ suṇanto ahaṃ bhūmiyaṃ nisīdiṃ.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '34. Người có đức nên làm nhiều phước.',
          isVietnamese: true,
          answer: 'Guṇavantehi bahuṃ puññaṃ kattabbaṃ.'),
      MixedSegment(
          text: 'Guṇavantehi bahuṃ puññaṃ kattabbaṃ.\n\n', isVietnamese: false),
      MixedSegment(
          text: '35. Người nam thấy những bệnh nhân đang uống thuốc được vị y sĩ cho.',
          isVietnamese: true,
          answer:
              'Narā vajjena dinnaṃ osadhaṃ pivante gilāne passiṃsu.'),
      MixedSegment(
          text:
              'Narā vajjena dinnaṃ osadhaṃ pivante gilāne passiṃsu.',
          isVietnamese: false),
    ],
    fabPhrases: const [
      FabPhraseItem(
          phrase: 'Mayi gate / Tasmiṃ gate – Tuyệt đối Định Sở Cách',
          meaning:
              'Khi tôi / khi vị ấy đã đi – Locative Absolute: Chủ ngữ + QKPT ở ĐSC, diễn tả thời gian/điều kiện'),
      FabPhraseItem(
          phrase: 'gacchante tayā / pucchantassa devassa',
          meaning:
              'khi bạn đang đi / khi vị trời đang hỏi – ĐSC / STC tuyệt đối'),
      FabPhraseItem(
          phrase: 'Tayā / mayā / bhikkhūhi + -tabbaṃ',
          meaning: 'Tác nhân SDC + Khả năng Phân từ – “nên / phải được …”'),
      FabPhraseItem(
          phrase: 'Buddhena desito dhammo',
          meaning: 'SDC tác nhân + QKPT – Pháp đã được Đức Phật thuyết'),
    ],
  );
}

LessonPhase _buildDay2Quiz() {
  return LessonPhase(
    id: 'lesson14_phase8',
    phaseTypeStr: 'listening_quiz',
    titleVi: '🎧 Quiz: Các loại Phân từ',
    contentVi:
        'Nhận diện Locative Absolute và Khả năng Phân từ trong Exercise 14.',
    contentEn:
        'Recognise the Locative Absolute and Potential Participle in Exercise 14.',
    questions: const [
      QuizQuestion(
        id: 'lesson14_q08',
        questionText: '“Mayi gate so āgato.” – Phân tích đúng?',
        options: [
          'Mayi = CC, gate = Hiện tại Phân từ',
          'Mayi gate = ĐSC số ít: “khi tôi đã đi” – Tuyệt đối Định Sở Cách',
          'Khả năng Phân từ',
          'Bị động Hiện tại',
        ],
        correctIndex: 1,
        practiceNumber: 'practice2',
      ),
      QuizQuestion(
        id: 'lesson14_q09',
        questionText:
            '“Tasmiṃ pāṭhasālaṃ gate ahaṃ gharaṃ āgato.” – tasmiṃ gate ?',
        options: [
          'Chủ Cách số nhiều',
          'Định Sở Cách số ít – Tuyệt đối ĐSC: khi vị ấy đã đi đến trường',
          'Sử Dụng Cách',
          'Khả năng Phân từ',
        ],
        correctIndex: 1,
        practiceNumber: 'practice2',
      ),
      QuizQuestion(
        id: 'lesson14_q10',
        questionText: '“Bhikkhūhi dhammo desetabbo.” – desetabbo là gì?',
        options: [
          'Quá khứ Phân từ',
          'Hiện tại Phân từ',
          'Khả năng Phân từ – nam CC số ít, hòa hợp với dhammo',
          'Động từ mệnh lệnh',
        ],
        correctIndex: 2,
        practiceNumber: 'practice2',
      ),
      QuizQuestion(
        id: 'lesson14_q11',
        questionText: 'Chọn cặp đúng: QKPT – nghĩa',
        options: [
          'gato – nên đi',
          'suta – đang nghe',
          'bhutta – đã ăn',
          'gantabba – đã đi',
        ],
        correctIndex: 2,
        practiceNumber: 'practice2',
      ),
      QuizQuestion(
        id: 'lesson14_q12',
        questionText: '“Ajānantā” trong câu 15 là loại phân từ nào?',
        options: [
          'Quá khứ Phân từ phủ định',
          'Hiện tại Chủ động Phân từ của ñā với a- phủ định: không biết, đang không biết',
          'Khả năng Phân từ',
          'Bị động',
        ],
        correctIndex: 1,
        practiceNumber: 'practice2',
      ),
      QuizQuestion(
        id: 'lesson14_q13',
        questionText:
            '“Vejjasālāya vasantānaṃ gilānānaṃ … dātabbaṃ” – vasantānaṃ là?',
        options: [
          'QKPT – STC số nhiều',
          'Hiện tại Phân từ – STC số nhiều: của những bệnh nhân đang ở',
          'KNPT',
          'Danh động từ',
        ],
        correctIndex: 1,
        practiceNumber: 'practice2',
      ),
      QuizQuestion(
        id: 'lesson14_q14',
        questionText: '“Narā … pivante gilāne passiṃsu.” – pivante ?',
        options: [
          'ĐC số nhiều nam – Hiện tại Phân từ: những bệnh nhân đang uống',
          'CC số ít',
          'QKPT',
          'KNPT',
        ],
        correctIndex: 0,
        practiceNumber: 'practice2',
      ),
    ],
    fabAnswers: const [
      FabAnswerItem(
          en: 'Q8 → B: Locative Absolute.',
          vi: 'Locative Absolute = Danh từ/đại từ + Phân từ ở Định Sở Cách, độc lập cú pháp, nghĩa “khi / vì / mặc dù”.'),
      FabAnswerItem(
          en: 'Q9 → B: tasmiṃ gate = when he had gone.',
          vi: 'Mayi gate / tasmiṃ gate / gacchante – mẫu kinh điển Bài 14.'),
      FabAnswerItem(
          en: 'Q10 → C: Potential Participle agrees with dhammo.',
          vi: 'KNPT luôn hòa hợp Tánh–Số–Cách với chủ ngữ logic (bị động). Tác nhân ở SDC.'),
      FabAnswerItem(
          en: 'Q11 → C: bhutta = eaten.',
          vi: 'QKPT: gata, suta, bhutta, kata, ṭhita – đã …'),
      FabAnswerItem(
          en: 'Q12 → B: a-jānantā = not knowing.',
          vi: 'HTPT phủ định: a-jānantā = không biết / đang không biết.'),
      FabAnswerItem(
          en: 'Q13 → B: vasantānaṃ = of those staying.',
          vi: 'HTPT vasanta ở STC số nhiều: “của những người đang ở”.'),
      FabAnswerItem(
          en: 'Q14 → A: pivante = drinking (acc. pl. m.).',
          vi: 'pivanta (pibanta) ở ĐC số nhiều nam bổ nghĩa cho gilāne.'),
    ],
    fabVocab: const [],
    fabPhrases: const [],
  );
}

// ──────────────────────────────────────────────────────────────
// AGGREGATE
// ──────────────────────────────────────────────────────────────
List<LessonDay> getLesson14Data() => [
      getLesson14Day1(),
      getLesson14Day2(),
    ];

class Lesson14Bundle {
  static LessonMeta meta = getLesson14Meta();
  static LessonDay day1 = getLesson14Day1();
  static LessonDay day2 = getLesson14Day2();
  static List<LessonDay> all = getLesson14Data();
}
