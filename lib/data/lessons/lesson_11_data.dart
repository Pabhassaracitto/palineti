// lesson_11.dart
// Bài học số 11: Danh từ Nam/Trung/Nữ "-u" & "-ū" + Mệnh Lệnh Cách (Pañcamī)
// An Elementary Pāḷi Course – Nārada Mahāthera
// ---------------------------------------------------------------------------

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

// ──────────────────────────────────────────────────────────────
// LESSON META
// ──────────────────────────────────────────────────────────────
LessonMeta getLesson11Meta() => const LessonMeta(
      id: 'theme_11_lesson',
      lessonNumber: 11,
      titleVi: 'DT Nam/Trung/Nữ "-u/-ū" & Mệnh Lệnh Cách (Pañcamī)',
      titleEn: 'Masculine/Neuter/Feminine -u/-ū Stems & Imperative (Pañcamī)',
      iconEmoji: '🧘',
      colorValue: 0xFF5B2C6F,
      description:
          'Biến cách danh từ đuôi -u/-ū (bhikkhu/āyu/dhenu/vadhū); danh từ -tar (pitu/mātu/bhātu/satthu); Mệnh Lệnh Cách Pañcamī với đuôi -atu/-antu/-a/-āhi/-atha/-āmi/-āma; hạt từ cấm mā; cấu trúc yāva…tāva.',
      complexity: LessonComplexity.high,
      estimatedMinutes: 50,
    );

// ──────────────────────────────────────────────────────────────
// VOCABULARY (22 danh từ + 5 động từ + 6 bất biến từ = 33 mục)
// ──────────────────────────────────────────────────────────────
final kLesson11Vocab = <PaliVocabModel>[
  // --- Nam "-u" / "-ū" / "-tar" ---
  _v(1, 'bhikkhu', 'masc_u', 'vị tỳ-khưu', 'mendicant, monk', 'bhik-khu',
      'Bhikkhūnaṃ dhammaṃ deseti.', 'Ngài thuyết Pháp cho các tỳ-khưu.'),
  _v(2, 'bhagavantu', 'adj_vantu', 'Đức Thế Tôn, bậc may mắn',
      'the Exalted One, the Blessed One', 'bha-ga-vā',
      'Bhagavā dhammaṃ deseti.', 'Đức Thế Tôn thuyết Pháp.'),
  _v(3, 'vidū', 'masc_u', 'bậc trí, người thông suốt', 'knower, wise man',
      'vi-dū', 'Sabbaññū vidūnaṃ aggo.',
      'Bậc Toàn Giác là vị cao nhất trong các bậc trí.'),
  _v(4, 'satthu', 'tar_root', 'Đạo Sư, vị thầy', 'teacher, adviser',
      'sat-thā', 'Satthā dhammaṃ deseti.', 'Đạo Sư thuyết Pháp.'),
  _v(5, 'pitu', 'tar_root', 'cha', 'father', 'pi-tā',
      'Mayhaṃ pitu Buddho viya.', 'Cha tôi như Đức Phật.'),
  _v(6, 'bhātu', 'tar_root', 'anh trai', 'brother', 'bhā-tā',
      'Mayhaṃ bhātā Buddho viya.', 'Anh tôi như Đức Phật.'),
  _v(7, 'kataññū', 'masc_u', 'người biết ơn', 'grateful person',
      'ka-tañ-ñū', 'Sissā sadā kataññū hotha.',
      'Các học trò hãy luôn là người biết ơn.'),
  _v(8, 'kuñjara', 'masc_a', 'con voi đực', 'elephant', 'kuñ-ja-ro',
      'Kuñjaro naḷāgāraṃ bhindati.', 'Con voi phá chuồng tranh.'),
  _v(9, 'maccu', 'masc_u', 'sự chết, thần chết', 'death', 'mac-cu',
      'Maccuno senaṃ dhunāmi.', 'Tôi phá hủy đội quân của thần chết.'),
  _v(10, 'pañha', 'masc_a', 'câu hỏi', 'question', 'pan-ho',
      'Bhikkhumhā pañhaṃ pucchāma.', 'Chúng tôi hỏi câu hỏi từ vị tỳ-khưu.'),
  _v(11, 'yāgu', 'masc_u', 'cháo', 'rice-gruel', 'yā-gu',
      'Madhunā yāguṃ pivāmi.', 'Tôi uống cháo với mật ong.'),
  _v(12, 'madhu', 'masc_u', 'mật ong', 'honey', 'ma-dhu',
      'Madhuṃ pivāmi.', 'Tôi uống mật ong.'),

  // --- Nữ "-u" / "-ū" / "-tar" / "-ā" ---
  _v(13, 'dhenu', 'fem_u', 'con bò cái', 'cow', 'dhe-nu',
      'Dhenuyā khīraṃ pivāma.', 'Chúng tôi uống sữa của con bò cái.'),
  _v(14, 'vadhū', 'fem_u', 'cô dâu, người vợ trẻ', 'bride, young wife',
      'va-dhū', 'Vadhuyo patīhi saddhiṃ vasanti.',
      'Các cô dâu sống cùng chồng.'),
  _v(15, 'mātu', 'tar_root', 'mẹ', 'mother', 'mā-tā',
      'Mayhaṃ mātu bhikkhunī viya.', 'Mẹ tôi như vị tỳ-khưu-ni.'),
  _v(16, 'senā', 'fem_a', 'đội quân', 'army', 'se-nā',
      'Maccuno senaṃ dhunāmi.', 'Tôi phá hủy đội quân của thần chết.'),

  // --- Trung "-u" / "-a" ---
  _v(17, 'āyu', 'neut_u', 'tuổi thọ, đời sống', 'age, life', 'aa-yu',
      'Āyuṃ labhitvā ciraṃ jīvāmi.',
      'Tôi sống lâu sau khi nhận được tuổi thọ.'),
  _v(18, 'cakkhu', 'neut_u', 'con mắt', 'eye', 'cak-khu',
      'Cakkhūhi pāpaṃ na passāmi.', 'Tôi không thấy điều ác bằng con mắt.'),
  _v(19, 'dāru', 'neut_u', 'củi, gỗ', 'wood, fire-wood', 'dā-ru',
      'Aṭaviyā dāruṃ āharitvā aggiṃ karomi.',
      'Tôi mang củi từ rừng rồi làm lửa.'),
  _v(20, 'khīra', 'neut_u', 'sữa', 'milk', 'khii-ra',
      'Dhenuyā khīraṃ pivāma.', 'Chúng tôi uống sữa con bò cái.'),
  _v(21, 'tiṇa', 'neut_a', 'cỏ', 'grass', 'ti-ṇa',
      'Dhenūnaṃ tiṇaṃ demi.', 'Tôi cho cỏ cho những con bò cái.'),
  _v(22, 'dīpa', 'neut_a', 'ngọn đèn, hòn đảo', 'lamp, island', 'dii-pa',
      'Dīpaṃ pajjalāmi.', 'Tôi thắp ngọn đèn.'),

  // --- 5 động từ mới ---
  _v(23, 'bujjhati', 'verb_pres', 'hiểu, giác ngộ', 'understands (budha)',
      'buj-jha-ti', 'Bhikkhū pañhaṃ sādhukaṃ bujjhantu.',
      'Các tỳ-khưu hãy hiểu câu hỏi một cách tốt đẹp.'),
  _v(24, 'dhunāti', 'verb_pres', 'phá hủy, loại bỏ', 'destroys (dhu)',
      'dhu-nā-ti', 'Dhunātha maccuno senaṃ.',
      'Hãy phá hủy đội quân của thần chết.'),
  _v(25, 'kujjhati', 'verb_pres', 'tức giận', 'gets angry (kudha)',
      'kuj-jha-ti', 'Bhikkhūsu mā kujjhatha.',
      'Đừng tức giận với các tỳ-khưu.'),
  _v(26, 'jīvati', 'verb_pres', 'sống', 'lives (jīva)', 'jii-va-ti',
      'Āyuṃ labhitvā ciraṃ jīvatha!',
      'Các bạn hãy sống lâu sau khi nhận được tuổi thọ!'),
  _v(27, 'pucchati', 'verb_pres', 'hỏi', 'asks (puccha)', 'puc-cha-ti',
      'Bhante, bhikkhumhā mayaṃ pañhaṃ pucchāma.',
      'Thưa ngài, chúng tôi hỏi câu hỏi từ vị tỳ-khưu.'),

  // --- 6 bất biến từ ---
  _v(28, 'āvuso', 'indeclinable', 'bạn hữu, hiền đệ (xưng hô)',
      'friend, brother (address)', 'aa-vu-so',
      'Āvuso, idha āgaccha.', 'Này bạn, hãy đến đây.'),
  _v(29, 'bhante', 'indeclinable', 'ngài, hiền huynh (xưng hô lễ phép)',
      'Lord, Rev. Sir, Venerable Sir', 'bhan-te',
      'Bhante, dhammaṃ desetu.', 'Thưa ngài, hãy thuyết Pháp.'),
  _v(30, 'sādhukaṃ', 'indeclinable', 'tốt đẹp, một cách tốt đẹp', 'well',
      'saa-dhu-kaṃ', 'Sādhukaṃ suṇātha.', 'Hãy nghe một cách tốt đẹp.'),
  _v(31, 'yāva', 'indeclinable', 'cho đến khi nào (đại từ quan hệ)',
      'till, as long as', 'yaa-va',
      "Yāvā'haṃ gacchāmi tāva idha tiṭṭhatha.",
      'Cho đến khi tôi đi, các bạn hãy đứng đây.'),
  _v(32, 'tāva', 'indeclinable', 'đến khi đó (đại từ chỉ định)', 'until, so long',
      'taa-va',
      "Yāvā'haṃ gacchāmi tāva idha tiṭṭhatha.",
      'Cho đến khi tôi đi, các bạn hãy đứng đây.'),
  _v(33, 'mā', 'indeclinable', 'đừng (hạt từ cấm chế)', 'do not (prohibitive)',
      'maa', 'Mā gaccha!', 'Đừng đi!'),
];

PaliVocabModel _v(int id, String root, String paradigmId, String wordVi,
    String wordEn, String pronunciation, String examplePali, String exampleVi) {
  final num = id.toString().padLeft(3, '0');
  return PaliVocabModel(
    id: 'pv_L11_$num',
    root: root,
    paradigmId: paradigmId,
    wordVi: wordVi,
    wordEn: wordEn,
    lessonId: 'lesson_11',
    pronunciation: pronunciation,
    examplePali: examplePali,
    exampleVi: exampleVi,
  );
}

// ──────────────────────────────────────────────────────────────
// DAY 1
// ──────────────────────────────────────────────────────────────
LessonDay getLesson11Day1() => LessonDay(
      id: 'lesson11_day1',
      dayNumber: 1,
      themeId: 'theme_11_lesson',
      titleVi: 'Ngày 1 — Lý thuyết & Từ vựng: DT Nam/Trung/Nữ "-u/-ū" & Mệnh Lệnh Cách',
      phases: [
        _buildDay1Phase1(),
        _buildDay1Phase2(),
        _buildDay1Phase3(),
      ],
    );

LessonPhase _buildDay1Phase1() => LessonPhase(
      id: 'lesson11_phase1',
      phaseTypeStr: 'read_listen',
      titleVi: '📘 Lý thuyết: DT Nam/Trung/Nữ "-u/-ū" & Mệnh Lệnh Cách',
      paradigmId: 'masc_u',
      paradigmRoot: 'bhikkhu',
      highlightedCases: const ['nom', 'acc', 'ins'],
      contentVi: '''🎯 MỤC TIÊU BÀI 11
───────────────────
• Học biến cách danh từ đuôi "-u" và "-ū" cho 3 tánh: Nam (bhikkhu), Trung (āyu), Nữ (dhenu, vadhū)
• Học danh từ đuôi "-tar" (bhātu, satthu, pitu, mātu) và 3 danh từ đặc biệt (bhagavantu, vidū)
• Học Mệnh Lệnh Cách (Pañcamī): -atu/-antu, -a/-āhi/-atha, -āmi/-āma + hạt cấm chế mā
• Nắm 22 danh từ mới + 5 động từ + 6 bất biến từ

══════════════════════════════════════════════════════
A. DANH TỪ -u / -ū (3 TÁNH)
══════════════════════════════════════════════════════
📌 Nam -u (bhikkhu - vị tỳ-khưu): CC bhikkhu, ĐC bhikkhuṃ, SDC bhikkhunā, CĐC/STC bhikkhuno/bhikkhussa, ĐSC bhikkhumhi. Số nhiều: CC bhikkhū/bhikkhavo, ĐC bhikkhū, SDC bhikkhūbhi, CĐC/STC bhikkhūnaṃ, ĐSC bhikkhūsu.

📌 Trung -u (āyu - tuổi thọ): Giống bhikkhu trừ CC/HC/ĐC số ít: āyu, số nhiều: āyū/āyūni. Các cách còn lại giống bhikkhu.

📌 Nữ -u (dhenu - bò cái): CC/ HC dhenu, ĐC dhenuṃ, SDC/XXC dhenuyā, CĐC/STC dhenuyā, ĐSC dhenuyā/dhenuyaṃ. Số nhiều: dhenū/dhenuyo, dhenūbhi, dhenūnaṃ, dhenūsu.
📌 Nữ -ū (vadhū - cô dâu): Tương tự dhenu, CC vadhū, ĐC vadhūṃ.

[Bảng chi tiết sẽ hiện bằng widget tương tác bên dưới, highlight SDC & CĐC]

══════════════════════════════════════════════════════
B. DANH TỪ -tar (chỉ quan hệ)
══════════════════════════════════════════════════════
bhātu (anh trai): CC bhātā, ĐC bhātaraṃ, SDC bhātarā/bhātunā, CĐC bhātu/bhātuno/bhātussa, ĐSC bhātari. Số nhiều: bhātaro, bhātare, bhātarehi, bhātarānaṃ/bhātūnaṃ, bhātaresu.

Các từ đặc biệt:
• bhagavantu (Thế Tôn): CC bhagavā, STC bhagavato, ĐC bhagavantaṃ
• vidū (bậc trí): CC vidū, STC viduno, ĐC viduṃ
• mātu (mẹ): CC mātā, ĐC mātaraṃ, SDC mātuyā

══════════════════════════════════════════════════════
C. MỆNH LỆNH CÁCH (Pañcamī)
══════════════════════════════════════════════════════
Diễn tả Mệnh Lệnh (hãy...) hoặc Mong Ước (mong...).

Đuôi:
• Ngôi 3: -atu (ít) / -antu (nhiều) → pacatu (hãy để anh ta nấu), pacantu (họ nấu)
• Ngôi 2: -a / -āhi (ít) / -atha (nhiều) → paca/pacāhi (bạn hãy nấu), pacatha (các bạn hãy nấu)
• Ngôi 1: -āmi (ít) / -āma (nhiều) → pacāmi (để tôi nấu), pacāma (để chúng ta nấu)

⭐ Quy tắc: Nguyên âm trước -hi, -mi, -ma LUÔN dài. Ngôi 2 ít có thêm -a.

Hạt cấm chế mā + Mệnh Lệnh = đừng:
• mā gaccha = đừng đi
• Thường dùng với Quá khứ Ngôi 3: mā agamāsi = đừng đi

Ví dụ:
• Idha āgaccha, (Bạn) hãy lại đây!
• Tumhe idha tiṭṭhatha, các bạn hãy đứng ở đây!
• Ahaṃ Buddho bhavāmi, mong tôi trở thành Phật.
• Buddho dhammaṃ desetu, mong Đức Phật hãy thuyết Pháp.

══════════════════════════════════════════════════════
📚 22 DANH TỪ + 5 ĐỘNG TỪ + 6 BẤT BIẾN TỪ
══════════════════════════════════════════════════════
Xem FAB bên dưới. Chú ý: āvuso/bhante dùng xưng hô, yāva/tāva là cặp quan hệ (cho đến khi... đến khi đó), mā là cấm chế.

🔁 CÂU ANCHOR: Buddho dhammaṃ desetu (Mong Phật thuyết Pháp)
''',
      contentEn:
          'Lesson 11 covers masculine/neuter/feminine -u and -ū declensions (bhikkhu, āyu, dhenu, vadhū), -tar stems (pitu/mātu/bhātu/satthu), the Imperative/Benedictive mood (Pañcamī) with endings -atu/-antu/-a/-āhi/-atha/-āmi/-āma, the prohibitive particle "mā", and the correlative pair yāva…tāva (as long as…so long).',
      fabVocab: const [
        FabVocabItem(wordEn: 'bhikkhu', pronunciation: 'bhik-khu', wordVi: 'vị tỳ-khưu', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'bhagavantu', pronunciation: 'bha-ga-vā', wordVi: 'Đức Thế Tôn, bậc may mắn', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'vidū', pronunciation: 'vi-dū', wordVi: 'bậc trí, người thông suốt', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'satthu', pronunciation: 'sat-thā', wordVi: 'Đạo Sư, vị thầy', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'pitu', pronunciation: 'pi-tā', wordVi: 'cha', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'bhātu', pronunciation: 'bhā-tā', wordVi: 'anh trai', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'dhenu', pronunciation: 'dhe-nu', wordVi: 'con bò cái', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'vadhū', pronunciation: 'va-dhū', wordVi: 'cô dâu, người vợ trẻ', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'mātu', pronunciation: 'mā-tā', wordVi: 'mẹ', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'āyu', pronunciation: 'aa-yu', wordVi: 'tuổi thọ, đời sống', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'cakkhu', pronunciation: 'cak-khu', wordVi: 'con mắt', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'dāru', pronunciation: 'dā-ru', wordVi: 'củi, gỗ', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'khīra', pronunciation: 'khii-ra', wordVi: 'sữa', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'tiṇa', pronunciation: 'ti-ṇa', wordVi: 'cỏ', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'dīpa', pronunciation: 'dii-pa', wordVi: 'ngọn đèn, hòn đảo', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'kataññū', pronunciation: 'ka-tañ-ñū', wordVi: 'người biết ơn', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'kuñjara', pronunciation: 'kuñ-ja-ro', wordVi: 'con voi đực', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'maccu', pronunciation: 'mac-cu', wordVi: 'sự chết, thần chết', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'pañha', pronunciation: 'pan-ho', wordVi: 'câu hỏi', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'yāgu', pronunciation: 'yā-gu', wordVi: 'cháo', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'madhu', pronunciation: 'ma-dhu', wordVi: 'mật ong', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'senā', pronunciation: 'se-nā', wordVi: 'đội quân', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'bujjhati', pronunciation: 'buj-jha-ti', wordVi: 'hiểu, giác ngộ (budha)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'dhunāti', pronunciation: 'dhu-nā-ti', wordVi: 'phá hủy, loại bỏ (dhu)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'kujjhati', pronunciation: 'kuj-jha-ti', wordVi: 'tức giận (kudha)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'jīvati', pronunciation: 'jii-va-ti', wordVi: 'sống (jīva)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'pucchati', pronunciation: 'puc-cha-ti', wordVi: 'hỏi (puccha)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'āvuso', pronunciation: 'aa-vu-so', wordVi: 'bạn hữu, hiền đệ (xưng hô)', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'bhante', pronunciation: 'bhan-te', wordVi: 'ngài, hiền huynh (xưng hô lễ phép)', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'sādhukaṃ', pronunciation: 'saa-dhu-kaṃ', wordVi: 'tốt đẹp, một cách tốt đẹp', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'yāva', pronunciation: 'yaa-va', wordVi: 'cho đến khi nào (đại từ quan hệ)', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'tāva', pronunciation: 'taa-va', wordVi: 'đến khi đó (đại từ chỉ định)', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'mā', pronunciation: 'maa', wordVi: 'đừng (hạt từ cấm chế)', partOfSpeech: 'bat_bien_tu'),
      ],
      fabPhrases: const [
        FabPhraseItem(phrase: '-atu (Ngôi 3 sg)', meaning: 'Mệnh Lệnh Cách — hãy để (anh ta) làm'),
        FabPhraseItem(phrase: '-antu (Ngôi 3 pl)', meaning: 'Mệnh Lệnh Cách — hãy để (họ) làm'),
        FabPhraseItem(phrase: '-a / -āhi (Ngôi 2 sg)', meaning: 'Mệnh Lệnh Cách — (bạn) hãy làm'),
        FabPhraseItem(phrase: '-atha (Ngôi 2 pl)', meaning: 'Mệnh Lệnh Cách — (các bạn) hãy làm'),
        FabPhraseItem(phrase: '-āmi (Ngôi 1 sg)', meaning: 'Mệnh Lệnh Cách — hãy để (tôi) làm'),
        FabPhraseItem(phrase: '-āma (Ngôi 1 pl)', meaning: 'Mệnh Lệnh Cách — hãy để (chúng tôi) làm'),
        FabPhraseItem(phrase: 'paca + āhi = pacāhi', meaning: '⭐ Trường âm trước -āhi'),
        FabPhraseItem(phrase: 'paca + āmi = pacāmi', meaning: '⭐ Trường âm trước -āmi'),
        FabPhraseItem(phrase: 'paca + āma = pacāma', meaning: '⭐ Trường âm trước -āma'),
        FabPhraseItem(phrase: 'Yāva... tāva...', meaning: '⭐ "Cho đến khi... thì..."'),
        FabPhraseItem(phrase: 'mā + [động từ]', meaning: '⭐ "đừng làm gì đó"'),
        FabPhraseItem(phrase: 'bhikkhunā (bhikkhu SDC)', meaning: '⭐ paradigm masc_u — bởi vị tỳ-khưu'),
        FabPhraseItem(phrase: 'bhikkhusmā (bhikkhu XXC)', meaning: '⭐ paradigm masc_u — từ vị tỳ-khưu'),
        FabPhraseItem(phrase: 'dhenuyā (dhenu SDC)', meaning: '⭐ paradigm fem_u — bởi/từ con bò cái'),
        FabPhraseItem(phrase: 'dhenūnaṃ (dhenu CĐC/STC pl)', meaning: '⭐ paradigm fem_u — của những con bò cái'),
      ],
    );

LessonPhase _buildDay1Phase2() => LessonPhase(
      id: 'lesson11_phase2',
      phaseTypeStr: 'mind_game',
      titleVi: '🧠 Ghép từ: 12 từ mới',
      contentVi: 'Nhấn ô tiếng Việt → đọc to Pāḷi → kiểm tra đáp án. 12 từ quan trọng nhất (bhikkhu, āyu, dhenu, pitu, mātu, bhagavantu...)',
      mixedSegments: const [
        MixedSegment(text: 'bhikkhu'), MixedSegment(text: 'vị tỳ-khưu', isVietnamese: true, answer: 'bhikkhu'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'āyu'), MixedSegment(text: 'tuổi thọ', isVietnamese: true, answer: 'āyu'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'dhenu'), MixedSegment(text: 'bò cái', isVietnamese: true, answer: 'dhenu'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'vadhū'), MixedSegment(text: 'cô dâu', isVietnamese: true, answer: 'vadhū'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'pitu'), MixedSegment(text: 'cha', isVietnamese: true, answer: 'pitu'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'mātu'), MixedSegment(text: 'mẹ', isVietnamese: true, answer: 'mātu'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'bhātu'), MixedSegment(text: 'anh trai', isVietnamese: true, answer: 'bhātu'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'satthu'), MixedSegment(text: 'Đạo Sư', isVietnamese: true, answer: 'satthu'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'bhagavantu'), MixedSegment(text: 'Thế Tôn', isVietnamese: true, answer: 'bhagavantu'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'cakkhu'), MixedSegment(text: 'con mắt', isVietnamese: true, answer: 'cakkhu'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'dāru'), MixedSegment(text: 'củi, gỗ', isVietnamese: true, answer: 'dāru'), MixedSegment(text: ' │ '),
        MixedSegment(text: 'senā'), MixedSegment(text: 'đội quân', isVietnamese: true, answer: 'senā'),
      ],
    );

LessonPhase _buildDay1Phase3() => LessonPhase(
      id: 'lesson11_phase3',
      phaseTypeStr: 'listening_quiz',
      titleVi: '🎧 Quiz: DT Nam/Trung/Nữ "-u/-ū" & Mệnh Lệnh Cách',
      contentVi:
          'Trả lời 7 câu hỏi trắc nghiệm về cách chia Mệnh Lệnh Cách và cách dùng các từ xưng hô Bhante, Āvuso.',
      questions: const [
        QuizQuestion(
          id: 'lesson11_q01',
          questionText:
              'Câu 1. Đuôi của động từ ở Ngôi 3 số ít thì Mệnh Lệnh Cách là gì?',
          options: ['-āmi', '-atu', '-a', '-atha'],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson11_q02',
          questionText:
              'Câu 2. Đuôi của động từ ở Ngôi 2 số nhiều thì Mệnh Lệnh Cách là gì?',
          options: ['-antu', '-atha', '-āma', '-āhi'],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson11_q03',
          questionText: '"Dhenu tiṇaṃ khādatu!" được dịch là:',
          options: [
            'Con bò cái đang ăn cỏ.',
            'Con bò cái đã ăn cỏ.',
            'Con bò cái, hãy ăn cỏ!',
            'Con bò cái sẽ ăn cỏ.',
          ],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson11_q04',
          questionText: '"Bhante" là cách xưng hô dùng để gọi ai?',
          options: [
            'Bạn bè đồng tu (ngang hàng)',
            'Người lớn tuổi hơn, bậc trên (lễ phép)',
            'Người nhỏ tuổi hơn',
            'Người lạ',
          ],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson11_q05',
          questionText:
              'Nguyên âm đứng trước đuôi nào trong Mệnh Lệnh Cách LUÔN được kéo dài (trường âm)?',
          options: [
            '-tu và -antu',
            '-a và -atha',
            '-āhi, -āmi, -āma',
            '-i và -ī',
          ],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson11_q06',
          questionText: '"Mā + [động từ MCC]" có nghĩa là gì?',
          options: [
            'Hãy làm gì đó.',
            'Mong làm gì đó.',
            'Đừng làm gì đó.',
            'Sẽ làm gì đó.',
          ],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson11_q07',
          questionText:
              "\"Yāvā'haṃ gacchāmi tāva idha tiṭṭhatha.\" có cấu trúc:",
          options: [
            '"Tôi đã đi rồi, các bạn đứng đây."',
            '"Cho đến khi tôi đi, các bạn hãy đứng đây."',
            '"Vì tôi đi, các bạn đứng đây."',
            '"Sau khi tôi đi, các bạn đứng đây."',
          ],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
      ],
      fabAnswers: const [
        FabAnswerItem(en: 'Answer 1 → B', vi: '① Đuôi Ngôi 3 số ít thì Mệnh Lệnh Cách là "-atu" (hãy để anh ta làm).'),
        FabAnswerItem(en: 'Answer 2 → B', vi: '② Đuôi Ngôi 2 số nhiều thì Mệnh Lệnh Cách là "-atha" (các bạn hãy làm).'),
        FabAnswerItem(en: 'Answer 3 → C', vi: '③ "khādatu" = khāda + tu = Ngôi 3 sg MCC → "hãy để (cô ấy) ăn". Đây là mệnh lệnh.'),
        FabAnswerItem(en: 'Answer 4 → B', vi: '④ "Bhante" = ngài, hiền huynh — dùng để gọi bậc trên (lễ phép). "Āvuso" = bạn hữu — dùng giữa các tỳ-khưu ngang hàng.'),
        FabAnswerItem(en: 'Answer 5 → C', vi: '⑤ Trường âm: Nguyên âm trước "-āhi", "-āmi", "-āma" LUÔN dài. (Vd: pacāhi, pacāmi, pacāma).'),
        FabAnswerItem(en: 'Answer 6 → C', vi: '⑥ "Mā" + động từ MCC = "đừng làm". Vd: "Mā gaccha!" = "Đừng đi!"'),
        FabAnswerItem(en: 'Answer 7 → B', vi: '⑦ "Yāva" = "cho đến khi" (đại từ quan hệ). "Tāva" = "đến khi đó" / "trong khoảng đó". Cấu trúc: Yāva [mệnh đề 1] tāva [mệnh đề 2].'),
      ],
      fabVocab: const [],
      fabPhrases: const [],
    );

// ──────────────────────────────────────────────────────────────
// DAY 2
// ──────────────────────────────────────────────────────────────
LessonDay getLesson11Day2() => LessonDay(
      id: 'lesson11_day2',
      dayNumber: 2,
      themeId: 'theme_11_lesson',
      titleVi: 'Ngày 2 — Luyện tập: DT Nam/Trung/Nữ "-u/-ū" & Mệnh Lệnh Cách',
      phases: [
        _buildDay2Phase1(),
        _buildDay2Phase2(),
        _buildDay2Phase3(),
      ],
    );

LessonPhase _buildDay2Phase1() => LessonPhase(
      id: 'lesson11_phase4',
      phaseTypeStr: 'read_listen',
      titleVi: '📖 Đọc hiểu: 32 câu ví dụ',
      contentVi: '''
══════════════════════════════════════════════════════
📖 BÀI TẬP 11 — Dịch 32 câu Pāḷi sang tiếng Việt
══════════════════════════════════════════════════════
Bài tập này tập trung vào:
• Danh từ đuôi "-u", "-ū" và "-tar"
• Mệnh Lệnh Cách (MCC) — đuôi -tu, -antu, -a/-āhi, -atha, -āmi, -āma
• Hạn chế "mā + MCC"
• Các từ xưng hô Āvuso, Bhante
• Cấu trúc "Yāva... tāva..." (Cho đến khi... thì...)

══════════════════════════════════════════════════════
💡 GỢI Ý DỊCH (cho các câu đầu tiên)
══════════════════════════════════════════════════════
① Sabbaññū bhikkhūnaṃ dhammaṃ desetu!
   → "Sabbaññū" (CC = Bậc Toàn Giác) + "bhikkhūnaṃ" (CĐC pl) + "dhammaṃ" (ĐC) + "desetu" (MCC 3 sg = hãy thuyết).
   → "Bậc Toàn Giác, hãy thuyết Pháp cho các tỳ-khưu!"

② Dhenu tiṇaṃ khādatu!
   → "Dhenu" (CC) + "tiṇaṃ" (ĐC) + "khādatu" (MCC 3 sg).
   → "Con bò cái, hãy ăn cỏ!"

③ Āvuso, aṭaviyā dāruṃ āharitvā aggiṃ karohi.
   → "Āvuso" (xưng hô bạn) + "aṭaviyā dāruṃ" (củi từ rừng) + "āharitvā" (Gerund) + "aggiṃ karohi" (hãy làm lửa).
   → "Này bạn, hãy mang củi từ rừng rồi làm lửa."

④ Gahapatayo, bhikkhūsu mā kujjhatha.
   → "Gahapatayo" (HC pl = Này các gia chủ) + "bhikkhūsu" (ĐSC pl) + "mā kujjhatha" (đừng tức giận).
   → "Này các gia chủ, đừng tức giận với các tỳ-khưu."

⑤ Bhikkhave, ahaṃ dhammaṃ desessāmi, sādhukaṃ suṇātha.
   → "Bhikkhave" (HC pl = Này các tỳ-khưu) + "ahaṃ" (tôi) + "dhammaṃ desessāmi" (sẽ thuyết Pháp) + "sādhukaṃ suṇātha" (hãy nghe tốt đẹp).
   → "Này các tỳ-khưu, tôi sẽ thuyết Pháp, hãy nghe một cách tốt đẹp."

⑦ Yāvā'haṃ gacchāmi tāva idha tiṭṭhatha.
   → "Yāva" = cho đến khi + "ahaṃ gacchāmi" = tôi đi + "tāva" = thì + "idha" = ở đây + "tiṭṭhatha" = các bạn hãy đứng.
   → "Cho đến khi tôi đi, các bạn hãy đứng đây."

══════════════════════════════════════════════════════
📋 MẸO DỊCH CÂU MỆNH LỆNH
══════════════════════════════════════════════════════
Cấu trúc mẫu:
   [Chủ ngữ] + [động từ MCC] + [bổ ngữ]

📌 Cách dịch:
   • "-atu/-antu" (3) → "hãy để (anh ta/họ) làm..."
   • "-a/-āhi" (2 sg) → "hãy (bạn) làm..."
   • "-atha" (2 pl) → "hãy (các bạn) làm..."
   • "-āmi/-āma" (1) → "hãy để (tôi/chúng tôi) làm..."

📌 Khi có "mā" ở đầu → "đừng làm...":
   • "Mā gaccha!" = "Đừng đi!"
   • "Mā kujjhatha!" = "Đừng tức giận!"

📌 Cấu trúc Yāva... tāva...:
   "Yāva [tôi làm gì] tāva [bạn làm gì]" = "Cho đến khi tôi làm, thì bạn hãy làm"
''',
      contentEn:
          'Reading hints for Exercise 11: identify Imperative endings (-tu, -antu, -a/-āhi, -atha, -āmi, -āma) and the prohibitive "mā"; then look for the yāva…tāva correlative pair meaning "as long as…so long". Note that "-āhi/-āmi/-āma" always lengthen the preceding vowel.',
    );

LessonPhase _buildDay2Phase2() => LessonPhase(
      id: 'lesson11_phase5',
      phaseTypeStr: 'mind_game',
      titleVi: '🧠 Ghép câu: 32 câu Exercise 11',
      contentVi:
          'Nhấn vào từng câu tiếng Việt → đọc to câu Pāḷi tương ứng → nhấn lại để xem đáp án.',
      mixedSegments: const [
        // ═══ Ex 1-8 ═══
        MixedSegment(text: '【Ex 1】 Sabbaññū bhikkhūnaṃ dhammaṃ desetu!'),
        MixedSegment(text: 'Bậc Toàn Giác, hãy thuyết Pháp cho các tỳ-khưu!', isVietnamese: true, answer: 'Sabbaññū bhikkhūnaṃ dhammaṃ desetu!'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 2】 Dhenu tiṇaṃ khādatu!'),
        MixedSegment(text: 'Con bò cái, hãy ăn cỏ!', isVietnamese: true, answer: 'Dhenu tiṇaṃ khādatu!'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 3】 Āvuso, aṭaviyā dāruṃ āharitvā aggiṃ karohi.'),
        MixedSegment(text: 'Này bạn, hãy mang củi từ rừng rồi làm lửa.', isVietnamese: true, answer: 'Āvuso, aṭaviyā dāruṃ āharitvā aggiṃ karohi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 4】 Gahapatayo, bhikkhūsu mā kujjhatha.'),
        MixedSegment(text: 'Này các gia chủ, đừng tức giận với các tỳ-khưu.', isVietnamese: true, answer: 'Gahapatayo, bhikkhūsu mā kujjhatha.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 5】 Bhikkhave, ahaṃ dhammaṃ desessāmi, sādhukaṃ suṇātha.'),
        MixedSegment(text: 'Này các tỳ-khưu, tôi sẽ thuyết Pháp, hãy nghe một cách tốt đẹp.', isVietnamese: true, answer: 'Bhikkhave, ahaṃ dhammaṃ desessāmi, sādhukaṃ suṇātha.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 6】 \"Dhunātha maccuno senaṃ - naḷāgāraṃ'va kuñjaro.\""),
        MixedSegment(text: '"Hãy phá hủy đội quân của thần chết — như con voi phá chuồng tranh."', isVietnamese: true, answer: "\"Dhunātha maccuno senaṃ - naḷāgāraṃ'va kuñjaro.\""),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 7】 Yāvā'haṃ gacchāmi tāva idha tiṭṭhatha."),
        MixedSegment(text: 'Cho đến khi tôi đi, các bạn hãy đứng đây.', isVietnamese: true, answer: "Yāvā'haṃ gacchāmi tāva idha tiṭṭhatha."),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 8】 Bhikkhū pañhaṃ sādhukaṃ bujjhantu!'),
        MixedSegment(text: 'Các tỳ-khưu hãy hiểu câu hỏi một cách tốt đẹp!', isVietnamese: true, answer: 'Bhikkhū pañhaṃ sādhukaṃ bujjhantu!'),
        MixedSegment(text: '   ───   '),
        // ═══ Ex 9-16 ═══
        MixedSegment(text: '【Ex 9】 Sissā, sadā kataññū hotha.'),
        MixedSegment(text: 'Này các học trò, hãy luôn là người biết ơn.', isVietnamese: true, answer: 'Sissā, sadā kataññū hotha.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 10】 Kataññuno, tumhe āyuṃ labhitvā ciraṃ jīvatha!'),
        MixedSegment(text: 'Này người biết ơn, các bạn hãy sống lâu sau khi nhận được tuổi thọ!', isVietnamese: true, answer: 'Kataññuno, tumhe āyuṃ labhitvā ciraṃ jīvatha!'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 11】 "Dhammaṃ pivatha, bhikkhavo."'),
        MixedSegment(text: '"Hãy uống Pháp, này các tỳ-khưu."', isVietnamese: true, answer: '"Dhammaṃ pivatha, bhikkhavo."'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 12】 Mayhaṃ cakkhūhi pāpaṃ na passāmi, Bhante.'),
        MixedSegment(text: 'Con mắt của tôi không thấy điều ác, thưa ngài.', isVietnamese: true, answer: 'Mayhaṃ cakkhūhi pāpaṃ na passāmi, Bhante.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 13】 Dhenuyā khīraṃ gahetvā madhunā saddhiṃ pivāma.'),
        MixedSegment(text: 'Chúng tôi uống sữa con bò cái trộn với mật ong.', isVietnamese: true, answer: 'Dhenuyā khīraṃ gahetvā madhunā saddhiṃ pivāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 14】 Āvuso, bhikkhūnaṃ purato mā tiṭṭhatha.'),
        MixedSegment(text: 'Này bạn, đừng đứng trước các tỳ-khưu.', isVietnamese: true, answer: 'Āvuso, bhikkhūnaṃ purato mā tiṭṭhatha.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 15】 Bhante, bhikkhumhā mayaṃ pañhaṃ pucchāma.'),
        MixedSegment(text: 'Thưa ngài, chúng tôi hỏi câu hỏi từ vị tỳ-khưu.', isVietnamese: true, answer: 'Bhante, bhikkhumhā mayaṃ pañhaṃ pucchāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 16】 Narā ca nāriyo ca bhikkhūhi dhammaṃ sādhukaṃ sutvā puññaṃ katvā sugatīsu uppajjantu!'),
        MixedSegment(text: 'Những người nam và nữ, sau khi nghe Pháp từ các tỳ-khưu một cách tốt đẹp và làm phước, hãy sinh ra ở các cõi lành!', isVietnamese: true, answer: 'Narā ca nāriyo ca bhikkhūhi dhammaṃ sādhukaṃ sutvā puññaṃ katvā sugatīsu uppajjantu!'),
        MixedSegment(text: '   ───   '),
        // ═══ Ex 17-24 (từ Exercise 11-B — Anh → Pāḷi) ═══
        MixedSegment(text: '【Ex 17】 So bhikkhavo vandatu!'),
        MixedSegment(text: 'Anh ấy hãy lễ bái các tỳ-khưu!', isVietnamese: true, answer: 'So bhikkhavo vandatu!'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 18】 Sabbaññū, ciraṃ jīva!'),
        MixedSegment(text: 'Bậc Toàn Giác, hãy sống lâu!', isVietnamese: true, answer: 'Sabbaññū, ciraṃ jīva!'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 19】 Aparaṇhe dhenūnaṃ tiṇaṃ mā dehi.'),
        MixedSegment(text: 'Vào buổi chiều, bạn đừng cho cỏ cho những con bò cái.', isVietnamese: true, answer: 'Aparaṇhe dhenūnaṃ tiṇaṃ mā dehi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 20】 Āvuso, yāvā'haṃ āgacchāmi tāva mā gaccha."),
        MixedSegment(text: 'Này bạn, cho đến khi tôi đến thì bạn đừng đi.', isVietnamese: true, answer: "Āvuso, yāvā'haṃ āgacchāmi tāva mā gaccha."),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 21】 Bhante, tumhākaṃ cakkhūhi na pāpaṃ passatha!'),
        MixedSegment(text: 'Thưa ngài, đừng thấy điều ác bằng con mắt của các ngài!', isVietnamese: true, answer: 'Bhante, tumhākaṃ cakkhūhi na pāpaṃ passatha!'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 22】 Mayaṃ bhūmiyā nisīditvā Bhikkhūnaṃ ovādaṃ suṇāma.'),
        MixedSegment(text: 'Chúng tôi ngồi trên đất và nghe lời khuyên của các tỳ-khưu.', isVietnamese: true, answer: 'Mayaṃ bhūmiyā nisīditvā Bhikkhūnaṃ ovādaṃ suṇāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 23】 Kataññuvo hotha!'),
        MixedSegment(text: 'Hãy là người biết ơn!', isVietnamese: true, answer: 'Kataññuvo hotha!'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 24】 Yāva mayaṃ aṭaviyā dāruṃ āharāma tāva te idha tiṭṭhantu.'),
        MixedSegment(text: 'Cho đến khi chúng tôi mang củi từ rừng, họ hãy đứng đây.', isVietnamese: true, answer: 'Yāva mayaṃ aṭaviyā dāruṃ āharāma tāva te idha tiṭṭhantu.'),
        MixedSegment(text: '   ───   '),
        // ═══ Ex 25-32 ═══
        MixedSegment(text: '【Ex 25】 Vadhuyo, patīhi mā kujjhatha.'),
        MixedSegment(text: 'Này các cô dâu, đừng tức giận với chồng.', isVietnamese: true, answer: 'Vadhuyo, patīhi mā kujjhatha.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 26】 Ahaṃ maccuno senaṃ dhunāmi!'),
        MixedSegment(text: 'Tôi phá hủy đội quân của thần chết!', isVietnamese: true, answer: 'Ahaṃ maccuno senaṃ dhunāmi!'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 27】 Ahaṃ madhunā yāguṃ pivāmi!'),
        MixedSegment(text: 'Tôi uống cháo với mật ong!', isVietnamese: true, answer: 'Ahaṃ madhunā yāguṃ pivāmi!'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 28】 Bhikkhu, mayaṃ tava āyuṃ jānāma!'),
        MixedSegment(text: 'Này tỳ-khưu, chúng tôi biết tuổi thọ của ngài!', isVietnamese: true, answer: 'Bhikkhu, mayaṃ tava āyuṃ jānāma!'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 29】 Mā kuñjarassa purato tiṭṭhāhi.'),
        MixedSegment(text: 'Đừng đứng trước con voi.', isVietnamese: true, answer: 'Mā kuñjarassa purato tiṭṭhāhi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 30】 Gahapatayo, sādhukaṃ tumhākaṃ jananiyo ca janake ca saṅgaṇhātha.'),
        MixedSegment(text: 'Này các gia chủ, hãy đối xử tốt với các mẹ và cha của các ngài.', isVietnamese: true, answer: 'Gahapatayo, sādhukaṃ tumhākaṃ jananiyo ca janake ca saṅgaṇhātha.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 31】 Mittā, yāva mayaṃ āgacchāma tāva mā Bhikkhūnaṃ yāguṃ pūjetha.'),
        MixedSegment(text: 'Này bạn bè, cho đến khi chúng tôi đến, đừng cúng dường cháo cho các tỳ-khưu.', isVietnamese: true, answer: 'Mittā, yāva mayaṃ āgacchāma tāva mā Bhikkhūnaṃ yāguṃ pūjetha.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 32】 Mā madhuṃ pivāhi, dāraka.'),
        MixedSegment(text: 'Đừng uống mật ong, này đứa trẻ.', isVietnamese: true, answer: 'Mā madhuṃ pivāhi, dāraka.'),
      ],
    );

LessonPhase _buildDay2Phase3() => LessonPhase(
      id: 'lesson11_phase6',
      phaseTypeStr: 'listening_quiz',
      titleVi: '🎧 Quiz: Dịch câu Exercise 11',
      contentVi:
          'Trả lời 6 câu hỏi trắc nghiệm bằng cách CHỌN BẢN DỊCH TIẾNG VIỆT ĐÚNG cho mỗi câu Pāḷi từ Exercise 11.',
      questions: const [
        QuizQuestion(
          id: 'lesson11_q08',
          questionText: 'Câu 1. "Dhenu tiṇaṃ khādatu!" có nghĩa là:',
          options: [
            'Con bò cái đang ăn cỏ.',
            'Con bò cái, hãy ăn cỏ!',
            'Con bò cái đã ăn cỏ.',
            'Con bò cái sẽ ăn cỏ.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson11_q09',
          questionText:
              'Câu 2. "Sabbaññū bhikkhūnaṃ dhammaṃ desetu!" có nghĩa là:',
          options: [
            'Bậc Toàn Giác sẽ thuyết Pháp cho các tỳ-khưu.',
            'Bậc Toàn Giác đang thuyết Pháp cho các tỳ-khưu.',
            'Bậc Toàn Giác, hãy thuyết Pháp cho các tỳ-khưu!',
            'Bậc Toàn Giác đã thuyết Pháp cho các tỳ-khưu.',
          ],
          correctIndex: 2,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson11_q10',
          questionText:
              "\"Yāvā'haṃ gacchāmi tāva idha tiṭṭhatha.\" có nghĩa là:",
          options: [
            'Vì tôi đi, các bạn hãy đứng đây.',
            'Sau khi tôi đi, các bạn đứng đây.',
            'Cho đến khi tôi đi, các bạn hãy đứng đây.',
            'Tôi đã đi, các bạn đứng đây.',
          ],
          correctIndex: 2,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson11_q11',
          questionText:
              'Câu 4. "Mayhaṃ cakkhūhi pāpaṃ na passāmi, Bhante." có nghĩa là:',
          options: [
            'Thưa ngài, tôi không thấy điều ác bằng con mắt của tôi.',
            'Thưa ngài, con mắt của tôi thấy điều ác.',
            'Thưa ngài, tôi không có con mắt.',
            'Thưa ngài, đừng thấy điều ác bằng con mắt.',
          ],
          correctIndex: 0,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson11_q12',
          questionText:
              'Câu 5. "Mā kuñjarassa purato tiṭṭhāhi." có nghĩa là:',
          options: [
            'Hãy đứng trước con voi.',
            'Đừng đứng trước con voi.',
            'Con voi đứng trước.',
            'Bạn đứng trước con voi rồi.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson11_q13',
          questionText:
              'Câu 6. "Kataññuno, tumhe āyuṃ labhitvā ciraṃ jīvatha!" có nghĩa là:',
          options: [
            'Các bạn đã sống lâu.',
            'Này người biết ơn, các bạn hãy sống lâu sau khi nhận được tuổi thọ!',
            'Các bạn sẽ nhận tuổi thọ.',
            'Các bạn đang sống lâu.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
      ],
      fabAnswers: const [
        FabAnswerItem(en: 'Answer 8 → B', vi: '① "khādatu" = khāda + tu = Ngôi 3 sg MCC → "hãy để (cô ấy) ăn". Đây là mệnh lệnh.'),
        FabAnswerItem(en: 'Answer 9 → C', vi: '② "desetu" = desa + tu = Ngôi 3 sg MCC → "hãy để (ngài) thuyết". Đây là lời thỉnh cầu/mong ước.'),
        FabAnswerItem(en: 'Answer 10 → C', vi: '③ "Yāva" = "cho đến khi" (đại từ quan hệ). "Tāva" = "đến khi đó / trong khoảng đó". Cấu trúc: Yāva [mệnh đề 1] tāva [mệnh đề 2].'),
        FabAnswerItem(en: 'Answer 11 → A', vi: '④ "Bhante" = thưa ngài (xưng hô lễ phép). "cakkhūhi" = SDC pl của "cakkhu" (= bằng con mắt). "na passāmi" = không thấy (Ngôi 1 sg Hiện tại).'),
        FabAnswerItem(en: 'Answer 12 → B', vi: '⑤ "Mā" + MCC = "đừng". "tiṭṭhāhi" = tiṭṭha + āhi = Ngôi 2 sg MCC → "hãy đứng" → "Mā tiṭṭhāhi" = "đừng đứng".'),
        FabAnswerItem(en: 'Answer 13 → B', vi: '⑥ "Kataññuno" = HC của "kataññū" (= này người biết ơn). "jīvatha" = jīva + atha = Ngôi 2 pl MCC → "hãy sống". "āyuṃ labhitvā" = Gerund (sau khi nhận được tuổi thọ).'),
      ],
      fabVocab: const [],
      fabPhrases: const [],
    );

// ──────────────────────────────────────────────────────────────
// AGGREGATE
// ──────────────────────────────────────────────────────────────
List<LessonDay> getLesson11Data() => [
      getLesson11Day1(),
      getLesson11Day2(),
    ];

class Lesson11Bundle {
  static LessonMeta meta = getLesson11Meta();
  static LessonDay day1 = getLesson11Day1();
  static LessonDay day2 = getLesson11Day2();
  static List<LessonDay> all = getLesson11Data();
}
