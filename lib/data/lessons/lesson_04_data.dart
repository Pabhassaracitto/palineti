// lesson_04.dart
// Bài học số 4: Biến cách ĐSC & HC của Danh từ Nam "-a"
//               + Ôn tập chia động từ + Bất biến từ Saddhiṃ & Sandhi
// An Elementary Pāḷi Course – Nārada Mahāthera
// ---------------------------------------------------------------------------

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

// ──────────────────────────────────────────────────────────────
// LESSON META
// ──────────────────────────────────────────────────────────────
LessonMeta getLesson04Meta() => const LessonMeta(
      id: 'theme_04_lesson',
      lessonNumber: 4,
      titleVi: 'ĐSC & HC (Nam -a) + Saddhiṃ & Sandhi',
      titleEn: 'Locative & Vocative of Masc. -a; Saddhiṃ & Sandhi',
      iconEmoji: '📙',
      colorValue: 0xFFBC4C00,
      description:
          'Định Sở (-e/-amhi/-asmiṃ / -esu), Hô Cách (-a/-ā / -ā); bất biến từ saddhiṃ; sandhi so\'pi, aham\'pi',
    );

// ──────────────────────────────────────────────────────────────
// VOCABULARY
// ──────────────────────────────────────────────────────────────
final kLesson04Vocab = <PaliVocabModel>[
  // 12 danh từ Nam mới
  _v(1, 'ākāsa', 'masc_a', 'bầu trời', 'sky', 'aa-kaa-so',
      'Ākāse suriyaṃ passāmi.', 'Tôi thấy mặt trời trên trời.'),
  _v(2, 'mañca', 'masc_a', 'chiếc giường', 'bed', 'man-cho',
      'Mañce supati.', 'Anh ta ngủ trên giường.'),
  _v(3, 'canda', 'masc_a', 'mặt trăng', 'moon', 'can-do',
      'Candaṃ ākāse passāmi.', 'Tôi thấy mặt trăng trên trời.'),
  _v(4, 'sakuṇa', 'masc_a', 'con chim', 'bird', 'sa-ku-ṇo',
      'Sakuṇā rukkhesu vasanti.', 'Những con chim sống trên các cội cây.'),
  _v(5, 'kassaka', 'masc_a', 'người nông dân', 'farmer', 'kas-sa-ko',
      'Kassako mañce supati.', 'Người nông dân ngủ trên giường.'),
  _v(6, 'samudda', 'masc_a', 'biển, đại dương', 'sea, ocean', 'sa-mud-do',
      'Macchā samuddesu uppajjanti.', 'Cá sinh ra trong biển.'),
  _v(7, 'maccha', 'masc_a', 'con cá', 'fish', 'mac-cho',
      'Macchā taḷāke kīḷanti.', 'Cá chơi trong hồ.'),
  _v(8, 'suriya', 'masc_a', 'mặt trời', 'sun', 'su-ri-yo',
      'Suriyo ākāse āmodati.', 'Mặt trời tỏa sáng trên trời.'),
  _v(9, 'magga', 'masc_a', 'đường, đạo', 'way, road, path', 'mag-go',
      'Mayaṃ magge na kīḷāma.', 'Chúng tôi không chơi trên đường.'),
  _v(10, 'vāṇija', 'masc_a', 'người thương gia', 'merchant', 'vaa-ṇi-jo',
      'Vāṇijo āpaṇe vasati.', 'Người thương gia ở tại chợ.'),
  _v(11, 'maggika', 'masc_a', 'lữ khách, lữ hành', 'traveller', 'mag-gi-ko',
      'Maggikā maggesu vicaranti.', 'Các lữ khách đi lang thang trên đường.'),
  _v(12, 'loka', 'masc_a', 'thế giới, nhân loại', 'world, mankind', 'lo-ko',
      'Buddhā lokasmiṃ uppajjanti.', 'Chư Phật sinh ra trong thế giới.'),

  // 6 động từ mới
  _v(13, 'kīḷati', 'verb_pres', 'chơi, đùa (kīḷa)', 'plays', 'kii-ḷa-ti',
      'Dārakā magge kīḷanti.', 'Đám trẻ chơi trên đường.'),
  _v(14, 'uppajjati', 'verb_pres', 'sinh lên, sinh ra (pada + u)', 'arises',
      'up-paj-ja-ti', 'Buddho lokasmiṃ uppajjati.', 'Đức Phật sinh ra ở đời.'),
  _v(15, 'passati', 'verb_pres', 'thấy, nhìn (passa — thay disa)', 'sees',
      'pas-sa-ti', 'So candaṃ passati.', 'Anh ấy thấy mặt trăng.'),
  _v(16, 'vasati', 'verb_pres', 'ở, cư ngụ, sống (vasa)', 'dwells', 'va-sa-ti',
      'Bhikkhu ārāme vasati.', 'Tỳ-khưu ở trong tịnh xá.'),
  _v(17, 'supati', 'verb_pres', 'ngủ (supa)', 'sleeps', 'su-pa-ti',
      'So mañce supati.', 'Ông ngủ trên giường.'),
  _v(18, 'vicarati', 'verb_pres', 'đi lang thang, du hành (cara + vi)', 'wanders',
      'vi-ca-ra-ti', 'Samaṇo gāmesu vicarati.', 'Vị sa-môn đi lang thang trong làng.'),

  // 15 bất biến từ (indeclinable — vẫn cho vào vocab để dò được)
  _v(19, 'ajja', 'indeclinable', 'hôm nay, ngày nay', 'today', 'aj-ja',
      'Ajja so āgacchati.', 'Hôm nay anh ấy đến.'),
  _v(20, 'āma', 'indeclinable', 'vâng (đồng ý)', 'yes', 'aa-ma',
      'Āma, ahaṃ gacchāmi.', 'Vâng, tôi đi.'),
  _v(21, 'api', 'indeclinable', 'cũng, vả lại (Sandhi)', 'also, too', 'a-pi',
      "So'pi gacchati.", 'Anh ấy cũng đi.'),
  _v(22, 'ca', 'indeclinable', 'cũng, và', 'and, also', 'ca',
      'So ca gacchati.', 'Và anh ấy đi.'),
  _v(23, 'idāni', 'indeclinable', 'bây giờ', 'now', 'i-daa-ni',
      'Idāni dhammaṃ desemi.', 'Bây giờ tôi thuyết Pháp.'),
  _v(24, 'idha', 'indeclinable', 'ở đây', 'here', 'id-ha',
      'Idha vasāma.', 'Chúng tôi ở đây.'),
  _v(25, 'kadā', 'indeclinable', 'khi nào', 'when?', 'ka-daa',
      'Kadā tumhe āgacchatha?', 'Khi nào các bạn đến?'),
  _v(26, 'kasmā', 'indeclinable', 'tại sao', 'why?', 'kas-maa',
      'Kasmā tvaṃ gacchasi?', 'Tại sao bạn đi?'),
  _v(27, 'kuhiṃ', 'indeclinable', 'ở đâu', 'where?', 'ku-hiṃ',
      'Kuhiṃ so vasati?', 'Ông ở đâu?'),
  _v(28, 'kuto', 'indeclinable', 'từ đâu', 'from where?', 'ku-to',
      'Kuto tvaṃ āgacchasi?', 'Bạn đến từ đâu?'),
  _v(29, 'na', 'indeclinable', 'không, bất, phải', 'not', 'na',
      'Na so gacchati.', 'Anh ấy không đi.'),
  _v(30, 'puna', 'indeclinable', 'lại nữa', 'again', 'pu-na',
      'Puna so āgacchati.', 'Anh ấy lại đến nữa.'),
  _v(31, 'sabbadā', 'indeclinable', 'hằng ngày', 'always, every day',
      'sab-ba-daa', 'Sabbadā dhammaṃ suṇāti.', 'Hằng ngày ông nghe Pháp.'),
  _v(32, 'sadā', 'indeclinable', 'luôn luôn', 'always, ever', 'sa-daa',
      'Sadā satiyā viharati.', 'Luôn luôn ông sống với niệm.'),
  _v(33, 'saddhiṃ', 'indeclinable', 'với (đi với SDC, đặt sau danh từ)',
      'together with', 'sad-dhiṃ',
      'Mātā puttena saddhiṃ gacchati.', 'Người mẹ đi với con trai.'),
];

PaliVocabModel _v(int id, String root, String paradigmId, String wordVi,
    String wordEn, String pronunciation, String examplePali, String exampleVi) {
  final num = id.toString().padLeft(3, '0');
  return PaliVocabModel(
    id: 'pv_L04_$num',
    root: root,
    paradigmId: paradigmId,
    wordVi: wordVi,
    wordEn: wordEn,
    lessonId: 'lesson_04',
    pronunciation: pronunciation,
    examplePali: examplePali,
    exampleVi: exampleVi,
  );
}

// ──────────────────────────────────────────────────────────────
// DAY 1
// ──────────────────────────────────────────────────────────────
LessonDay getLesson04Day1() => LessonDay(
      id: 'lesson04_day1',
      dayNumber: 1,
      themeId: 'theme_04_lesson',
      titleVi: 'Ngày 1 — Lý thuyết & Từ vựng',
      phases: [
        _buildDay1Phase1(),
        _buildDay1Phase2(),
        _buildDay1Phase3(),
      ],
    );

LessonPhase _buildDay1Phase1() => LessonPhase(
      id: 'lesson04_phase1',
      phaseTypeStr: 'read_listen',
      titleVi: '📘 Biến cách ĐSC & HC + Bất biến từ',
      contentVi: '''
🎯 MỤC TIÊU BÀI 4
───────────────────
• Học 2 biến cách cuối cùng của danh từ Nam "-a":
    ✦ Định Sở Cách (ĐSC) — Locative
    ✦ Hô Cách (HC) — Vocative
• Ôn tập tổng quát cách chia động từ Thì Hiện tại (Ngôi 1, 2, 3).
• Nắm vững bất biến từ Saddhiṃ (đi với SDC).
• Hiểu luật Hài âm (Sandhi) cơ bản: so'pi, aham'pi.

══════════════════════════════════════════════════════
A. BIẾN CÁCH DANH TỪ NAM TÁNH TẬN CÙNG "-a" (tiếp theo)
══════════════════════════════════════════════════════

Cho căn "nara" (người đàn ông):

┌──────────┬──────────────────┬───────────────────────┐
│ Biến cách │  Số ít (Sg)      │   Số nhiều (Pl)       │
├──────────┼──────────────────┼───────────────────────┤
│  ĐSC     │ nare             │ naresu                │
│          │ naramhi, narasmiṃ│                       │
│  HC      │ nara, narā       │ narā                  │
└──────────┴──────────────────┴───────────────────────┘

📌 Ý nghĩa:
• ĐSC (Định Sở Cách) — Locative: trên / trong / tại
   → chỉ NƠI CHỐN hoặc THỜI GIAN
   → Ex: mañce = "trên giường"; gāmesu = "trong các ngôi làng".

• HC (Hô Cách) — Vocative: hô, gọi
   → dùng để GỌI AI ĐÓ (thường đứng đầu câu)
   → Ex: dāraka = "Này đứa bé!"; janaka = "Thưa cha!"

📌 Biến thể cuối — danh từ Nam "-a":

┌──────────┬──────────────────┬──────────────────────┐
│ Biến cách │  Số ít (Sg)      │  Số nhiều (Pl)       │
├──────────┼──────────────────┼──────────────────────┤
│  ĐSC     │  -e              │  -esu                │
│          │  -amhi / -asmiṃ  │                      │
│  HC      │  -a / -ā         │  -ā                  │
└──────────┴──────────────────┴──────────────────────┘

⚠️ Lưu ý:
• ĐSC số ít có 3 hình thức: -e, -amhi, -asmiṃ (cùng nghĩa).
• HC số nhiều LUÔN là "-ā" (giống CC số nhiều). Phân biệt qua ngữ cảnh.

══════════════════════════════════════════════════════
B. ÔN TẬP CHIA ĐỘNG TỪ — THÌ HIỆN TẠI (Ngôi 1, 2, 3)
══════════════════════════════════════════════════════

┌─────────────┬────────────┬────────────┬────────────┐
│   Gốc       │ Ngôi 1     │ Ngôi 2     │ Ngôi 3     │
│             │ Sg / Pl    │ Sg / Pl    │ Sg / Pl    │
├─────────────┼────────────┼────────────┼────────────┤
│ paca (nấu)  │ pacāmi     │ pacasi     │ pacati     │
│             │ pacāma     │ pacatha    │ pacanti    │
│ su (nghe)   │ suṇāmi     │ suṇāsi     │ suṇāti     │
│             │ suṇāma     │ suṇātha    │ suṇanti    │
│ disa (thuyết)│ desemi     │ desesi     │ deseti     │
│             │ desema     │ desetha    │ desenti    │
└─────────────┴────────────┴────────────┴────────────┘

⭐ Quy tắc trường âm: nguyên âm trước "-āmi/-āma/-āti/-āsi/-ātha" luôn dài.

══════════════════════════════════════════════════════
C. BẤT BIẾN TỪ SADDHIṀ — Đặc biệt quan trọng
══════════════════════════════════════════════════════

⭐ "Saddhiṃ" = "với" (with).
• Đi VỚI danh từ ở SỞ DỤNG CÁCH (SDC).
• ĐẶT SAU danh từ (không đặt trước).
  nareṇa saddhiṃ   = "với người đàn ông"
  samaṇehi saddhiṃ = "với các sa-môn"
• Không đổi hình thức theo số ít/nhiều.

══════════════════════════════════════════════════════
D. LUẬT HÀI ÂM (SANDHI) CƠ BẢN
══════════════════════════════════════════════════════

① so + api → so'pi
   (avagraha dấu ' thay thế o để tránh hai nguyên âm liền nhau)
② ahaṃ + api → aham'pi
   (niggahita ṃ đổi thành mũi của phụ âm sau, nguyên âm sau bị lược)

══════════════════════════════════════════════════════
📚 12 DANH TỪ NAM MỚI
══════════════════════════════════════════════════════
ākāsa (bầu trời), mañca (giường), canda (mặt trăng), sakuṇa (chim),
kassaka (nông dân), samudda (biển), maccha (cá), suriya (mặt trời),
magga (đường), vāṇija (thương gia), maggika (lữ khách), loka (thế giới).

══════════════════════════════════════════════════════
🔥 6 ĐỘNG TỪ MỚI
══════════════════════════════════════════════════════
kīḷati (chơi), uppajjati (sinh ra), passati (thấy),
vasati (ở), supati (ngủ), vicarati (lang thang).

══════════════════════════════════════════════════════
🔤 15 BẤT BIẾN TỪ
══════════════════════════════════════════════════════
ajja, āma, api, ca, idāni, idha, kadā, kasmā, kuhiṃ, kuto, na, puna,
sabbadā, sadā, saddhiṃ.
''',
      contentEn: 'Lesson 4 covers the Locative (-e / -amhi/-asmiṃ / -esu) "in/on/at" and Vocative (-a/-ā / -ā), a full review of present-tense verb endings across 1st/2nd/3rd persons, the indeclinable saddhiṃ (with + Inst.), and two basic sandhi rules: so + api = so\'pi; ahaṃ + api = aham\'pi.',
      fabVocab: const [
        FabVocabItem(wordEn: 'ākāsa', pronunciation: 'aa-kaa-so', wordVi: 'bầu trời', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'mañca', pronunciation: 'man-cho', wordVi: 'chiếc giường', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'canda', pronunciation: 'can-do', wordVi: 'mặt trăng', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'sakuṇa', pronunciation: 'sa-ku-ṇo', wordVi: 'con chim', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'kassaka', pronunciation: 'kas-sa-ko', wordVi: 'người nông dân', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'samudda', pronunciation: 'sa-mud-do', wordVi: 'biển, đại dương', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'maccha', pronunciation: 'mac-cho', wordVi: 'con cá', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'suriya', pronunciation: 'su-ri-yo', wordVi: 'mặt trời', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'magga', pronunciation: 'mag-go', wordVi: 'đường, đạo', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'vāṇija', pronunciation: 'vaa-ṇi-jo', wordVi: 'người thương gia', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'maggika', pronunciation: 'mag-gi-ko', wordVi: 'lữ khách, lữ hành', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'loka', pronunciation: 'lo-ko', wordVi: 'thế giới, nhân loại', partOfSpeech: 'danh_tu'),
        FabVocabItem(wordEn: 'kīḷati', pronunciation: 'kii-ḷa-ti', wordVi: 'chơi, đùa (kīḷa)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'uppajjati', pronunciation: 'up-paj-ja-ti', wordVi: 'sinh lên, sinh ra (pada+u)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'passati', pronunciation: 'pas-sa-ti', wordVi: 'thấy, nhìn (passa — thay disa)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'vasati', pronunciation: 'va-sa-ti', wordVi: 'ở, cư ngụ, sống (vasa)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'supati', pronunciation: 'su-pa-ti', wordVi: 'ngủ (supa)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'vicarati', pronunciation: 'vi-ca-ra-ti', wordVi: 'đi lang thang (cara+vi)', partOfSpeech: 'dong_tu'),
        FabVocabItem(wordEn: 'ajja', pronunciation: 'aj-ja', wordVi: 'hôm nay', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'āma', pronunciation: 'aa-ma', wordVi: 'vâng (đồng ý)', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'api', pronunciation: 'a-pi', wordVi: 'cũng (Sandhi)', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'ca', pronunciation: 'ca', wordVi: 'và, cũng', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'idāni', pronunciation: 'i-daa-ni', wordVi: 'bây giờ', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'idha', pronunciation: 'id-ha', wordVi: 'ở đây', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'kadā', pronunciation: 'ka-daa', wordVi: 'khi nào', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'kasmā', pronunciation: 'kas-maa', wordVi: 'tại sao', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'kuhiṃ', pronunciation: 'ku-hiṃ', wordVi: 'ở đâu', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'kuto', pronunciation: 'ku-to', wordVi: 'từ đâu', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'na', pronunciation: 'na', wordVi: 'không', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'puna', pronunciation: 'pu-na', wordVi: 'lại nữa', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'sabbadā', pronunciation: 'sab-ba-daa', wordVi: 'hằng ngày', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'sadā', pronunciation: 'sa-daa', wordVi: 'luôn luôn', partOfSpeech: 'bat_bien_tu'),
        FabVocabItem(wordEn: 'saddhiṃ', pronunciation: 'sad-dhiṃ', wordVi: 'với (đi với SDC)', partOfSpeech: 'bat_bien_tu'),
      ],
      fabPhrases: const [
        FabPhraseItem(phrase: '...āmi / ...āma', meaning: 'Ngôi 1 (tôi / chúng tôi)'),
        FabPhraseItem(phrase: '...asi / ...atha', meaning: 'Ngôi 2 (bạn / các bạn)'),
        FabPhraseItem(phrase: '...ati / ...anti', meaning: 'Ngôi 3 (anh ấy / họ)'),
        FabPhraseItem(phrase: "so + api = so'pi", meaning: '⭐ Sandhi: anh ấy + cũng'),
        FabPhraseItem(phrase: "ahaṃ + api = aham'pi", meaning: '⭐ Sandhi: tôi + cũng'),
        FabPhraseItem(phrase: '[SDC] + saddhiṃ', meaning: '"với [ai/cái gì]" — đặt sau SDC'),
      ],
    );

LessonPhase _buildDay1Phase2() => LessonPhase(
      id: 'lesson04_phase2',
      phaseTypeStr: 'mind_game',
      titleVi: '🧠 Ghép từ: 12 danh từ + 6 động từ + 15 bất biến từ',
      contentVi:
          'Nhấn vào từng ô tiếng Việt → đọc to từ Pāḷi tương ứng → nhấn lại để xem đáp án.',
      mixedSegments: const [
        MixedSegment(text: '【12 Danh từ Nam mới】'),
        MixedSegment(text: 'ākāsa'),
        MixedSegment(text: 'bầu trời', isVietnamese: true, answer: 'ākāsa'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'mañca'),
        MixedSegment(text: 'chiếc giường', isVietnamese: true, answer: 'mañca'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'canda'),
        MixedSegment(text: 'mặt trăng', isVietnamese: true, answer: 'canda'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'sakuṇa'),
        MixedSegment(text: 'con chim', isVietnamese: true, answer: 'sakuṇa'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'kassaka'),
        MixedSegment(text: 'người nông dân', isVietnamese: true, answer: 'kassaka'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'samudda'),
        MixedSegment(text: 'biển, đại dương', isVietnamese: true, answer: 'samudda'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'maccha'),
        MixedSegment(text: 'con cá', isVietnamese: true, answer: 'maccha'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'suriya'),
        MixedSegment(text: 'mặt trời', isVietnamese: true, answer: 'suriya'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'magga'),
        MixedSegment(text: 'đường, đạo', isVietnamese: true, answer: 'magga'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'vāṇija'),
        MixedSegment(text: 'người thương gia', isVietnamese: true, answer: 'vāṇija'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'maggika'),
        MixedSegment(text: 'lữ khách, lữ hành', isVietnamese: true, answer: 'maggika'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'loka'),
        MixedSegment(text: 'thế giới, nhân loại', isVietnamese: true, answer: 'loka'),
        MixedSegment(text: '  ───  '),
        MixedSegment(text: '【6 Động từ mới】'),
        MixedSegment(text: 'kīḷati'),
        MixedSegment(text: 'chơi, đùa', isVietnamese: true, answer: 'kīḷati'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'uppajjati'),
        MixedSegment(text: 'sinh lên, sinh ra', isVietnamese: true, answer: 'uppajjati'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'passati'),
        MixedSegment(text: 'thấy, nhìn', isVietnamese: true, answer: 'passati'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'vasati'),
        MixedSegment(text: 'ở, cư ngụ, sống', isVietnamese: true, answer: 'vasati'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'supati'),
        MixedSegment(text: 'ngủ', isVietnamese: true, answer: 'supati'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'vicarati'),
        MixedSegment(text: 'đi lang thang', isVietnamese: true, answer: 'vicarati'),
        MixedSegment(text: '  ───  '),
        MixedSegment(text: '【Bất biến từ quan trọng】'),
        MixedSegment(text: 'ajja'),
        MixedSegment(text: 'hôm nay', isVietnamese: true, answer: 'ajja'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'āma'),
        MixedSegment(text: 'vâng (đồng ý)', isVietnamese: true, answer: 'āma'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'idāni'),
        MixedSegment(text: 'bây giờ', isVietnamese: true, answer: 'idāni'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'idha'),
        MixedSegment(text: 'ở đây', isVietnamese: true, answer: 'idha'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'na'),
        MixedSegment(text: 'không, phủ định', isVietnamese: true, answer: 'na'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'saddhiṃ'),
        MixedSegment(text: 'với (đi với SDC)', isVietnamese: true, answer: 'saddhiṃ'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'sabbadā'),
        MixedSegment(text: 'hằng ngày', isVietnamese: true, answer: 'sabbadā'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'sadā'),
        MixedSegment(text: 'luôn luôn', isVietnamese: true, answer: 'sadā'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'kuhiṃ'),
        MixedSegment(text: 'ở đâu', isVietnamese: true, answer: 'kuhiṃ'),
        MixedSegment(text: '   │   '),
        MixedSegment(text: 'kuto'),
        MixedSegment(text: 'từ đâu', isVietnamese: true, answer: 'kuto'),
      ],
    );

LessonPhase _buildDay1Phase3() => LessonPhase(
      id: 'lesson04_phase3',
      phaseTypeStr: 'listening_quiz',
      titleVi: '🎧 Quiz: ĐSC, HC, Saddhiṃ & Sandhi',
      contentVi:
          'Trả lời 7 câu hỏi trắc nghiệm về biến cách Định Sở, Hô Cách, cách dùng Saddhiṃ và luật Sandhi cơ bản.',
      questions: const [
        QuizQuestion(
          id: 'lesson04_q01',
          questionText:
              'Câu 1. Hình thức Định Sở Cách (ĐSC) số ít của danh từ "nara" là gì?',
          options: [
            'nare / naramhi / narasmiṃ',
            'nara',
            'narāya',
            'narebhi',
          ],
          correctIndex: 0,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson04_q02',
          questionText:
              'Câu 2. Hình thức Định Sở Cách (ĐSC) số nhiều của danh từ "nara" là gì?',
          options: ['naramhi', 'narānaṃ', 'naresu', 'narā'],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson04_q03',
          questionText:
              'Câu 3. Hình thức Hô Cách (HC) số ít của danh từ "nara" là gì?',
          options: ['nare', 'narassa', 'nara / narā', 'narānaṃ'],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson04_q04',
          questionText:
              'Câu 4. Hình thức Hô Cách (HC) số nhiều của danh từ "nara" là gì?',
          options: ['narā', 'nare', 'narassa', 'naramhi'],
          correctIndex: 0,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson04_q05',
          questionText: '"Saddhiṃ" (với) phải đi với biến cách nào?',
          options: [
            'Cách Chủ (CC)',
            'Đối Cách (ĐC)',
            'Sở Dụng Cách (SDC)',
            'Hô Cách (HC)',
          ],
          correctIndex: 2,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson04_q06',
          questionText: 'Theo luật Sandhi, "so + api" được viết liền thành:',
          options: ['soapī', "so'pi", 'so api', 'sopi'],
          correctIndex: 1,
          practiceNumber: 'practice1',
        ),
        QuizQuestion(
          id: 'lesson04_q07',
          questionText: 'Theo luật Sandhi, "ahaṃ + api" được viết liền thành:',
          options: ['ahaṃapi', 'ahanpi', "ahaṃ'pi", "aham'pi"],
          correctIndex: 3,
          practiceNumber: 'practice1',
        ),
      ],
      fabAnswers: const [
        FabAnswerItem(en: 'Answer 1 → A', vi: '① ĐSC số ít có 3 hình thức: -e, -amhi, -asmiṃ (cùng nghĩa "trên/trong/tại").'),
        FabAnswerItem(en: 'Answer 2 → C', vi: '② ĐSC số nhiều duy nhất có đuôi "-esu" (vd: gāmesu, rukkhesu).'),
        FabAnswerItem(en: 'Answer 3 → C', vi: '③ HC số ít có 2 hình thức: -a, -ā (cùng nghĩa "Này [ai đó]!").'),
        FabAnswerItem(en: 'Answer 4 → A', vi: '④ HC số nhiều LUÔN có đuôi "-ā" (giống CC sn). Phân biệt qua ngữ cảnh.'),
        FabAnswerItem(en: 'Answer 5 → C', vi: '⑤ "Saddhiṃ" đi với SDC và đặt SAU danh từ: nareṇa saddhiṃ = "với người đàn ông".'),
        FabAnswerItem(en: 'Answer 6 → B', vi: "⑥ so+api → so'pi. Dấu ' (avagraha) thay cho nguyên âm."),
        FabAnswerItem(en: 'Answer 7 → D', vi: "⑦ ahaṃ+api → aham'pi: niggahita ṃ hoá m trước p, nguyên âm theo bị lược."),
      ],
      fabVocab: [],
      fabPhrases: [],
    );

// ──────────────────────────────────────────────────────────────
// DAY 2
// ──────────────────────────────────────────────────────────────
LessonDay getLesson04Day2() => LessonDay(
      id: 'lesson04_day2',
      dayNumber: 2,
      themeId: 'theme_04_lesson',
      titleVi: 'Ngày 2 — Bài tập & Quiz dịch thuật',
      phases: [
        _buildDay2Phase1(),
        _buildDay2Phase2(),
        _buildDay2Phase3(),
      ],
    );

LessonPhase _buildDay2Phase1() => LessonPhase(
      id: 'lesson04_phase4',
      phaseTypeStr: 'read_listen',
      titleVi: '📖 Đọc hiểu: 4 câu ví dụ minh họa',
      contentVi: '''
══════════════════════════════════════════════════════
📖 CÂU VÍ DỤ MINH HỌA (Illustrations)
══════════════════════════════════════════════════════

────────────────────────────────────────────────────
Ví dụ 1 — ĐSC số ít (chỉ nơi chốn):
────────────────────────────────────────────────────
   Pāḷi :  Mañce (ĐSC, số ít)  supati.
   Việt  :  trên giường         anh ta ngủ.
   Nghĩa :  "Anh ta ngủ trên giường."

🔎 "Mañce" = ĐSC số ít của mañca; "supati" = Ngôi 3 số ít của supa.

────────────────────────────────────────────────────
Ví dụ 2 — ĐSC số nhiều:
────────────────────────────────────────────────────
   Pāḷi :  Narā (CC sn)  gāmesu (ĐSC, số nhiều)  vasanti.
   Việt  :  Mọi người    trong các ngôi làng      sống.
   Nghĩa :  "Mọi người đang sống trong các ngôi làng."

🔎 "gāmesu" = ĐSC số nhiều của gāma.

────────────────────────────────────────────────────
Ví dụ 3 — HC số ít (gọi ai đó):
────────────────────────────────────────────────────
   Pāḷi :  Dāraka (HC, số ít)  kuhiṃ  tvaṃ  gacchasi?
   Việt  :  Này đứa bé trai    ở đâu  bạn   đi?
   Nghĩa :  "Này đứa bé trai, con đi đâu vậy?"

────────────────────────────────────────────────────
Ví dụ 4 — HC số ít (xưng hô thân mật):
────────────────────────────────────────────────────
   Pāḷi :  Janaka,  ahaṃ  na  gacchāmi.
   Việt  :  Thưa cha, con   không đi.
   Nghĩa :  "Thưa cha, con không đi."

══════════════════════════════════════════════════════
💡 QUY TẮC VÀNG
══════════════════════════════════════════════════════
✅ ĐSC = trên / trong / tại (nơi chốn hoặc thời gian).
✅ HC = Này...! (gọi ai đó, thường đứng đầu câu).
✅ ĐSC sg: -e, -amhi, -asmiṃ | ĐSC pl: -esu.
✅ HC sg: -a, -ā | HC pl: -ā.
✅ Saddhiṃ = "với" — đi với SDC, đặt SAU danh từ.
✅ Sandhi: so+api=so'pi; ahaṃ+api=aham'pi.
''',
      contentEn: 'Four illustrations for Locative/Vocative: Mañce supati; Narā gāmesu vasanti; Dāraka kuhiṃ tvaṃ gacchasi?; Janaka ahaṃ na gacchāmi.',
    );

LessonPhase _buildDay2Phase2() => LessonPhase(
      id: 'lesson04_phase5',
      phaseTypeStr: 'mind_game',
      titleVi: '🧠 Ghép câu: 36 câu Exercise 4',
      contentVi:
          'Nhấn vào từng câu tiếng Việt → đọc to câu Pāḷi tương ứng → nhấn lại để xem đáp án.',
      mixedSegments: const [
        MixedSegment(text: '【Ex 1】 Sakuṇā rukkhesu vasanti.'),
        MixedSegment(text: 'Những con chim sống trên các cội cây.', isVietnamese: true, answer: 'Sakuṇā rukkhesu vasanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 2】 Kassako mañce supati.'),
        MixedSegment(text: 'Người nông dân ngủ trên giường.', isVietnamese: true, answer: 'Kassako mañce supati.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 3】 Mayaṃ magge na kīḷāma.'),
        MixedSegment(text: 'Chúng tôi không chơi trên đường.', isVietnamese: true, answer: 'Mayaṃ magge na kīḷāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 4】 Narā loke uppajjanti.'),
        MixedSegment(text: 'Những người đàn ông sinh ra trong thế giới.', isVietnamese: true, answer: 'Narā loke uppajjanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 5】 Maggika, kuhiṃ tvaṃ gacchasi?'),
        MixedSegment(text: 'Này lữ khách, anh đi đâu vậy?', isVietnamese: true, answer: 'Maggika, kuhiṃ tvaṃ gacchasi?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 6】 Āma sadā te na uggaṇhanti.'),
        MixedSegment(text: 'Vâng, luôn luôn họ không học.', isVietnamese: true, answer: 'Āma sadā te na uggaṇhanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 7】 Macchā taḷāke kīḷanti.'),
        MixedSegment(text: 'Những con cá chơi trong hồ.', isVietnamese: true, answer: 'Macchā taḷāke kīḷanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 8】 Kuto tvaṃ āgacchasi? Janaka ahaṃ idāni ārāmasmā āgacchāmi.'),
        MixedSegment(text: 'Anh đến từ đâu? Thưa cha, con bây giờ đến từ khu vườn.', isVietnamese: true, answer: 'Kuto tvaṃ āgacchasi? Janaka ahaṃ idāni ārāmasmā āgacchāmi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 9】 Kassakā sabbadā gāmesu na vasanti.'),
        MixedSegment(text: 'Những nông dân luôn không sống trong các ngôi làng.', isVietnamese: true, answer: 'Kassakā sabbadā gāmesu na vasanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 10】 Kasmā tumhe mañcesu na supatha?'),
        MixedSegment(text: 'Tại sao các bạn không ngủ trên giường?', isVietnamese: true, answer: 'Kasmā tumhe mañcesu na supatha?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 11】 Mayaṃ samaṇehi saddhiṃ ārāme vasāma.'),
        MixedSegment(text: 'Chúng tôi sống trong vườn với các sa-môn.', isVietnamese: true, answer: 'Mayaṃ samaṇehi saddhiṃ ārāme vasāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 12】 Macchā taḷākesu ca samuddesu ca uppajjanti.'),
        MixedSegment(text: 'Những con cá sinh ra trong hồ và trong biển.', isVietnamese: true, answer: 'Macchā taḷākesu ca samuddesu ca uppajjanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 13】 Ahaṃ ākāse suriyaṃ passāmi, na ca candaṃ.'),
        MixedSegment(text: 'Tôi thấy mặt trời trên trời, nhưng không thấy mặt trăng.', isVietnamese: true, answer: 'Ahaṃ ākāse suriyaṃ passāmi, na ca candaṃ.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 14】 Ajja vāṇijo āpaṇe vasati.'),
        MixedSegment(text: 'Hôm nay người thương gia ở tại chợ.', isVietnamese: true, answer: 'Ajja vāṇijo āpaṇe vasati.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 15】 Kasmā tumhe dārakehi saddhiṃ magge kīḷatha?'),
        MixedSegment(text: 'Tại sao các bạn chơi trên đường với những đứa trẻ?', isVietnamese: true, answer: 'Kasmā tumhe dārakehi saddhiṃ magge kīḷatha?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 16】 Āma, idāni so'pi gacchati, aham'pi gacchāmi."),
        MixedSegment(text: 'Vâng, bây giờ anh ấy cũng đi, tôi cũng đi.', isVietnamese: true, answer: "Āma, idāni so'pi gacchati, aham'pi gacchāmi."),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 17】 Maggikā maggesu vicaranti.'),
        MixedSegment(text: 'Các lữ khách đi lang thang trên các con đường.', isVietnamese: true, answer: 'Maggikā maggesu vicaranti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 18】 Kassakā, kadā tumhe puna idha āgacchatha?'),
        MixedSegment(text: 'Này nông dân, khi nào các bạn lại đến đây?', isVietnamese: true, answer: 'Kassakā, kadā tumhe puna idha āgacchatha?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 19】 Ācariya, sabbadā mayaṃ Buddhaṃ vandāma.'),
        MixedSegment(text: 'Thưa thầy, hằng ngày chúng tôi lễ bái Đức Phật.', isVietnamese: true, answer: 'Ācariya, sabbadā mayaṃ Buddhaṃ vandāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 20】 Vāṇijā maggikehi saddhiṃ rathehi gāmesu vicaranti.'),
        MixedSegment(text: 'Các thương gia đi lang thang trong các làng bằng xe ngựa với các lữ khách.', isVietnamese: true, answer: 'Vāṇijā maggikehi saddhiṃ rathehi gāmesu vicaranti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 21】 So magge kīḷati.'),
        MixedSegment(text: 'Anh ấy chơi trên đường.', isVietnamese: true, answer: 'So magge kīḷati.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 22】 Kassakā gāmesu vasanti.'),
        MixedSegment(text: 'Những nông dân sống trong các ngôi làng.', isVietnamese: true, answer: 'Kassakā gāmesu vasanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 23】 Ahaṃ ākāsamhi sakuṇe na passāmi.'),
        MixedSegment(text: 'Tôi không thấy con chim trên trời.', isVietnamese: true, answer: 'Ahaṃ ākāsamhi sakuṇe na passāmi.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 24】 Buddhā sabbadā lokasmiṃ na uppajjanti.'),
        MixedSegment(text: 'Chư Phật luôn không sinh ra trong thế giới.', isVietnamese: true, answer: 'Buddhā sabbadā lokasmiṃ na uppajjanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 25】 Maggikā, tumhe kuto idāni āgacchatha?'),
        MixedSegment(text: 'Này lữ khách, các bạn đến từ đâu bây giờ?', isVietnamese: true, answer: 'Maggikā, tumhe kuto idāni āgacchatha?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 26】 Mayaṃ taḷākesu macche passāma.'),
        MixedSegment(text: 'Chúng tôi thấy những con cá trong hồ.', isVietnamese: true, answer: 'Mayaṃ taḷākesu macche passāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 27】 Kassakā, kadā tumhe puna idha āgacchatha?'),
        MixedSegment(text: 'Này nông dân, khi nào các bạn lại đến đây?', isVietnamese: true, answer: 'Kassakā, kadā tumhe puna idha āgacchatha?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 28】 Maggikā loke vicaranti.'),
        MixedSegment(text: 'Các lữ khách đi lang thang trong thế giới.', isVietnamese: true, answer: 'Maggikā loke vicaranti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 29】 Idāni mayaṃ ākāsamhi suriyaṃ ca candaṃ ca na passāma.'),
        MixedSegment(text: 'Bây giờ chúng tôi không thấy cả mặt trời lẫn mặt trăng trên trời.', isVietnamese: true, answer: 'Idāni mayaṃ ākāsamhi suriyaṃ ca candaṃ ca na passāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 30】 Kasmā samaṇā sadā pabbatesu na vasanti?'),
        MixedSegment(text: 'Tại sao các sa-môn luôn không sống trên núi?', isVietnamese: true, answer: 'Kasmā samaṇā sadā pabbatesu na vasanti?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 31】 Āma janaka, mayaṃ ajja ārāme na kīḷāma.'),
        MixedSegment(text: 'Vâng thưa cha, hôm nay chúng tôi không chơi trong vườn.', isVietnamese: true, answer: 'Āma janaka, mayaṃ ajja ārāme na kīḷāma.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 32】 Kasmā gilānā mañcesu na supanti?'),
        MixedSegment(text: 'Tại sao những người bệnh không ngủ trên giường?', isVietnamese: true, answer: 'Kasmā gilānā mañcesu na supanti?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 33】 Vāṇijā, kuhiṃ sadā tumhe vicaratha?'),
        MixedSegment(text: 'Này thương gia, các bạn luôn đi đâu?', isVietnamese: true, answer: 'Vāṇijā, kuhiṃ sadā tumhe vicaratha?'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 34】 Dārakā, sadā tumhe sunakhehi saddhiṃ taḷāke kīḷatha.'),
        MixedSegment(text: 'Này các đứa trẻ, các bạn luôn chơi trong hồ với những con chó.', isVietnamese: true, answer: 'Dārakā, sadā tumhe sunakhehi saddhiṃ taḷāke kīḷatha.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: '【Ex 35】 Ācariyā ca sissā ca idāni ārāme vasanti.'),
        MixedSegment(text: 'Cả các thầy giáo lẫn các học trò bây giờ sống trong vườn.', isVietnamese: true, answer: 'Ācariyā ca sissā ca idāni ārāme vasanti.'),
        MixedSegment(text: '   ───   '),
        MixedSegment(text: "【Ex 36】 Āma, te'pi gacchanti."),
        MixedSegment(text: 'Vâng, họ cũng đi.', isVietnamese: true, answer: "Āma, te'pi gacchanti."),
      ],
    );

LessonPhase _buildDay2Phase3() => LessonPhase(
      id: 'lesson04_phase6',
      phaseTypeStr: 'listening_quiz',
      titleVi: '🎧 Quiz: Dịch câu Pāḷi (Exercise 4)',
      contentVi:
          'Chọn bản dịch tiếng Việt đúng cho mỗi câu Pāḷi từ Exercise 4.',
      questions: const [
        QuizQuestion(
          id: 'lesson04_q08',
          questionText: '"Sakuṇā rukkhesu vasanti." có nghĩa là:',
          options: [
            'Những con chim bay trên các cội cây.',
            'Những con chim sống trên các cội cây.',
            'Những con chim ngủ trên các cội cây.',
            'Những con chim rơi từ các cội cây.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson04_q09',
          questionText: '"Mayaṃ magge na kīḷāma." có nghĩa là:',
          options: [
            'Chúng tôi chơi trên đường.',
            'Chúng tôi đi trên đường.',
            'Chúng tôi không chơi trên đường.',
            'Chúng tôi không đi trên đường.',
          ],
          correctIndex: 2,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson04_q10',
          questionText:
              '"Mayaṃ samaṇehi saddhiṃ ārāme vasāma." có nghĩa là:',
          options: [
            'Chúng tôi sống một mình trong vườn.',
            'Chúng tôi sống trong vườn cùng các sa-môn.',
            'Các sa-môn sống trong vườn của chúng tôi.',
            'Chúng tôi cho các sa-môn vào vườn.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson04_q11',
          questionText:
              "\"Āma, idāni so'pi gacchati, aham'pi gacchāmi.\" có nghĩa là:",
          options: [
            'Không, bây giờ anh ấy đi, tôi không đi.',
            'Vâng, bây giờ anh ấy cũng đi, tôi cũng đi.',
            'Vâng, bây giờ anh ấy đi, còn tôi không.',
            'Bây giờ anh ấy không đi, tôi cũng không.',
          ],
          correctIndex: 1,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson04_q12',
          questionText: '"Maggikā maggesu vicaranti." có nghĩa là:',
          options: [
            'Các lữ khách ở trên đường.',
            'Các lữ khách ngủ trên đường.',
            'Các lữ khách đi lang thang trên các con đường.',
            'Các lữ khách chơi trên đường.',
          ],
          correctIndex: 2,
          practiceNumber: 'practice2',
        ),
        QuizQuestion(
          id: 'lesson04_q13',
          questionText:
              '"Āma janaka, mayaṃ ajja ārāme na kīḷāma." có nghĩa là:',
          options: [
            'Không thưa cha, hôm nay chúng tôi không chơi trong vườn.',
            'Vâng thưa cha, hôm nay chúng tôi chơi trong vườn.',
            'Vâng thưa cha, hôm nay chúng tôi không chơi trong vườn.',
            'Thưa cha, hôm nay chúng tôi không chơi ngoài vườn.',
          ],
          correctIndex: 2,
          practiceNumber: 'practice2',
        ),
      ],
      fabAnswers: const [
        FabAnswerItem(en: 'Answer 8 → B', vi: '① "rukhesu" = ĐSC số nhiều của "rukha" (= trên các cội cây). "vasanti" = Ngôi 3 số nhiều của "vasa" (= sống).'),
        FabAnswerItem(en: 'Answer 9 → C', vi: '② "na" = bất biến từ phủ định (= không). "magge" = ĐSC số ít (= trên đường). "kīḷāma" = Ngôi 1 số nhiều (= chơi).'),
        FabAnswerItem(en: 'Answer 10 → B', vi: '③ "samaṇehi" = SDC số nhiều (= với các sa-môn). "saddhiṃ" = "với" (sau SDC). "vasāma" = Ngôi 1 số nhiều của "vasa" (= sống).'),
        FabAnswerItem(en: 'Answer 11 → B', vi: "④ Sandhi: so+api=so'pi; ahaṃ+api=aham'pi = “cũng đi”."),
        FabAnswerItem(en: 'Answer 12 → C', vi: '⑤ "maggesu" = ĐSC số nhiều (= trên các con đường). "vicaranti" = Ngôi 3 số nhiều của "vicarati" = đi lang thang.'),
        FabAnswerItem(en: 'Answer 13 → C', vi: '⑥ "Āma janaka" = "Vâng thưa cha" (Āma = vâng; janaka = HC = cha). "ajja" = hôm nay. "na kīḷāma" = không chơi.'),
      ],
      fabVocab: [],
      fabPhrases: [],
    );

// ──────────────────────────────────────────────────────────────
// AGGREGATE
// ──────────────────────────────────────────────────────────────
List<LessonDay> getLesson04Data() => [
      getLesson04Day1(),
      getLesson04Day2(),
    ];

class Lesson04Bundle {
  static LessonMeta meta = getLesson04Meta();
  static LessonDay day1 = getLesson04Day1();
  static LessonDay day2 = getLesson04Day2();
  static List<LessonDay> all = getLesson04Data();
}
