// lesson_18.dart
// Bài học số 18: Danh từ đuôi -u (satthu/pitu/mātu) & Thức Bị Khiến (Causal)
// An Elementary Pāḷi Course – Nārada Mahāthera – trang 168-179
//
//  - Nhóm agent nouns (-tar): satthu, pitu, mātu, bhātu, dhītu, bhattu,
//    dātu, jetu, kattu, nattu, ñātu, netu, sotu, vattu.
//  - Thức Bị Khiến (Kārita / Causal): Vuddhi (a→ā, i→e/aya, u→o/ava)
//    với 4 hậu tố -e/-aya/-āpe/-āpaya.
//  - 28 câu mind game + 8 câu quiz Day2.
// ---------------------------------------------------------------------------

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

// ──────────────────────────────────────────────────────────────
// LESSON META
// ──────────────────────────────────────────────────────────────
LessonMeta getLesson18Meta() => const LessonMeta(
      id: 'theme_18_satthu_causal',
      lessonNumber: 18,
      titleVi: 'Danh từ -tar (satthu) & Thức Bị Khiến',
      titleEn: 'Agent Nouns in -tar (satthu) & Causal (Kārita)',
      iconEmoji: '🌀',
      colorValue: 0xFF6A0DAD,
      description:
          'Biến cách satthu/pitu/mātu; thức bị khiến Vuddhi với -e/-aya/-āpe/-āpaya',
      complexity: LessonComplexity.medium,
      estimatedMinutes: 40,
    );

// ──────────────────────────────────────────────────────────────
// VOCABULARY
// ──────────────────────────────────────────────────────────────
final kLesson18Vocab = <PaliVocabModel>[
  // ---------- Agent nouns (-tar, masc, trừ mātu/dhītu là nữ) ----------
  _v(1, 'satthu', 'masc_u', 'Đạo Sư, bậc Thầy', 'satthar / satthu (teacher)',
      'sat-thu', 'Satthā dhammaṃ deseti.', 'Đạo Sư thuyết Pháp.'),
  _v(2, 'satthāra', 'masc_u', 'vị Thầy (CC số ít -ā)', 'satthāra (nom. sg.)',
      'sat-thā-ra', '', ''),
  _v(3, 'satthāraṃ', 'masc_u', 'vị Thầy (ĐC số ít)', 'satthāraṃ (acc. sg.)',
      'sat-thā-raṃ', 'Ahaṃ satthāraṃ passāmi.', 'Tôi thấy Đạo Sư.'),
  _v(4, 'satthunā', 'masc_u', 'bởi Đạo Sư (SDC)', 'satthunā (inst. sg.)',
      'sat-thu-nā', 'Satthunā desito dhammo.', 'Pháp được Đạo Sư thuyết giảng.'),
  _v(5, 'satthussa', 'masc_u', 'của Đạo Sư (STC)', 'satthussa (gen. sg.)',
      'sat-thus-sa', 'Satthussa sāvako.', 'Đệ tử của Đạo Sư.'),
  _v(6, 'satthari', 'masc_u', 'ở/nơi Đạo Sư (ĐSC)', 'satthari (loc. sg.)',
      'sat-tha-ri', 'Satthari sannipatitvā.', 'Sau khi tụ tập nơi Đạo Sư.'),
  _v(7, 'pitu', 'masc_u', 'người cha', 'pitar / pitu (father)', 'pi-tu',
      'Pitā puttaṃ passati.', 'Người cha thấy người con.'),
  _v(8, 'mātu', 'fem_u', 'người mẹ', 'mātar / mātu (mother)', 'mā-tu',
      'Mātā dārakaṃ poseti.', 'Người mẹ nuôi đứa con.'),
  _v(9, 'bhātu', 'masc_u', 'anh/em trai', 'bhātar / bhātu (brother)', 'bhā-tu',
      'Bhātā bhattuṃ passati.', 'Người anh thấy người em (chồng).'),
  _v(10, 'dhītu', 'fem_u', 'con gái', 'dhītar / dhītu (daughter)', 'dhī-tu',
      'Dhītā mātaraṃ passati.', 'Người con gái thấy mẹ.'),
  _v(11, 'bhattu', 'masc_u', 'chồng', 'bhattar / bhattu (husband)', 'bhat-tu',
      'Bhattā bhariyāya dhanam deti.', 'Chồng cho của cải cho vợ.'),
  _v(12, 'dātu', 'masc_u', 'người cho', 'dātar / dātu (giver)', 'dā-tu',
      'Dātā dānaṃ deti.', 'Người cho ban phát vật thí.'),
  _v(13, 'jetu', 'masc_u', 'người chiến thắng', 'jetar / jetu (conqueror)',
      'je-tu', 'Jetā māraṃ jināti.', 'Người chiến thắng chiến thắng Ma vương.'),
  _v(14, 'kattu', 'masc_u', 'người làm, tác nhân', 'kattar / kattu (doer)',
      'kat-tu', 'Kattā kammaṃ karoti.', 'Người làm thực hiện công việc.'),
  _v(15, 'nattu', 'masc_u', 'cháu trai (con của con gái)',
      'nattar / nattu (grandson)', 'nat-tu',
      'Nattā mātaraṃ passati.', 'Cháu thấy bà.'),
  _v(16, 'ñātu', 'masc_u', 'thân quyến, người biết',
      'ñātar / ñātu (kinsman / knower)', 'ñā-tu',
      'Ñātā ñātike passati.', 'Thân quyến thấy bà con.'),
  _v(17, 'netu', 'masc_u', 'người dẫn dắt', 'netar / netu (leader)', 'ne-tu',
      'Netā maggaṃ desetā.', 'Người dẫn dắt chỉ đường.'),
  _v(18, 'sotu', 'masc_u', 'người nghe', 'sotar / sotu (hearer)', 'so-tu',
      'Sotā dhammaṃ suṇāti.', 'Người nghe lắng nghe Pháp.'),
  _v(19, 'vattu', 'masc_u', 'người nói', 'vattar / vattu (speaker)', 'vat-tu',
      'Vattā dhammaṃ katheti.', 'Người nói thuật lại Pháp.'),

  // ---------- Causal verbs (Kārita) ----------
  _v(20, 'pāceti', 'verb_caus', 'khiến nấu, bảo nấu', 'pāceti (causes to cook)',
      'pā-ce-ti', 'So dāsaṃ odanaṃ pāceti.', 'Anh ấy bảo người hầu nấu cơm.'),
  _v(21, 'pācayati', 'verb_caus', 'khiến nấu (dạng -aya)',
      'pācayati (causes to cook)', 'pā-ca-ya-ti', '', ''),
  _v(22, 'pācāpeti', 'verb_caus', 'làm cho nấu (-āpe)',
      'pācāpeti (causes to cook)', 'pā-cā-pe-ti',
      'So purisaṃ pācāpeti.', 'Anh ấy khiến người đàn ông nấu.'),
  _v(23, 'pācāpayati', 'verb_caus', 'làm cho nấu (-āpaya)',
      'pācāpayati (causes to cook)', 'pā-cā-pa-ya-ti', '', ''),
  _v(24, 'dāpeti', 'verb_caus', 'khiến cho, bảo cho (từ dā)',
      'dāpeti (causes to give)', 'dā-pe-ti',
      'So purisaṃ dānaṃ dāpeti.', 'Ông bảo người đàn ông bố thí.'),
  _v(25, 'dāpayati', 'verb_caus', 'làm cho cho (dā + āpaya)',
      'dāpayati (causes to give)', 'dā-pa-ya-ti', '', ''),
  _v(26, 'chindeti', 'verb_caus', 'khiến cắt (từ chidi)',
      'chindeti (causes to cut)', 'chin-de-ti',
      'So purisaṃ rukkhaṃ chindeti.', 'Ông bảo người đàn ông chặt cây.'),
  _v(27, 'chindāpeti', 'verb_caus', 'làm cho cắt',
      'chindāpeti (causes to cut)', 'chin-dā-pe-ti', '', ''),
  _v(28, 'nayāpeti', 'verb_caus', 'khiến dẫn (từ nī/ne)',
      'nayāpeti (causes to lead)', 'na-yā-pe-ti',
      'So gāmaṃ purisaṃ nayāpeti.', 'Ông khiến người đàn ông dẫn đến làng.'),
  _v(29, 'gameti', 'verb_caus', 'khiến đi (từ gamu)',
      'gameti (causes to go)', 'ga-me-ti',
      'So purisaṃ gharā gameti.', 'Ông khiến người đàn ông đi khỏi nhà.'),
  _v(30, 'sāveti', 'verb_caus', 'làm cho nghe, tuyên bố (từ su)',
      'sāveti (causes to hear / proclaims)', 'sā-ve-ti',
      'Bhikkhu dhammaṃ sāveti.', 'Vị tỳ-khưu tuyên thuyết Pháp.'),
  _v(31, 'bhāveti', 'verb_caus', 'tu tập, làm cho trở thành (từ bhū)',
      'bhāveti (develops / cultivates)', 'bhā-ve-ti',
      'Bhikkhu samathaṃ vipassanaṃ bhāveti.',
      'Vị tỳ-khưu tu tập chỉ và quán.'),
  _v(32, 'vāceti', 'verb_caus', 'khiến nói, đọc lại (từ vaca)',
      'vāceti (causes to speak / recite)', 'vā-ce-ti',
      'Ācariyo sissamantepāsaṃ vāceti.',
      'Giáo sư bảo đệ tử tụng tập kinh điển.'),
  _v(33, 'kāreti', 'verb_caus', 'khiến làm (từ kar)',
      'kāreti (causes to do)', 'kā-re-ti',
      'So dāsaṃ kammaṃ kāreti.', 'Ông bảo người hầu làm việc.'),
  _v(34, 'kārāpeti', 'verb_caus', 'làm cho làm',
      'kārāpeti (causes to do)', 'kā-rā-pe-ti',
      'Rājā purise kārāpeti.', 'Đức vua khiến người dân làm (việc).'),
  _v(35, 'desāpeti', 'verb_caus', 'khiến thuyết (từ disa/des)',
      'desāpeti (causes to preach)', 'de-sā-pe-ti',
      'Satthā sāvakānaṃ dhammaṃ desāpeti.',
      'Đạo Sư khiến các thinh văn thuyết Pháp.'),
  _v(36, 'nahāpeti', 'verb_caus', 'tắm cho, khiến tắm (từ nahā)',
      'nahāpeti (causes to bathe)', 'na-hā-pe-ti',
      'Mātā dārakaṃ nahāpeti.', 'Người mẹ tắm cho đứa bé.'),
  _v(37, 'vasāpeti', 'verb_caus', 'khiến ở (từ vas)',
      'vasāpeti (causes to dwell)', 'va-sā-pe-ti',
      'Satthā bhikkhū ārāme vasāpeti.',
      'Đạo Sư cho các tỳ-khưu ở trong tịnh xá.'),
  _v(38, 'bodheti', 'verb_caus', 'khiến thức tỉnh (từ budh)',
      'bodheti (awakens / instructs)', 'bo-dhe-ti',
      'Satthā sattānaṃ bodheti.',
      'Đạo Sư thức tỉnh các chúng sanh.'),
  _v(39, 'uggaṇhāpeti', 'verb_caus', 'khiến học (từ uggaṇhāti)',
      'uggaṇhāpeti (causes to learn)', 'ug-gaṇ-hā-pe-ti',
      'Ācariyo sisse mante uggaṇhāpeti.',
      'Thầy giáo bảo học trò học chú thuật.'),
  _v(40, 'ovadati', 'verb_pres', 'khuyên dạy', 'ovadati (admonishes)',
      'o-va-da-ti', 'Satthā bhikkhū ovadati.', 'Đạo Sư khuyên dạy chư tỳ-khưu.'),

  // ---------- Support vocabulary ----------
  _v(41, 'sāvaka', 'masc_a', 'thanh văn, đệ tử', 'sāvaka (disciple)',
      'sā-va-ka', 'Sāvako dhammaṃ suṇāti.', 'Thinh văn nghe Pháp.'),
  _v(42, 'raṭṭha', 'neuter_a', 'đất nước, vương quốc',
      'raṭṭha (country / kingdom)', 'raṭ-ṭha',
      'Rañño raṭṭhaṃ dīghaṃ hoti.', 'Vương quốc của vua thì rộng lớn.'),
  _v(43, 'atithi', 'masc_i', 'khách, vị khách', 'atithi (guest)', 'a-ti-thi',
      'Atithinā bhattaṃ dātabbaṃ.', 'Phải cho khách ăn cơm.'),
  _v(44, 'nattā', 'fem_a', 'cháu gái (con của con gái)',
      'nattā (granddaughter)', 'nat-tā',
      'Nattā mātaraṃ passati.', 'Cháu gái thấy bà.'),
  _v(45, 'lekhana', 'neuter_a', 'việc viết, thư', 'lekhana (writing)',
      'le-kha-na', 'Lekhanaṃ likhati.', 'Nó viết bức thư.'),
  _v(46, 'aggi', 'masc_i', 'lửa', 'aggi (fire)', 'ag-gi',
      'Aggi vanasmiṃ ḍahati.', 'Lửa thiêu rừng.'),
  _v(47, 'dārū', 'neuter_u', 'củi, gỗ', 'dārū (wood / firewood)', 'dā-rū',
      'Dārū aggiṃ jhāpeti.', 'Củi nhóm lửa.'),
  _v(48, 'dāna', 'neuter_a', 'sự bố thí', 'dāna (giving / alms)', 'dā-na',
      'Dānaṃ dadāti.', 'Ông bố thí.'),
  _v(49, 'sālā', 'fem_a', 'giảng đường, trại', 'sālā (hall)', 'sā-lā',
      'Sālāyaṃ dhammaṃ desenti.', 'Họ thuyết Pháp trong giảng đường.'),
  _v(50, 'putta', 'masc_a', 'con trai', 'putta (son)', 'put-ta',
      'Pitā puttaṃ sineti.', 'Cha thương con trai.'),
  _v(51, 'dhīta', 'fem_a', 'con gái (tương đương dhītu)',
      'dhītā (daughter)', 'dhī-tā',
      'Mātā dhītāya hiraññaṃ deti.', 'Mẹ cho con gái vàng bạc.'),
  _v(52, 'bhariyā', 'fem_a', 'vợ', 'bhariyā (wife)', 'bha-ri-yā',
      'Bhariyā bhattuṃ passati.', 'Vợ thấy chồng.'),
  _v(53, 'dāraka', 'masc_a', 'đứa trẻ, con nít', 'dāraka (boy / child)',
      'dā-ra-ka', 'Dārako mātaraṃ passati.', 'Đứa trẻ thấy mẹ.'),
  _v(54, 'rājā', 'masc_a', 'vua', 'rājā (king)', 'rā-jā',
      'Rājā raṭṭhaṃ pāleti.', 'Vua trị vì đất nước.'),
  _v(55, 'ācariya', 'masc_a', 'thầy giáo, tôn sư', 'ācariya (teacher)',
      'ā-ca-ri-ya', 'Ācariyo sissaṃ vāceti.', 'Thầy giáo bảo đệ tử học bài.'),
  _v(56, 'sisya', 'masc_a', 'đệ tử, học trò', 'sisya (pupil)', 'sis-sya',
      'Sisyo ācariyam upasaṅkamati.', 'Học trò đi đến thầy giáo.'),
  _v(57, 'bhikkhu', 'masc_u', 'tỳ-khưu, tỳ-khưu', 'bhikkhu (monk)', 'bhib-khu',
      'Bhikkhu bhāveti.', 'Vị tỳ-khưu tu tập.'),
  _v(58, 'ghara', 'neuter_a', 'nhà cửa', 'ghara (house)', 'gha-ra',
      'Gharā nikkhamati.', 'Ông đi ra khỏi nhà.'),
  _v(59, 'ārāma', 'masc_a', 'tịnh xá, khu vườn (tăng)', 'ārāma (monastery)',
      'ā-rā-ma', 'Ārāme bhikkhū vasanti.', 'Chư tỳ-khưu ở tịnh xá.'),
  _v(60, 'dhamma', 'masc_a', 'Pháp, Giáo pháp', 'dhamma (Dhamma / teaching)',
      'dham-ma', 'Dhammo desīyati.', 'Pháp được thuyết giảng.'),
];

/// Helper ngắn gọn tạo một PaliVocabModel với đủ tham số.
PaliVocabModel _v(int id, String root, String paradigmId, String wordVi,
    String wordEn, String pronunciation, String examplePali, String exampleVi) {
  final num = id.toString().padLeft(3, '0');
  return PaliVocabModel(
    id: 'pv_L18_$num',
    root: root,
    paradigmId: paradigmId,
    wordVi: wordVi,
    wordEn: wordEn,
    lessonId: 'lesson_18',
    pronunciation: pronunciation,
    examplePali: examplePali,
    exampleVi: exampleVi,
  );
}

// ──────────────────────────────────────────────────────────────
// DAY 1 – Lý thuyết: satthu/pitu/mātu declension + Causal/Kārita
// ──────────────────────────────────────────────────────────────
LessonDay getLesson18Day1() => LessonDay(
      id: 'lesson_18_day_1',
      dayNumber: 1,
      themeId: 'theme_18_satthu_causal',
      titleVi: 'Ngày 1 — Lý thuyết & Từ vựng: Danh từ -tar & Thức Bị Khiến',
      phases: [
        _buildDay1Phase1(),
        _buildDay1Phase2(),
      ],
    );

LessonPhase _buildDay1Phase1() => LessonPhase(
      id: 'lesson_18_d1_p1',
      phaseTypeStr: 'read_listen',
      titleVi: '📘 Lý thuyết: Danh từ -tar & Thức Bị Khiến',
      contentVi: '''
NHÓM DANH TỪ CHỈ TÁC NHÂN (-tar)

Nhóm này gốc kết thúc bằng phụ âm -r (bất quy tắc), ở Pāḷi được qui về mẫu -u trong
nhiều cách nhưng mang nét riêng ở Chỉ Cách (nom.) -ā (satthā, pitā, mātā). Đa số
là giống đực (masculine), RIÊNG "mātu" (mẹ) và "dhītu" (con gái) là giống cái
(feminine). Biến cách giống nhau ở cả hai giống, chỉ khác hòa hợp tính từ/phân từ.

BẢNG BIẾN CÁCH SATTHU (nam tánh – Đạo Sư) ──────────────────────
Cách          Số ít              Số nhiều
Chỉ cách (CC) satthā             satthāro / satthā
Đối cách (ĐC) satthāraṃ          satthāre / satthāro
Công cụ (SDC) satthunā           satthūhi / satthārehi
Xuất xứ (XXC) satthunā / satthumhā  satthūhi
Sở hữu (STC) satthussa           satthūnaṃ / satthārānaṃ
Cảnh dữ (CĐC) satthussa / satthāya  satthūnaṃ
Định sở (ĐSC) satthari / satthusmiṃ satthūsu / satthāresu
Cách gọi      sattha / satthā    satthāro

Pitu (cha), bhātu (anh/em), bhattu (chồng), dātu (người cho), jetu (người
thắng), kattu (người làm), nattu (cháu trai), ñātu (thân quyến), netu (người
dẫn), sotu (người nghe), vattu (người nói) biến cách GIỐNG HỆT satthu, chỉ thay
gốc (pitu → pitā, pitaraṃ, pitunā…). Mātu (mẹ), dhītu (con gái) cùng mẫu nhưng
là giống cái (fem.): mātā, mātaraṃ, mātarāya, mātari…

VÍ DỤ:
  • Pitā puttaṃ passati.  – Người cha thấy con trai.
  • Mātā mātaraṃ (puttaṃ) poseti. – Người mẹ nuôi con.
  • Satthā sāvakehi saddhiṃ bhāsati. – Đạo Sư nói với các đệ tử.
  • Bhātā bhattunā saddhiṃ gacchati. – Anh đi cùng chồng/em trai.
  • Dhītā mātuyā piyaṃ bhaṇati. – Con gái nói lời thương với mẹ.
  • Satthussa sāvakā dhammaṃ bhāventi. – Các đệ tử của Đạo Sư tu tập Pháp.
  • Pitusmā (pitunā) dhanam labhati. – Nó nhận của cải từ cha.
  • Rājā atīthīnaṃ bhakkhaṃ dāpeti. – Vua khiến các khách được cho đồ ăn.
''',
      contentEn: '''
Agent nouns in -tar (satthu = teacher). Masc. except mātu/dhītu (fem.).
Nom.sg. -ā (satthā, pitā, mātā); acc.sg. -āraṃ; inst. -unā; gen. -ussa; loc. -ari.
Examples: pitā (father), mātā (mother), bhātā (brother), bhartā (husband), dātā
(giver), jetā (conqueror), kattā (doer), nattā (grandson), ñātā (kinsman), netā
(leader), sotā (hearer), vattā (speaker).
''',
      fabVocab: [],
      fabPhrases: [],
    );

LessonPhase _buildDay1Phase2() => LessonPhase(
      id: 'lesson_18_d1_p2',
      phaseTypeStr: 'read_listen',
      titleVi: '📖 Từ vựng: Danh từ -tar & Thức Bị Khiến',
      contentVi: '''
THỨC BỊ KHIẾN (KĀRITA / CAUSAL)

Khi muốn diễn tả "khiến/làm cho/bảo ai làm gì" (cause/have someone do sth), Pāḷi
thêm vào GỐC ĐỘNG TỪ một trong 4 hậu tố:  -e, -aya, -āpe, -āpaya.
Trước khi thêm hậu tố, nguyên tắ gốc được VUDDHI (tăng cường âm):
  • a  → ā     (paca → pāce-)
  • i/ī → e/aya (chidi → chinde-/chindaya-; nī → ne-/naya-)
  • u/ū → o/ava (gamu → game-/gamava-; su → so-/sāva- [*sāve-])

BỐN DẠNG KĀRITA (ý nghĩa tương đương):
  (1) -e       : pāceti, dāpeti, chindeti, gameti, sāveti, bhāveti, vāceti,
                 kāreti, bodheti.
  (2) -aya     : pācayati, dāpayati, chindayati.
  (3) -āpe     : pācāpeti, chindāpeti, nayāpeti, desāpeti, vasāpeti, nahāpeti,
                 uggaṇhāpeti, kārāpeti.
  (4) -āpaya   : pācāpayati, dāpāpayati, kārāpayati.

CÚ PHÁP CÂU KHIẾN:
  Chủ ngữ 1 (người ra lệnh) [CC] +
    người bị bảo làm          [ĐC] +
    vật / việc bị làm         [ĐC] +
    động từ Kārita            (hòa hợp với chủ ngữ 1)
  So dāsaṃ odanaṃ pāceti.  = Ông ấy khiến/nói người hầu nấu cơm.
                              (dāsaṃ ở ĐC, odanaṃ ở ĐC, pāceti hòa hợp với so)

BẢNG ĐỘNG TỪ KĀRITA THÔNG DỤNG ─────────────────────────────────
Gốc       Nghĩa          Kārita                      Nghĩa bị khiến
paca      nấu            pāceti / pācayati /         khiến nấu
                         pācāpeti / pācāpayati
dā        cho            dāpeti / dāpayati           khiến cho
chidi     cắt            chindeti / chindāpeti       khiến cắt
nī/ne     dẫn            neti / nayati / nayāpeti    khiến dẫn
gamu      đi             gameti / gamāpeti           khiến đi
su (suṇā) nghe           sāveti / suṇāpeti           khiến nghe, tuyên bố
bhū       là / trở thành bhāveti                     tu tập, khiến trở thành
vaca      nói            vāceti / vācāpeti           khiến nói / tụng
kar       làm            kāreti / kārāpeti /         khiến làm
                         kārāpayati
nahā      tắm            nahāpeti / nahāpayati       tắm cho, khiến tắm
vas       ở              vasāpeti / vasāpayati       khiến ở
disa/des  thuyết         deseti / desāpeti           khiến thuyết
budh      thức tỉnh      bodheti / bodhāpeti         khiến giác ngộ
uggaṇhā   học            uggaṇhāpeti                 khiến học

VÍ DỤ:
  • Rājā purise kārāpeti.              – Đức vua khiến dân làm (việc).
  • Mātā puttaṃ bhattaṃ bhuñjāpeti.    – Mẹ cho con ăn cơm.
  • Satthā sāvakānaṃ dhammaṃ deseti.   – Đạo Sư thuyết Pháp cho chúng đệ tử.
  • So dārakaṃ gharā gameti.           – Ông khiến đứa bé rời nhà.
  • Ācariyo sissaṃ lekhaṃ lekhati? Không – ācariyo sissaṃ lekhanāpeti.
                                       – Thầy khiến trò viết thư.
  • Aggim dārehi jhāpeti (jhāpeti).    – Lửa làm đống củi cháy.
  • Bhikkhu samatha-vipassanaṃ bhāveti.– Tỳ-khưu tu chỉ-quán.
  • Nātā ñātake passati; ñātakā naṃ passanti. – Thân quyến thấy quyến thuộc.
''',
      contentEn: '''
Causal (Kārita): add -e/-aya/-āpe/-āpaya after Vuddhi strengthening of the root
vowel (a→ā; i→e/aya; u→o/ava). Agent of the caused action goes to accusative.
Examples: pāceti (causes to cook), dāpeti (causes to give), chindeti (causes to
cut), nayāpeti (causes to lead), gameti (causes to go), sāveti (proclaims),
bhāveti (develops/cultivates), vāceti (recites/causes to speak), kāreti/kārāpeti
(causes to do), desāpeti (causes to preach), nahāpeti (bathes another),
vasāpeti (causes to dwell), bodheti (awakens), uggaṇhāpeti (causes to learn).
''',
      fabVocab: [],
      fabPhrases: [],
    );

// ──────────────────────────────────────────────────────────────
// DAY 2 – Thực hành Mind Game 28 câu + Quiz 8 câu
// ──────────────────────────────────────────────────────────────
LessonDay getLesson18Day2() => LessonDay(
      id: 'lesson_18_day_2',
      dayNumber: 2,
      themeId: 'theme_18_satthu_causal',
      titleVi: 'Ngày 2 — Luyện tập: Danh từ -tar & Thức Bị Khiến',
      phases: [
        _buildDay2Phase1(),
        _buildDay2Phase2(),
      ],
    );

LessonPhase _buildDay2Phase1() => LessonPhase(
      id: 'lesson_18_d2_p1',
      phaseTypeStr: 'mind_game',
      titleVi: '🧠 Ghép câu: 28 câu',
      contentVi:
          'Đọc từng câu Pāḷi, xác định (a) danh từ -tar ở cách nào, (b) động từ Kārita thuộc dạng nào (-e/-aya/-āpe/-āpaya) và gốc nguyên thủy; sau đó dịch sang tiếng Việt.',
      contentEn:
          'For each sentence identify the -tar noun case and the Causal form with its root, then translate.',
      mixedSegments: const [
        MixedSegment(text: '1.  Satthā dhammaṃ deseti.\n\n'),
        MixedSegment(text: '→ Đạo Sư thuyết Pháp.\n\n', isVietnamese: true),
        MixedSegment(text: '2.  Ahaṃ satthāraṃ passāmi.\n\n'),
        MixedSegment(text: '→ Tôi thấy Đạo Sư.\n\n', isVietnamese: true),
        MixedSegment(text: '3.  Satthunā desito dhammo mahāpakatānaṃ hitāya hoti.\n\n'),
        MixedSegment(text:
            '→ Pháp được Đạo Sư thuyết thì đem lại lợi ích cho nhiều người.\n\n', isVietnamese: true),
        MixedSegment(text: '4.  Satthussa sāvakā arahanto honti.\n\n'),
        MixedSegment(text: '→ Các đệ tử của Đạo Sư thành bậc A-la-hán.\n\n', isVietnamese: true),
        MixedSegment(text: '5.  Pitā puttaṃ sinehena passati.\n\n'),
        MixedSegment(text: '→ Người cha nhìn con trai với lòng thương.\n\n', isVietnamese: true),
        MixedSegment(text: '6.  Mātā dārakānaṃ bhattaṃ dāpeti.\n\n'),
        MixedSegment(text: '→ Người mẹ khiến (bảo cho) các đứa trẻ được cho cơm.\n\n', isVietnamese: true),
        MixedSegment(text: '7.  Bhātā bhattuṃ gharā gameti.\n\n'),
        MixedSegment(text: '→ Anh khiến chồng/em trai đi khỏi nhà.\n\n', isVietnamese: true),
        MixedSegment(text: '8.  Dhītā mātuyā gehe vasati.\n\n'),
        MixedSegment(text: '→ Con gái ở nhà của mẹ.\n\n', isVietnamese: true),
        MixedSegment(text: '9.  So dāsaṃ odanaṃ pāceti.\n\n'),
        MixedSegment(text: '→ Ông bảo người hầu nấu cơm (paca → pāceti).\n\n', isVietnamese: true),
        MixedSegment(text: '10. So purisaṃ odanaṃ pācāpeti.\n\n'),
        MixedSegment(text: '→ Ông khiến người đàn ông nấu cơm (hậu tố -āpe).\n\n', isVietnamese: true),
        MixedSegment(text: '11. Rājā paresaṃ dānaṃ dāpeti.\n\n'),
        MixedSegment(text: '→ Đức vua khiến người ta bố thí (dā → dāpeti).\n\n', isVietnamese: true),
        MixedSegment(text: '12. So purisaṃ rukkhaṃ chindeti.\n\n'),
        MixedSegment(text: '→ Ông bảo người đàn ông chặt cây (chidi → chindeti).\n\n', isVietnamese: true),
        MixedSegment(text: '13. Sā dārikaṃ gāmaṃ nayāpeti.\n\n'),
        MixedSegment(text: '→ Bà khiến đứa bé được dẫn đến làng (nī → nayāpeti).\n\n', isVietnamese: true),
        MixedSegment(text: '14. Kumāro assaṃ gharā gameti.\n\n'),
        MixedSegment(text: '→ Chàng trai khiến con ngựa đi khỏi nhà (gamu → gameti).\n\n', isVietnamese: true),
        MixedSegment(text: '15. Bhikkhu dhammabalaṃ sāveti.\n\n'),
        MixedSegment(text: '→ Vị tỳ-khưu tuyên thuyết sức mạnh Pháp (su → sāveti).\n\n', isVietnamese: true),
        MixedSegment(text: '16. Sāvakā maggabhavanaṃ bhāventi.\n\n'),
        MixedSegment(text:
            '→ Các thinh văn tu tập con đường và sự hữu (bhū → bhāveti).\n\n', isVietnamese: true),
        MixedSegment(text: '17. Ācariyo sissamantepāsaṃ vāceti.\n\n'),
        MixedSegment(text: '→ Vị thầy bảo học trò tụng tập kinh điển (vaca → vāceti).\n\n', isVietnamese: true),
        MixedSegment(text: '18. Rājā purise kārāpeti.\n\n'),
        MixedSegment(text: '→ Đức vua khiến người dân làm việc (kar → kārāpeti).\n\n', isVietnamese: true),
        MixedSegment(text: '19. Mātā dārakaṃ nahāpeti.\n\n'),
        MixedSegment(text: '→ Mẹ tắm cho đứa bé (nahā → nahāpeti).\n\n', isVietnamese: true),
        MixedSegment(text: '20. Satthā bhikkhū ārāme vasāpeti.\n\n'),
        MixedSegment(text: '→ Đạo Sư cho các tỳ-khưu ở tịnh xá (vas → vasāpeti).\n\n', isVietnamese: true),
        MixedSegment(text: '21. So sāvakānaṃ dhammaṃ desāpeti.\n\n'),
        MixedSegment(text: '→ Ông khiến các thinh văn thuyết Pháp (des → desāpeti).\n\n', isVietnamese: true),
        MixedSegment(text: '22. Bodhisatto mahājane bodheti.\n\n'),
        MixedSegment(text: '→ Bồ-tát thức tỉnh quần sanh (budh → bodheti).\n\n', isVietnamese: true),
        MixedSegment(text: '23. Ācariyo sisse mante uggaṇhāpeti.\n\n'),
        MixedSegment(text: '→ Thầy giáo bảo học trò học chú thuật (uggaṇhā → uggaṇhāpeti).\n\n', isVietnamese: true),
        MixedSegment(text: '24. Dātā dānaṃ daddallamānaṃ deti.\n\n'),
        MixedSegment(text: '→ Người cho ban phát một cách rạng rỡ.\n\n', isVietnamese: true),
        MixedSegment(text: '25. Jetā māraṃ senasahasrena sahā jināti.\n\n'),
        MixedSegment(text: '→ Bậc chiến thắng đánh bại Ma vương với ngàn quân.\n\n', isVietnamese: true),
        MixedSegment(text: '26. Sotā sotena suṇāti, vattetā katheti.\n\n'),
        MixedSegment(text: '→ Người nghe nghe bằng tai, người nói thuyết giảng.\n\n', isVietnamese: true),
        MixedSegment(text: '27. Atithīnaṃ seyyāsaṃ paññāpeti; so atithiṃ vasāpeti.\n\n'),
        MixedSegment(text: '→ Ông sắp xếp chỗ ở cho khách và mời khách lưu trú.\n\n', isVietnamese: true),
        MixedSegment(text:
            '28. Nattu nattāya saddhiṃ mātaraṃ passituṃ agamāsi.\n\n'),
        MixedSegment(text:
            '→ Cháu trai cùng cháu gái đi đến để gặp bà.\n\n', isVietnamese: true),
      ],
    );

LessonPhase _buildDay2Phase2() => LessonPhase(
      id: 'lesson_18_d2_p2',
      phaseTypeStr: 'listening_quiz',
      titleVi: '🎧 Quiz: Danh từ -tar & Thức Bị Khiến',
      contentVi:
          'Chọn đáp án đúng dựa trên kiến thức biến cách satthu/pitu/mātu và thức bị khiến Kārita (Vuddhi + 4 hậu tố).',
      contentEn:
          'Choose the best answer based on satthu declension and Causal (Kārita) patterns.',
      questions: [
        QuizQuestion(
          id: 'lesson18_q1',
          questionText:
              'Danh từ nào sau đây biến cách giống satthu nhưng là giống CÁI (feminine)?',
          options: [
            'pitu (cha)',
            'mātu (mẹ) và dhītu (con gái)',
            'bhattu (chồng)',
            'bhātu (anh/em)',
          ],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson18_q2',
          questionText:
              'Từ "satthāraṃ" ở dạng nào và cách nào?',
          options: [
            'CC số ít',
            'ĐC số ít của satthu',
            'STC số nhiều',
            'SDC số ít',
          ],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson18_q3',
          questionText:
              'Dạng SDC (công cụ cách) số ít của satthu là?',
          options: [
            'satthussa',
            'satthari',
            'satthunā',
            'satthā',
          ],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson18_q4',
          questionText:
              'Động từ pāceti, pācayati, pācāpeti, pācāpayati đều là dạng Kārita của gốc nào?',
          options: [
            'paca (nấu)',
            'pā (uống)',
            'pad (đi)',
            'pat (rơi)',
          ],
          correctIndex: 0,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson18_q5',
          questionText:
              'Khi tạo Kārita, nguyên tắc gốc a được VUDDHI thành gì?',
          options: [
            'i',
            'u',
            'ā',
            'e',
          ],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson18_q6',
          questionText:
              'Câu "So dāsaṃ odanaṃ pāceti" – từ nào là người bị bảo làm?',
          options: [
            'so (ông ấy)',
            'dāsaṃ (người hầu, ĐC)',
            'odanaṃ (cơm)',
            'pāceti (nấu)',
          ],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson18_q7',
          questionText:
              'Từ nào là Kārita của √bhū (là/trở thành), nghĩa rất phổ thông "tu tập, vun bồi"?',
          options: [
            'bhāveti',
            'bhavati',
            'bhuñjati',
            'bodheti',
          ],
          correctIndex: 0,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson18_q8',
          questionText:
              'Hậu tố nào trong bốn hậu tố Kārita (-e, -aya, -āpe, -āpaya) thường tạo dạng "khiến gián tiếp / khiến người thứ ba ra lệnh" hơn cả?',
          options: [
            '-e',
            '-aya',
            '-āpe / -āpaya (causative of causative, khiến làm cho)',
            'Không có hậu tố nào',
          ],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
      ],
      fabAnswers: const [
        FabAnswerItem(
            en: 'Q1 → B: mātu (mother) and dhītu (daughter) are feminine; others are masculine.',
            vi: 'mātu (mẹ) và dhītu (con gái) là nữ tánh; còn lại (pitu, bhattu, bhātu, dātu…) giống đực.'),
        FabAnswerItem(
            en: 'Q2 → B: satthāraṃ = acc. sg. "the teacher".',
            vi: 'satthāraṃ là Đối cách số ít của satthu, nghĩa là "(thấy/gặp) Đạo Sư".'),
        FabAnswerItem(
            en: 'Q3 → C: satthunā = inst. sg. "by/with the teacher".',
            vi: 'satthunā là Công cụ cách (instrumentive) số ít: "do/bởi Đạo Sư".'),
        FabAnswerItem(
            en: 'Q4 → A: all from √pac "to cook" with Vuddhi a→ā.',
            vi: 'Bốn dạng pāceti/pācayati/pācāpeti/pācāpayati đều từ gốc paca (nấu), Vuddhi a→ā.'),
        FabAnswerItem(
            en: 'Q5 → C: a is strengthened to ā (paca→pāc-).',
            vi: 'Nguyên tắ a được Vuddhi thành ā (paca→pāce-); i→e/aya; u→o/ava.'),
        FabAnswerItem(
            en: 'Q6 → B: dāsaṃ (acc.) is the person caused to cook.',
            vi: 'dāsaṃ ở ĐC là người bị bảo nấu; odanaṃ là đối tượng (cơm); so là chủ ngữ ra lệnh.'),
        FabAnswerItem(
            en: 'Q7 → A: bhāveti = cultivates/develops (e.g., samatha, vipassanā).',
            vi: 'bhāveti (từ √bhū) nghĩa "làm cho trở thành, tu tập, vun bồi" – rất phổ biến với samatha/vipassanā.'),
        FabAnswerItem(
            en: 'Q8 → C: -āpe/-āpaya are the "double causal" – have someone else make someone do.',
            vi: 'Cặp hậu tố -āpe/-āpaya mang sắc thái "bị khiến kép": ra lệnh cho người này bảo người kia làm (causative of causative).'),
      ],
      fabVocab: [],
      fabPhrases: [],
    );

// ──────────────────────────────────────────────────────────────
// AGGREGATE
// ──────────────────────────────────────────────────────────────
List<LessonDay> getLesson18Data() => [
      getLesson18Day1(),
      getLesson18Day2(),
    ];

class Lesson18Bundle {
  static LessonMeta meta = getLesson18Meta();
  static LessonDay day1 = getLesson18Day1();
  static LessonDay day2 = getLesson18Day2();
  static List<LessonDay> all = getLesson18Data();
}
