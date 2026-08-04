// =============================================================================
// LESSON 26 DATA
// Bài học 26: Thể Bị Động (Passive Voice) + Động từ "hū"/"asa"
//           + Bảng Chia Động Từ Đầy Đủ
// Nguồn: Nārada Mahāthera, "An Elementary Pāḷi Course", Lesson 26
// =============================================================================

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

// =============================================================================
// PHẦN 1: DANH SÁCH TỪ VỰNG (PaliVocabModel)
// =============================================================================

final kLesson26Vocab = <PaliVocabModel>[
  // ─── Thể Bị Động ───
  PaliVocabModel(
    id: 'pv_L26_paccate',
    root: 'pac',
    paradigmId: 'passive_ya',
    wordVi: 'được nấu (paca + ya + te → paccate, thể bị động)',
    wordEn: 'is cooked (passive of pacati)',
    lessonId: 'lesson_26',
    pronunciation: 'pat-cha-te',
    examplePali: 'paca + ya + te = pacayate = paccate',
    exampleVi: 'nấu → được nấu (thêm "ya" giữa căn và phân cuối)',
  ),
  PaliVocabModel(
    id: 'pv_L26_diyate',
    root: 'dā',
    paradigmId: 'passive_i',
    wordVi: 'được cho (dā + ya + te → dīyate, ā→ī)',
    wordEn: 'is given (passive of dadāti)',
    lessonId: 'lesson_26',
    pronunciation: 'dii-ya-te',
    examplePali: 'dā + ya + te = dīyate',
    exampleVi: 'cho → được cho (ā → ī trước ya)',
  ),
  PaliVocabModel(
    id: 'pv_L26_rakkhiyate',
    root: 'rakkha',
    paradigmId: 'passive_i2',
    wordVi: 'được bảo vệ (rakkha + ya → rakkhīyate, a→ī)',
    wordEn: 'is protected (passive of rakkhati)',
    lessonId: 'lesson_26',
    pronunciation: 'rak-khii-ya-te',
    examplePali: 'rakkha + ya + te = rakkhīyate',
    exampleVi: 'bảo vệ → được bảo vệ (a → ī)',
  ),
  PaliVocabModel(
    id: 'pv_L26_niyate',
    root: 'nī',
    paradigmId: 'passive_i3',
    wordVi: 'được dẫn đi (nī + ya + te → nīyate)',
    wordEn: 'is led (passive of neti)',
    lessonId: 'lesson_26',
    pronunciation: 'nii-ya-te',
    examplePali: 'nī + ya + te = nīyate',
    exampleVi: 'dẫn → được dẫn đi',
  ),
  PaliVocabModel(
    id: 'pv_L26_suyate',
    root: 'su',
    paradigmId: 'passive_i4',
    wordVi: 'được nghe (su + ya + te → sūyate)',
    wordEn: 'is heard (passive of suṇāti)',
    lessonId: 'lesson_26',
    pronunciation: 'suu-ya-te',
    examplePali: 'su + ya + te = sūyate',
    exampleVi: 'nghe → được nghe',
  ),
  // ─── Động từ "hū" (thì, là, trở thành) ───
  PaliVocabModel(
    id: 'pv_L26_hoti',
    root: 'hū',
    paradigmId: 'hu_present',
    wordVi: 'thì, là, trở thành (Ngôi 3 số ít, Hiện tại)',
    wordEn: 'is, becomes, exists (3rd sg. present)',
    lessonId: 'lesson_26',
    pronunciation: 'ho-ti',
    examplePali: 'So rājā hoti.',
    exampleVi: 'Vị ấy là vua / trở thành vua.',
  ),
  PaliVocabModel(
    id: 'pv_L26_ahosi',
    root: 'hū',
    paradigmId: 'hu_past',
    wordVi: 'đã là, đã trở thành (Ajjatanī, Ngôi 3 số ít)',
    wordEn: 'was, became (Aorist 3rd sg.)',
    lessonId: 'lesson_26',
    pronunciation: 'a-ho-si',
    examplePali: 'So rājā ahosi.',
    exampleVi: 'Vị ấy đã trở thành vua.',
  ),
  PaliVocabModel(
    id: 'pv_L26_hessati',
    root: 'hū',
    paradigmId: 'hu_future',
    wordVi: 'sẽ là, sẽ trở thành (Tương lai, Ngôi 3 số ít)',
    wordEn: 'will be, will become (Future 3rd sg.)',
    lessonId: 'lesson_26',
    pronunciation: 'hes-sa-ti',
    examplePali: 'So rājā hessati.',
    exampleVi: 'Vị ấy sẽ trở thành vua.',
  ),
  // ─── Động từ "asa" (thì, là) ───
  PaliVocabModel(
    id: 'pv_L26_atthi',
    root: 'asa',
    paradigmId: 'asa_present',
    wordVi: 'là, có (Ngôi 3 số ít, Hiện tại)',
    wordEn: 'is, exists (3rd sg. present)',
    lessonId: 'lesson_26',
    pronunciation: 'at-thi',
    examplePali: 'Maggo atthi.',
    exampleVi: 'Con đường có (tồn tại).',
  ),
  PaliVocabModel(
    id: 'pv_L26_santi',
    root: 'asa',
    paradigmId: 'asa_present_pl',
    wordVi: 'là, có (Ngôi 3 số nhiều, Hiện tại)',
    wordEn: 'are, exist (3rd pl. present)',
    lessonId: 'lesson_26',
    pronunciation: 'san-ti',
    examplePali: 'Sattā santi.',
    exampleVi: 'Chúng sanh có (tồn tại).',
  ),
  PaliVocabModel(
    id: 'pv_L26_siya',
    root: 'asa',
    paradigmId: 'asa_conditional',
    wordVi: 'sẽ là, nên là (Khả Năng Cách, Ngôi 3 số ít)',
    wordEn: 'would be, should be (Conditional 3rd sg.)',
    lessonId: 'lesson_26',
    pronunciation: 'si-yaa',
    examplePali: 'So buddho siyā.',
    exampleVi: 'Vị ấy nên là / có thể là Phật.',
  ),
];

// =============================================================================
// PHẦN 2: HELPER DATA
// =============================================================================

const List<FabPhraseItem> kLesson26PassiveRules = [
  FabPhraseItem(
    phrase: 'Bị Động = căn + ya + phân cuối',
    meaning: 'paca+ya+te=paccate | dā+ya+te=dīyate | rakkha+ya+te=rakkhīyate',
  ),
  FabPhraseItem(
    phrase: 'a/ā → ī trước "ya"',
    meaning: 'dā→dī | rakkha→rakkhī | nī→nī (giữ nguyên) | su→sū',
  ),
  FabPhraseItem(
    phrase: 'Phân cuối bị động: -te, -se, -e (sg) | -nte, -vhe, -mhe (pl)',
    meaning: 'Ngôi 3: -te/-nte | Ngôi 2: -se/-vhe | Ngôi 1: -e/-mhe',
  ),
  FabPhraseItem(
    phrase: 'hū = thì, là, trở thành',
    meaning: 'hoti (là) | ahosi (đã là) | hessati (sẽ là)',
  ),
  FabPhraseItem(
    phrase: 'asa = thì, là (tồn tại)',
    meaning: 'atthi (là, có) | santi (có, số nhiều) | siyā (nên là)',
  ),
];

// =============================================================================
// PHẦN 3: DAY 1 — THỂ BỊ ĐỘNG + ĐỘNG TỪ "hū" & "asa"
// =============================================================================

LessonDay getLesson26Day1() {
  return LessonDay(
    id: 'lesson26_day1',
    dayNumber: 1,
    themeId: 'theme_26_passive_voice',
    titleVi: 'Ngày 1 — Lý thuyết & Từ vựng: Thực Hành Dịch Thuật (B) — Bị Động & hū/asa',
    phases: [
      // ─────────────────────────────────────────────────────────────────
      // PHASE 1: READ & LISTEN — Thể Bị Động
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson26_phase1',
        phaseTypeStr: 'read_listen',
        titleVi: '📘 Lý thuyết: Thực Hành Dịch Thuật (B) — Bị Động & hū/asa',
        contentVi: '''
🎯 MỤC TIÊU BÀI 26
───────────────────
• Hiểu cách hình thành Thể Bị Động: thêm "ya" giữa căn và phân cuối
• Quy tắc a/ā → ī trước "ya"
• Học 6 thì bị động: Hiện tại, Ajjatanī, Hīyattanī, Pañcamī, Sattamī, Tương lai
• Động từ "hū" (thì, là, trở thành) — chia 6 thì
• Động từ "asa" (thì, là) — chia 4 thì
• Bảng chia động từ chủ động đầy đủ (pacati)

══════════════════════════════════════════════════════
A. THỂ BỊ ĐỘNG (PASSIVE VOICE)
══════════════════════════════════════════════════════

CÁCH HÌNH THÀNH:
   Căn + ya + phân cuối bị động

📌 QUY TẮC: Nếu căn kết thúc bằng "a" hoặc "ā" → đổi thành "ī"

VÍ DỤ:
   • paca  + ya + te = pacayate = paccate     (được nấu)
   • dā    + ya + te = dīyate                  (được cho)     [ā→ī]
   • nī    + ya + te = nīyate                  (được dẫn)
   • su    + ya + te = sūyate                  (được nghe)
   • rakkha + ya + te = rakkhīyate             (được bảo vệ)  [a→ī]

══════════════════════════════════════════════════════
B. CÁC THÌ BỊ ĐỘNG
══════════════════════════════════════════════════════

📌 THÌ HIỆN TẠI (Vattamānā) — Ví dụ: paccate

   Số ít                    Số nhiều
   Ngôi 3: -te    paccate   -nte    paccante
   Ngôi 2: -se    paccase   -vhe    paccavhe
   Ngôi 1: -e     pacce     -mhe    paccamhe

📌 QUÁ KHỨ BẤT ĐỊNH (Ajjatanī) — Ví dụ: apaccā

   Số ít                        Số nhiều
   Ngôi 3: -ā    apaccā, paccā   -ū    apaccū, paccū
   Ngôi 2: -se   apaccise        -vhaṃ apaccivhaṃ
   Ngôi 1: -a    apacca          -mhe  apaccimhe

📌 BẤT THÀNH KHỨ (Hīyattanī) — Ví dụ: apaccattha

   Số ít                        Số nhiều
   Ngôi 3: -ttha  apaccattha    -tthuṃ  apaccatthuṃ
   Ngôi 2: -se    apaccase      -vhaṃ   apaccavhaṃ
   Ngôi 1: -iṃ    apacciṃ       -mhase  apaccamhase

📌 MỆNH LỆNH (Pañcamī) — Ví dụ: paccataṃ

   Số ít                        Số nhiều
   Ngôi 3: -taṃ   paccataṃ     -ntaṃ   paccantaṃ
   Ngôi 2: -ssu   paccassu     -vho    paccavho
   Ngôi 1: -e     pacce        -āmase  paccāmase

📌 KHẢ NĂNG (Sattamī) — Ví dụ: paccetha

   Số ít                        Số nhiều
   Ngôi 3: -etha  paccetha     -eraṃ   pacceraṃ
   Ngôi 2: -etho  paccetho     -eyyavho pacceyyavho
   Ngôi 1: -eyyaṃ pacceyyaṃ    -eyyāmhe pacceyyāmhe

📌 TƯƠNG LAI (Bhavissanti) — Ví dụ: paccissate

   Số ít                        Số nhiều
   Ngôi 3: -ssate paccissate   -ssante  paccissante
   Ngôi 2: -ssase paccissase   -ssavhe  paccissavhe
   Ngôi 1: -ssaṃ  paccissaṃ    -ssāmhe  paccissāmhe

══════════════════════════════════════════════════════
C. PHÂN BIỆT CHỦ ĐỘNG vs BỊ ĐỘNG
══════════════════════════════════════════════════════

CHỦ ĐỘNG (Active):
   • Pacati odanaṃ.         = Anh ấy nấu cơm.
   • Rakkhati dhammaṃ.      = Vị ấy bảo vệ Pháp.

BỊ ĐỘNG (Passive):
   • Odanaṃ paccate.        = Cơm ĐƯỢC nấu.
   • Dhammo rakkhīyate.     = Pháp ĐƯỢC bảo vệ.

📌 Câu bị động: TÂN NGỮ trở thành CHỦ NGỮ (Chủ Cách)
   Tác nhân → Bổ Trợ Cách (Tatiyā): "bởi..."
''',
        contentEn: '''
LESSON 26 — PASSIVE VOICE

FORMATION: root + ya + passive endings
RULE: a/ā → ī before "ya"

EXAMPLES:
 paca+ya+te = paccate (is cooked)
 dā+ya+te = dīyate (is given)
 rakkha+ya+te = rakkhīyate (is protected)

6 TENSES: Present, Aorist, Imperfect, Imperative, Conditional, Future

ACTIVE vs PASSIVE:
 Active:  Pacati odanaṃ (He cooks rice)
 Passive: Odanaṃ paccate (Rice is cooked)
''',
        fabVocab: const [
          FabVocabItem(
            wordEn: 'paccate (pac+ya+te)',
            wordVi: 'được nấu',
            pronunciation: 'pat-cha-te',
            partOfSpeech: 'Bị động Hiện tại, Ngôi 3 số ít',
          ),
          FabVocabItem(
            wordEn: 'dīyate (dā+ya+te)',
            wordVi: 'được cho',
            pronunciation: 'dii-ya-te',
            partOfSpeech: 'Bị động (ā→ī)',
          ),
          FabVocabItem(
            wordEn: 'rakkhīyate',
            wordVi: 'được bảo vệ',
            pronunciation: 'rak-khii-ya-te',
            partOfSpeech: 'Bị động (a→ī)',
          ),
          FabVocabItem(
            wordEn: 'paccante',
            wordVi: 'được nấu (số nhiều)',
            pronunciation: 'pat-chan-te',
            partOfSpeech: 'Bị động, Ngôi 3 số nhiều',
          ),
          FabVocabItem(
            wordEn: 'paccissate',
            wordVi: 'sẽ được nấu',
            pronunciation: 'pat-chis-sa-te',
            partOfSpeech: 'Bị động Tương lai',
          ),
        ],
        fabPhrases: const [
          FabPhraseItem(
            phrase: 'Bị động = căn + ya + phân cuối bị động',
            meaning: 'paccate | dīyate | rakkhīyate | nīyate | sūyate',
          ),
          FabPhraseItem(
            phrase: 'a/ā → ī: dā→dī | rakkha→rakkhī',
            meaning: 'Quy tắc chính khi hình thành thể bị động',
          ),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 2: READ & LISTEN — Động từ "hū" & "asa"
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson26_phase2',
        phaseTypeStr: 'read_listen',
        titleVi: '📖 Từ vựng: Thực Hành Dịch Thuật (B) — Bị Động & hū/asa',
        contentVi: '''
══════════════════════════════════════════════════════
D. ĐỘNG TỪ "hū" — THÌ, LÀ, TRỞ THÀNH
══════════════════════════════════════════════════════

📌 THÌ HIỆN TẠI (Present)

   Số ít          Số nhiều
   Ngôi 3: hoti    honti
   Ngôi 2: hosi    hotha
   Ngôi 1: homi    homa

📌 QUÁ KHỨ BẤT ĐỊNH (Ajjatanī)

   Số ít                          Số nhiều
   Ngôi 3: ahosi, ahū, ahu       ahesuṃ, ahuṃ
   Ngôi 2: ahosi, ahuvo           ahosittha, ahuvattha
   Ngôi 1: ahosiṃ, ahuṃ, ahuvāsiṃ ahosimhā, ahumhā

📌 TƯƠNG LAI (Bhavissanti)

   Số ít                                    Số nhiều
   Ngôi 3: hessati, hehiti, hehissati      hessanti, hehissanti
   Ngôi 2: hessasi, hehissasi              hessatha, hehissatha
   Ngôi 1: hessāmi, hehissāmi              hessāma, hehissāma

📌 MỆNH LỆNH (Pañcamī)

   Số ít          Số nhiều
   Ngôi 3: hotu    hontu
   Ngôi 2: hohi    hotha
   Ngôi 1: homi    homa

📌 KHẢ NĂNG (Sattamī)

   Số ít                    Số nhiều
   Ngôi 3: heyya, huveyya   heyyuṃ, huveyyuṃ
   Ngôi 2: heyyāsi          heyyātha
   Ngôi 1: heyyāmi          heyyāma

📌 BẤT THÀNH KHỨ (Hīyattanī)

   Số ít          Số nhiều
   Ngôi 3: ahuvā   ahuvū, ahuvu
   Ngôi 2: ahuvo   ahuvattha
   Ngôi 1: ahuvaṃ  ahuvamhā

══════════════════════════════════════════════════════
E. ĐỘNG TỪ "asa" — THÌ, LÀ (tồn tại)
══════════════════════════════════════════════════════

📌 THÌ HIỆN TẠI (Present)

   Số ít              Số nhiều
   Ngôi 3: atthi       santi
   Ngôi 2: asi         attha
   Ngôi 1: asmi, amhi  asma, amha

📌 QUÁ KHỨ (Ajjatanī)

   Số ít          Số nhiều
   Ngôi 3: āsi     āsiṃsu, āsuṃ
   Ngôi 2: āsi     āsittha
   Ngôi 1: āsiṃ    āsimha

📌 MỆNH LỆNH (Pañcamī)

   Số ít          Số nhiều
   Ngôi 3: atthu   santu
   Ngôi 2: āhi     attha
   Ngôi 1: asmi    asma

📌 KHẢ NĂNG (Sattamī)

   Số ít              Số nhiều
   Ngôi 3: siyā, assa  siyuṃ, assu
   Ngôi 2: assa         assatha
   Ngôi 1: assaṃ        assāma

══════════════════════════════════════════════════════
F. PHÂN BIỆT "hū" VÀ "asa"
══════════════════════════════════════════════════════

"hū" = trở thành, thì, là (nhấn mạnh sự biến đổi)
   • So rājā hoti.    = Vị ấy TRỞ THÀNH vua.
   • So rājā ahosi.   = Vị ấy ĐÃ TRỞ THÀNH vua.

"asa" = là, có (nhấn mạnh sự tồn tại)
   • Maggo atthi.     = Con đường CÓ (tồn tại).
   • Sattā santi.     = Chúng sanh CÓ (tồn tại).

⚠️ "atthi" (Ngôi 3 số ít) và "santi" (Ngôi 3 số nhiều) là phổ biến nhất.
''',
        contentEn: '''
VERB "hū" (to be, become):
 Present: hoti/honti | hosi/hotha | homi/homa
 Aorist: ahosi/ahesuṃ | ahosi/ahosittha | ahosiṃ/ahosimhā
 Future: hessati/hessanti | hessasi/hessatha | hessāmi/hessāma

VERB "asa" (to be, exist):
 Present: atthi/santi | asi/attha | asmi,amhi/asma,amha
 Aorist: āsi/āsiṃsu | āsi/āsittha | āsiṃ/āsimha

DIFFERENCE:
 hū = become (change)
 asa = exist (state)
''',
        fabVocab: const [
          FabVocabItem(
            wordEn: 'hoti (hū, present)',
            wordVi: 'thì, là, trở thành',
            pronunciation: 'ho-ti',
            partOfSpeech: 'hū Hiện tại, Ngôi 3 số ít',
          ),
          FabVocabItem(
            wordEn: 'ahosi (hū, aorist)',
            wordVi: 'đã là, đã trở thành',
            pronunciation: 'a-ho-si',
            partOfSpeech: 'hū Ajjatanī, Ngôi 3 số ít',
          ),
          FabVocabItem(
            wordEn: 'hessati (hū, future)',
            wordVi: 'sẽ là, sẽ trở thành',
            pronunciation: 'hes-sa-ti',
            partOfSpeech: 'hū Bhavissanti, Ngôi 3 số ít',
          ),
          FabVocabItem(
            wordEn: 'atthi (asa, present)',
            wordVi: 'là, có (tồn tại)',
            pronunciation: 'at-thi',
            partOfSpeech: 'asa Hiện tại, Ngôi 3 số ít',
          ),
          FabVocabItem(
            wordEn: 'santi (asa, present pl)',
            wordVi: 'là, có (số nhiều)',
            pronunciation: 'san-ti',
            partOfSpeech: 'asa Hiện tại, Ngôi 3 số nhiều',
          ),
          FabVocabItem(
            wordEn: 'siyā (asa, conditional)',
            wordVi: 'sẽ là, nên là',
            pronunciation: 'si-yaa',
            partOfSpeech: 'asa Sattamī, Ngôi 3 số ít',
          ),
        ],
        fabPhrases: const [
          FabPhraseItem(
            phrase: 'hū = trở thành | asa = tồn tại',
            meaning: 'hoti = trở thành vua | atthi = có con đường',
          ),
          FabPhraseItem(
            phrase: 'atthi/santi phổ biến nhất',
            meaning: 'atthi (Ngôi 3 số ít) | santi (Ngôi 3 số nhiều)',
          ),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 3: LISTENING QUIZ
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson26_phase3',
        phaseTypeStr: 'listening_quiz',
        titleVi: '🎧 Quiz: Thực Hành Dịch Thuật (B) — Bị Động & hū/asa',
        questions: const [
          QuizQuestion(
            id: 'lesson26_q01',
            questionText: '"paccate" = paca + ya + te. Quy tắc nào áp dụng?',
            options: [
              'A. Không có quy tắc đặc biệt',
              'B. Thêm "ya" giữa căn và phân cuối bị động',
              'C. a/ā → ī trước ya',
              'D. Nhân đôi phụ âm',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson26_q02',
            questionText: '"dīyate" = dā + ya + te. Tại sao ā→ī?',
            options: [
              'A. Do Vuddhi',
              'B. Quy tắc: a/ā → ī trước "ya"',
              'C. Do Sandhi',
              'D. Do nhân đôi',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson26_q03',
            questionText: '"hoti" là dạng nào của động từ "hū"?',
            options: [
              'A. Quá khứ, Ngôi 3 số ít',
              'B. Hiện tại, Ngôi 3 số ít',
              'C. Tương lai, Ngôi 3 số ít',
              'D. Mệnh lệnh, Ngôi 3 số ít',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson26_q04',
            questionText: '"atthi" và "santi" thuộc động từ nào?',
            options: [
              'A. hū (trở thành)',
              'B. asa (tồn tại, là)',
              'C. pac (nấu)',
              'D. gamu (đi)',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson26_q05',
            questionText: '"Odanaṃ paccate" — câu này ở thể nào?',
            options: [
              'A. Chủ động (Active)',
              'B. Bị động (Passive)',
              'C. Phản thân (Reflexive)',
              'D. Mệnh lệnh',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson26_q06',
            questionText: '"ahosi" và "hessati" khác nhau thế nào?',
            options: [
              'A. Cùng thì, khác ngôi',
              'B. ahosi = Quá khứ | hessati = Tương lai',
              'C. ahosi = Hiện tại | hessati = Quá khứ',
              'D. Không khác nhau',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson26_q07',
            questionText: 'Phân cuối bị động Ngôi 3 số ít là gì?',
            options: [
              'A. -ti',
              'B. -te',
              'C. -mi',
              'D. -si',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
        ],
        fabAnswers: const [
          FabAnswerItem(
            en: 'Q1: Add "ya" between root and passive ending',
            vi: '① Thể bị động hình thành bằng cách thêm "ya" giữa căn và phân cuối. paca+ya+te = paccate (được nấu).',
          ),
          FabAnswerItem(
            en: 'Q2: a/ā → ī before "ya"',
            vi: '② Quy tắc: căn kết thúc bằng a/ā → đổi thành ī trước "ya". dā+ya+te = dīyate (được cho).',
          ),
          FabAnswerItem(
            en: 'Q3: hoti = present 3rd sg of hū',
            vi: '③ hoti = Hiện tại, Ngôi 3 số ít của "hū" (thì, là, trở thành). So rājā hoti = Vị ấy là vua.',
          ),
          FabAnswerItem(
            en: 'Q4: atthi/santi belong to "asa"',
            vi: '④ atthi (Ngôi 3 số ít) và santi (Ngôi 3 số nhiều) thuộc động từ "asa" (tồn tại, là).',
          ),
          FabAnswerItem(
            en: 'Q5: Passive voice',
            vi: '⑤ "Odanaṃ paccate" = Cơm được nấu. Đây là câu bị động (paccate = thể bị động của pacati).',
          ),
          FabAnswerItem(
            en: 'Q6: ahosi = past, hessati = future',
            vi: '⑥ ahosi = Quá khứ (đã trở thành). hessati = Tương lai (sẽ trở thành). Cả hai thuộc "hū".',
          ),
          FabAnswerItem(
            en: 'Q7: -te is passive 3rd sg ending',
            vi: '⑦ Phân cuối bị động Ngôi 3 số ít = -te. Số nhiều = -nte. VD: paccate (sg), paccante (pl).',
          ),
        ],
      ),
    ],
  );
}

// =============================================================================
// PHẦN 4: DAY 2 — MIND GAME + QUIZ THỰC HÀNH
// =============================================================================

LessonDay getLesson26Day2() {
  return LessonDay(
    id: 'lesson26_day2',
    dayNumber: 2,
    themeId: 'theme_26_passive_voice',
    titleVi: 'Ngày 2 — Luyện tập: Thực Hành Dịch Thuật (B) — Bị Động & hū/asa',
    phases: [
      // ─────────────────────────────────────────────────────────────────
      // PHASE 4: MIND GAME — Thể Bị Động
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson26_phase4',
        phaseTypeStr: 'mind_game',
        titleVi: '🧠 Ghép câu: Thực Hành Dịch Thuật (B) — Bị Động & hū/asa',
        mixedSegments: const [
          // paccate
          MixedSegment(text: '① '),
          MixedSegment(
            text: '[được nấu]',
            isVietnamese: true,
            answer: 'paccate',
          ),
          MixedSegment(text: ' = paca + ya + te\n\n'),

          // dīyate
          MixedSegment(text: '② '),
          MixedSegment(
            text: '[được cho]',
            isVietnamese: true,
            answer: 'dīyate',
          ),
          MixedSegment(text: ' = dā + ya + te (ā→ī)\n\n'),

          // rakkhīyate
          MixedSegment(text: '③ '),
          MixedSegment(
            text: '[được bảo vệ]',
            isVietnamese: true,
            answer: 'rakkhīyate',
          ),
          MixedSegment(text: ' = rakkha + ya + te (a→ī)\n\n'),

          // nīyate
          MixedSegment(text: '④ '),
          MixedSegment(
            text: '[được dẫn đi]',
            isVietnamese: true,
            answer: 'nīyate',
          ),
          MixedSegment(text: ' = nī + ya + te\n\n'),

          // sūyate
          MixedSegment(text: '⑤ '),
          MixedSegment(
            text: '[được nghe]',
            isVietnamese: true,
            answer: 'sūyate',
          ),
          MixedSegment(text: ' = su + ya + te\n\n'),

          // paccante
          MixedSegment(text: '⑥ '),
          MixedSegment(
            text: '[được nấu (số nhiều)]',
            isVietnamese: true,
            answer: 'paccante',
          ),
          MixedSegment(text: ' = paca + ya + nte\n\n'),

          // paccissate
          MixedSegment(text: '⑦ '),
          MixedSegment(
            text: '[sẽ được nấu]',
            isVietnamese: true,
            answer: 'paccissate',
          ),
          MixedSegment(text: ' = Tương lai bị động\n'),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 5: MIND GAME — hū & asa
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson26_phase5',
        phaseTypeStr: 'mind_game',
        titleVi: '🧠 Ghép câu: Thực Hành Dịch Thuật (B) — Bị Động & hū/asa',
        mixedSegments: const [
          // hū - present
          MixedSegment(text: '⑧ [hū] '),
          MixedSegment(
            text: '[là, trở thành (Hiện tại)]',
            isVietnamese: true,
            answer: 'hoti',
          ),
          MixedSegment(text: ' — So rājā hoti.\n\n'),

          // hū - past
          MixedSegment(text: '⑨ [hū] '),
          MixedSegment(
            text: '[đã là, đã trở thành]',
            isVietnamese: true,
            answer: 'ahosi',
          ),
          MixedSegment(text: ' — So rājā ahosi.\n\n'),

          // hū - future
          MixedSegment(text: '⑩ [hū] '),
          MixedSegment(
            text: '[sẽ là, sẽ trở thành]',
            isVietnamese: true,
            answer: 'hessati',
          ),
          MixedSegment(text: ' — So rājā hessati.\n\n'),

          // asa - present sg
          MixedSegment(text: '⑪ [asa] '),
          MixedSegment(
            text: '[là, có (Ngôi 3 số ít)]',
            isVietnamese: true,
            answer: 'atthi',
          ),
          MixedSegment(text: ' — Maggo atthi. (Con đường có)\n\n'),

          // asa - present pl
          MixedSegment(text: '⑫ [asa] '),
          MixedSegment(
            text: '[là, có (Ngôi 3 số nhiều)]',
            isVietnamese: true,
            answer: 'santi',
          ),
          MixedSegment(text: ' — Sattā santi. (Chúng sanh có)\n\n'),

          // asa - conditional
          MixedSegment(text: '⑬ [asa] '),
          MixedSegment(
            text: '[nên là, sẽ là (Khả năng)]',
            isVietnamese: true,
            answer: 'siyā',
          ),
          MixedSegment(text: ' — So buddho siyā.\n'),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 6: LISTENING QUIZ — Tổng hợp
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson26_phase6',
        phaseTypeStr: 'listening_quiz',
        titleVi: '🎧 Quiz: Dịch câu Pāḷi',
        questions: const [
          QuizQuestion(
            id: 'lesson26_q08',
            questionText: '"Dhammo rakkhīyate" — "Dhammo" ở cách nào và vai trò gì?',
            options: [
              'A. Đối Cách — tân ngữ',
              'B. Chủ Cách — chủ ngữ bị động',
              'C. Bổ Trợ Cách — tác nhân',
              'D. Sử Dụng Cách — công cụ',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson26_q09',
            questionText: '"Buddhena Dhammo desiyate" — "Buddhena" ở cách nào?',
            options: [
              'A. Chủ Cách',
              'B. Đối Cách',
              'C. Bổ Trợ Cách (tác nhân bị động)',
              'D. Sử Dụng Cách',
            ],
            correctIndex: 2,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson26_q10',
            questionText: '"Maggo atthi maggiko n\'atthi" — nghĩa gì?',
            options: [
              'A. Con đường đi, người đi không đi',
              'B. Con đường CÓ nhưng người đi KHÔNG CÓ',
              'C. Con đường là người đi',
              'D. Con đường sẽ có người đi',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson26_q11',
            questionText: 'Phân cuối bị động Ngôi 3 số NHIỀU là gì?',
            options: [
              'A. -ti',
              'B. -te',
              'C. -nte',
              'D. -mi',
            ],
            correctIndex: 2,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson26_q12',
            questionText: '"paccassu" thuộc thì nào của thể bị động?',
            options: [
              'A. Hiện tại',
              'B. Quá khứ',
              'C. Mệnh lệnh (Pañcamī)',
              'D. Tương lai',
            ],
            correctIndex: 2,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson26_q13',
            questionText: 'Động từ "asa" khác "hū" ở điểm nào?',
            options: [
              'A. Không khác nhau',
              'B. asa = tồn tại, là | hū = trở thành (biến đổi)',
              'C. asa chỉ dùng ở quá khứ',
              'D. hū chỉ dùng ở tương lai',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson26_q14',
            questionText: 'Tổng kết: Bài 26 học bao nhiêu thì bị động?',
            options: [
              'A. 3 thì',
              'B. 4 thì',
              'C. 6 thì (Hiện tại, Ajjatanī, Hīyattanī, Pañcamī, Sattamī, Tương lai)',
              'D. 8 thì',
            ],
            correctIndex: 2,
            practiceNumber: 'practice2',
          ),
        ],
        fabAnswers: const [
          FabAnswerItem(
            en: 'Q8: Dhammo = Nominative (passive subject)',
            vi: '⑧ Dhammo = Chủ Cách, chủ ngữ bị động. "Dhammo rakkhīyate" = Pháp ĐƯỢC bảo vệ.',
          ),
          FabAnswerItem(
            en: 'Q9: Buddhena = Auxiliary (passive agent)',
            vi: '⑨ Buddhena = Bổ Trợ Cách, tác nhân bị động. "Buddhena Dhammo desiyate" = Pháp được thuyết BỞI Phật.',
          ),
          FabAnswerItem(
            en: 'Q10: atthi/n\'atthi = exists/does not exist',
            vi: '⑩ "Maggo atthi maggiko n\'atthi" = Con đường CÓ nhưng người đi KHÔNG CÓ. atthi = có (tồn tại).',
          ),
          FabAnswerItem(
            en: 'Q11: -nte is passive 3rd pl ending',
            vi: '⑪ Phân cuối bị động Ngôi 3 số nhiều = -nte. VD: paccante (được nấu, số nhiều).',
          ),
          FabAnswerItem(
            en: 'Q12: paccassu = Imperative (Pañcamī)',
            vi: '⑫ paccassu = Mệnh lệnh bị động Ngôi 2 số ít. Pañcamī = hãy, mong rằng.',
          ),
          FabAnswerItem(
            en: 'Q13: asa = exist, hū = become',
            vi: '⑬ asa = tồn tại, là (trạng thái). hū = trở thành (biến đổi). VD: atthi = có | hoti = trở thành.',
          ),
          FabAnswerItem(
            en: 'Q14: 6 tenses in passive',
            vi: '⑭ 6 thì bị động: Vattamānā (Hiện tại), Ajjatanī, Hīyattanī, Pañcamī (Mệnh lệnh), Sattamī (Khả năng), Bhavissanti (Tương lai).',
          ),
        ],
      ),
    ],
  );
}

// =============================================================================
// PHẦN 5: HÀM TIỆN ÍCH
// =============================================================================

({LessonDay day1, LessonDay day2}) getLesson26Data() {
  return (
    day1: getLesson26Day1(),
    day2: getLesson26Day2(),
  );
}
