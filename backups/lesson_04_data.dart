// =============================================================================
// LESSON 04 DATA
// Bài học 4: Biến cách ĐSC & HC của Danh từ Nam "-a"
//         + Ôn tập chia động từ + Bất biến từ Saddhiṃ & Sandhi
// =============================================================================
// Tương thích với cấu trúc project: packages/pali_course/example/lib/...
// Pattern: kLesson04Vocab + getLesson04Day1() + getLesson04Day2()
// =============================================================================

import 'package:palineti/pali_course.dart';

// =============================================================================
// PHẦN 1: DANH SÁCH TỪ VỰNG MỚI (PaliVocabModel)
// 12 danh từ Nam tánh tận cùng "-a"
// =============================================================================

const List<PaliVocabModel> kLesson04Vocab = [
  // 1. Ākāsa — bầu trời
  PaliVocabModel(
    root: 'ākāsa',
    nominativeSingular: 'ākāso',
    paradigmId: 'masc_a',
    pronunciation: 'aa-kaa-so',
    wordEn: 'sky',
    wordVi: 'bầu trời',
    partOfSpeech: 'danh từ nam',
    examplePali: 'Ākāse suriyaṃ passāmi.',
    exampleVi: 'Tôi thấy mặt trời trên trời.',
  ),
  // 2. Mañca — chiếc giường
  PaliVocabModel(
    root: 'mañca',
    nominativeSingular: 'mañco',
    paradigmId: 'masc_a',
    pronunciation: 'man-cho',
    wordEn: 'bed',
    wordVi: 'chiếc giường',
    partOfSpeech: 'danh từ nam',
    examplePali: 'Mañce supati.',
    exampleVi: 'Anh ta ngủ trên giường.',
  ),
  // 3. Canda — mặt trăng
  PaliVocabModel(
    root: 'canda',
    nominativeSingular: 'cando',
    paradigmId: 'masc_a',
    pronunciation: 'can-do',
    wordEn: 'moon',
    wordVi: 'mặt trăng',
    partOfSpeech: 'danh từ nam',
    examplePali: 'Candaṃ ākāse passāmi.',
    exampleVi: 'Tôi thấy mặt trăng trên trời.',
  ),
  // 4. Sakuṇa — con chim
  PaliVocabModel(
    root: 'sakuṇa',
    nominativeSingular: 'sakuṇo',
    paradigmId: 'masc_a',
    pronunciation: 'sa-ku-ṇo',
    wordEn: 'bird',
    wordVi: 'con chim',
    partOfSpeech: 'danh từ nam',
    examplePali: 'Sakuṇā rukkhesu vasanti.',
    exampleVi: 'Những con chim sống trên các cội cây.',
  ),
  // 5. Kassaka — người nông dân
  PaliVocabModel(
    root: 'kassaka',
    nominativeSingular: 'kassako',
    paradigmId: 'masc_a',
    pronunciation: 'kas-sa-ko',
    wordEn: 'farmer',
    wordVi: 'người nông dân',
    partOfSpeech: 'danh từ nam',
    examplePali: 'Kassako mañce supati.',
    exampleVi: 'Người nông dân ngủ trên giường.',
  ),
  // 6. Samudda — biển, đại dương
  PaliVocabModel(
    root: 'samudda',
    nominativeSingular: 'samuddo',
    paradigmId: 'masc_a',
    pronunciation: 'sa-mud-do',
    wordEn: 'sea, ocean',
    wordVi: 'biển, đại dương',
    partOfSpeech: 'danh từ nam',
    examplePali: 'Macchā samuddesu uppajjanti.',
    exampleVi: 'Cá sinh ra trong biển.',
  ),
  // 7. Maccha — con cá
  PaliVocabModel(
    root: 'maccha',
    nominativeSingular: 'maccho',
    paradigmId: 'masc_a',
    pronunciation: 'mac-cho',
    wordEn: 'fish',
    wordVi: 'con cá',
    partOfSpeech: 'danh từ nam',
    examplePali: 'Macchā taḷāke kīḷanti.',
    exampleVi: 'Cá chơi trong hồ.',
  ),
  // 8. Suriya — mặt trời
  PaliVocabModel(
    root: 'suriya',
    nominativeSingular: 'suriyo',
    paradigmId: 'masc_a',
    pronunciation: 'su-ri-yo',
    wordEn: 'sun',
    wordVi: 'mặt trời',
    partOfSpeech: 'danh từ nam',
    examplePali: 'Suriyo ākāse āmodati.',
    exampleVi: 'Mặt trời tỏa sáng trên trời.',
  ),
  // 9. Magga — đường, đạo
  PaliVocabModel(
    root: 'magga',
    nominativeSingular: 'maggo',
    paradigmId: 'masc_a',
    pronunciation: 'mag-go',
    wordEn: 'way, road, path',
    wordVi: 'đường, đạo',
    partOfSpeech: 'danh từ nam',
    examplePali: 'Mayaṃ magge na kīḷāma.',
    exampleVi: 'Chúng tôi không chơi trên đường.',
  ),
  // 10. Vāṇija — người thương gia
  PaliVocabModel(
    root: 'vāṇija',
    nominativeSingular: 'vāṇijo',
    paradigmId: 'masc_a',
    pronunciation: 'vaa-ṇi-jo',
    wordEn: 'merchant',
    wordVi: 'người thương gia',
    partOfSpeech: 'danh từ nam',
    examplePali: 'Vāṇijo āpaṇe vasati.',
    exampleVi: 'Người thương gia ở tại chợ.',
  ),
  // 11. Maggika — lữ khách, lữ hành
  PaliVocabModel(
    root: 'maggika',
    nominativeSingular: 'maggiko',
    paradigmId: 'masc_a',
    pronunciation: 'mag-gi-ko',
    wordEn: 'traveller',
    wordVi: 'lữ khách, lữ hành',
    partOfSpeech: 'danh từ nam',
    examplePali: 'Maggikā maggesu vicaranti.',
    exampleVi: 'Các lữ khách đi lang thang trên đường.',
  ),
  // 12. Loka — thế giới, nhân loại
  PaliVocabModel(
    root: 'loka',
    nominativeSingular: 'loko',
    paradigmId: 'masc_a',
    pronunciation: 'lo-ko',
    wordEn: 'world, mankind',
    wordVi: 'thế giới, nhân loại',
    partOfSpeech: 'danh từ nam',
    examplePali: 'Buddhā lokasmiṃ uppajjanti.',
    exampleVi: 'Chư Phật sinh ra trong thế giới.',
  ),
];

// =============================================================================
// PHẦN 2: HELPER DATA — Động từ + Bất biến từ mới (FabPhraseItem)
// =============================================================================

const List<FabPhraseItem> kLesson04Verbs = [
  FabPhraseItem(
    phrase: 'Kīḷati (kīḷa)',
    meaning: 'chơi, đùa',
  ),
  FabPhraseItem(
    phrase: 'Uppajjati (pada + u)',
    meaning: 'sinh lên, sinh ra',
  ),
  FabPhraseItem(
    phrase: 'Passati (passa — thay thế disa)',
    meaning: 'thấy, nhìn',
  ),
  FabPhraseItem(
    phrase: 'Vasati (vasa)',
    meaning: 'ở, cư ngụ, sống',
  ),
  FabPhraseItem(
    phrase: 'Supati (supa)',
    meaning: 'ngủ',
  ),
  FabPhraseItem(
    phrase: 'Vicarati (cara + vi)',
    meaning: 'đi lang thang, du hành',
  ),
];

const List<FabPhraseItem> kLesson04Indeclinables = [
  FabPhraseItem(
    phrase: 'Ajja',
    meaning: 'hôm nay, ngày nay',
  ),
  FabPhraseItem(
    phrase: 'Āma',
    meaning: 'vâng (đồng ý)',
  ),
  FabPhraseItem(
    phrase: 'Api',
    meaning: 'cũng, vả lại (kết hợp với Sandhi)',
  ),
  FabPhraseItem(
    phrase: 'Ca',
    meaning: 'cũng, và (nối các từ/cụm từ)',
  ),
  FabPhraseItem(
    phrase: 'Idāni',
    meaning: 'bây giờ',
  ),
  FabPhraseItem(
    phrase: 'Idha',
    meaning: 'ở đây',
  ),
  FabPhraseItem(
    phrase: 'Kadā',
    meaning: 'khi nào',
  ),
  FabPhraseItem(
    phrase: 'Kasmā',
    meaning: 'tại sao',
  ),
  FabPhraseItem(
    phrase: 'Kuhiṃ',
    meaning: 'ở đâu',
  ),
  FabPhraseItem(
    phrase: 'Kuto',
    meaning: 'từ đâu (kết từ)',
  ),
  FabPhraseItem(
    phrase: 'Na',
    meaning: 'không, bất, phải',
  ),
  FabPhraseItem(
    phrase: 'Puna',
    meaning: 'lại nữa',
  ),
  FabPhraseItem(
    phrase: 'Sabbadā',
    meaning: 'hằng ngày',
  ),
  FabPhraseItem(
    phrase: 'Sadā',
    meaning: 'luôn luôn',
  ),
  FabPhraseItem(
    phrase: 'Saddhiṃ',
    meaning: 'với (đi với SDC, đặt sau danh từ)',
  ),
];

// =============================================================================
// PHẦN 3: DAY 1 — LÝ THUYẾT & TỪ VỰNG
// =============================================================================

LessonDay getLesson04Day1() {
  return LessonDay(
    titleVi: 'Ngày 1 — Lý thuyết & Từ vựng',
    currentPhaseIndex: 0,
    phases: [
      // ─────────────────────────────────────────────────────────────────
      // PHASE 1: READ & LISTEN — Lý thuyết đầy đủ
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        phaseTypeStr: 'read_listen',
        titleVi: '📘 Biến cách ĐSC & HC + Bất biến từ',
        contentVi: '''
🎯 MỤC TIÊU BÀI 4
───────────────────
• Học 2 biến cách cuối cùng của danh từ Nam "-a":
    ✦ Định Sở Cách (ĐSC) — Locative
    ✦ Hô Cách (HC) — Vocative
• Ôn tập tổng quát cách chia động từ Thì Hiện tại (Ngôi 1, 2, 3).
• Nắm vững bất biến từ **Saddhiṃ** (đi với SDC).
• Hiểu luật **Hài âm (Sandhi)** cơ bản: so'pi, aham'pi.

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
   → Ex: mañce = "trên giường"
   → Ex: gāmesu = "trong các ngôi làng"
   → Ex: ākāsamhi / ākāse = "trên bầu trời"

• HC (Hô Cách) — Vocative: hô, gọi
   → dùng để GỌI AI ĐÓ (thường đứng đầu câu)
   → Ex: dāraka = "Này đứa bé!"
   → Ex: janaka = "Thưa cha!"

📌 Biến thể cuối (ending variants) — danh từ Nam "-a":

┌──────────┬──────────────────┬──────────────────────┐
│ Biến cách │  Số ít (Sg)      │  Số nhiều (Pl)       │
├──────────┼──────────────────┼──────────────────────┤
│  ĐSC     │  -e              │  -esu                │
│          │  -amhi / -asmiṃ  │                      │
│  HC      │  -a / -ā         │  -ā                  │
└──────────┴──────────────────┴──────────────────────┘

⚠️ Lưu ý:
• ĐSC số ít có 3 hình thức: -e, -amhi, -asmiṃ (cùng nghĩa).
   → Thường dùng "-e" cho danh từ ngắn (mañce, magge, loke).
   → Dùng "-amhi" / "-asmiṃ" cho danh từ có âm vực cao (ākāsamhi, lokasmiṃ).
• HC số nhiều LUÔN là "-ā" (giống CC số nhiều).
   → Ex: "narā" = vừa "Các người đàn ông!" (HC) vừa "những người đàn ông" (CC).
   → Phân biệt qua ngữ cảnh.

══════════════════════════════════════════════════════
B. ÔN TẬP CHIA ĐỘNG TỪ — THÌ HIỆN TẠI (Ngôi 1, 2, 3)
══════════════════════════════════════════════════════

┌─────────────┬──────────┬──────────┬──────────┐
│   Gốc       │ Ngôi 1   │ Ngôi 2   │ Ngôi 3   │
│             │ Sg    Pl │ Sg    Pl │ Sg    Pl │
├─────────────┼──────────┼──────────┼──────────┤
│ paca (nấu)  │ pacāmi  │ pacasi  │ pacati  │
│             │ pacāma  │ pacatha │ pacanti │
│ su (nghe)   │ suṇāmi  │ suṇāsi  │ suṇāti  │
│             │ suṇāma  │ suṇātha │ suṇanti │
│ disa (thuyết)│ desemi │ desesi  │ deseti  │
│             │ desema  │ desetha │ desenti │
└─────────────┴──────────┴──────────┴──────────┘

⭐ Quy tắc trường âm (ghi nhớ từ Bài 3):
• Nguyên âm trước "-āmi" / "-āma" LUÔN dài.
• Nguyên âm trước "-āti" / "-āsi" / "-ātha" cũng luôn dài.
• Nguyên âm trước "-anti" / "-enta" / "-emā" thường ngắn.

══════════════════════════════════════════════════════
C. BẤT BIẾN TỪ SADDHIṀ — Đặc biệt quan trọng
══════════════════════════════════════════════════════

⭐ "Saddhiṃ" là bất biến từ đặc biệt có quy tắc riêng:
• Nghĩa: "với" (with)
• Đi VỚI danh từ ở **Sở Dụng Cách (SDC)**.
• ĐẶT SAU danh từ (không đặt trước).

📌 Ví dụ:
   nareṇa saddhiṃ   = "với người đàn ông" 
   (nareṇa = SDC số ít của "nara")
   samaṇehi saddhiṃ  = "với các sa-môn"
   (samaṇehi = SDC số nhiều)

⚠️ Lưu ý:
• "Saddhiṃ" KHÔNG thay đổi hình thức theo số ít/số nhiều.
• "Saddhiṃ" KHÔNG đi với CC, ĐC, CĐC, XXC, STC, ĐSC, HC.

══════════════════════════════════════════════════════
D. LUẬT HÀI ÂM (SANDHI) CƠ BẢN
══════════════════════════════════════════════════════

📌 Sandhi là hiện tượng khi hai từ ghép lại, âm cuối của từ trước
   bị thay đổi để phù hợp với âm đầu của từ sau.

① "so + api" → "so'pi"
   • "so" (anh ấy) + "api" (cũng) → "so'pi"
   • Dấu ' (avagraha) thay thế cho "o" để tránh hai nguyên âm liên tiếp.

② "ahaṃ + api" → "aham'pi"
   • "ahaṃ" (tôi) + "api" → "aham'pi"
   • Nguyên âm theo sau một niggahita (ṃ) thường bị lược bỏ.
   • Niggahita được thay đổi thàng nguyên âm mũi của nhóm phụ âm 
     đứng ngay sau.

⚠️ Sandhi chỉ áp dụng khi viết liền (không có khoảng trắng giữa hai từ).

══════════════════════════════════════════════════════
📚 12 DANH TỪ NAM MỚI
══════════════════════════════════════════════════════
• ākāsa     — bầu trời
• mañca     — chiếc giường
• canda     — mặt trăng
• sakuṇa    — con chim
• kassaka   — người nông dân
• samudda   — biển, đại dương
• maccha    — con cá
• suriya    — mặt trời
• magga     — đường, đạo
• vāṇija    — người thương gia
• maggika   — lữ khách, lữ hành
• loka      — thế giới, nhân loại

══════════════════════════════════════════════════════
🔥 6 ĐỘNG TỪ MỚI
══════════════════════════════════════════════════════
• kīḷati     (kīḷa)                — chơi, đùa
• uppajjati  (pada + u)            — sinh lên, sinh ra
• passati    (passa — thay disa)    — thấy, nhìn
• vasati     (vasa)                — ở, cư ngụ, sống
• supati     (supa)                — ngủ
• vicarati   (cara + vi)           — đi lang thang, du hành

══════════════════════════════════════════════════════
🔤 15 BẤT BIẾN TỪ (Indeclinables)
══════════════════════════════════════════════════════
• ajja      — hôm nay
• āma       — vâng (đồng ý)
• api       — cũng, vả lại (Sandhi!)
• ca        — cũng, và
• idāni     — bây giờ
• idha      — ở đây
• kadā      — khi nào
• kasmā     — tại sao
• kuhiṃ     — ở đâu
• kuto      — từ đâu
• na        — không, phải
• puna      — lại nữa
• sabbadā   — hằng ngày
• sadā      — luôn luôn
• saddhiṃ   — với (đi với SDC)
''',
        fabVocab: const [
          // 12 danh từ Nam mới
          FabVocabItem(
            wordEn: 'ākāsa',
            pronunciation: 'aa-kaa-so',
            wordVi: 'bầu trời',
            partOfSpeech: 'danh từ nam',
          ),
          FabVocabItem(
            wordEn: 'mañca',
            pronunciation: 'man-cho',
            wordVi: 'chiếc giường',
            partOfSpeech: 'danh từ nam',
          ),
          FabVocabItem(
            wordEn: 'canda',
            pronunciation: 'can-do',
            wordVi: 'mặt trăng',
            partOfSpeech: 'danh từ nam',
          ),
          FabVocabItem(
            wordEn: 'sakuṇa',
            pronunciation: 'sa-ku-ṇo',
            wordVi: 'con chim',
            partOfSpeech: 'danh từ nam',
          ),
          FabVocabItem(
            wordEn: 'kassaka',
            pronunciation: 'kas-sa-ko',
            wordVi: 'người nông dân',
            partOfSpeech: 'danh từ nam',
          ),
          FabVocabItem(
            wordEn: 'samudda',
            pronunciation: 'sa-mud-do',
            wordVi: 'biển, đại dương',
            partOfSpeech: 'danh từ nam',
          ),
          FabVocabItem(
            wordEn: 'maccha',
            pronunciation: 'mac-cho',
            wordVi: 'con cá',
            partOfSpeech: 'danh từ nam',
          ),
          FabVocabItem(
            wordEn: 'suriya',
            pronunciation: 'su-ri-yo',
            wordVi: 'mặt trời',
            partOfSpeech: 'danh từ nam',
          ),
          FabVocabItem(
            wordEn: 'magga',
            pronunciation: 'mag-go',
            wordVi: 'đường, đạo',
            partOfSpeech: 'danh từ nam',
          ),
          FabVocabItem(
            wordEn: 'vāṇija',
            pronunciation: 'vaa-ṇi-jo',
            wordVi: 'người thương gia',
            partOfSpeech: 'danh từ nam',
          ),
          FabVocabItem(
            wordEn: 'maggika',
            pronunciation: 'mag-gi-ko',
            wordVi: 'lữ khách, lữ hành',
            partOfSpeech: 'danh từ nam',
          ),
          FabVocabItem(
            wordEn: 'loka',
            pronunciation: 'lo-ko',
            wordVi: 'thế giới, nhân loại',
            partOfSpeech: 'danh từ nam',
          ),

          // 6 động từ mới
          FabVocabItem(
            wordEn: 'kīḷati',
            pronunciation: 'kii-ḷa-ti',
            wordVi: 'chơi, đùa (kīḷa)',
            partOfSpeech: 'động từ',
          ),
          FabVocabItem(
            wordEn: 'uppajjati',
            pronunciation: 'up-paj-ja-ti',
            wordVi: 'sinh lên, sinh ra (pada + u)',
            partOfSpeech: 'động từ',
          ),
          FabVocabItem(
            wordEn: 'passati',
            pronunciation: 'pas-sa-ti',
            wordVi: 'thấy, nhìn (passa — thay thế disa)',
            partOfSpeech: 'động từ',
          ),
          FabVocabItem(
            wordEn: 'vasati',
            pronunciation: 'va-sa-ti',
            wordVi: 'ở, cư ngụ, sống (vasa)',
            partOfSpeech: 'động từ',
          ),
          FabVocabItem(
            wordEn: 'supati',
            pronunciation: 'su-pa-ti',
            wordVi: 'ngủ (supa)',
            partOfSpeech: 'động từ',
          ),
          FabVocabItem(
            wordEn: 'vicarati',
            pronunciation: 'vi-ca-ra-ti',
            wordVi: 'đi lang thang, du hành (cara + vi)',
            partOfSpeech: 'động từ',
          ),

          // 15 bất biến từ
          FabVocabItem(
            wordEn: 'ajja',
            pronunciation: 'aj-ja',
            wordVi: 'hôm nay, ngày nay',
            partOfSpeech: 'bất biến từ (trạng từ)',
          ),
          FabVocabItem(
            wordEn: 'āma',
            pronunciation: 'aa-ma',
            wordVi: 'vâng (đồng ý)',
            partOfSpeech: 'bất biến từ (trạng từ)',
          ),
          FabVocabItem(
            wordEn: 'api',
            pronunciation: 'a-pi',
            wordVi: 'cũng, vả lại (Sandhi)',
            partOfSpeech: 'bất biến từ (phó từ)',
          ),
          FabVocabItem(
            wordEn: 'ca',
            pronunciation: 'ca',
            wordVi: 'cũng, và',
            partOfSpeech: 'bất biến từ (liên từ)',
          ),
          FabVocabItem(
            wordEn: 'idāni',
            pronunciation: 'i-daa-ni',
            wordVi: 'bây giờ',
            partOfSpeech: 'bất biến từ (trạng từ)',
          ),
          FabVocabItem(
            wordEn: 'idha',
            pronunciation: 'id-ha',
            wordVi: 'ở đây',
            partOfSpeech: 'bất biến từ (trạng từ)',
          ),
          FabVocabItem(
            wordEn: 'kadā',
            pronunciation: 'ka-daa',
            wordVi: 'khi nào',
            partOfSpeech: 'bất biến từ (phó từ nghi vấn)',
          ),
          FabVocabItem(
            wordEn: 'kasmā',
            pronunciation: 'kas-maa',
            wordVi: 'tại sao',
            partOfSpeech: 'bất biến từ (phó từ nghi vấn)',
          ),
          FabVocabItem(
            wordEn: 'kuhiṃ',
            pronunciation: 'ku-hiṃ',
            wordVi: 'ở đâu',
            partOfSpeech: 'bất biến từ (phó từ nghi vấn)',
          ),
          FabVocabItem(
            wordEn: 'kuto',
            pronunciation: 'ku-to',
            wordVi: 'từ đâu (kết từ)',
            partOfSpeech: 'bất biến từ (phó từ nghi vấn)',
          ),
          FabVocabItem(
            wordEn: 'na',
            pronunciation: 'na',
            wordVi: 'không, bất, phải (phủ định)',
            partOfSpeech: 'bất biến từ (phó từ phủ định)',
          ),
          FabVocabItem(
            wordEn: 'puna',
            pronunciation: 'pu-na',
            wordVi: 'lại nữa',
            partOfSpeech: 'bất biến từ (trạng từ)',
          ),
          FabVocabItem(
            wordEn: 'sabbadā',
            pronunciation: 'sab-ba-daa',
            wordVi: 'hằng ngày',
            partOfSpeech: 'bất biến từ (trạng từ)',
          ),
          FabVocabItem(
            wordEn: 'sadā',
            pronunciation: 'sa-daa',
            wordVi: 'luôn luôn',
            partOfSpeech: 'bất biến từ (trạng từ)',
          ),
          FabVocabItem(
            wordEn: 'saddhiṃ',
            pronunciation: 'sad-dhiṃ',
            wordVi: 'với (đi với SDC, đặt sau danh từ)',
            partOfSpeech: 'bất biến từ (giới từ)',
          ),
        ],
        fabPhrases: const [
          // Bảng tổng hợp chia động từ
          FabPhraseItem(
            phrase: '...āmi / ...āma',
            meaning: 'Ngôi 1 (tôi / chúng tôi)',
          ),
          FabPhraseItem(
            phrase: '...asi / ...atha',
            meaning: 'Ngôi 2 (bạn / các bạn)',
          ),
          FabPhraseItem(
            phrase: '...ati / ...anti',
            meaning: 'Ngôi 3 (anh ấy / họ)',
          ),
          // Sandhi rules
          FabPhraseItem(
            phrase: 'so + api = so\'pi',
            meaning: '⭐ Sandhi: anh ấy + cũng',
          ),
          FabPhraseItem(
            phrase: 'ahaṃ + api = aham\'pi',
            meaning: '⭐ Sandhi: tôi + cũng',
          ),
          // Saddhiṃ
          FabPhraseItem(
            phrase: '[SDC] + saddhiṃ',
            meaning: '"với [ai/cái gì]" — đặt sau SDC',
          ),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 2: MIND GAME — Ghép nối Từ vựng Pāḷi ↔ Việt
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        phaseTypeStr: 'mind_game',
        titleVi: '🧠 Ghép từ: 12 danh từ + 6 động từ + 15 bất biến từ',
        contentVi:
            'Nhấn vào từng ô tiếng Việt → đọc to từ Pāḷi tương ứng → nhấn lại để xem đáp án.',
        mixedSegments: const [
          // ═══════ NHÓM 1: 12 DANH TỪ MỚI ═══════
          MixedSegment(
            text: '【12 Danh từ Nam mới】',
            isVietnamese: false,
            answer: null,
          ),

          MixedSegment(text: 'ākāsa', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'bầu trời',
            isVietnamese: true,
            answer: 'ākāsa',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'mañca', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'chiếc giường',
            isVietnamese: true,
            answer: 'mañca',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'canda', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'mặt trăng',
            isVietnamese: true,
            answer: 'canda',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'sakuṇa', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'con chim',
            isVietnamese: true,
            answer: 'sakuṇa',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'kassaka', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'người nông dân',
            isVietnamese: true,
            answer: 'kassaka',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'samudda', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'biển, đại dương',
            isVietnamese: true,
            answer: 'samudda',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'maccha', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'con cá',
            isVietnamese: true,
            answer: 'maccha',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'suriya', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'mặt trời',
            isVietnamese: true,
            answer: 'suriya',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'magga', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'đường, đạo',
            isVietnamese: true,
            answer: 'magga',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'vāṇija', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'người thương gia',
            isVietnamese: true,
            answer: 'vāṇija',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'maggika', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'lữ khách, lữ hành',
            isVietnamese: true,
            answer: 'maggika',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'loka', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'thế giới, nhân loại',
            isVietnamese: true,
            answer: 'loka',
          ),

          // ═══════ NHÓM 2: 6 ĐỘNG TỪ MỚI ═══════
          MixedSegment(
            text: '  ───  ',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: '【6 Động từ mới】',
            isVietnamese: false,
            answer: null,
          ),

          MixedSegment(text: 'kīḷati', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'chơi, đùa',
            isVietnamese: true,
            answer: 'kīḷati',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'uppajjati', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'sinh lên, sinh ra',
            isVietnamese: true,
            answer: 'uppajjati',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'passati', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'thấy, nhìn',
            isVietnamese: true,
            answer: 'passati',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'vasati', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'ở, cư ngụ, sống',
            isVietnamese: true,
            answer: 'vasati',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'supati', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'ngủ',
            isVietnamese: true,
            answer: 'supati',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'vicarati', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'đi lang thang',
            isVietnamese: true,
            answer: 'vicarati',
          ),

          // ═══════ NHÓM 3: 15 BẤT BIẾN TỪ (chọn 8 quan trọng nhất) ═══════
          MixedSegment(
            text: '  ───  ',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: '【Bất biến từ quan trọng】',
            isVietnamese: false,
            answer: null,
          ),

          MixedSegment(text: 'ajja', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'hôm nay',
            isVietnamese: true,
            answer: 'ajja',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'āma', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'vâng (đồng ý)',
            isVietnamese: true,
            answer: 'āma',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'idāni', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'bây giờ',
            isVietnamese: true,
            answer: 'idāni',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'idha', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'ở đây',
            isVietnamese: true,
            answer: 'idha',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'na', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'không, phải (phủ định)',
            isVietnamese: true,
            answer: 'na',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'saddhiṃ', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'với (đi với SDC)',
            isVietnamese: true,
            answer: 'saddhiṃ',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'sabbadā', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'hằng ngày',
            isVietnamese: true,
            answer: 'sabbadā',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'sadā', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'luôn luôn',
            isVietnamese: true,
            answer: 'sadā',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'kuhiṃ', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'ở đâu',
            isVietnamese: true,
            answer: 'kuhiṃ',
          ),
          MixedSegment(text: '   │   ', isVietnamese: false, answer: null),

          MixedSegment(text: 'kuto', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'từ đâu',
            isVietnamese: true,
            answer: 'kuto',
          ),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 3: LISTENING QUIZ — Ngữ pháp ĐSC, HC, Saddhiṃ, Sandhi
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        phaseTypeStr: 'listening_quiz',
        titleVi: '🎧 Quiz: ĐSC, HC, Saddhiṃ & Sandhi',
        contentVi:
            'Trả lời 7 câu hỏi trắc nghiệm về biến cách Định Sở, Hô Cách, cách dùng Saddhiṃ và luật Sandhi cơ bản.',
        questions: const [
          // Câu 1 — ĐSC singular
          QuizQuestion(
            questionText:
                'Câu 1. Hình thức Định Sở Cách (ĐSC) số ít của danh từ "nara" là gì?',
            options: [
              'nare / naramhi / narasmiṃ',
              'nara',
              'narāya',
              'narebhi',
            ],
            correctIndex: 0,
          ),
          // Câu 2 — ĐSC plural
          QuizQuestion(
            questionText:
                'Câu 2. Hình thức Định Sở Cách (ĐSC) số nhiều của danh từ "nara" là gì?',
            options: [
              'naramhi',
              'narānaṃ',
              'naresu',
              'narā',
            ],
            correctIndex: 2,
          ),
          // Câu 3 — HC singular
          QuizQuestion(
            questionText:
                'Câu 3. Hình thức Hô Cách (HC) số ít của danh từ "nara" là gì?',
            options: [
              'nare',
              'narassa',
              'nara / narā',
              'narānaṃ',
            ],
            correctIndex: 2,
          ),
          // Câu 4 — HC plural
          QuizQuestion(
            questionText:
                'Câu 4. Hình thức Hô Cách (HC) số nhiều của danh từ "nara" là gì?',
            options: [
              'narā',
              'nare',
              'narassa',
              'naramhi',
            ],
            correctIndex: 0,
          ),
          // Câu 5 — Saddhiṃ usage
          QuizQuestion(
            questionText:
                'Câu 5. "Saddhiṃ" (với) phải đi với biến cách nào?',
            options: [
              'Cách Chủ (CC)',
              'Đối Cách (ĐC)',
              'Sở Dụng Cách (SDC)',
              'Hô Cách (HC)',
            ],
            correctIndex: 2,
          ),
          // Câu 6 — Sandhi so'pi
          QuizQuestion(
            questionText:
                'Câu 6. Theo luật Sandhi, "so + api" được viết liền thành:',
            options: [
              'soapī',
              'so\'pi',
              'so api',
              'sopi',
            ],
            correctIndex: 1,
          ),
          // Câu 7 — Sandhi aham'pi
          QuizQuestion(
            questionText:
                'Câu 7. Theo luật Sandhi, "ahaṃ + api" được viết liền thành:',
            options: [
              'ahaṃapi',
              'ahanpi',
              'ahaṃ\'pi',
              'aham\'pi',
            ],
            correctIndex: 3,
          ),
        ],
        fabAnswers: const [
          FabAnswer(
            vi:
                '① ĐSC số ít có 3 hình thức: -e, -amhi, -asmiṃ (cùng nghĩa "trên/trong/tại").',
          ),
          FabAnswer(
            vi:
                '② ĐSC số nhiều duy nhất có đuôi "-esu" (vd: gāmesu, rukkhesu).',
          ),
          FabAnswer(
            vi:
                '③ HC số ít có 2 hình thức: -a, -ā (cùng nghĩa "Này [ai đó]!").',
          ),
          FabAnswer(
            vi:
                '④ HC số nhiều LUÔN có đuôi "-ā" (giống CC sn). Phân biệt qua ngữ cảnh.',
          ),
          FabAnswer(
            vi:
                '⑤ "Saddhiṃ" đi với SDC và đặt SAU danh từ. Vd: nareṇa saddhiṃ = "với người đàn ông".',
          ),
          FabAnswer(
            vi:
                '⑥ "so + api" → "so\'pi". Dấu \' (avagraha) thay thế cho "o" để tránh hai nguyên âm liên tiếp.',
          ),
          FabAnswer(
            vi:
                '⑦ "ahaṃ + api" → "aham\'pi". Nguyên âm theo sau niggahita (ṃ) bị lược bỏ, niggahita đổi thành nguyên âm mũi của phụ âm đứng sau.',
          ),
        ],
      ),
    ],
  );
}

// =============================================================================
// PHẦN 4: DAY 2 — BÀI TẬP & QUIZ DỊCH THUẬT
// =============================================================================

LessonDay getLesson04Day2() {
  return LessonDay(
    titleVi: 'Ngày 2 — Bài tập & Quiz dịch thuật',
    currentPhaseIndex: 0,
    phases: [
      // ─────────────────────────────────────────────────────────────────
      // PHASE 1: READ & LISTEN — 4 câu ví dụ minh họa (Illustrations)
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        phaseTypeStr: 'read_listen',
        titleVi: '📖 Đọc hiểu: 4 câu ví dụ minh họa',
        contentVi: '''
══════════════════════════════════════════════════════
📖 CÂU VÍ DỤ MINH HỌA (Illustrations từ sách)
══════════════════════════════════════════════════════

Mỗi ví dụ đều có 3 phần:
   ▸ Cụm từ Pāḷi (ghi chú biến cách)
   ▸ Cụm từ Việt tương ứng
   ▸ Bản dịch đầy đủ + phân tích ngữ pháp

────────────────────────────────────────────────────
Ví dụ 1 — ĐSC số ít (chỉ nơi chốn):
────────────────────────────────────────────────────
   Pāḷi :  Mañce (ĐSC, số ít)   supati.
   Việt  :  trên giường           anh ta ngủ.
   Nghĩa :  "Anh ta ngủ trên giường."

🔎 Phân tích:
   • "Mañce" = ĐSC số ít của "mañca" → "trên giường".
   • "supati" = Ngôi 3 số ít của "supa" → "ngủ".
   • ĐSC chỉ NƠI CHỐN (location).

────────────────────────────────────────────────────
Ví dụ 2 — ĐSC số nhiều:
────────────────────────────────────────────────────
   Pāḷi :  Narā (CC sn)  gāmesu (ĐSC, số nhiều)  vasanti.
   Việt  :  Mọi người     trong các ngôi làng      sống.
   Nghĩa :  "Mọi người đang sống trong các ngôi làng."

🔎 Phân tích:
   • "gāmesu" = ĐSC số nhiều của "gāma" → "trong các ngôi làng".
   • "vasanti" = Ngôi 3 số nhiều của "vasa" → "sống".
   • CC sn "Narā" làm chủ ngữ.

────────────────────────────────────────────────────
Ví dụ 3 — HC số ít (gọi ai đó):
────────────────────────────────────────────────────
   Pāḷi :  Dāraka (HC, số ít)   kuhiṃ   tvaṃ   gacchasi?
   Việt  :  Này đứa bé trai     ở đâu   bạn    đi?
   Nghĩa :  "Này đứa bé trai, con đi đâu vậy?"

🔎 Phân tích:
   • "Dāraka" = HC số ít → "Này đứa bé trai!".
   • "kuhiṃ" = bất biến từ nghi vấn → "ở đâu".
   • "tvaṃ" = bạn (Ngôi 2 số ít).
   • "gacchasi" = "đi" (Ngôi 2 số ít của "gamu").

────────────────────────────────────────────────────
Ví dụ 4 — HC số ít (xưng hô thân mật):
────────────────────────────────────────────────────
   Pāḷi :  Janaka,  ahaṃ   na   gacchāmi.
   Việt  :  Thưa cha,  con    không đi.
   Nghĩa :  "Thưa cha, con không đi."

🔎 Phân tích:
   • "Janaka" = HC số ít → "Thưa cha!" (xưng hô).
   • "ahaṃ" = tôi / con (Ngôi 1 số ít).
   • "na" = bất biến từ phủ định → "không".
   • "gacchāmi" = "đi" (Ngôi 1 số ít).

══════════════════════════════════════════════════════
💡 QUY TẮC VÀNG
══════════════════════════════════════════════════════
✅ ĐSC = trên / trong / tại (chỉ nơi chốn hoặc thời gian).
✅ HC = Này...! (gọi ai đó, thường đứng đầu câu).
✅ ĐSC sg: -e, -amhi, -asmiṃ (3 hình thức cùng nghĩa).
✅ ĐSC pl: -esu | HC sg: -a, -ā | HC pl: -ā.
✅ Saddhiṃ = "với" — đi với SDC, đặt SAU danh từ.
✅ Sandhi: so + api = so'pi; ahaṃ + api = aham'pi.
''',
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 2: MIND GAME — Ghép 36 câu Exercise 4 Pāḷi ↔ Việt
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        phaseTypeStr: 'mind_game',
        titleVi: '🧠 Ghép câu: 36 câu Exercise 4',
        contentVi:
            'Nhấn vào từng câu tiếng Việt → đọc to câu Pāḷi tương ứng → nhấn lại để xem đáp án.',
        mixedSegments: const [
          // ═══════ CÂU 1-6 ═══════
          MixedSegment(text: '【Ex 1】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Sakuṇā rukkhesu vasanti.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Những con chim sống trên các cội cây.',
            isVietnamese: true,
            answer: 'Sakuṇā rukkhesu vasanti.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 2】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Kassako mañce supati.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Người nông dân ngủ trên giường.',
            isVietnamese: true,
            answer: 'Kassako mañce supati.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 3】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Mayaṃ magge na kīḷāma.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Chúng tôi không chơi trên đường.',
            isVietnamese: true,
            answer: 'Mayaṃ magge na kīḷāma.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 4】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Narā loke uppajjanti.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Những người đàn ông sinh ra trong thế giới.',
            isVietnamese: true,
            answer: 'Narā loke uppajjanti.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 5】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Maggika, kuhiṃ tvaṃ gacchasi?',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Này lữ khách, anh đi đâu vậy?',
            isVietnamese: true,
            answer: 'Maggika, kuhiṃ tvaṃ gacchasi?',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 6】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Āma sadā te na uggaṇhanti.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Vâng, luôn luôn họ không học.',
            isVietnamese: true,
            answer: 'Āma sadā te na uggaṇhanti.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          // ═══════ CÂU 7-12 ═══════
          MixedSegment(text: '【Ex 7】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Macchā taḷāke kīḷanti.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Những con cá chơi trong hồ.',
            isVietnamese: true,
            answer: 'Macchā taḷāke kīḷanti.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 8】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Kuto tvaṃ āgacchasi? Janaka ahaṃ idāni ārāmasmā āgacchāmi.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Anh đến từ đâu? Thưa cha, con bây giờ đến từ khu vườn.',
            isVietnamese: true,
            answer: 'Kuto tvaṃ āgacchasi? Janaka ahaṃ idāni ārāmasmā āgacchāmi.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 9】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Kassakā sabbadā gāmesu na vasanti.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Những nông dân luôn không sống trong các ngôi làng.',
            isVietnamese: true,
            answer: 'Kassakā sabbadā gāmesu na vasanti.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 10】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Kasmā tumhe mañcesu na supatha?',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Tại sao các bạn không ngủ trên giường?',
            isVietnamese: true,
            answer: 'Kasmā tumhe mañcesu na supatha?',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 11】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Mayaṃ samaṇehi saddhiṃ ārāme vasāma.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Chúng tôi sống trong vườn với các sa-môn.',
            isVietnamese: true,
            answer: 'Mayaṃ samaṇehi saddhiṃ ārāme vasāma.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 12】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Macchā taḷākesu ca samuddesu ca uppajjanti.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Những con cá sinh ra trong hồ và trong biển.',
            isVietnamese: true,
            answer: 'Macchā taḷākesu ca samuddesu ca uppajjanti.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          // ═══════ CÂU 13-18 ═══════
          MixedSegment(text: '【Ex 13】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Ahaṃ ākāse suriyaṃ passāmi, na ca candaṃ.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Tôi thấy mặt trời trên trời, nhưng không thấy mặt trăng.',
            isVietnamese: true,
            answer: 'Ahaṃ ākāse suriyaṃ passāmi, na ca candaṃ.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 14】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Ajja vāṇijo āpaṇe vasati.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Hôm nay người thương gia ở tại chợ.',
            isVietnamese: true,
            answer: 'Ajja vāṇijo āpaṇe vasati.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 15】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Kasmā tumhe dārakehi saddhiṃ magge kīḷatha?',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Tại sao các bạn chơi trên đường với những đứa trẻ?',
            isVietnamese: true,
            answer: 'Kasmā tumhe dārakehi saddhiṃ magge kīḷatha?',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 16】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Āma, idāni so\'pi gacchati, aham\'pi gacchāmi.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Vâng, bây giờ anh ấy cũng đi, tôi cũng đi.',
            isVietnamese: true,
            answer: 'Āma, idāni so\'pi gacchati, aham\'pi gacchāmi.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 17】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Maggikā maggesu vicaranti.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Các lữ khách đi lang thang trên các con đường.',
            isVietnamese: true,
            answer: 'Maggikā maggesu vicaranti.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 18】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Kassakā, kadā tumhe puna idha āgacchatha?',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Này nông dân, khi nào các bạn lại đến đây?',
            isVietnamese: true,
            answer: 'Kassakā, kadā tumhe puna idha āgacchatha?',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          // ═══════ CÂU 19-24 ═══════
          MixedSegment(text: '【Ex 19】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Ācariya, sabbadā mayaṃ Buddhaṃ vandāma.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Thưa thầy, hằng ngày chúng tôi lễ bái Đức Phật.',
            isVietnamese: true,
            answer: 'Ācariya, sabbadā mayaṃ Buddhaṃ vandāma.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 20】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Vāṇijā maggikehi saddhiṃ rathehi gāmesu vicaranti.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Các thương gia đi lang thang trong các làng bằng xe ngựa với các lữ khách.',
            isVietnamese: true,
            answer: 'Vāṇijā maggikehi saddhiṃ rathehi gāmesu vicaranti.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 21】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'So magge kīḷati.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Anh ấy chơi trên đường.',
            isVietnamese: true,
            answer: 'So magge kīḷati.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 22】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Kassakā gāmesu vasanti.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Những nông dân sống trong các ngôi làng.',
            isVietnamese: true,
            answer: 'Kassakā gāmesu vasanti.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 23】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Ahaṃ ākāsamhi sakuṇe na passāmi.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Tôi không thấy con chim trên trời.',
            isVietnamese: true,
            answer: 'Ahaṃ ākāsamhi sakuṇe na passāmi.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 24】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Buddhā sabbadā lokasmiṃ na uppajjanti.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Chư Phật luôn không sinh ra trong thế giới.',
            isVietnamese: true,
            answer: 'Buddhā sabbadā lokasmiṃ na uppajjanti.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          // ═══════ CÂU 25-30 ═══════
          MixedSegment(text: '【Ex 25】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Maggikā, tumhe kuto idāni āgacchatha?',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Này lữ khách, các bạn đến từ đâu bây giờ?',
            isVietnamese: true,
            answer: 'Maggikā, tumhe kuto idāni āgacchatha?',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 26】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Mayaṃ taḷākesu macche passāma.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Chúng tôi thấy những con cá trong hồ.',
            isVietnamese: true,
            answer: 'Mayaṃ taḷākesu macche passāma.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 27】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Kassakā, kadā tumhe puna idha āgacchatha?',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Này nông dân, khi nào các bạn lại đến đây?',
            isVietnamese: true,
            answer: 'Kassakā, kadā tumhe puna idha āgacchatha?',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 28】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Maggikā loke vicaranti.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Các lữ khách đi lang thang trong thế giới.',
            isVietnamese: true,
            answer: 'Maggikā loke vicaranti.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 29】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Idāni mayaṃ ākāsamhi suriyaṃ ca candaṃ ca na passāma.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Bây giờ chúng tôi không thấy cả mặt trời lẫn mặt trăng trên trời.',
            isVietnamese: true,
            answer: 'Idāni mayaṃ ākāsamhi suriyaṃ ca candaṃ ca na passāma.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 30】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Kasmā samaṇā sadā pabbatesu na vasanti?',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Tại sao các sa-môn luôn không sống trên núi?',
            isVietnamese: true,
            answer: 'Kasmā samaṇā sadā pabbatesu na vasanti?',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          // ═══════ CÂU 31-36 ═══════
          MixedSegment(text: '【Ex 31】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Āma janaka, mayaṃ ajja ārāme na kīḷāma.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Vâng thưa cha, hôm nay chúng tôi không chơi trong vườn.',
            isVietnamese: true,
            answer: 'Āma janaka, mayaṃ ajja ārāme na kīḷāma.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 32】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Kasmā gilānā mañcesu na supanti?',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Tại sao những người bệnh không ngủ trên giường?',
            isVietnamese: true,
            answer: 'Kasmā gilānā mañcesu na supanti?',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 33】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Vāṇijā, kuhiṃ sadā tumhe vicaratha?',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Này thương gia, các bạn luôn đi đâu?',
            isVietnamese: true,
            answer: 'Vāṇijā, kuhiṃ sadā tumhe vicaratha?',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 34】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Dārakā, sadā tumhe sunakhehi saddhiṃ taḷāke kīḷatha.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Này các đứa trẻ, các bạn luôn chơi trong hồ với những con chó.',
            isVietnamese: true,
            answer: 'Dārakā, sadā tumhe sunakhehi saddhiṃ taḷāke kīḷatha.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 35】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Ācariyā ca sissā ca idāni ārāme vasanti.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Cả các thầy giáo lẫn các học trò bây giờ sống trong vườn.',
            isVietnamese: true,
            answer: 'Ācariyā ca sissā ca idāni ārāme vasanti.',
          ),
          MixedSegment(text: '   ───   ', isVietnamese: false, answer: null),

          MixedSegment(text: '【Ex 36】', isVietnamese: false, answer: null),
          MixedSegment(
            text: 'Āma, te\'pi gacchanti.',
            isVietnamese: false,
            answer: null,
          ),
          MixedSegment(
            text: 'Vâng, họ cũng đi.',
            isVietnamese: true,
            answer: 'Āma, te\'pi gacchanti.',
          ),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 3: LISTENING QUIZ — Dịch câu Pāḷi từ Exercise 4
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        phaseTypeStr: 'listening_quiz',
        titleVi: '🎧 Quiz: Dịch câu Pāḷi (Exercise 4)',
        contentVi:
            'Trả lời 6 câu hỏi trắc nghiệm bằng cách CHỌN BẢN DỊCH TIẾNG VIỆT ĐÚNG cho mỗi câu Pāḷi từ Exercise 4.',
        questions: const [
          // Câu 1
          QuizQuestion(
            questionText:
                'Câu 1. "Sakuṇā rukkhesu vasanti." có nghĩa là:',
            options: [
              'Những con chim bay trên các cội cây.',
              'Những con chim sống trên các cội cây.',
              'Những con chim ngủ trên các cội cây.',
              'Những con chim rơi từ các cội cây.',
            ],
            correctIndex: 1,
          ),
          // Câu 2
          QuizQuestion(
            questionText:
                'Câu 2. "Mayaṃ magge na kīḷāma." có nghĩa là:',
            options: [
              'Chúng tôi chơi trên đường.',
              'Chúng tôi đi trên đường.',
              'Chúng tôi không chơi trên đường.',
              'Chúng tôi không đi trên đường.',
            ],
            correctIndex: 2,
          ),
          // Câu 3
          QuizQuestion(
            questionText:
                'Câu 3. "Mayaṃ samaṇehi saddhiṃ ārāme vasāma." có nghĩa là:',
            options: [
              'Chúng tôi sống một mình trong vườn.',
              'Chúng tôi sống trong vườn cùng các sa-môn.',
              'Các sa-môn sống trong vườn của chúng tôi.',
              'Chúng tôi cho các sa-môn vào vườn.',
            ],
            correctIndex: 1,
          ),
          // Câu 4
          QuizQuestion(
            questionText:
                'Câu 4. "Āma, idāni so\'pi gacchati, aham\'pi gacchāmi." có nghĩa là:',
            options: [
              'Không, bây giờ anh ấy đi, tôi không đi.',
              'Vâng, bây giờ anh ấy cũng đi, tôi cũng đi.',
              'Vâng, bây giờ anh ấy đi, còn tôi không.',
              'Bây giờ anh ấy không đi, tôi cũng không.',
            ],
            correctIndex: 1,
          ),
          // Câu 5
          QuizQuestion(
            questionText:
                'Câu 5. "Maggikā maggesu vicaranti." có nghĩa là:',
            options: [
              'Các lữ khách ở trên đường.',
              'Các lữ khách ngủ trên đường.',
              'Các lữ khách đi lang thang trên các con đường.',
              'Các lữ khách chơi trên đường.',
            ],
            correctIndex: 2,
          ),
          // Câu 6
          QuizQuestion(
            questionText:
                'Câu 6. "Āma janaka, mayaṃ ajja ārāme na kīḷāma." có nghĩa là:',
            options: [
              'Không thưa cha, hôm nay chúng tôi không chơi trong vườn.',
              'Vâng thưa cha, hôm nay chúng tôi chơi trong vườn.',
              'Vâng thưa cha, hôm nay chúng tôi không chơi trong vườn.',
              'Thưa cha, hôm nay chúng tôi không chơi ngoài vườn.',
            ],
            correctIndex: 2,
          ),
        ],
        fabAnswers: const [
          FabAnswer(
            vi:
                '① "rukhesu" = ĐSC số nhiều của "rukha" (= trên các cội cây). "vasanti" = Ngôi 3 số nhiều của "vasa" (= sống).',
          ),
          FabAnswer(
            vi:
                '② "na" = bất biến từ phủ định (= không). "magge" = ĐSC số ít (= trên đường). "kīḷāma" = Ngôi 1 số nhiều (= chơi).',
          ),
          FabAnswer(
            vi:
                '③ "samaṇehi" = SDC số nhiều (= với các sa-môn). "saddhiṃ" = "với" (đặt sau SDC). "vasāma" = Ngôi 1 số nhiều của "vasa" (= sống).',
          ),
          FabAnswer(
            vi:
                '④ Sandhi: "so + api = so\'pi", "ahaṃ + api = aham\'pi". Nghĩa: "anh ấy cũng đi, tôi cũng đi".',
          ),
          FabAnswer(
            vi:
                '⑤ "maggesu" = ĐSC số nhiều (= trên các con đường). "vicaranti" = Ngôi 3 số nhiều của "vicarati" (cara + vi) = đi lang thang.',
          ),
          FabAnswer(
            vi:
                '⑥ "Āma janaka" = "Vâng thưa cha" (Āma = vâng; janaka = HC của janaka = cha). "ajja" = hôm nay. "ārāme" = ĐSC (= trong vườn). "na kīḷāma" = không chơi.',
          ),
        ],
      ),
    ],
  );
}

// =============================================================================
// PHẦN 5: HÀM TIỆN ÍCH — Trả về cả Day 1 + Day 2
// =============================================================================

/// Hàm tiện ích: trả về toàn bộ dữ liệu Lesson 4 (cả 2 ngày).
///
/// Sử dụng:
/// ```dart
/// final data = getLesson04Data();
/// print(data.day1.titleVi);   // 'Ngày 1 — Lý thuyết & Từ vựng'
/// print(data.day2.titleVi);   // 'Ngày 2 — Bài tập & Quiz dịch thuật'
/// ```
({LessonDay day1, LessonDay day2}) getLesson04Data() {
  return (
    day1: getLesson04Day1(),
    day2: getLesson04Day2(),
  );
}

