// =============================================================================
// LESSON 25 DATA
// Bài học 25: Cách Sử Dụng Các Biến Cách (Uses of the Cases)
// Nguồn: Nārada Mahāthera, "An Elementary Pāḷi Course", Lesson 25
// =============================================================================

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

// =============================================================================
// PHẦN 1: DANH SÁCH TỪ VỰNG (PaliVocabModel)
// Ví dụ tiêu biểu cho mỗi biến cách
// =============================================================================

final kLesson25Vocab = <PaliVocabModel>[
  // ─── Chủ Cách (Paṭhamā) ───
  PaliVocabModel(
    id: 'pv_L25_puriso',
    root: 'puriso',
    paradigmId: 'patthama_nom',
    wordVi: 'người đàn ông (Chủ cách — chủ ngữ)',
    wordEn: 'man (Nominative — subject)',
    lessonId: 'lesson_25',
    pronunciation: 'pu-ri-so',
    examplePali: 'Puriso gacchati.',
    exampleVi: 'Người đàn ông đi.',
  ),
  PaliVocabModel(
    id: 'pv_L25_raja',
    root: 'rājā',
    paradigmId: 'patthama_complement',
    wordVi: 'đức vua (Chủ cách — bổ ngữ nội ĐT)',
    wordEn: 'king (Nominative — complement)',
    lessonId: 'lesson_25',
    pronunciation: 'raa-jaa',
    examplePali: 'So rājā ahosi.',
    exampleVi: 'Vị ấy đã trở thành vua.',
  ),
  // ─── Hô Cách (Ālapana) ───
  PaliVocabModel(
    id: 'pv_L25_putta',
    root: 'putta',
    paradigmId: 'alapana_voc',
    wordVi: 'này con trai! (Hô cách — gọi)',
    wordEn: 'O son! (Vocative)',
    lessonId: 'lesson_25',
    pronunciation: 'put-ta',
    examplePali: 'Putta, idh\'āgaccha!',
    exampleVi: 'Này con, hãy lại đây!',
  ),
  // ─── Đối Cách (Dutiyā) ───
  PaliVocabModel(
    id: 'pv_L25_lekhanam',
    root: 'lekhana',
    paradigmId: 'dutiya_acc',
    wordVi: 'lá thư (Đối cách — tân ngữ)',
    wordEn: 'letter (Accusative — object)',
    lessonId: 'lesson_25',
    pronunciation: 'le-kha-nam',
    examplePali: 'Ahaṃ lekhanaṃ likhāmi.',
    exampleVi: 'Tôi đang viết thư.',
  ),
  PaliVocabModel(
    id: 'pv_L25_gamam',
    root: 'gāma',
    paradigmId: 'dutiya_motion',
    wordVi: 'làng (Đối cách — đích đến)',
    wordEn: 'village (Accusative — destination)',
    lessonId: 'lesson_25',
    pronunciation: 'gaa-mam',
    examplePali: 'So gāmaṃ gacchati.',
    exampleVi: 'Vị ấy đi đến làng.',
  ),
  PaliVocabModel(
    id: 'pv_L25_sukham',
    root: 'sukha',
    paradigmId: 'dutiya_adverbial',
    wordVi: 'an lạc (Đối cách — trạng từ)',
    wordEn: 'happily (Accusative — adverbial)',
    lessonId: 'lesson_25',
    pronunciation: 'su-kham',
    examplePali: 'Rājā sukhaṃ vasati.',
    exampleVi: 'Đức vua sống an lạc.',
  ),
  // ─── Bổ Trợ Cách (Tatiyā) ───
  PaliVocabModel(
    id: 'pv_L25_acariyena',
    root: 'ācariya',
    paradigmId: 'tatiya_agent',
    wordVi: 'bởi người thầy (Bổ Trợ Cách — tác nhân bị động)',
    wordEn: 'by the teacher (Auxiliary — passive agent)',
    lessonId: 'lesson_25',
    pronunciation: 'aa-cha-ri-ye-na',
    examplePali: 'Ācariyena potthakaṃ dīyate.',
    exampleVi: 'Tập sách được cho bởi người thầy.',
  ),
  // ─── Sử Dụng Cách (Karaṇa) ───
  PaliVocabModel(
    id: 'pv_L25_hatthena',
    root: 'hattha',
    paradigmId: 'karana_instrument',
    wordVi: 'bằng tay (Sử Dụng Cách — công cụ)',
    wordEn: 'with the hand (Instrumental)',
    lessonId: 'lesson_25',
    pronunciation: 'hat-the-na',
    examplePali: 'Hatthena kammaṃ karoti.',
    exampleVi: 'Anh ấy làm việc bằng tay.',
  ),
  PaliVocabModel(
    id: 'pv_L25_vijjaya',
    root: 'vijjā',
    paradigmId: 'karana_cause',
    wordVi: 'nhờ trí tuệ (Sử Dụng Cách — nguyên nhân)',
    wordEn: 'through knowledge (Instrumental — cause)',
    lessonId: 'lesson_25',
    pronunciation: 'vij-jaaya',
    examplePali: 'Vijjāya vasati.',
    exampleVi: 'Nhờ trí tuệ, vị ấy sống.',
  ),
  PaliVocabModel(
    id: 'pv_L25_satena',
    root: 'sata',
    paradigmId: 'karana_price',
    wordVi: 'với giá 100 (Sử Dụng Cách — giá cả)',
    wordEn: 'for a hundred (Instrumental — price)',
    lessonId: 'lesson_25',
    pronunciation: 'sa-te-na',
    examplePali: 'Satena kītaṃ.',
    exampleVi: 'Đã được mua với giá 100.',
  ),
  PaliVocabModel(
    id: 'pv_L25_pitara',
    root: 'pitā',
    paradigmId: 'karana_resemblance',
    wordVi: 'giống như cha (Sử Dụng Cách — tương tự)',
    wordEn: 'like the father (Instrumental — resemblance)',
    lessonId: 'lesson_25',
    pronunciation: 'pi-ta-raa',
    examplePali: 'Pitarā sadiso.',
    exampleVi: 'Giống như người cha.',
  ),
];

// =============================================================================
// PHẦN 2: HELPER DATA
// =============================================================================

const List<FabPhraseItem> kLesson25Cases = [
  FabPhraseItem(
    phrase: 'Chủ Cách (Paṭhamā)',
    meaning: 'Chủ ngữ | Bổ ngữ nội ĐT | Hình thức gốc',
  ),
  FabPhraseItem(
    phrase: 'Hô Cách (Ālapana)',
    meaning: 'Gọi, mời: "Này con!" "Bạch ngài!"',
  ),
  FabPhraseItem(
    phrase: 'Đối Cách (Dutiyā)',
    meaning: 'Tân ngữ | Thời gian/khoảng cách | Đích đến | Trạng từ',
  ),
  FabPhraseItem(
    phrase: 'Bổ Trợ Cách (Tatiyā)',
    meaning: 'Tác nhân trong câu bị động: "bởi..."',
  ),
  FabPhraseItem(
    phrase: 'Sử Dụng Cách (Karaṇa)',
    meaning: 'Công cụ | Nguyên nhân | Giá cả | Tương tự | Khuyết tật',
  ),
];

// =============================================================================
// PHẦN 3: DAY 1 — LÝ THUYẾT CÁC BIẾN CÁCH
// =============================================================================

LessonDay getLesson25Day1() {
  return LessonDay(
    id: 'lesson25_day1',
    dayNumber: 1,
    themeId: 'theme_25_uses_of_cases',
    titleVi: 'Ngày 1: Cách Sử Dụng Các Biến Cách',
    phases: [
      // ─────────────────────────────────────────────────────────────────
      // PHASE 1: READ & LISTEN — Chủ Cách + Hô Cách + Đối Cách
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson25_phase1',
        phaseTypeStr: 'read_listen',
        titleVi: '📘 Chủ Cách + Hô Cách + Đối Cách',
        contentVi: '''
🎯 MỤC TIÊU BÀI 25
───────────────────
• Hiểu cách sử dụng 5 biến cách chính trong tiếng Pāḷi
• Chủ Cách (Paṭhamā), Hô Cách (Ālapana), Đối Cách (Dutiyā)
• Bổ Trợ Cách (Tatiyā), Sử Dụng Cách (Karaṇa)
• Phân biệt khi nào dùng biến cách nào

══════════════════════════════════════════════════════
A. CHỦ CÁCH (Paṭhamā) — Nominative Case
══════════════════════════════════════════════════════

① HÌNH THỨC GỐC (Crude form):
   Khi đứng một mình, Chủ Cách diễn tả hình thức gốc.
   • naro     = người đàn ông
   • nārī     = người nữ
   • phalaṃ   = trái cây

② CHỦ NGỮ (Subject):
   Chủ ngữ của động từ (chủ động hay bị động) đều dùng Chủ Cách.
   • Puriso gacchati.                = Người đàn ông đi.
   • Buddhena Dhammo desiyate.      = Pháp được thuyết bởi Phật.
     (Dhammo là chủ ngữ bị động → Chủ Cách)

③ BỔ NGỮ NỘI ĐỘNG TỪ (Complement):
   Phần bổ sung của nội động từ (attanopada) cũng dùng Chủ Cách.
   • So rājā ahosi.                  = Vị ấy đã trở thành vua.
   • Eso dārako hoti.                = Nó là đứa bé trai.

══════════════════════════════════════════════════════
B. HÔ CÁCH (Ālapana) — Vocative Case
══════════════════════════════════════════════════════

Dùng để DIỄN TẢ SỰ MỜI GỌI trong chủ ngữ:
   • Putta, idh'āgaccha!            = Này con, hãy lại đây!
   • Bho Gotama,                     = Bạch ngài Gotama!

══════════════════════════════════════════════════════
C. ĐỐI CÁCH (Dutiyā) — Accusative Case
══════════════════════════════════════════════════════

① TÂN NGỮ (Object):
   • Ahaṃ lekhanaṃ likhāmi.         = Tôi đang viết thư.

② KHOẢNG THỜI GIAN & PHẠM VI KHÔNG GIAN:
   • Idha so temāsaṃ vasi.          = Anh ấy sống ở đây 3 tháng.
   • Dvī'haṃ atikkantaṃ.           = Hai ngày đã trôi qua.
   • Yojanaṃ dīgho pabbato.        = Ngọn núi dài một do-tuần.

③ ĐỘNG TỪ CHUYỂN ĐỘNG:
   • So gāmaṃ gacchati.             = Vị ấy đi đến làng.

④ TIỀN TỐ "anu", "pati", "pari" + ĐỐI CÁCH:
   • rukkhaṃ pari vijjotate cando   = Mặt trăng chiếu sáng mỗi cây.
   • Sādhu Devadatto mātaraṃ anu.   = Devadatta tốt với mẹ.
   • Anu Sāriputtaṃ paññavā.       = Kém hơn Sāriputta về trí.
   • Nadiṃ Nerañjaraṃ pati.        = Gần sông Nerañjarā.

⑤ TRẠNG TỪ (Adverbial):
   • Rājā sukhaṃ vasati.            = Vua sống an lạc.
   • Sukhaṃ supati.                  = Ngủ hạnh phúc.
   • Dukkhaṃ seti.                   = Nằm đau khổ.

⑥ NGHĨA ĐẶC BIỆT:
   a. Xuất Xứ: Vinā Dhammaṃ = Không có Giáo Pháp
   b. Cách Dữ: Upamā maṃ paṭibhāti = Ví dụ xảy đến cho tôi
   c. Sở Thuộc: Taṃ Bhagavantaṃ = (của) Đức Thế Tôn ấy
   d. Định Sở: Ekaṃ samayaṃ = Một thuở nọ

⑦ GỐC "vasa" + ā/adhi/anu/upa + ĐỐI CÁCH:
   • Gāmaṃ āvasati.                  = Sống ở làng.
   • Vihāraṃ adhivasati.             = Cư ngụ trong tịnh xá.
''',
        contentEn: '''
LESSON 25 — USES OF THE CASES

NOMINATIVE (Paṭhamā):
 1. Crude form: naro = man
 2. Subject (active/passive): Puriso gacchati
 3. Complement of intransitive: So rājā ahosi

VOCATIVE (Ālapana): Address
 • Putta, idh'āgaccha! = Son, come here!

ACCUSATIVE (Dutiyā):
 1. Object: lekhanaṃ likhāmi
 2. Duration/extent: temāsaṃ vasi
 3. Motion: gāmaṃ gacchati
 4. Prefixes anu/pati/pari
 5. Adverbial: sukhaṃ vasati
 6. Special: vinā Dhammaṃ, etc.
 7. vasa + ā/adhi/anu/upa
''',
        fabVocab: const [
          FabVocabItem(
            wordEn: 'Puriso gacchati',
            wordVi: 'Người đàn ông đi (CC = chủ ngữ)',
            pronunciation: 'pu-ri-so',
            partOfSpeech: 'Chủ Cách',
          ),
          FabVocabItem(
            wordEn: 'Putta, idh\'āgaccha!',
            wordVi: 'Này con, hãy lại đây! (Hô Cách)',
            pronunciation: 'put-ta',
            partOfSpeech: 'Hô Cách',
          ),
          FabVocabItem(
            wordEn: 'lekhanaṃ likhāmi',
            wordVi: 'Tôi viết thư (ĐC = tân ngữ)',
            pronunciation: 'le-kha-nam',
            partOfSpeech: 'Đối Cách',
          ),
          FabVocabItem(
            wordEn: 'gāmaṃ gacchati',
            wordVi: 'Đi đến làng (ĐC = đích đến)',
            pronunciation: 'gaa-mam',
            partOfSpeech: 'Đối Cách',
          ),
          FabVocabItem(
            wordEn: 'sukhaṃ vasati',
            wordVi: 'Sống an lạc (ĐC = trạng từ)',
            pronunciation: 'su-kham',
            partOfSpeech: 'Đối Cách (trạng từ)',
          ),
        ],
        fabPhrases: const [
          FabPhraseItem(
            phrase: 'CC: chủ ngữ + bổ ngữ nội ĐT + hình thức gốc',
            meaning: 'Puriso gacchati | So rājā ahosi | naro',
          ),
          FabPhraseItem(
            phrase: 'ĐC: tân ngữ + thời gian + đích đến + trạng từ',
            meaning: 'lekhanaṃ | temāsaṃ | gāmaṃ | sukhaṃ',
          ),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 2: READ & LISTEN — Bổ Trợ Cách + Sử Dụng Cách
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson25_phase2',
        phaseTypeStr: 'read_listen',
        titleVi: '📘 Bổ Trợ Cách + Sử Dụng Cách (Karaṇa)',
        contentVi: '''
══════════════════════════════════════════════════════
D. BỔ TRỢ CÁCH (Tatiyā) — Auxiliary Case
══════════════════════════════════════════════════════

Khi câu ở THỂ BỊ ĐỘNG, nhân tác động được diễn tả bằng Bổ Trợ Cách:

   • Ācariyena potthakaṃ dīyate.
     = Tập sách được cho BỞI người thầy.

   • Tena kataṃ kammaṃ.
     = Việc đã được làm BỞI anh ấy.

📌 Bổ Trợ Cách = "bởi..." trong câu bị động.

══════════════════════════════════════════════════════
E. SỬ DỤNG CÁCH (Karaṇa) — Instrumental Case
══════════════════════════════════════════════════════

① CÔNG CỤ / PHƯƠNG TIỆN:
   • Hatthena kammaṃ karoti.        = Làm việc BẰNG tay.
   • Cakkhunā passāma.               = Chúng tôi thấy BẰNG mắt.
   • Ñāṇena sukhaṃ labhati.         = Có hạnh phúc NHỜ trí tuệ.

② CÁC NGHĨA KHÁC:

   (a) NGUYÊN NHÂN / LÝ DO:
   • Vijjāya vasati.                  = NHỜ trí tuệ, vị ấy sống.
   • Kammanā vasalo hoti.            = BỞI hành động, thành hà tiện.

   (b) THÂN THỂ KHUYẾT TẬT:
   • Akkhinā kāṇo.                   = Mù MỘT MẮT.

   (c) TÍNH CÁCH ĐẶC TRƯNG:
   • Vaṇṇena abhirūpo.               = Đẹp VẺ NGOÀI.
   • Gottena Gotamo.                  = Gotama THEO DÒNG TỘC.
   • Sippena naḷakāro.               = Thợ đan RỔ THEO NGHỀ.

   (d) KHOẢNG THỜI GIAN / KHÔNG GIAN:
   • Ekamāsena gacchāmi.             = Tôi sẽ đi TRONG một tháng.
   • Yojanena gacchati.               = Đi được MỘT DO-TUẦN.

   (e) GIÁ CẢ:
   • Satena kītaṃ.                    = Mua VỚI GIÁ 100.

   (f) TƯƠNG TỰ, BẰNG NHAU, THIẾU HỤT, THÀNH THẠO, NHU CẦU:
   • Pitarā sadiso.                    = GIỐNG như cha.
   • Mātarā samo.                     = BẰNG với mẹ.
   • Kahāpaṇena ūno.                 = THIẾU một đồng.
   • Dhanena hīno.                    = Nghèo TÀI SẢN.
   • Vācāya nipuṇo.                  = THÀNH THẠO lời nói.
   • Maṇinā attho.                    = CẦN viên ngọc.

   (g) MANG VÁC / VẬN CHUYỂN:
   • Sīsena bhāraṃ vahati.           = Mang gánh nặng TRÊN ĐẦU.

══════════════════════════════════════════════════════
F. TỔNG KẾT 5 BIẾN CÁCH
══════════════════════════════════════════════════════

┌─────────────────────┬────────────────────────────────────────┐
│ Biến cách           │ Chức năng chính                        │
├─────────────────────┼────────────────────────────────────────┤
│ Chủ Cách (CC)       │ Chủ ngữ, bổ ngữ, hình thức gốc       │
│ Hô Cách             │ Gọi, mời                               │
│ Đối Cách (ĐC)       │ Tân ngữ, thời gian, đích, trạng từ   │
│ Bổ Trợ Cách (BTC)   │ Tác nhân bị động ("bởi...")          │
│ Sử Dụng Cách (SDC)  │ Công cụ, nguyên nhân, giá, tương tự  │
└─────────────────────┴────────────────────────────────────────┘
''',
        contentEn: '''
AUXILIARY CASE (Tatiyā):
 Passive agent: Ācariyena potthakaṃ dīyate

INSTRUMENTAL (Karaṇa):
 1. Instrument: Hatthena karoti
 2a. Cause: Vijjāya vasati
 2b. Defect: Akkhinā kāṇo
 2c. Attribute: Gottena Gotamo
 2d. Duration: Ekamāsena gacchāmi
 2e. Price: Satena kītaṃ
 2f. Resemblance/need: Pitarā sadiso, Maṇinā attho
 2g. Carrying: Sīsena bhāraṃ vahati
''',
        fabVocab: const [
          FabVocabItem(
            wordEn: 'Ācariyena (BTC)',
            wordVi: 'bởi người thầy (tác nhân bị động)',
            pronunciation: 'aa-cha-ri-ye-na',
            partOfSpeech: 'Bổ Trợ Cách',
          ),
          FabVocabItem(
            wordEn: 'Hatthena (SDC)',
            wordVi: 'bằng tay (công cụ)',
            pronunciation: 'hat-the-na',
            partOfSpeech: 'Sử Dụng Cách',
          ),
          FabVocabItem(
            wordEn: 'Vijjāya (SDC)',
            wordVi: 'nhờ trí tuệ (nguyên nhân)',
            pronunciation: 'vij-jaaya',
            partOfSpeech: 'Sử Dụng Cách',
          ),
          FabVocabItem(
            wordEn: 'Pitarā sadiso',
            wordVi: 'giống như cha (tương tự)',
            pronunciation: 'pi-ta-raa',
            partOfSpeech: 'Sử Dụng Cách',
          ),
          FabVocabItem(
            wordEn: 'Satena kītaṃ',
            wordVi: 'mua với giá 100',
            pronunciation: 'sa-te-na',
            partOfSpeech: 'Sử Dụng Cách (giá cả)',
          ),
          FabVocabItem(
            wordEn: 'Ekamāsena',
            wordVi: 'trong một tháng (khoảng thời gian)',
            pronunciation: 'e-ka-maa-se-na',
            partOfSpeech: 'Sử Dụng Cách',
          ),
        ],
        fabPhrases: const [
          FabPhraseItem(
            phrase: 'BTC = "bởi..." trong câu bị động',
            meaning: 'Ācariyena dīyate = được cho BỞI thầy',
          ),
          FabPhraseItem(
            phrase: 'SDC: công cụ + nguyên nhân + giá + tương tự + ...',
            meaning: 'hatthena | vijjāya | satena | pitarā sadiso',
          ),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 3: LISTENING QUIZ
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson25_phase3',
        phaseTypeStr: 'listening_quiz',
        titleVi: '🎧 Quiz: Nhận Diện Biến Cách',
        questions: const [
          QuizQuestion(
            id: 'lesson25_q01',
            questionText: '"Puriso gacchati" — "Puriso" ở biến cách nào?',
            options: [
              'A. Đối Cách (tân ngữ)',
              'B. Chủ Cách (chủ ngữ)',
              'C. Sử Dụng Cách (công cụ)',
              'D. Bổ Trợ Cách (tác nhân)',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson25_q02',
            questionText: '"So rājā ahosi" — "rājā" đóng vai trò gì?',
            options: [
              'A. Tân ngữ (Đối Cách)',
              'B. Chủ ngữ (Chủ Cách)',
              'C. Bổ ngữ nội động từ (Chủ Cách)',
              'D. Công cụ (Sử Dụng Cách)',
            ],
            correctIndex: 2,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson25_q03',
            questionText: '"Ācariyena potthakaṃ dīyate" — "Ācariyena" ở cách nào?',
            options: [
              'A. Chủ Cách',
              'B. Đối Cách',
              'C. Bổ Trợ Cách (tác nhân bị động)',
              'D. Hô Cách',
            ],
            correctIndex: 2,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson25_q04',
            questionText: '"Rājā sukhaṃ vasati" — "sukhaṃ" ở cách nào và vai trò gì?',
            options: [
              'A. Chủ Cách — chủ ngữ',
              'B. Đối Cách — trạng từ (sống an lạc)',
              'C. Sử Dụng Cách — công cụ',
              'D. Bổ Trợ Cách — tác nhân',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson25_q05',
            questionText: '"Hatthena kammaṃ karoti" — "Hatthena" nghĩa gì?',
            options: [
              'A. Đến tay',
              'B. Cho tay',
              'C. Bằng tay (Sử Dụng Cách — công cụ)',
              'D. Của tay',
            ],
            correctIndex: 2,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson25_q06',
            questionText: '"Pitarā sadiso" — "Pitarā" dùng Sử Dụng Cách nghĩa gì?',
            options: [
              'A. Bởi cha',
              'B. Giống như cha (tương tự)',
              'C. Cho cha',
              'D. Từ cha',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson25_q07',
            questionText: '"So gāmaṃ gacchati" — "gāmaṃ" ở cách nào?',
            options: [
              'A. Chủ Cách',
              'B. Đối Cách (đích đến của động từ chuyển động)',
              'C. Sử Dụng Cách',
              'D. Bổ Trợ Cách',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
        ],
        fabAnswers: const [
          FabAnswerItem(
            en: 'Q1: Puriso = Nominative (subject)',
            vi: '① Puriso = Chủ Cách, đóng vai chủ ngữ. "Puriso gacchati" = Người đàn ông đi.',
          ),
          FabAnswerItem(
            en: 'Q2: rājā = complement (Nominative)',
            vi: '② rājā = bổ ngữ nội ĐT "ahosi" (trở thành). Chủ Cách. "So rājā ahosi" = Vị ấy trở thành vua.',
          ),
          FabAnswerItem(
            en: 'Q3: Ācariyena = Auxiliary (passive agent)',
            vi: '③ Ācariyena = Bổ Trợ Cách, tác nhân bị động. "bởi người thầy" trong câu "sách được cho bởi thầy".',
          ),
          FabAnswerItem(
            en: 'Q4: sukhaṃ = Accusative (adverbial)',
            vi: '④ sukhaṃ = Đối Cách dùng như trạng từ. "Rājā sukhaṃ vasati" = Vua sống an lạc.',
          ),
          FabAnswerItem(
            en: 'Q5: Hatthena = Instrumental (tool)',
            vi: '⑤ Hatthena = Sử Dụng Cách, công cụ. "Hatthena kammaṃ karoti" = Làm việc bằng tay.',
          ),
          FabAnswerItem(
            en: 'Q6: Pitarā = Instrumental (resemblance)',
            vi: '⑥ Pitarā = Sử Dụng Cách, tương tự. "Pitarā sadiso" = Giống như cha.',
          ),
          FabAnswerItem(
            en: 'Q7: gāmaṃ = Accusative (destination)',
            vi: '⑦ gāmaṃ = Đối Cách, đích đến. Động từ chuyển động (gacchati) + Đối Cách = đi đến làng.',
          ),
        ],
      ),
    ],
  );
}

// =============================================================================
// PHẦN 4: DAY 2 — MIND GAME + QUIZ THỰC HÀNH
// =============================================================================

LessonDay getLesson25Day2() {
  return LessonDay(
    id: 'lesson25_day2',
    dayNumber: 2,
    themeId: 'theme_25_uses_of_cases',
    titleVi: 'Ngày 2: Luyện Tập Nhận Diện Biến Cách',
    phases: [
      // ─────────────────────────────────────────────────────────────────
      // PHASE 4: MIND GAME — CC, Hô Cách, ĐC
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson25_phase4',
        phaseTypeStr: 'mind_game',
        titleVi: '🧠 Trò Chơi Tư Duy: CC + Hô Cách + ĐC',
        mixedSegments: const [
          // CC - chủ ngữ
          MixedSegment(text: '① [CC] '),
          MixedSegment(
            text: '[người đàn ông]',
            isVietnamese: true,
            answer: 'Puriso',
          ),
          MixedSegment(text: ' gacchati. (chủ ngữ)\n\n'),

          // CC - bổ ngữ
          MixedSegment(text: '② [CC] So '),
          MixedSegment(
            text: '[vua]',
            isVietnamese: true,
            answer: 'rājā',
          ),
          MixedSegment(text: ' ahosi. (bổ ngữ nội ĐT)\n\n'),

          // Hô Cách
          MixedSegment(text: '③ [Hô] '),
          MixedSegment(
            text: '[Này con!]',
            isVietnamese: true,
            answer: 'Putta',
          ),
          MixedSegment(text: ", idh'āgaccha!\n\n"),

          // ĐC - tân ngữ
          MixedSegment(text: '④ [ĐC] Ahaṃ '),
          MixedSegment(
            text: '[lá thư]',
            isVietnamese: true,
            answer: 'lekhanaṃ',
          ),
          MixedSegment(text: ' likhāmi. (tân ngữ)\n\n'),

          // ĐC - đích đến
          MixedSegment(text: '⑤ [ĐC] So '),
          MixedSegment(
            text: '[làng]',
            isVietnamese: true,
            answer: 'gāmaṃ',
          ),
          MixedSegment(text: ' gacchati. (đích đến)\n\n'),

          // ĐC - thời gian
          MixedSegment(text: '⑥ [ĐC] Idha so '),
          MixedSegment(
            text: '[ba tháng]',
            isVietnamese: true,
            answer: 'temāsaṃ',
          ),
          MixedSegment(text: ' vasi. (thời gian)\n\n'),

          // ĐC - trạng từ
          MixedSegment(text: '⑦ [ĐC] Rājā '),
          MixedSegment(
            text: '[an lạc]',
            isVietnamese: true,
            answer: 'sukhaṃ',
          ),
          MixedSegment(text: ' vasati. (trạng từ)\n\n'),

          // ĐC - anu
          MixedSegment(text: '⑧ [ĐC] Sādhu Devadatto '),
          MixedSegment(
            text: '[mẹ]',
            isVietnamese: true,
            answer: 'mātaraṃ',
          ),
          MixedSegment(text: ' anu. (anu + ĐC)\n'),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 5: MIND GAME — BTC + SDC
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson25_phase5',
        phaseTypeStr: 'mind_game',
        titleVi: '🧠 Trò Chơi Tư Duy: BTC + SDC (Karaṇa)',
        mixedSegments: const [
          // BTC
          MixedSegment(text: '⑨ [BTC] '),
          MixedSegment(
            text: '[bởi người thầy]',
            isVietnamese: true,
            answer: 'Ācariyena',
          ),
          MixedSegment(text: ' potthakaṃ dīyate.\n\n'),

          MixedSegment(text: '⑩ [BTC] '),
          MixedSegment(
            text: '[bởi anh ấy]',
            isVietnamese: true,
            answer: 'Tena',
          ),
          MixedSegment(text: ' kataṃ kammaṃ.\n\n'),

          // SDC - công cụ
          MixedSegment(text: '⑪ [SDC] '),
          MixedSegment(
            text: '[bằng tay]',
            isVietnamese: true,
            answer: 'Hatthena',
          ),
          MixedSegment(text: ' kammaṃ karoti.\n\n'),

          // SDC - nguyên nhân
          MixedSegment(text: '⑫ [SDC] '),
          MixedSegment(
            text: '[nhờ trí tuệ]',
            isVietnamese: true,
            answer: 'Vijjāya',
          ),
          MixedSegment(text: ' vasati.\n\n'),

          // SDC - khuyết tật
          MixedSegment(text: '⑬ [SDC] '),
          MixedSegment(
            text: '[một mắt]',
            isVietnamese: true,
            answer: 'Akkhinā',
          ),
          MixedSegment(text: ' kāṇo. (mù một mắt)\n\n'),

          // SDC - giá
          MixedSegment(text: '⑭ [SDC] '),
          MixedSegment(
            text: '[giá 100]',
            isVietnamese: true,
            answer: 'Satena',
          ),
          MixedSegment(text: ' kītaṃ. (mua giá 100)\n\n'),

          // SDC - tương tự
          MixedSegment(text: '⑮ [SDC] '),
          MixedSegment(
            text: '[giống cha]',
            isVietnamese: true,
            answer: 'Pitarā',
          ),
          MixedSegment(text: ' sadiso.\n\n'),

          // SDC - khoảng thời gian
          MixedSegment(text: '⑯ [SDC] '),
          MixedSegment(
            text: '[trong một tháng]',
            isVietnamese: true,
            answer: 'Ekamāsena',
          ),
          MixedSegment(text: ' gacchāmi.\n\n'),

          // SDC - mang vác
          MixedSegment(text: '⑰ [SDC] '),
          MixedSegment(
            text: '[trên đầu]',
            isVietnamese: true,
            answer: 'Sīsena',
          ),
          MixedSegment(text: ' bhāraṃ vahati.\n'),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 6: LISTENING QUIZ — Tổng hợp
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson25_phase6',
        phaseTypeStr: 'listening_quiz',
        titleVi: '🎧 Quiz Tổng Hợp: Xác Định Biến Cách',
        questions: const [
          QuizQuestion(
            id: 'lesson25_q08',
            questionText: '"Buddhena Dhammo desiyate" — "Dhammo" ở cách nào?',
            options: [
              'A. Sử Dụng Cách (công cụ)',
              'B. Chủ Cách (chủ ngữ bị động)',
              'C. Đối Cách (tân ngữ)',
              'D. Bổ Trợ Cách (tác nhân)',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson25_q09',
            questionText: '"Akkhinā kāṇo" — SDC ở đây nghĩa gì?',
            options: [
              'A. Bằng mắt (công cụ)',
              'B. Nhờ mắt (nguyên nhân)',
              'C. Thân thể khuyết tật (mù một mắt)',
              'D. Giống như mắt',
            ],
            correctIndex: 2,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson25_q10',
            questionText: '"Gāmaṃ āvasati" — "Gāmaṃ" dùng ĐC vì lý do gì?',
            options: [
              'A. Động từ chuyển động',
              'B. Trạng từ',
              'C. Gốc "vasa" + ā = āvasati dùng với Đối Cách',
              'D. Tân ngữ trực tiếp',
            ],
            correctIndex: 2,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson25_q11',
            questionText: '"Vinā Dhammaṃ" — ĐC ở đây mang nghĩa gì?',
            options: [
              'A. Tân ngữ',
              'B. Đích đến',
              'C. Xuất Xứ Cách (không có Giáo Pháp)',
              'D. Thời gian',
            ],
            correctIndex: 2,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson25_q12',
            questionText: '"Dhanena hīno" — SDC nghĩa gì?',
            options: [
              'A. Bằng tài sản',
              'B. Thiếu hụt tài sản (nghèo)',
              'C. Nhờ tài sản',
              'D. Với giá tài sản',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson25_q13',
            questionText: '"Ekaṃ samayaṃ Bhagavā" — ĐC nghĩa gì?',
            options: [
              'A. Tân ngữ',
              'B. Đích đến',
              'C. Định Sở Cách (một thuở nọ)',
              'D. Trạng từ',
            ],
            correctIndex: 2,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson25_q14',
            questionText: 'Tổng kết: Biến cách nào dùng cho TÁC NHÂN trong câu BỊ ĐỘNG?',
            options: [
              'A. Chủ Cách',
              'B. Đối Cách',
              'C. Bổ Trợ Cách (Tatiyā)',
              'D. Sử Dụng Cách',
            ],
            correctIndex: 2,
            practiceNumber: 'practice2',
          ),
        ],
        fabAnswers: const [
          FabAnswerItem(
            en: 'Q8: Dhammo = Nominative (passive subject)',
            vi: '⑧ Dhammo = Chủ Cách, chủ ngữ bị động. "Pháp được thuyết bởi Phật" — Pháp là chủ ngữ.',
          ),
          FabAnswerItem(
            en: 'Q9: Akkhinā = Instrumental (bodily defect)',
            vi: '⑨ SDC (2b) = thân thể khuyết tật. "Akkhinā kāṇo" = mù một mắt.',
          ),
          FabAnswerItem(
            en: 'Q10: vasa + ā → āvasati + Accusative',
            vi: '⑩ Quy tắc #7: gốc "vasa" + ā/adhi/anu/upa dùng với Đối Cách. "Gāmaṃ āvasati" = sống ở làng.',
          ),
          FabAnswerItem(
            en: 'Q11: vinā + Acc = without',
            vi: '⑪ ĐC (6a): Vinā + ĐC = không có. "Vinā Dhammaṃ" = không có Giáo Pháp (nghĩa Xuất Xứ).',
          ),
          FabAnswerItem(
            en: 'Q12: Dhanena = Instrumental (deficiency)',
            vi: '⑫ SDC (2f): thiếu hụt. "Dhanena hīno" = nghèo tài sản, thiếu tài sản.',
          ),
          FabAnswerItem(
            en: 'Q13: Ekaṃ samayaṃ = Acc (Locative sense)',
            vi: '⑬ ĐC (6d): "Ekaṃ samayaṃ" = một thuở nọ (nghĩa Định Sở). Đây là cách dùng đặc biệt của Đối Cách.',
          ),
          FabAnswerItem(
            en: 'Q14: Tatiyā = passive agent',
            vi: '⑭ Bổ Trợ Cách (Tatiyā) dùng cho tác nhân trong câu bị động. VD: Ācariyena = bởi người thầy.',
          ),
        ],
      ),
    ],
  );
}

// =============================================================================
// PHẦN 5: HÀM TIỆN ÍCH
// =============================================================================

({LessonDay day1, LessonDay day2}) getLesson25Data() {
  return (
    day1: getLesson25Day1(),
    day2: getLesson25Day2(),
  );
}
