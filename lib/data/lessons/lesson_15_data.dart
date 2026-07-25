// lesson_15.dart
// Bài học số 15: Đại từ Chỉ định (tiếp theo) và Tính từ
// An Elementary Pāḷi Course – Nārada Mahāthera – trang 140-151
// ---------------------------------------------------------------------------

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

// ──────────────────────────────────────────────────────────────
// LESSON META
// ──────────────────────────────────────────────────────────────
LessonMeta getLesson15Meta() => const LessonMeta(
      id: 'theme_15_ima_amu_adjectives',
      lessonNumber: 15,
      titleVi: 'Đại từ Chỉ định ima, amu & Tính từ',
      titleEn: 'Demonstratives ima/amu & Adjectives',
      iconEmoji: '🎨',
      colorValue: 0xFF2E8B57,
      description:
          'ima (này), amu (kia), tính từ hòa hợp Tánh-Số-Cách, hậu tố vantu/mantu',
    );

// ──────────────────────────────────────────────────────────────
// VOCABULARY (tổng hợp FabVocabItem → PaliVocabModel)
// ──────────────────────────────────────────────────────────────
final kLesson15Vocab = <PaliVocabModel>[
  // --- Demonstrative ima (này) ---
  _v(1, 'ayaṃ', 'pron_dem', 'này – CC số ít nam/nữ', 'ayaṃ', 'a-yaṃ',
      'Ayaṃ puriso gacchati.', 'Người đàn ông này đi.'),
  _v(2, 'imaṃ', 'pron_dem', 'này – ĐC', 'imaṃ', 'i-maṃ', 'Imaṃ purisaṃ passāmi.',
      'Tôi thấy người đàn ông này.'),
  _v(3, 'iminā / anena', 'pron_dem', 'bởi / với cái này – SDC',
      'iminā / anena', 'i-mi-nā', '', ''),
  _v(4, 'imamhā / imasmā / asmā', 'pron_dem', 'từ cái này – XXC',
      'imamhā / imasmā / asmā', 'i-mas-mā', '', ''),
  _v(5, 'imassa / assa', 'pron_dem', 'của / cho cái này – STC/CĐC',
      'imassa / assa', 'i-mas-sa', '', ''),
  _v(6, 'imamhi / imasmiṃ / asmiṃ', 'pron_dem', 'ở nơi này – ĐSC',
      'imamhi / imasmiṃ / asmiṃ', 'i-mam-hi', 'Imasmiṃ ghare vasati.',
      'Ông ấy sống ở nhà này.'),
  _v(7, 'ime', 'pron_dem', 'những cái này – CC/ĐC số nhiều nam', 'ime', 'i-me',
      'Ime narā gacchanti.', 'Những người đàn ông này đi.'),
  _v(8, 'imesaṃ / esaṃ', 'pron_dem', 'của những cái này', 'imesaṃ / esaṃ',
      'i-me-saṃ', '', ''),
  _v(9, 'imesu / esu', 'pron_dem', 'ở những cái này – ĐSC pl', 'imesu / esu',
      'i-me-su', 'Imesu gāmesu vasanti.', 'Họ sống ở những làng này.'),
  _v(10, 'idaṃ', 'pron_dem', 'cái này – trung tánh', 'idaṃ / imaṃ', 'i-daṃ',
      'Idaṃ phalaṃ.', 'Đây là trái cây.'),
  _v(11, 'imā / imāyo', 'pron_dem', 'những cái này – nữ CC/ĐC pl',
      'imā / imāyo', 'i-mā', 'Imā itthiyo.', 'Những người nữ này.'),
  _v(12, 'imāya', 'pron_dem', 'bởi / từ / đến cái này – nữ SDC/XXC/CĐC',
      'imāya', 'i-mā-ya', 'Imāya itthiyā dānaṃ dinnaṃ.',
      'Bố thí đã được cho bởi người nữ này.'),
  _v(13, 'imissā / assā', 'pron_dem', 'của người nữ này', 'imissā / assā',
      'i-mis-sā', '', ''),
  _v(14, 'imissaṃ / imāyaṃ / assaṃ', 'pron_dem', 'ở người nữ này – ĐSC',
      'imissaṃ / imāyaṃ / assaṃ', 'i-mis-saṃ', '', ''),

  // --- Demonstrative amu (kia, ấy) ---
  _v(15, 'asu / amuko', 'pron_dem', 'kia, ấy – CC nam sg', 'asu / amuko', 'a-su',
      'Asu puriso.', 'Người đàn ông kia.'),
  _v(16, 'amuṃ', 'pron_dem', 'kia – ĐC', 'amuṃ', 'a-muṃ', '', ''),
  _v(17, 'amunā', 'pron_dem', 'bởi người kia – SDC', 'amunā', 'a-mu-nā', '', ''),
  _v(18, 'amumhā / amusmā', 'pron_dem', 'từ người kia – XXC',
      'amumhā / amusmā', 'a-mus-mā', '', ''),
  _v(19, 'amussa / amuno', 'pron_dem', 'của người kia', 'amussa / amuno',
      'a-mus-sa', '', ''),
  _v(20, 'amumhi / amusmiṃ', 'pron_dem', 'ở người kia – ĐSC',
      'amumhi / amusmiṃ', 'a-mum-hi', '', ''),
  _v(21, 'aduṃ', 'pron_dem', 'cái kia – trung tánh', 'aduṃ', 'a-duṃ', '', ''),
  _v(22, 'amuyā', 'pron_dem', 'bởi / từ người nữ kia', 'amuyā', 'a-mu-yā', '',
      ''),
  _v(23, 'amussā / amuyā', 'pron_dem', 'của người nữ kia', 'amussā / amuyā',
      'a-mus-sā', '', ''),
  _v(24, 'amū', 'pron_dem', 'những người kia – nam CC pl', 'amū', 'a-mū', '',
      ''),
  _v(25, 'amūni', 'pron_dem', 'những cái kia – trung pl', 'amūni', 'a-mū-ni',
      '', ''),
  _v(26, 'amuyo', 'pron_dem', 'những người nữ kia', 'amuyo', 'a-mu-yo', '', ''),
  _v(27, 'amūhi / amūbhi', 'pron_dem', 'bởi những người kia – SDC/XXC pl',
      'amūhi / amūbhi', 'a-mū-hi', '', ''),
  _v(28, 'amūsaṃ / amūsānaṃ', 'pron_dem', 'của những người kia',
      'amūsaṃ / amūsānaṃ', 'a-mū-saṃ', '', ''),
  _v(29, 'amūsu', 'pron_dem', 'ở những người kia – ĐSC pl', 'amūsu', 'a-mū-su',
      '', ''),

  // --- Adjectives (Words list tr.146-147) ---
  _v(30, 'antima', 'adj_a', 'sau cuối, cuối cùng', 'antima', 'an-ti-ma',
      'Ayaṃ me antimā jāti.', 'Đây là kiếp sống cuối cùng của tôi.'),
  _v(31, 'āsana', 'n_n', 'chỗ ngồi', 'āsana', 'ā-sa-na',
      'Ucce āsane nisīdi.', 'Anh ấy ngồi chỗ ngồi cao.'),
  _v(32, 'arahanta', 'n_m', 'A-la-hán, bậc Ứng Cúng, xứng đáng', 'arahanta',
      'a-ra-han-ta', 'Arahaṃ sammāsambuddho.', 'Bậc Ứng Cúng, Chánh Đẳng Giác.'),
  _v(33, 'bhagavantu', 'adj_vantu', 'Thế Tôn, bậc Phước đức', 'bhagavantu',
      'bha-ga-van-tu', 'Namo tassa Bhagavato arahato sammāsambuddhassa.',
      'Đảnh lễ Đức Thế Tôn, bậc Ứng Cúng, Chánh Đẳng Giác.'),
  _v(34, 'dīgha', 'adj_a', 'dài', 'dīgha', 'dī-gha',
      'Dīghena maggena gacchanti.', 'Họ đi bằng con đường dài.'),
  _v(35, 'kaṇha', 'adj_a', 'đen, ác', 'kaṇha', 'kaṇ-ha',
      'Kaṇho vaṇṇo.', 'Màu đen.'),
  _v(36, 'khuddaka', 'adj_a', 'nhỏ, tiểu', 'khuddaka', 'khud-da-ka',
      'Imāni khuddakāni phalāni.', 'Những trái nhỏ này.'),
  _v(37, 'majjhima', 'adj_a', 'giữa, trung', 'majjhima', 'maj-jhi-ma',
      'Majjhimā paṭipadā.', 'Con đường Trung đạo.'),
  _v(38, 'mahanta', 'adj_anta', 'lớn, đại', 'mahanta', 'ma-han-ta',
      'Mahantaṃ gharaṃ passāmi.', 'Tôi thấy ngôi nhà lớn.'),
  _v(39, 'namo', 'indec', 'tôn kính, đảnh lễ, xưng tán', 'namo', 'na-mo',
      'Namo Buddhassa.', 'Đảnh lễ Đức Phật.'),
  _v(40, 'nīca', 'adj_a', 'tầm thường, thấp', 'nīca', 'nī-ca',
      'Nīce āsane nisīdi.', 'Anh ấy ngồi chỗ thấp.'),
  _v(41, 'nīla', 'adj_a', 'xanh', 'nīla', 'nī-la', 'Nīlo vaṇṇo.', 'Màu xanh.'),
  _v(42, 'paṭipadā', 'n_f', 'tiến trình, con đường, sự thực hành',
      'paṭipadā', 'pa-ṭi-pa-dā', 'Majjhimā paṭipadā.', 'Trung đạo.'),
  _v(43, 'pīta', 'adj_a', 'vàng', 'pīta', 'pī-ta', 'Pītāni pupphāni.',
      'Những bông hoa vàng.'),
  _v(44, 'ratta', 'adj_a', 'đỏ', 'ratta', 'rat-ta', 'Rattāni pupphāni.',
      'Những bông hoa đỏ.'),
  _v(45, 'seta', 'adj_a', 'trắng', 'seta', 'se-ta', 'Seto asso.',
      'Con ngựa trắng.'),
  _v(46, 'sīta', 'adj_a', 'lạnh, mát', 'sīta', 'sī-ta',
      'Sītaṃ udakaṃ na pātabbaṃ.', 'Không nên uống nước lạnh.'),
  _v(47, 'sukhita', 'adj_a', 'hạnh phúc, khỏe mạnh', 'sukhita', 'su-khi-ta',
      'Sabbāni bhūtāni sukhitāni hontu.', 'Mong tất cả chúng sanh hạnh phúc.'),
  _v(48, 'taruṇa', 'adj_a', 'trẻ', 'taruṇa', 'ta-ru-ṇa',
      'Taruṇo vejjo.', 'Thầy lang trẻ.'),
  _v(49, 'ucca', 'adj_a', 'cao', 'ucca', 'uc-ca', 'Ucce āsane nisīdi.',
      'Anh ấy ngồi chỗ cao.'),
  _v(50, 'uṇha', 'adj_a', 'nóng', 'uṇha', 'uṇ-ha',
      'Uṇhena udakena mukhaṃ dhovati.', 'Anh ấy rửa mặt bằng nước nóng.'),

  // --- -vantu / -mantu possessive adjectives ---
  _v(51, 'balavantu', 'adj_vantu', '(người) có sức mạnh, quyền lực',
      'balavantu', 'ba-la-van-tu', 'Balavantena narapatinā rakkhitaṃ.',
      'Đã được vị vua có sức mạnh bảo vệ.'),
  _v(52, 'dhanavantu / dhanī', 'adj_vantu', 'giàu có, phú gia',
      'dhanavantu / dhanī', 'dha-na-van-tu', 'Dhanavā puriso.', 'Người giàu có.'),
  _v(53, 'himavantu', 'adj_vantu', 'có tuyết; Hy-mã-lạp sơn',
      'himavantu', 'hi-ma-van-tu', 'Himavā pabbato.', 'Núi tuyết (Hi-mã-lạp).'),
  _v(54, 'bandhumantu', 'adj_mantu', '(người) có bà con', 'bandhumantu',
      'ban-dhu-man-tu', 'Bandhumā puriso.', 'Người có bà con.'),
  _v(55, 'yasavantu', 'adj_vantu', '(người) có danh tiếng', 'yasavantu',
      'ya-sa-van-tu', '', ''),
  _v(56, 'puññavantu', 'adj_vantu', '(người) may mắn, có phước',
      'puññavantu', 'puñ-ña-van-tu',
      'Puññavantā sukhena vasanti.',
      'Những người có phước sống an lạc.'),
  _v(57, 'buddhimantu', 'adj_mantu', '(người) thông minh', 'buddhimantu',
      'bud-dhi-man-tu', '', ''),
  _v(58, 'kulavantu', 'adj_vantu', '(người) có giai cấp cao',
      'kulavantu', 'ku-la-van-tu', '', ''),
  _v(59, 'phalavantu', 'adj_vantu', 'có quả, người thọ quả',
      'phalavantu', 'pha-la-van-tu', '', ''),
  _v(60, 'cakkhumantu', 'adj_mantu', '(người) có mắt, có trí tuệ',
      'cakkhumantu', 'cak-khu-man-tu', 'Cakkhumanto buddhā.',
      'Chư Phật là những bậc có mắt (thấy rõ).'),
  _v(61, 'satimantu', 'adj_mantu', '(người) có chánh niệm', 'satimantu',
      'sa-ti-man-tu', '', ''),
  _v(62, 'bhānumantu', 'adj_mantu', 'chói sáng; mặt trời', 'bhānumantu',
      'bhā-nu-man-tu', '', ''),
  _v(63, 'sīlavantu', 'adj_vantu', '(người) có giới hạnh', 'sīlavantu',
      'sī-la-van-tu', 'Sīlavante bhajetha.', 'Hãy thân cận những người có giới.'),
  _v(64, 'paññavantu', 'adj_vantu', '(người) sáng suốt, có trí',
      'paññavantu', 'pañ-ña-van-tu', '', ''),
  _v(65, 'guṇavantu', 'adj_vantu', '(người) có đức', 'guṇavantu',
      'gu-ṇa-van-tu', 'Guṇavantā bhajitabbā.',
      'Những người có đức đáng được gần gũi.'),
  _v(66, 'dhitimantu', 'adj_mantu', '(người) có nghị lực', 'dhitimantu',
      'dhi-ti-man-tu', 'Dhitimantā bhayena na dhāvanti.',
      'Người có nghị lực không chạy vì sợ.'),

  // --- Support words used in exercise ---
  _v(67, 'sammāsambuddha', 'n_m', 'bậc Chánh Đẳng Giác, Toàn Giác',
      'sammāsambuddha', 'sam-mā-sam-bud-dha', '', ''),
  _v(68, 'gilāna', 'n_m', 'người bệnh', 'gilāna', 'gi-lā-na', '', ''),
  _v(69, 'puppha', 'n_n', 'bông hoa', 'puppha', 'pup-ha', '', ''),
  _v(70, 'daṇḍa', 'n_m', 'gậy, gậy phạt', 'daṇḍa', 'daṇ-ḍa', '', ''),
  _v(71, 'aggi', 'n_m', 'lửa', 'aggi', 'ag-gi', '', ''),
  _v(72, 'khipāhi', 'verb_imp', 'hãy ném (mệnh lệnh)', 'khipāhi',
      'khi-pā-hi', '', ''),
  _v(73, 'payojana', 'n_n', 'sự cần dùng, lợi ích, nhu cầu',
      'payojana', 'pa-yo-ja-na', '', ''),
  _v(74, 'hotu', 'verb_imp', 'hãy là, cầu cho là', 'hotu', 'ho-tu', '', ''),
  _v(75, 'caṇḍa', 'adj_a', 'dữ dằn, hung ác', 'caṇḍa', 'caṇ-ḍa', '', ''),
  _v(76, 'pūjetha', 'verb_imp', 'hãy cúng dường (các ngươi)', 'pūjetha',
      'pū-je-tha', '', ''),
  _v(77, 'ñātī / ñātaka', 'n_m', 'bà con, thân quyến', 'ñātī', 'ñā-tī', '', ''),
  _v(78, 'sukhāpeti', 'verb_caus', 'làm hạnh phúc, an lạc', 'sukhāpeti',
      'su-khā-pe-ti', '', ''),
];

PaliVocabModel _v(int id, String root, String paradigmId, String wordVi,
    String wordEn, String pronunciation, String examplePali, String exampleVi) {
  final num = id.toString().padLeft(3, '0');
  return PaliVocabModel(
    id: 'pv_L15_$num',
    root: root,
    paradigmId: paradigmId,
    wordVi: wordVi,
    wordEn: wordEn,
    lessonId: 'lesson_15',
    pronunciation: pronunciation,
    examplePali: examplePali,
    exampleVi: exampleVi,
  );
}

// ──────────────────────────────────────────────────────────────
// DAY 1 – ima / amu + tính từ
// ──────────────────────────────────────────────────────────────
LessonDay getLesson15Day1() => LessonDay(
      id: 'lesson_15_day_1',
      dayNumber: 1,
      themeId: 'theme_15_ima_amu_adjectives',
      titleVi: 'Day 1 – ima / amu & Tính từ – FabVocab',
      phases: [
        _buildDay1Phase1(),
      ],
    );

LessonPhase _buildDay1Phase1() {
  return LessonPhase(
    id: 'lesson15_phase1',
    phaseTypeStr: 'read_listen',
    titleVi: 'Đại từ ima – amu & Tính từ hòa hợp',
    contentVi: '''
A. ĐẠI TỪ CHỈ ĐỊNH – ima (này)

Số ít:
• CC: na. ayaṃ | tr. idaṃ, imaṃ | nữ. ayaṃ
• ĐC: na. imaṃ | tr. idaṃ, imaṃ | nữ. imaṃ
• SDC: na./tr. iminā, anena | nữ. imāya
• XXC: na./tr. imamhā, imasmā, asmā | nữ. imāya
• CĐC/STC: na./tr. imassa, assa | nữ. imissā, imāya, assā, assāya
• ĐSC: na./tr. imamhi, imasmiṃ, asmiṃ | nữ. imissaṃ, imāyaṃ, assaṃ

Số nhiều:
• CC/ĐC: na. ime | tr. ime, imāni | nữ. imā, imāyo
• SDC/XXC: na./tr. imebhi, imehi, ebhi, ehi | nữ. imābhi, imāhi
• CĐC/STC: na./tr. imesaṃ, imesānaṃ, esaṃ, esānaṃ | nữ. imāsaṃ, imāsānaṃ
• ĐSC: na./tr. imesu, esu | nữ. imāsu

---

amu (kia, ấy, như vậy)

Số ít:
• CC: na. asu, amuko | tr. aduṃ | nữ. asu, amu
• ĐC: na. amuṃ | tr. aduṃ | nữ. amuṃ
• SDC: na./tr. amunā | nữ. amuyā
• XXC: na./tr. amumhā, amusmā | nữ. amuyā
• CĐC/STC: na./tr. amuno, amussa | nữ. amussā, amuyā
• ĐSC: na./tr. amumhi, amusmiṃ | nữ. amussaṃ, amuyaṃ

Số nhiều:
• CC/ĐC: na. amū | tr. amū, amūni | nữ. amuyo
• SDC/XXC: amūbhi, amūhi
• CĐC/STC: amūsaṃ, amūsānaṃ
• ĐSC: amūsu

---

B. TÍNH TỪ
– Tính từ biến cách, hòa hợp Tánh–Số–Cách với danh từ bổ nghĩa, thường đứng TRƯỚC danh từ.
– Tính từ tận -a: Nam như nara, Trung như phala, Nữ như kaññā (đôi khi như nārī).

Hậu tố sở hữu:
• -vantu + danh từ tận -a, -ā
• -mantu + danh từ tận -i, -u
bala + vantu = balavantu – có sức mạnh
bandhu + mantu = bandhumantu – có bà con
dhiti + mantu = dhitimantu – có nghị lực, can đảm
guṇa + vantu = guṇavantu – có đức

→ Tính từ -vantu / -mantu biến cách NHƯ pacanta (Bài 14), trừ CC số ít Nam:
  bandhumā | dhitimā | guṇavā | balavā

– Danh từ -in: dhanī (giàu có) – biến cách như sāmī / sukhakārī / nārī.
''',
    contentEn: '''
A. DEMONSTRATIVE PRONOUNS – ima (this) & amu (that)

ima (this):
  sg. m. nom. ayaṃ; acc. imaṃ; ins. iminā/anena; abl. imamhā/imasmā;
      dat./gen. imassa/assa; loc. imamhi/imasmiṃ/asmiṃ.
  sg. nt. nom./acc. idaṃ/imaṃ; other cases like the masculine.
  sg. f. nom. ayaṃ; acc. imaṃ; ins./abl./dat. imāya;
      gen. imissā/imāya/assā; loc. imissaṃ/imāyaṃ/assaṃ.
  pl. m. nom. ime; acc. ime; ins. imebhi/imehi/ebhi;
      gen. imesaṃ; loc. imesu/esu.
  pl. nt. nom./acc. ime/imāni.
  pl. f. nom./acc. imā/imāyo; ins. imābhi; gen. imāsaṃ; loc. imāsu.

amu (that):
  sg. m. nom. asu/amuko; acc. amuṃ; ins. amunā; abl. amumhā/amusmā;
      dat./gen. amuno/amussa; loc. amumhi/amusmiṃ.
  sg. nt. nom./acc. aduṃ.
  sg. f. nom. asu/amu; acc. amuṃ; ins./abl./dat. amuyā;
      gen. amussā/amuyā; loc. amussaṃ/amuyaṃ.
  pl. m. nom. amū; nt. amū/amūni; f. amuyo;
      ins. amūbhi/amūhi; gen. amūsaṃ/amūsānaṃ; loc. amūsu.

B. ADJECTIVES
  – Adjectives decline and agree in gender/number/case with the noun they
    qualify, usually preceding the noun.
  – -a adjectives follow nara (m.), phala (nt.), kaññā (f.).
  – Possessive suffixes:
      -vantu after -a/-ā stems (bala → balavantu, guṇa → guṇavantu)
      -mantu after -i/-u stems (bandhu → bandhumantu, dhiti → dhitimantu)
  – -vantu/-mantu decline like pacanta (Lesson 14) EXCEPT nom. sg. m. -ā
    (balavā, guṇavā, dhitimā, bandhumā).
  – Stems in -in (e.g. dhanī “rich”) decline like sāmī/nārī.
''',
    fabVocab: const [
      // --- ima ---
      FabVocabItem(
          wordEn: 'ayaṃ',
          pronunciation: 'a-yaṃ',
          wordVi: 'này – CC số ít nam/nữ',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'imaṃ',
          pronunciation: 'i-maṃ',
          wordVi: 'này – ĐC',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'iminā / anena',
          pronunciation: 'i-mi-nā',
          wordVi: 'bởi / với cái này – SDC',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'imamhā / imasmā / asmā',
          pronunciation: 'i-mas-mā',
          wordVi: 'từ cái này – XXC',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'imassa / assa',
          pronunciation: 'i-mas-sa',
          wordVi: 'của / cho cái này – STC/CĐC',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'imamhi / imasmiṃ / asmiṃ',
          pronunciation: 'i-mam-hi',
          wordVi: 'ở nơi này – ĐSC',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'ime',
          pronunciation: 'i-me',
          wordVi: 'những cái này – CC/ĐC số nhiều nam',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'imesaṃ / esaṃ',
          pronunciation: 'i-me-saṃ',
          wordVi: 'của những cái này',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'imesu / esu',
          pronunciation: 'i-me-su',
          wordVi: 'ở những cái này – ĐSC pl',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'idaṃ / imaṃ',
          pronunciation: 'i-daṃ',
          wordVi: 'cái này – trung tánh',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'imā / imāyo',
          pronunciation: 'i-mā',
          wordVi: 'những cái này – nữ CC/ĐC pl',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'imāya',
          pronunciation: 'i-mā-ya',
          wordVi: 'bởi / từ / đến cái này – nữ SDC/XXC/CĐC',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'imissā / assā',
          pronunciation: 'i-mis-sā',
          wordVi: 'của người nữ này',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'imissaṃ / imāyaṃ / assaṃ',
          pronunciation: 'i-mis-saṃ',
          wordVi: 'ở người nữ này – ĐSC',
          partOfSpeech: 'đt.cđ'),
      // --- amu ---
      FabVocabItem(
          wordEn: 'asu / amuko',
          pronunciation: 'a-su',
          wordVi: 'kia, ấy – CC nam sg',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'amuṃ',
          pronunciation: 'a-muṃ',
          wordVi: 'kia – ĐC',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'amunā',
          pronunciation: 'a-mu-nā',
          wordVi: 'bởi người kia – SDC',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'amussa / amuno',
          pronunciation: 'a-mus-sa',
          wordVi: 'của người kia',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'aduṃ',
          pronunciation: 'a-duṃ',
          wordVi: 'cái kia – trung tánh',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'amuyā',
          pronunciation: 'a-mu-yā',
          wordVi: 'bởi / từ người nữ kia',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'amū',
          pronunciation: 'a-mū',
          wordVi: 'những người kia – nam CC pl',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'amūni',
          pronunciation: 'a-mū-ni',
          wordVi: 'những cái kia – trung pl',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'amuyo',
          pronunciation: 'a-mu-yo',
          wordVi: 'những người nữ kia',
          partOfSpeech: 'đt.cđ'),
      FabVocabItem(
          wordEn: 'amūsu',
          pronunciation: 'a-mū-su',
          wordVi: 'ở những người kia – ĐSC pl',
          partOfSpeech: 'đt.cđ'),
      // --- adjectives ---
      FabVocabItem(
          wordEn: 'antima',
          pronunciation: 'an-ti-ma',
          wordVi: 'sau cuối, cuối cùng',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'āsana',
          pronunciation: 'ā-sa-na',
          wordVi: 'chỗ ngồi',
          partOfSpeech: 'n.tr'),
      FabVocabItem(
          wordEn: 'arahanta',
          pronunciation: 'a-ra-han-ta',
          wordVi: 'A-la-hán, bậc Ứng Cúng, xứng đáng',
          partOfSpeech: 'tt/n'),
      FabVocabItem(
          wordEn: 'bhagavantu',
          pronunciation: 'bha-ga-van-tu',
          wordVi: 'Thế Tôn, bậc Phước đức',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'dīgha',
          pronunciation: 'dī-gha',
          wordVi: 'dài',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'kaṇha',
          pronunciation: 'kaṇ-ha',
          wordVi: 'đen, ác',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'khuddaka',
          pronunciation: 'khud-da-ka',
          wordVi: 'nhỏ, tiểu',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'majjhima',
          pronunciation: 'maj-jhi-ma',
          wordVi: 'giữa, trung',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'mahanta',
          pronunciation: 'ma-han-ta',
          wordVi: 'lớn, đại',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'namo',
          pronunciation: 'na-mo',
          wordVi: 'tôn kính, đảnh lễ, xưng tán',
          partOfSpeech: 'bbt'),
      FabVocabItem(
          wordEn: 'nīca',
          pronunciation: 'nī-ca',
          wordVi: 'tầm thường, thấp',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'nīla',
          pronunciation: 'nī-la',
          wordVi: 'xanh',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'paṭipadā',
          pronunciation: 'pa-ṭi-pa-dā',
          wordVi: 'tiến trình, con đường, đạo lộ, sự thực hành',
          partOfSpeech: 'n.f'),
      FabVocabItem(
          wordEn: 'pīta',
          pronunciation: 'pī-ta',
          wordVi: 'vàng',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'ratta',
          pronunciation: 'rat-ta',
          wordVi: 'đỏ',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'seta',
          pronunciation: 'se-ta',
          wordVi: 'trắng',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'sīta',
          pronunciation: 'sī-ta',
          wordVi: 'lạnh, mát',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'sukhita',
          pronunciation: 'su-khi-ta',
          wordVi: 'hạnh phúc, khỏe mạnh',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'taruṇa',
          pronunciation: 'ta-ru-ṇa',
          wordVi: 'trẻ',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'ucca',
          pronunciation: 'uc-ca',
          wordVi: 'cao',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'uṇha',
          pronunciation: 'uṇ-ha',
          wordVi: 'nóng',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'balavantu',
          pronunciation: 'ba-la-van-tu',
          wordVi: '(người) có sức mạnh, quyền lực',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'dhanavantu / dhanī',
          pronunciation: 'dha-na-van-tu',
          wordVi: 'giàu có, người có tài sản, phú gia',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'himavantu',
          pronunciation: 'hi-ma-van-tu',
          wordVi: 'có tuyết; Hy-mã-lạp sơn',
          partOfSpeech: 'tt/n'),
      FabVocabItem(
          wordEn: 'bandhumantu',
          pronunciation: 'ban-dhu-man-tu',
          wordVi: '(người) có bà con',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'yasavantu',
          pronunciation: 'ya-sa-van-tu',
          wordVi: '(người) có danh tiếng',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'puññavantu',
          pronunciation: 'puñ-ña-van-tu',
          wordVi: '(người) may mắn, có phước',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'buddhimantu',
          pronunciation: 'bud-dhi-man-tu',
          wordVi: '(người) thông minh, hiểu biết',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'kulavantu',
          pronunciation: 'ku-la-van-tu',
          wordVi: '(người) có giai cấp cao, có huyết thống',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'phalavantu',
          pronunciation: 'pha-la-van-tu',
          wordVi: 'có quả, người thọ quả',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'cakkhumantu',
          pronunciation: 'cak-khu-man-tu',
          wordVi: '(người) có mắt, có trí tuệ',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'satimantu',
          pronunciation: 'sa-ti-man-tu',
          wordVi: '(người) có chú ý, có chánh niệm',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'bhānumantu',
          pronunciation: 'bhā-nu-man-tu',
          wordVi: 'chói sáng, rực rỡ; (m.) mặt trời',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'sīlavantu',
          pronunciation: 'sī-la-van-tu',
          wordVi: '(người) có giới hạnh',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'paññavantu',
          pronunciation: 'pañ-ña-van-tu',
          wordVi: '(người) sáng suốt, có trí',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'guṇavantu',
          pronunciation: 'gu-ṇa-van-tu',
          wordVi: '(người) có đức',
          partOfSpeech: 'tt'),
      FabVocabItem(
          wordEn: 'dhitimantu',
          pronunciation: 'dhi-ti-man-tu',
          wordVi: '(người) có nghị lực',
          partOfSpeech: 'tt'),
    ],
    fabPhrases: const [
      FabPhraseItem(
          phrase: 'Namo tassa Bhagavato arahato sammāsambuddhassa',
          meaning:
              'Đảnh lễ Đức Thế Tôn, bậc A-la-hán, Chánh Đẳng Giác'),
      FabPhraseItem(
          phrase: 'guṇavā / balavā / dhitimā – CC sg nam',
          meaning:
              'tính từ -vantu/-mantu: CC số ít Nam tận -ā, còn lại biến như pacanta'),
      FabPhraseItem(
          phrase: 'seto asso | setāni pupphāni | khuddakāni phalāni',
          meaning:
              'tính từ hòa hợp: nam -o, trung -aṃ/-āni, nữ -ā'),
      FabPhraseItem(
          phrase: 'ucce āsane / nīce āsane',
          meaning: 'ở chỗ ngồi cao / thấp – ĐSC'),
      FabPhraseItem(
          phrase: 'dīghena maggena / uṇhena udakena',
          meaning:
              'bằng con đường dài / bằng nước nóng – SDC'),
    ],
  );
}

// ──────────────────────────────────────────────────────────────
// DAY 2 – Exercise 15 (50 câu) + Quiz hòa hợp tính từ
// ──────────────────────────────────────────────────────────────
LessonDay getLesson15Day2() => LessonDay(
      id: 'lesson_15_day_2',
      dayNumber: 2,
      themeId: 'theme_15_ima_amu_adjectives',
      titleVi: 'Day 2 – Exercise 15 (50 câu) & Quiz tính từ',
      phases: [
        _buildDay2Phase1(),
        _buildDay2Phase2(),
        _buildDay2Phase3(),
      ],
    );

LessonPhase _buildDay2Phase1() {
  return LessonPhase(
    id: 'lesson15_phase2',
    phaseTypeStr: 'mind_game',
    titleVi: 'Exercise 15 – 1…25 (Pāḷi → Việt)',
    contentVi:
        'Bài tập 15 – tr.148-149 – ima / amu + tính từ.',
    mixedSegments: const [
      MixedSegment(
          text: '1. Cái này là gì?',
          isVietnamese: true,
          answer: 'Kiṃ idaṃ?'),
      MixedSegment(text: 'Kiṃ idaṃ?\n\n', isVietnamese: false),
      MixedSegment(
          text: '2. Những cái này của ai?',
          isVietnamese: true,
          answer: 'Kassa imāni?'),
      MixedSegment(text: 'Kassa imāni?\n\n', isVietnamese: false),
      MixedSegment(
          text: '3. Bạn cần cái này để làm gì? / Với cái này bạn có nhu cầu gì?',
          isVietnamese: true,
          answer: 'Iminā te kiṃ payojanaṃ?'),
      MixedSegment(
          text: 'Iminā te kiṃ payojanaṃ?\n\n', isVietnamese: false),
      MixedSegment(
          text: '4. Cái này hãy là của tôi.',
          isVietnamese: true,
          answer: 'Idaṃ mayhaṃ hotu.'),
      MixedSegment(text: 'Idaṃ mayhaṃ hotu.\n\n', isVietnamese: false),
      MixedSegment(
          text: '5. Người đàn ông này tên gì?',
          isVietnamese: true,
          answer: 'Ko nāma ayaṃ puriso?'),
      MixedSegment(text: 'Ko nāma ayaṃ puriso?\n\n', isVietnamese: false),
      MixedSegment(
          text: '6. Người này là mợ / dì của tôi.',
          isVietnamese: true,
          answer: 'Ayaṃ me mātulānī hoti.'),
      MixedSegment(
          text: 'Ayaṃ me mātulānī hoti.\n\n', isVietnamese: false),
      MixedSegment(
          text: '7. Cái này nên được làm bởi tôi.',
          isVietnamese: true,
          answer: 'Idaṃ mayā kattabbaṃ.'),
      MixedSegment(text: 'Idaṃ mayā kattabbaṃ.\n\n', isVietnamese: false),
      MixedSegment(
          text: '8. Tất cả cái này đã được người kia làm.',
          isVietnamese: true,
          answer: 'Sabbaṃ idaṃ asukena kataṃ.'),
      MixedSegment(text: 'Sabbaṃ idaṃ asukena kataṃ.\n\n', isVietnamese: false),
      MixedSegment(
          text: '9. Người chủ / ông chủ này không hung dữ.',
          isVietnamese: true,
          answer: 'Ayaṃ sāmi caṇḍo na hoti.'),
      MixedSegment(
          text: 'Ayaṃ sāmi caṇḍo na hoti.\n\n', isVietnamese: false),
      MixedSegment(
          text: '10. Đây là kiếp sống cuối cùng của tôi.',
          isVietnamese: true,
          answer: 'Ayaṃ me antimā jāti.'),
      MixedSegment(text: 'Ayaṃ me antimā jāti.\n\n', isVietnamese: false),
      MixedSegment(
          text: '11. Con ngựa trắng này không chạy nhanh.',
          isVietnamese: true,
          answer: 'Ayaṃ seto asso khippaṃ na dhāvati.'),
      MixedSegment(
          text: 'Ayaṃ seto asso khippaṃ na dhāvati.\n\n', isVietnamese: false),
      MixedSegment(
          text: '12. Những bệnh nhân này nên được chăm sóc bởi những người có đức.',
          isVietnamese: true,
          answer: 'Guṇavantehi ime gilānā saṅgaṇhitabbā.'),
      MixedSegment(
          text: 'Guṇavantehi ime gilānā saṅgaṇhitabbā.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '13. “Như cái này, thế kia – như kia, thế này.”',
          isVietnamese: true,
          answer: 'Yathā idaṃ tathā etaṃ – yathā etaṃ tathā idaṃ.'),
      MixedSegment(
          text: 'Yathā idaṃ tathā etaṃ – yathā etaṃ tathā idaṃ.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '14. “Cái này hãy là (phước) đến bà con của các ngươi – Chúc bà con được an vui!”',
          isVietnamese: true,
          answer: 'Idaṃ vo ñātīnaṃ hotu – sukhitā hontu ñātayo!'),
      MixedSegment(
          text: 'Idaṃ vo ñātīnaṃ hotu – sukhitā hontu ñātayo!\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '15. “Bạn ở núi kia, ta sẽ ở núi này.”',
          isVietnamese: true,
          answer:
              'Tvaṃ etasmiṃ pabbate vasa, ahaṃ imasmiṃ pabbate vasissāmi.'),
      MixedSegment(
          text: 'Tvaṃ etasmiṃ pabbate vasa, ahaṃ imasmiṃ pabbate vasissāmi.\n\n',
          isVietnamese: false),
    ],
  );
}

LessonPhase _buildDay2Phase2() {
  return LessonPhase(
    id: 'lesson15_phase3',
    phaseTypeStr: 'mind_game',
    titleVi: 'Exercise 15 – 26…50 (Việt → Pāḷi)',
    contentVi:
        'Dịch Anh/Việt → Pāḷi – bám sát nguyên văn Bài tập 15, tr.150-151.',
    mixedSegments: const [
      MixedSegment(
          text: '16. Đảnh lễ Đức Thế Tôn, bậc A-la-hán, Chánh Đẳng Giác.',
          isVietnamese: true,
          answer: 'Namo tassa Bhagavato, arahato sammāsambuddhassa.'),
      MixedSegment(
          text: 'Namo tassa Bhagavato, arahato sammāsambuddhassa.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '17. Ở đời này và đời sau, người có đức sống an lạc.',
          isVietnamese: true,
          answer: 'Asmiṃ loke ca paramhi ca guṇavantā sukhena vasanti.'),
      MixedSegment(
          text: 'Asmiṃ loke ca paramhi ca guṇavantā sukhena vasanti.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '18. Ở con đường tên … kia, trong nhà kia, vị y sĩ trẻ này sống.',
          isVietnamese: true,
          answer:
              'Asukāya nāma visikhāya asukasmiṃ ghare ayaṃ taruṇo vejjo vasati.'),
      MixedSegment(
          text:
              'Asukāya nāma visikhāya asukasmiṃ ghare ayaṃ taruṇo vejjo vasati.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '19. Hãy cúng dường Đức Phật bằng những bông hoa này.',
          isVietnamese: true,
          answer: 'Imehi pupphehi Buddhaṃ pūjetha.'),
      MixedSegment(
          text: 'Imehi pupphehi Buddhaṃ pūjetha.\n\n', isVietnamese: false),
      MixedSegment(
          text: '20. Chúng tôi thấy những cây lớn trong khu vườn này.',
          isVietnamese: true,
          answer: 'Mayaṃ imasmiṃ ārāme mahantāni rukkhāni passāma.'),
      MixedSegment(
          text: 'Mayaṃ imasmiṃ ārāme mahantāni rukkhāni passāma.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '21. Nên cho nước nóng đến bệnh nhân này.',
          isVietnamese: true,
          answer: 'Imassa gilānassa uṇhaṃ udakaṃ dātabbaṃ.'),
      MixedSegment(
          text: 'Imassa gilānassa uṇhaṃ udakaṃ dātabbaṃ.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '22. Người cha ngồi chỗ ngồi cao, người con ngồi chỗ ngồi thấp.',
          isVietnamese: true,
          answer: 'Janako ucce āsane nisīdi, putto nīce āsane nisīdi.'),
      MixedSegment(
          text: 'Janako ucce āsane nisīdi, putto nīce āsane nisīdi.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '23. Trong những bông hoa này, lấy những bông trắng, đỏ, vàng rồi đi đi.',
          isVietnamese: true,
          answer:
              'Imesu pupphesu setāni ca rattāni ca pītāni ca pupphāni gahetvā gacchāhi.'),
      MixedSegment(
          text:
              'Imesu pupphesu setāni ca rattāni ca pītāni ca pupphāni gahetvā gacchāhi.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '24. Chúng tôi không mua những trái nhỏ này.',
          isVietnamese: true,
          answer: 'Imāni khuddakāni phalāni mayaṃ na kiṇāma.'),
      MixedSegment(
          text: 'Imāni khuddakāni phalāni mayaṃ na kiṇāma.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '25. Họ sẽ đi bằng con đường dài này.',
          isVietnamese: true,
          answer: 'Iminā dīghena maggena ete gamissanti.'),
      MixedSegment(
          text: 'Iminā dīghena maggena ete gamissanti.\n\n', isVietnamese: false),
      // 26-50 Việt → Pāḷi
      MixedSegment(
          text: '26. Ai là cậu bé này? / Đứa bé trai này là ai?',
          isVietnamese: true,
          answer: 'Ko nāma ayaṃ dārako? / Ko eso dārako?'),
      MixedSegment(text: 'Ko nāma ayaṃ dārako?\n\n', isVietnamese: false),
      MixedSegment(
          text: '27. Đây là quyển sách của tôi.',
          isVietnamese: true,
          answer: 'Idaṃ me potthakaṃ hoti.'),
      MixedSegment(text: 'Idaṃ me potthakaṃ hoti.\n\n', isVietnamese: false),
      MixedSegment(
          text: '28. Những người đàn ông này là ai?',
          isVietnamese: true,
          answer: 'Ke nāma ime narā?'),
      MixedSegment(text: 'Ke nāma ime narā?\n\n', isVietnamese: false),
      MixedSegment(
          text: '29. Anh ấy sống trong nhà này.',
          isVietnamese: true,
          answer: 'So imasmiṃ ghare vasati.'),
      MixedSegment(text: 'So imasmiṃ ghare vasati.\n\n', isVietnamese: false),
      MixedSegment(
          text: '30. Cái này đã được làm bởi tôi.',
          isVietnamese: true,
          answer: 'Idaṃ me kataṃ. / Idaṃ mayā kataṃ.'),
      MixedSegment(text: 'Idaṃ me kataṃ.\n\n', isVietnamese: false),
      MixedSegment(
          text: '31. Có một vị y sĩ trẻ kia ở con đường này.',
          isVietnamese: true,
          answer: 'Atthi asuko taruṇo vejjo asmiṃ visikhāyaṃ.'),
      MixedSegment(
          text: 'Atthi asuko taruṇo vejjo asmiṃ visikhāyaṃ.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '32. Nước lạnh không nên được uống bởi những người bệnh.',
          isVietnamese: true,
          answer: 'Sītaṃ udakaṃ gilānehi na pātabbaṃ.'),
      MixedSegment(
          text: 'Sītaṃ udakaṃ gilānehi na pātabbaṃ.\n\n', isVietnamese: false),
      MixedSegment(
          text: '33. Anh ấy là đứa bé cuối cùng trong trường.',
          isVietnamese: true,
          answer: 'So pāṭhasālāyaṃ antimo dārako hoti.'),
      MixedSegment(
          text: 'So pāṭhasālāyaṃ antimo dārako hoti.\n\n', isVietnamese: false),
      MixedSegment(
          text: '34. Phải chăng bạn thấy / đã thấy anh ấy đang ngồi trên chỗ ngồi cao này?',
          isVietnamese: true,
          answer:
              'Nanu tvaṃ imasmiṃ uccasmiṃ āsanasmiṃ nisīdantaṃ taṃ passasi?'),
      MixedSegment(
          text:
              'Nanu imasmiṃ uccasmiṃ āsanasmiṃ nisīdantaṃ taṃ passasi?\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '35. Lấy những cây gậy dài này ném vào lửa.',
          isVietnamese: true,
          answer: 'Ime dīghe daṇḍe gahetvā aggimhi khipāhi.'),
      MixedSegment(
          text: 'Ime dīghe daṇḍe gahetvā aggimhi khipāhi.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '36. Mong tất cả chúng sanh này được hạnh phúc!',
          isVietnamese: true,
          answer: 'Sabbāni imāni bhūtāni sukhitāni hontu.'),
      MixedSegment(
          text: 'Sabbāni imāni bhūtāni sukhitāni hontu.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '37. Tôi muốn leo / cỡi con ngựa trắng này.',
          isVietnamese: true,
          answer: 'Ahaṃ idaṃ setaṃ assaṃ āruhituṃ icchāmi.'),
      MixedSegment(
          text: 'Ahaṃ idaṃ setaṃ assaṃ āruhituṃ icchāmi.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '38. Mang những quyển sách nhỏ kia đưa cho những đứa bé ấy.',
          isVietnamese: true,
          answer: 'Tāni khuddakāni potthakāni āharitvā tesānaṃ dārakānaṃ desi.'),
      MixedSegment(
          text:
              'Tāni khuddakāni potthakāni āharitvā tesānaṃ dārakānaṃ desi.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '39. Bạn nên rửa mặt bằng nước nóng này.',
          isVietnamese: true,
          answer: 'Tvaṃ iminā uṇhena udakena te mukhaṃ dhoveyyāsi.'),
      MixedSegment(
          text: 'Iminā uṇhena udakena mukhaṃ dhoveyyāsi.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '40. Những vị A-la-hán này đã giác ngộ Trung Đạo của Đức Phật.',
          isVietnamese: true,
          answer: 'Ime arahantā Buddhassa majjhimā paṭipadā bujjhiṃsu.'),
      MixedSegment(
          text: 'Ime arahantā Buddhassa majjhimā paṭipadā bujjhiṃsu.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '41. Pháp này đã được Đức Thế Tôn thuyết.',
          isVietnamese: true,
          answer: 'Ayaṃ Dhammo Bhagavatā desito.'),
      MixedSegment(
          text: 'Ayaṃ Dhammo Bhagavatā desito.\n\n', isVietnamese: false),
      MixedSegment(
          text: '42. Chúng ta sẽ đi bằng con đường dài này.',
          isVietnamese: true,
          answer: 'Mayaṃ iminā dīghena maggena gamissāma.'),
      MixedSegment(
          text: 'Mayaṃ iminā dīghena maggena gamissāma.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '43. Có những cây cao lớn trong khu rừng này.',
          isVietnamese: true,
          answer: 'Atthi imasmiṃ aṭaviyaṃ uccā mahantā rukkhā.'),
      MixedSegment(
          text: 'Atthi imasmiṃ aṭaviyaṃ uccā mahantā rukkhā.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '44. Tôi sẽ lấy những hoa trắng này; bạn hãy lấy những hoa đỏ kia.',
          isVietnamese: true,
          answer:
              'Ahaṃ imāni setāni pupphāni gaṇhissāmi; tvaṃ tāni rattāni pupphāni gaṇhāhi.'),
      MixedSegment(
          text:
              'Ahaṃ imāni setāni pupphāni gaṇhissāmi; tvaṃ tāni rattāni pupphāni gaṇhāhi.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '45. Những chiếc thuyền nhỏ này là … / Đây là những thuyền nhỏ.',
          isVietnamese: true,
          answer: 'Imāni khuddakāyo nāvāyo honti. / Imā khuddakā nāvā.'),
      MixedSegment(
          text: 'Imāni khuddakāyo nāvāyo honti.\n\n', isVietnamese: false),
      MixedSegment(
          text: '46. Người nam trẻ và người nữ trẻ nên thân cận những bậc có đức.',
          isVietnamese: true,
          answer:
              'Taruṇehi narehi ca taruṇīhi nārīhi ca guṇavantā bhajitabbā.'),
      MixedSegment(
          text:
              'Taruṇehi narehi ca taruṇīhi nārīhi ca guṇavantā bhajitabbā.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '47. Thành phố này được bảo vệ bởi vị chúa / vua có sức mạnh.',
          isVietnamese: true,
          answer: 'Idaṃ nagaraṃ balavantena narapatinā rakkhitaṃ.'),
      MixedSegment(
          text: 'Idaṃ nagaraṃ balavantena narapatinā rakkhitaṃ.\n\n',
          isVietnamese: false),
      MixedSegment(
          text: '48. Người can đảm không chạy trốn vì sợ.',
          isVietnamese: true,
          answer: 'Dhitimantā bhayena na dhāvanti.'),
      MixedSegment(
          text: 'Dhitimantā bhayena na dhāvanti.\n\n', isVietnamese: false),
      MixedSegment(
          text: '49. Những đứa trẻ đang chơi với những con chó này.',
          isVietnamese: true,
          answer: 'Taruṇā dārakā imehi sunakhehi kīḷanti.'),
      MixedSegment(
          text: 'Taruṇā dārakā imehi sunakhehi kīḷanti.\n\n', isVietnamese: false),
      MixedSegment(
          text: '50. Mong Đức Thế Tôn thuyết Pháp cho chư Tỳ-khưu và Tỳ-khưu-ni kia!',
          isVietnamese: true,
          answer:
              'Bhagavā amūsānaṃ bhikkhūnaṃ ca bhikkhunīnaṃ ca Dhammaṃ desetu.'),
      MixedSegment(
          text:
              'Bhagavā amūsānaṃ bhikkhūnaṃ ca bhikkhunīnaṃ ca Dhammaṃ desetu.',
          isVietnamese: false),
    ],
    fabPhrases: const [
      FabPhraseItem(
          phrase: 'imesu pupphesu setāni / rattāni / pītāni',
          meaning:
              'ĐSC pl + tính từ trung ĐC pl – hòa hợp Số–Cách, khác Tánh với danh từ ĐSC'),
      FabPhraseItem(
          phrase: 'imāni khuddakāni phalāni',
          meaning:
              'trung CC/ĐC pl: ima + khuddaka + phala – đầy đủ -āni'),
      FabPhraseItem(
          phrase: 'guṇavantehi / balavantena / dhitimantā',
          meaning:
              '-vantu/-mantu biến như pacanta, CC sg -ā: guṇavā, balavā'),
      FabPhraseItem(
          phrase: 'Namo tassa Bhagavato arahato sammāsambuddhassa',
          meaning: 'CĐC sg: tassa … -to – công thức đảnh lễ chuẩn'),
    ],
  );
}

LessonPhase _buildDay2Phase3() {
  return LessonPhase(
    id: 'lesson15_phase4',
    phaseTypeStr: 'listening_quiz',
    titleVi: 'Quiz – Hòa hợp Tính từ với Danh từ',
    contentVi:
        'Chọn dạng tính từ đúng Tánh–Số–Cách – trọng tâm Bài 15.',
    contentEn: 'Choose the correct adjective form agreeing in gender, number and case.',
    questions: const [
      QuizQuestion(
        id: 'lesson15_q01',
        questionText: '“con ngựa trắng” – CC số ít nam – dạng đúng?',
        options: [
          'setaṃ assaṃ',
          'seto asso',
          'setā assā',
          'setāni assāni',
        ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
      QuizQuestion(
        id: 'lesson15_q02',
        questionText: '“những bông hoa trắng, đỏ, vàng” – trung CC/ĐC số nhiều?',
        options: [
          'seto ratto pīto puppho',
          'setā rattā pītā pupphā',
          'setāni rattāni pītāni pupphāni',
          'setāya rattāya pītāya pupphāya',
        ],
        correctIndex: 2,
        practiceNumber: 'practice1',
      ),
      QuizQuestion(
        id: 'lesson15_q03',
        questionText: 'Imesu pupphesu … – “trong những bông hoa này” – cách gì?',
        options: [
          'Chủ Cách',
          'Sử Dụng Cách',
          'Định Sở Cách số nhiều',
          'Đối Cách',
        ],
        correctIndex: 2,
        practiceNumber: 'practice1',
      ),
      QuizQuestion(
        id: 'lesson15_q04',
        questionText: 'Iminā dīghena maggena – phân tích đúng?',
        options: [
          'CC số ít nam',
          'SDC số ít nam – “bằng con đường dài này”',
          'ĐSC số nhiều',
          'CĐC',
        ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
      QuizQuestion(
        id: 'lesson15_q05',
        questionText: 'Hậu tố tạo tính từ sở hữu cho danh từ tận -a là?',
        options: [
          '-mantu',
          '-vantu',
          '-tara',
          '-īya',
        ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
      QuizQuestion(
        id: 'lesson15_q06',
        questionText: 'guṇavantu – Chủ Cách số ít Nam là?',
        options: [
          'guṇavantaṃ',
          'guṇavantā',
          'guṇavā',
          'guṇavante',
        ],
        correctIndex: 2,
        practiceNumber: 'practice1',
      ),
      QuizQuestion(
        id: 'lesson15_q07',
        questionText: '“Imassa gilānassa uṇhaṃ udakaṃ dātabbaṃ.” – uṇhaṃ hòa hợp với?',
        options: [
          'gilānassa – nam STC sg',
          'udakaṃ – trung CC/ĐC sg',
          'dātabbaṃ',
          'imassa',
        ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
      QuizQuestion(
        id: 'lesson15_q08',
        questionText: 'ima – nữ Định Sở Cách số ít gồm?',
        options: [
          'imamhi / imasmiṃ',
          'imissaṃ, imāyaṃ, assaṃ',
          'imāsu',
          'imāya',
        ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
      QuizQuestion(
        id: 'lesson15_q09',
        questionText: 'amu – nữ CC/ĐC số nhiều theo sách Bài 15 là?',
        options: [
          'amū',
          'amūyo',
          'amuyo',
          'amūni',
        ],
        correctIndex: 2,
        practiceNumber: 'practice1',
      ),
      QuizQuestion(
        id: 'lesson15_q10',
        questionText: '“Taruṇehi narehi ca taruṇīhi nārīhi ca …” – taruṇīhi là?',
        options: [
          'Nam SDC số nhiều',
          'Nữ SDC số nhiều – hòa hợp với nārīhi',
          'Trung ĐSC',
          'CC số ít',
        ],
        correctIndex: 1,
        practiceNumber: 'practice1',
      ),
    ],
    fabAnswers: const [
      FabAnswerItem(
          en: 'Adj -a: m. -o, nt. -aṃ/-āni, f. -ā.',
          vi:
              'Tính từ -a: Nam CC sg -o (seto asso), Trung -aṃ / -āni (setaṃ / setāni pupphāni), Nữ -ā (setā mālā).'),
      FabAnswerItem(
          en: 'Agreement: imāni khuddakāni phalāni – mahantāni rukkhāni.',
          vi:
              'Hòa hợp Tánh–Số–Cách: imāni khuddakāni phalāni – mahantāni rukkhāni – dīghena maggena.'),
      FabAnswerItem(
          en: 'ima declension summary.',
          vi:
              'ima: ayaṃ / imaṃ / iminā / imassa / imasmiṃ – ime / imesu / imesaṃ. Nữ: imāya / imissā / imissaṃ.'),
      FabAnswerItem(
          en: 'amu declension summary.',
          vi:
              'amu: asu/amuko – amuṃ – amunā – amussa/amuno – amumhi || số nhiều: amū / amūni / amuyo – amūhi – amūsaṃ – amūsu.'),
      FabAnswerItem(
          en: '-vantu/-mantu: Nom. sg. m. -ā; otherwise like pacanta.',
          vi:
              '-vantu (a,ā) / -mantu (i,u): guṇavantu → CC sg guṇavā, còn lại biến như pacanta – Bài 14.'),
      FabAnswerItem(
          en: 'Color adjectives: nīla, pīta, ratta, seta, kaṇha.',
          vi:
              'Màu sắc: nīla, pīta, ratta, seta, kaṇha. Trạng thái: dīgha, mahanta, khuddaka, ucca, nīca, majjhima, antima, taruṇa, sīta, uṇha, sukhita.'),
      FabAnswerItem(
          en: 'Homage formula: Namo tassa Bhagavato arahato sammāsambuddhassa.',
          vi:
              'Công thức đảnh lễ: Namo tassa Bhagavato arahato sammāsambuddhassa – CĐC sg.'),
    ],
    fabVocab: const [],
    fabPhrases: const [],
  );
}

// ──────────────────────────────────────────────────────────────
// AGGREGATE
// ──────────────────────────────────────────────────────────────
List<LessonDay> getLesson15Data() => [
      getLesson15Day1(),
      getLesson15Day2(),
    ];

class Lesson15Bundle {
  static LessonMeta meta = getLesson15Meta();
  static LessonDay day1 = getLesson15Day1();
  static LessonDay day2 = getLesson15Day2();
  static List<LessonDay> all = getLesson15Data();
}
