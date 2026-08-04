// =============================================================================
// LESSON 24 DATA
// Bài học 24: Luật Hài Âm (Sandhi) — Quy tắc kết hợp âm
// Nguồn: Nārada Mahāthera, "An Elementary Pāḷi Course", Lesson 24
// =============================================================================

import '../models/pali_vocab_model.dart';
import '../models/lesson_model.dart';

// =============================================================================
// PHẦN 1: DANH SÁCH TỪ VỰNG MỚI (PaliVocabModel)
// Các ví dụ Sandhi tiêu biểu
// =============================================================================

final kLesson24Vocab = <PaliVocabModel>[
  // ─── Sara Sandhi (Hài Âm Nguyên Âm) ───
  PaliVocabModel(
    id: 'pv_L24_lokagga',
    root: "lok'agga",
    paradigmId: 'sara_sandhi_1',
    wordVi: 'đấng Tối Cao của thế gian (loka + agga → bỏ "a" trước)',
    wordEn: 'chief of the world',
    lessonId: 'lesson_24',
    pronunciation: 'lo-kag-ga',
    examplePali: 'loka + agga = lok\'agga',
    exampleVi: 'Nguyên âm trước bị lược bỏ',
  ),
  PaliVocabModel(
    id: 'pv_L24_chayava',
    root: "chāyā'va",
    paradigmId: 'sara_sandhi_2',
    wordVi: 'như cái bóng (chāyā + iva → bỏ "i" sau)',
    wordEn: 'like a shadow',
    lessonId: 'lesson_24',
    pronunciation: 'chaa-yaa-va',
    examplePali: 'chāyā + iva = chāyā\'va',
    exampleVi: 'Nguyên âm sau bị lược bỏ',
  ),
  PaliVocabModel(
    id: 'pv_L24_suriyodaya',
    root: 'suriyodaya',
    paradigmId: 'sara_sandhi_3',
    wordVi: 'mặt trời mọc (suriya + udaya → u→o)',
    wordEn: 'sunrise',
    lessonId: 'lesson_24',
    pronunciation: 'su-ri-yo-da-ya',
    examplePali: 'suriya + udaya = suriyodaya',
    exampleVi: 'u thay bằng o khi nguyên âm trước bị lược',
  ),
  PaliVocabModel(
    id: 'pv_L24_buddhanussati',
    root: "Buddh'ānussati",
    paradigmId: 'sara_sandhi_4',
    wordVi: 'quán niệm Đức Phật (Buddha + anussati → kéo dài nguyên âm sau)',
    wordEn: 'reflection on the Buddha',
    lessonId: 'lesson_24',
    pronunciation: 'bud-dhaa-nus-sa-ti',
    examplePali: 'Buddha + anussati = Buddh\'ānussati',
    exampleVi: 'Nguyên âm sau được kéo dài',
  ),
  PaliVocabModel(
    id: 'pv_L24_vyākato',
    root: 'vyākato',
    paradigmId: 'sara_sandhi_7',
    wordVi: 'đã được tuyên bố (vi + ākato → i→y)',
    wordEn: 'proclaimed',
    lessonId: 'lesson_24',
    pronunciation: 'vyaa-ka-to',
    examplePali: 'vi + ākato = vyākato',
    exampleVi: 'i thay bằng y trước nguyên âm khác',
  ),
  PaliVocabModel(
    id: 'pv_L24_accantam',
    root: 'accantaṃ',
    paradigmId: 'sara_sandhi_8',
    wordVi: 'tuyệt đối, hoàn toàn (ati + antaṃ → ti→cc)',
    wordEn: 'exceedingly, absolute',
    lessonId: 'lesson_24',
    pronunciation: 'at-chan-tam',
    examplePali: 'ati + antaṃ = accantaṃ',
    exampleVi: 'ti của ati/iti/pati đổi thành cc',
  ),
  PaliVocabModel(
    id: 'pv_L24_abbhuggato',
    root: 'abbhuggato',
    paradigmId: 'sara_sandhi_9',
    wordVi: 'đã mọc lên (abhi + uggato → abhi→abbha)',
    wordEn: 'arose',
    lessonId: 'lesson_24',
    pronunciation: 'ab-bhug-ga-to',
    examplePali: 'abhi + uggato = abbhuggato',
    exampleVi: 'abhi đổi thành abbha trước nguyên âm',
  ),
  // ─── Vyañjana Sandhi (Hài Âm Phụ Âm) ───
  PaliVocabModel(
    id: 'pv_L24_appamado',
    root: 'appamādo',
    paradigmId: 'vyanjana_sandhi_4',
    wordVi: 'sự tinh cần (a + pamādo → nhân đôi phụ âm)',
    wordEn: 'diligence',
    lessonId: 'lesson_24',
    pronunciation: 'ap-pa-maa-do',
    examplePali: 'a + pamādo = appamādo',
    exampleVi: 'Phụ âm sau nguyên âm được nhân đôi',
  ),
  PaliVocabModel(
    id: 'pv_L24_esa',
    root: 'esa dhammo',
    paradigmId: 'vyanjana_sandhi_3',
    wordVi: 'pháp ấy (eso→esa trước phụ âm)',
    wordEn: 'that nature',
    lessonId: 'lesson_24',
    pronunciation: 'e-sa',
    examplePali: 'eso dhammo = esa dhammo',
    exampleVi: 'o cuối đổi thành a trước phụ âm',
  ),
  PaliVocabModel(
    id: 'pv_L24_saddhammo',
    root: 'saddhammo',
    paradigmId: 'vyanjana_sandhi_5',
    wordVi: 'Chánh Pháp (sa + dhammo → phụ âm bật hơi→không bật)',
    wordEn: 'noble Doctrine',
    lessonId: 'lesson_24',
    pronunciation: 'sad-dham-mo',
    examplePali: 'sa + dhammo = saddhammo',
    exampleVi: 'Phụ âm bật hơi: phụ âm đầu→không bật',
  ),
  // ─── Niggahita Sandhi (Hài Âm ṃ) ───
  PaliVocabModel(
    id: 'pv_L24_sambodhi',
    root: 'sambodhi',
    paradigmId: 'niggahita_sandhi_1',
    wordVi: 'toàn giác (saṃ + bodhi → ṃ→m trước b)',
    wordEn: 'enlightenment',
    lessonId: 'lesson_24',
    pronunciation: 'sam-bo-dhi',
    examplePali: 'saṃ + bodhi = sambodhi',
    exampleVi: 'ṃ đổi thành âm mũi cùng nhóm',
  ),
  PaliVocabModel(
    id: 'pv_L24_sannipato',
    root: 'sannipāto',
    paradigmId: 'niggahita_sandhi_1b',
    wordVi: 'sự hội họp (saṃ + nipāto → ṃ→n trước n)',
    wordEn: 'union',
    lessonId: 'lesson_24',
    pronunciation: 'san-ni-paa-to',
    examplePali: 'saṃ + nipāto = sannipāto',
    exampleVi: 'ṃ đổi thành n trước nhóm n',
  ),
  PaliVocabModel(
    id: 'pv_L24_tanneva',
    root: 'taññeva',
    paradigmId: 'niggahita_sandhi_2',
    wordVi: 'chính cái đó (taṃ + eva → ṃ→ññ trước e)',
    wordEn: 'itself',
    lessonId: 'lesson_24',
    pronunciation: 'tan-nyee-va',
    examplePali: 'taṃ + eva = taññeva',
    exampleVi: 'ṃ đổi thành ññ trước e',
  ),
  PaliVocabModel(
    id: 'pv_L24_sannamo',
    root: 'saññamo',
    paradigmId: 'niggahita_sandhi_3',
    wordVi: 'thu thúc, tự chế (saṃ + yamo → ṃ→ññ, bỏ y)',
    wordEn: 'restraint, self control',
    lessonId: 'lesson_24',
    pronunciation: 'san-nya-mo',
    examplePali: 'saṃ + yamo = saññamo',
    exampleVi: 'ṃ→ññ trước y, y bị lược bỏ',
  ),
];

// =============================================================================
// PHẦN 2: HELPER DATA
// =============================================================================

const List<FabPhraseItem> kLesson24SandhiTypes = [
  FabPhraseItem(
    phrase: '1. Sara Sandhi — Hài Âm Nguyên Âm',
    meaning: 'Nguyên âm + Nguyên âm: lược bỏ, thay thế, kéo dài',
  ),
  FabPhraseItem(
    phrase: '2. Vyañjana Sandhi — Hài Âm Phụ Âm',
    meaning: 'Nguyên âm + Phụ âm: kéo dài/rút ngắn nguyên âm, nhân đôi phụ âm',
  ),
  FabPhraseItem(
    phrase: '3. Niggahita (ṃ) Sandhi — Hài Âm Âm Mũi',
    meaning: 'ṃ + phụ âm/nguyên âm: đổi thành âm mũi cùng nhóm',
  ),
];

// =============================================================================
// PHẦN 3: DAY 1 — LÝ THUYẾT SANDHI (3 LOẠI, 24 QUY TẮC)
// =============================================================================

LessonDay getLesson24Day1() {
  return LessonDay(
    id: 'lesson24_day1',
    dayNumber: 1,
    themeId: 'theme_24_sandhi',
    titleVi: 'Ngày 1: Luật Hài Âm (Sandhi) — 3 Loại, 24 Quy Tắc',
    phases: [
      // ─────────────────────────────────────────────────────────────────
      // PHASE 1: READ & LISTEN — Sara Sandhi
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson24_phase1',
        phaseTypeStr: 'read_listen',
        titleVi: '📘 Sandhi — Luật Hài Âm (Tổng quan + Sara Sandhi)',
        contentVi: '''
🎯 MỤC TIÊU BÀI 24
───────────────────
• Hiểu khái niệm Sandhi: sự kết hợp của hai chữ cái tiếp xúc trực tiếp
• Học 3 loại Sandhi: Sara (nguyên âm), Vyañjana (phụ âm), Niggahita (ṃ)
• Nắm vững 24 quy tắc kết hợp âm
• Áp dụng Sandhi để phân tích các từ ghép trong các bài trước

══════════════════════════════════════════════════════
A. SANDHI — LUẬT HÀI ÂM
══════════════════════════════════════════════════════

Sandhi = sự kết hợp của hai chữ cái khi chúng sắp nhập lại với nhau.
(Từ "saṃ" = cùng + "dhā" = nối → "cùng nối lại")

Hình thành bằng cách: lược bỏ, thay thế, bổ sung, v.v.

3 LOẠI SANDHI:
┌─────────────────────────┬────────────────────────────┐
│ Loại                    │ Mô tả                      │
├─────────────────────────┼────────────────────────────┤
│ 1. Sara Sandhi          │ Nguyên âm + Nguyên âm     │
│ 2. Vyañjana Sandhi      │ Nguyên âm + Phụ âm        │
│ 3. Niggahita (ṃ) Sandhi │ ṃ + Nguyên âm/Phụ âm      │
└─────────────────────────┴────────────────────────────┘

══════════════════════════════════════════════════════
B. SARA SANDHI — HÀI ÂM NGUYÊN ÂM (11 quy tắc)
══════════════════════════════════════════════════════

① LƯỢC BỎ NGUYÊN ÂM TRƯỚC:
   Khi hai nguyên âm kết hợp, nguyên âm đứng trước thường bị lược.
   • loka + agga       = lok'agga      (đấng Tối Cao)
   • paññā + indriya   = paññ'indriya  (tuệ căn)
   • tīni + imāni      = tīn'imāni     (ba cái này)
   • sabbo + eva       = sabb'eva      (thật vậy, tất cả)

② LƯỢC BỎ NGUYÊN ÂM SAU:
   Đôi khi nguyên âm sau bị lược nếu đứng trước nguyên âm khác loại.
   • chāyā + iva       = chāyā'va      (như cái bóng)
   • iti + api         = iti'pi        (thật vậy)
   • pāto + eva        = pāto'va       (vào buổi sáng sớm)

③ THAY THẾ "i/u" BẰNG "e/o":
   Khi nguyên âm trước bị lược, i/u (ngắn/dài) sau → e/o.
   • upa + eto         = up'eto        (được thành lập)
   • suriya + udaya    = suriy'udaya → suriyodaya (mặt trời mọc)

④ KÉO DÀI NGUYÊN ÂM SAU:
   Khi nguyên âm trước bị lược, nguyên âm sau đôi khi kéo dài.
   • Buddha + anussati = Buddh'ānussati (quán niệm Phật)
   • gacchāmi + iti    = gacchām'īti   (rằng: "tôi đi")
   • bahu + upakāro    = bahūpakāro    (rất hữu ích)
   • sace + ayaṃ       = sacāyaṃ       (nếu cái này)
   • idāni + ahaṃ      = idān'āhaṃ     (bây giờ tôi)

⑤ KÉO DÀI NGUYÊN ÂM TRƯỚC:
   Đôi khi nguyên âm trước kéo dài khi nguyên âm sau bị lược.
   • lokassa + iti     = lokassā'ti    ("cho thế giới")
   • vi + atikkama     = vī'tikkama    (sự vi phạm)
   • sādhu + iti       = sādhū'ti      ("Lành thay!")
   • jīvitahetu + api  = jīvitahetū'pi (ngay cả vì mạng sống)

⑥ TE/ME/YE + NGUYÊN ÂM → "y":
   Khi te, me, ye được theo sau bởi nguyên âm, e cuối → y.
   • me + ayaṃ         = myayaṃ / myāyaṃ  (cái này do tôi)
   • te + ahaṃ         = tyahaṃ / tyāhaṃ  (tôi với bạn)
   • ye + assa         = yyassa / yyāssa   (những cái đó cho anh ấy)

⑦ I/Ī → Y, U/O → V (trước nguyên âm khác loại):
   • vi + ākato        = vyākato        (đã tuyên bố)
   • su + āgataṃ       = svāgataṃ       (chào đón)
   • anu + eti         = anveti         (theo sau)
   • ko + attho        = kvattho        (lợi ích gì?)
   • so + ayaṃ         = svayaṃ / svāyaṃ (cái này)

⑧ TI của ATI/ITI/PATI → CC:
   • ati + antaṃ       = accantaṃ       (tuyệt đối)
   • ati + eti         = acceti         (vượt qua)
   • iti + etaṃ        = iccetaṃ        (rằng: "cái này")
   • pati + āharati    = paccāharati    (mang lại)

⑨ ABHI + NGUYÊN ÂM → ABBHA:
   • abhi + uggato     = abbhuggato     (đã mọc lên)

⑩ ADHI + NGUYÊN ÂM → AJJHA:
   • adhi + āgama      = ajjhāgama      (đã chứng đắc)

⑪ CHÈN t/d/n/m/y/r/ḷ/v TRƯỚC NGUYÊN ÂM:
   • ajja + agge       = ajjatagge      (từ hôm nay)
   • atta + attha      = attadattha     (lợi ích chính mình)
   • ito + āyati       = itonāyati      (đến từ đây)
   • idha + āhu        = idhamāhu       (ở đây họ nói)
   • so + eva          = soyeva         (chính vị ấy)
   • ni + antaraṃ      = nirantaraṃ    (không gián đoạn)
   • cha + abhiññā     = chaḷabhiññā   (sáu thắng trí)
   • ti + aṅgikaṃ      = tivaṅgikaṃ    (ba chi phần)
''',
        contentEn: '''
LESSON 24 — SANDHI (Rules of Combinations)

SANDHI = combination of two letters in immediate contact.
3 types: Sara (vowel), Vyañjana (consonant), Niggahita (ṃ)

SARA SANDHI — 11 Rules:
 1. Drop preceding vowel: loka+agga = lok'agga
 2. Drop following vowel: chāyā+iva = chāyā'va
 3. i/u→e/o: suriya+udaya = suriyodaya
 4. Lengthen following: Buddha+anussati = Buddh'ānussati
 5. Lengthen preceding: sādhu+iti = sādhū'ti
 6. te/me/ye: e→y before vowel
 7. i→y, u→v before dissimilar vowel
 8. ti→cc in ati/iti/pati
 9. abhi→abbha before vowel
10. adhi→ajjha before vowel
11. Insert t/d/n/m/y/r/ḷ/v before vowel
''',
        fabVocab: const [
          FabVocabItem(
            wordEn: "lok'agga (loka+agga)",
            wordVi: 'đấng Tối Cao thế gian',
            pronunciation: 'lo-kag-ga',
            partOfSpeech: 'Sara #1: lược nguyên âm trước',
          ),
          FabVocabItem(
            wordEn: 'suriyodaya (suriya+udaya)',
            wordVi: 'mặt trời mọc',
            pronunciation: 'su-ri-yo-da-ya',
            partOfSpeech: 'Sara #3: u→o',
          ),
          FabVocabItem(
            wordEn: "Buddh'ānussati",
            wordVi: 'quán niệm Đức Phật',
            pronunciation: 'bud-dhaa-nus-sa-ti',
            partOfSpeech: 'Sara #4: kéo dài nguyên âm sau',
          ),
          FabVocabItem(
            wordEn: 'accantaṃ (ati+antaṃ)',
            wordVi: 'tuyệt đối, hoàn toàn',
            pronunciation: 'at-chan-tam',
            partOfSpeech: 'Sara #8: ti→cc',
          ),
          FabVocabItem(
            wordEn: 'vyākato (vi+ākato)',
            wordVi: 'đã được tuyên bố',
            pronunciation: 'vyaa-ka-to',
            partOfSpeech: 'Sara #7: i→y',
          ),
          FabVocabItem(
            wordEn: 'sādhū\'ti (sādhu+iti)',
            wordVi: 'Lành thay!',
            pronunciation: 'saadhuu-ti',
            partOfSpeech: 'Sara #5: kéo dài nguyên âm trước',
          ),
        ],
        fabPhrases: const [
          FabPhraseItem(
            phrase: 'Sara Sandhi: 11 quy tắc nguyên âm + nguyên âm',
            meaning: 'Lược bỏ | Thay thế | Kéo dài | Chèn phụ âm',
          ),
          FabPhraseItem(
            phrase: 'ati+X → accX | abhi+X → abbhaX | adhi+X → ajjhaX',
            meaning: 'Ba tiền tố đặc biệt khi theo sau bởi nguyên âm',
          ),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 2: READ & LISTEN — Vyañjana + Niggahita Sandhi
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson24_phase2',
        phaseTypeStr: 'read_listen',
        titleVi: '📘 Vyañjana Sandhi + Niggahita Sandhi',
        contentVi: '''
══════════════════════════════════════════════════════
C. VYAÑJANA SANDHI — HÀI ÂM PHỤ ÂM (5 quy tắc)
══════════════════════════════════════════════════════

① KÉO DÀI NGUYÊN ÂM TRƯỚC PHỤ ÂM:
   • te + assa         = tyāssa        (các cái đó cho vị ấy)
   • muni + care       = munīcare      (vị ẩn sĩ nên du hành)
   • su + akkhāto      = svākkhāto     (đã được khéo thuyết)
   • jāyati + soko     = jāyatīsoko    (sầu muộn khởi sanh)

② RÚT NGẮN NGUYÊN ÂM TRƯỚC PHỤ ÂM:
   • yadi vā + sāvake  = yadivasāvake  (hoặc nếu đối với các đệ tử)
   • taṇhā + khayo     = taṇhakkhayo   (đoạn diệt tham ái)

③ O → A TRƯỚC PHỤ ÂM (đại từ eta/ta):
   • eso + dhammo      = esa dhammo    (pháp ấy)
   • so + muni         = sa muni       (vị ẩn sĩ ấy)

④ NHÂN ĐÔI PHỤ ÂM SAU NGUYÊN ÂM:
   • a + pamādo        = appamādo      (sự tinh cần)
   • vi + ñāṇaṃ       = viññāṇaṃ      (thức, tâm thức)

⑤ PHỤ ÂM BẬT HƠI → KHÔNG BẬT:
   Khi phụ âm có bật hơi được nhân đôi, phụ âm đầu → không bật hơi.
   • ni + bhayaṃ       = nibbhayaṃ     (vô úy, không sợ hãi)
   • sa + dhammo       = saddhammo     (Chánh Pháp)

══════════════════════════════════════════════════════
D. NIGGAHITA (Ṃ) SANDHI — HÀI ÂM ÂM MŨI (8 quy tắc)
══════════════════════════════════════════════════════

① Ṃ → ÂM MŨI CÙNG NHÓM:
   Niggahita đứng trước phụ âm thuộc nhóm nào → đổi thành
   âm mũi của nhóm đó.
   • taṃ + khaṇaṃ     = taṅkhaṇaṃ     (sát-na đó)     [k→ṅ]
   • saṃ + jāta        = sañjāta        (được sanh ra)  [j→ñ]
   • taṃ + ñāṇaṃ      = taññāṇaṃ      (trí đó)        [ñ→ñ]
   • taṃ + ṭhānaṃ     = taṇṭhānaṃ     (chỗ đó)        [ṭ→ṇ]
   • ahaṃ + te         = ahante         (tôi với bạn)   [t→n]
   • saṃ + nipāto      = sannipāto      (sự hội họp)    [n→n]
   • saṃ + bodhi       = sambodhi       (toàn giác)     [b→m]
   • saṃ + māna        = sammāna        (sự tôn trọng)  [m→m]

   📌 5 nhóm phụ âm:
   k,g → ṅ  |  c,j → ñ  |  ṭ,ḍ → ṇ  |  t,d → n  |  p,b → m

② Ṃ + E/H → Ñ:
   Trước e, ñ được nhân đôi.
   • taṃ + eva         = taññeva       (chính cái đó)
   • taṃ + hi          = tañhi         (thật vậy)

③ Ṃ + Y → ÑÑ (bỏ y):
   • saṃ + yamo        = saññamo       (thu thúc, tự chế)

④ Ṃ + NGUYÊN ÂM → M (hoặc D cho ta/eta):
   • taṃ + ahaṃ        = tamahaṃ       (tôi đó)
   • etaṃ + avoca      = etadavoca     (vị ấy nói điều đó)

⑤ Ṃ BỎ + KÉO DÀI NGUYÊN ÂM SAU:
   Đôi khi ṃ bị lược, nguyên âm đầu từ sau kéo dài.
   • adāsiṃ + ahaṃ     = adās'āhaṃ     (tôi đã cho)
   • evaṃ + ahaṃ       = ev'āhaṃ       (như vậy tôi)

⑥ Ṃ BỎ TRƯỚC PHỤ ÂM:
   • Buddhānaṃ + sāsanaṃ = Buddhānasāsanaṃ (lời dạy chư Phật)

⑦ CHÈN Ṃ TRƯỚC NGUYÊN ÂM/PHỤ ÂM:
   • cakkhu + udapādi  = cakkhuṃ udapādi (nhãn đã khởi)
   • ava + siro        = avaṃsiro       (đầu hướng xuống)

⑧ BỎ NGUYÊN ÂM SAU Ṃ, Ṃ → M:
   • idaṃ + api        = idam'pi        (cũng vậy, cái này)
   • kiṃ + iti         = kin'ti         (rằng: "cái gì")
   • cakkaṃ + iva      = cakkaṃ'va     (như bánh xe)
''',
        contentEn: '''
VYAÑJANA SANDHI — 5 Rules:
 1. Lengthen vowel before consonant: muni+care = munīcare
 2. Shorten vowel: taṇhā+khayo = taṇhakkhayo
 3. o→a before consonant (eso→esa, so→sa)
 4. Double consonant after vowel: a+pamādo = appamādo
 5. Aspirated→unaspirated when doubled: sa+dhammo = saddhammo

NIGGAHITA (Ṃ) SANDHI — 8 Rules:
 1. ṃ→nasal of that group: saṃ+bodhi = sambodhi
 2. ṃ+e/h → ñ(ñ): taṃ+eva = taññeva
 3. ṃ+y → ññ (drop y): saṃ+yamo = saññamo
 4. ṃ+vowel → m (or d for ta/eta): etaṃ+avoca = etadavoca
 5. Drop ṃ, lengthen following vowel: adāsiṃ+ahaṃ = adās'āhaṃ
 6. Drop ṃ before consonant: Buddhānaṃ+sāsanaṃ = Buddhānasāsanaṃ
 7. Insert ṃ: cakkhu+udapādi = cakkhuṃ udapādi
 8. Drop vowel after ṃ: idaṃ+api = idam'pi
''',
        fabVocab: const [
          FabVocabItem(
            wordEn: 'sambodhi (saṃ+bodhi)',
            wordVi: 'toàn giác',
            pronunciation: 'sam-bo-dhi',
            partOfSpeech: 'Niggahita #1: ṃ→m trước b',
          ),
          FabVocabItem(
            wordEn: 'appamādo (a+pamādo)',
            wordVi: 'sự tinh cần',
            pronunciation: 'ap-pa-maa-do',
            partOfSpeech: 'Vyañjana #4: nhân đôi phụ âm',
          ),
          FabVocabItem(
            wordEn: 'taññeva (taṃ+eva)',
            wordVi: 'chính cái đó',
            pronunciation: 'tan-nyee-va',
            partOfSpeech: 'Niggahita #2: ṃ→ññ trước e',
          ),
          FabVocabItem(
            wordEn: 'saññamo (saṃ+yamo)',
            wordVi: 'thu thúc, tự chế',
            pronunciation: 'san-nya-mo',
            partOfSpeech: 'Niggahita #3: ṃ→ññ, bỏ y',
          ),
          FabVocabItem(
            wordEn: 'nibbhayaṃ (ni+bhayaṃ)',
            wordVi: 'vô úy, không sợ hãi',
            pronunciation: 'nib-bha-yam',
            partOfSpeech: 'Vyañjana #5: bật hơi→không bật',
          ),
          FabVocabItem(
            wordEn: 'taṇhakkhayo (taṇhā+khayo)',
            wordVi: 'đoạn diệt tham ái',
            pronunciation: 'tan-hak-kha-yo',
            partOfSpeech: 'Vyañjana #2: rút ngắn nguyên âm',
          ),
        ],
        fabPhrases: const [
          FabPhraseItem(
            phrase: '5 nhóm: k,g→ṅ | c,j→ñ | ṭ,ḍ→ṇ | t,d→n | p,b→m',
            meaning: 'Ṃ đổi thành âm mũi CÙNG NHÓM với phụ âm theo sau',
          ),
          FabPhraseItem(
            phrase: 'so→sa, eso→esa trước phụ âm',
            meaning: 'o cuối của đại từ chỉ định đổi thành a',
          ),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 3: LISTENING QUIZ
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson24_phase3',
        phaseTypeStr: 'listening_quiz',
        titleVi: '🎧 Quiz: Nhận Diện Quy Tắc Sandhi',
        questions: const [
          QuizQuestion(
            id: 'lesson24_q01',
            questionText: '"suriyodaya" = suriya + udaya. Quy tắc Sara Sandhi nào?',
            options: [
              'A. #1: Lược bỏ nguyên âm trước',
              'B. #2: Lược bỏ nguyên âm sau',
              'C. #3: i/u→e/o (a bị lược, u→o)',
              'D. #4: Kéo dài nguyên âm sau',
            ],
            correctIndex: 2,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson24_q02',
            questionText: '"sambodhi" = saṃ + bodhi. Quy tắc Niggahita nào?',
            options: [
              'A. #1: ṃ→âm mũi cùng nhóm (b→m)',
              'B. #2: ṃ→ñ trước e/h',
              'C. #3: ṃ→ññ trước y',
              'D. #4: ṃ→m trước nguyên âm',
            ],
            correctIndex: 0,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson24_q03',
            questionText: '"accantaṃ" = ati + antaṃ. Quy tắc Sara nào?',
            options: [
              'A. #1: Lược bỏ nguyên âm trước',
              'B. #5: Kéo dài nguyên âm trước',
              'C. #8: ti của ati/iti/pati → cc',
              'D. #11: Chèn phụ âm',
            ],
            correctIndex: 2,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson24_q04',
            questionText: '"appamādo" = a + pamādo. Quy tắc Vyañjana nào?',
            options: [
              'A. #1: Kéo dài nguyên âm trước phụ âm',
              'B. #3: o→a trước phụ âm',
              'C. #4: Nhân đôi phụ âm sau nguyên âm',
              'D. #5: Phụ âm bật hơi→không bật',
            ],
            correctIndex: 2,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson24_q05',
            questionText: '"saññamo" = saṃ + yamo. Quy tắc Niggahita nào?',
            options: [
              'A. #1: ṃ→âm mũi cùng nhóm',
              'B. #2: ṃ→ñ trước e',
              'C. #3: ṃ+y → ññ, bỏ y',
              'D. #4: ṃ→m trước nguyên âm',
            ],
            correctIndex: 2,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson24_q06',
            questionText: '"saddhammo" = sa + dhammo. Quy tắc Vyañjana nào?',
            options: [
              'A. #2: Rút ngắn nguyên âm',
              'B. #4: Nhân đôi phụ âm',
              'C. #5: Phụ âm bật hơi nhân đôi → phụ âm đầu không bật',
              'D. #1: Kéo dài nguyên âm',
            ],
            correctIndex: 2,
            practiceNumber: 'practice1',
          ),
          QuizQuestion(
            id: 'lesson24_q07',
            questionText: '"taññeva" = taṃ + eva. Quy tắc Niggahita nào?',
            options: [
              'A. #1: ṃ→âm mũi cùng nhóm',
              'B. #2: ṃ+e → ññ (nhân đôi trước e)',
              'C. #3: ṃ+y → ññ',
              'D. #7: Chèn ṃ',
            ],
            correctIndex: 1,
            practiceNumber: 'practice1',
          ),
        ],
        fabAnswers: const [
          FabAnswerItem(
            en: 'Q1: Sara #3 — i/u→e/o',
            vi: '① Sara #3: nguyên âm "a" cuối của suriya bị lược, "u" đầu của udaya → "o". suriya+udaya = suriyodaya.',
          ),
          FabAnswerItem(
            en: 'Q2: Niggahita #1 — ṃ→nasal of group',
            vi: '② Niggahita #1: ṃ trước "b" (nhóm p,b) → đổi thành "m". saṃ+bodhi = sambodhi.',
          ),
          FabAnswerItem(
            en: 'Q3: Sara #8 — ti→cc',
            vi: '③ Sara #8: "ti" của ati/iti/pati đổi thành "cc" trước nguyên âm. ati+antaṃ = accantaṃ.',
          ),
          FabAnswerItem(
            en: 'Q4: Vyañjana #4 — double consonant',
            vi: '④ Vyañjana #4: phụ âm theo sau nguyên âm được nhân đôi. a+pamādo = appamādo.',
          ),
          FabAnswerItem(
            en: 'Q5: Niggahita #3 — ṃ+y→ññ, drop y',
            vi: '⑤ Niggahita #3: ṃ trước "y" → ññ, y bị lược. saṃ+yamo = saññamo.',
          ),
          FabAnswerItem(
            en: 'Q6: Vyañjana #5 — aspirated→unaspirated',
            vi: '⑥ Vyañjana #5: "dh" (bật hơi) nhân đôi → "ddh" (đầu "d" không bật). sa+dhammo = saddhammo.',
          ),
          FabAnswerItem(
            en: 'Q7: Niggahita #2 — ṃ+e→ññ',
            vi: '⑦ Niggahita #2: ṃ trước "e" → ñ, nhân đôi thành ññ. taṃ+eva = taññeva.',
          ),
        ],
      ),
    ],
  );
}

// =============================================================================
// PHẦN 4: DAY 2 — MIND GAME + QUIZ THỰC HÀNH
// =============================================================================

LessonDay getLesson24Day2() {
  return LessonDay(
    id: 'lesson24_day2',
    dayNumber: 2,
    themeId: 'theme_24_sandhi',
    titleVi: 'Ngày 2: Luyện Tập Sandhi — Mind Game + Quiz',
    phases: [
      // ─────────────────────────────────────────────────────────────────
      // PHASE 4: MIND GAME — Sara Sandhi
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson24_phase4',
        phaseTypeStr: 'mind_game',
        titleVi: '🧠 Trò Chơi Tư Duy: Sara Sandhi (11 Quy Tắc)',
        mixedSegments: const [
          // #1
          MixedSegment(text: '① '),
          MixedSegment(
            text: "[đấng Tối Cao]",
            isVietnamese: true,
            answer: "lok'agga",
          ),
          MixedSegment(text: ' = loka + agga (lược "a" trước)\n\n'),

          // #2
          MixedSegment(text: '② '),
          MixedSegment(
            text: "[như cái bóng]",
            isVietnamese: true,
            answer: "chāyā'va",
          ),
          MixedSegment(text: ' = chāyā + iva (lược "i" sau)\n\n'),

          // #3
          MixedSegment(text: '③ '),
          MixedSegment(
            text: '[mặt trời mọc]',
            isVietnamese: true,
            answer: 'suriyodaya',
          ),
          MixedSegment(text: ' = suriya + udaya (a lược, u→o)\n\n'),

          // #4
          MixedSegment(text: '④ '),
          MixedSegment(
            text: '[quán niệm Phật]',
            isVietnamese: true,
            answer: "Buddh'ānussati",
          ),
          MixedSegment(text: ' = Buddha + anussati (kéo dài "a"→"ā")\n\n'),

          // #5
          MixedSegment(text: '⑤ '),
          MixedSegment(
            text: '[Lành thay!]',
            isVietnamese: true,
            answer: "sādhū'ti",
          ),
          MixedSegment(text: ' = sādhu + iti (kéo dài "u"→"ū")\n\n'),

          // #7
          MixedSegment(text: '⑦ '),
          MixedSegment(
            text: '[đã tuyên bố]',
            isVietnamese: true,
            answer: 'vyākato',
          ),
          MixedSegment(text: ' = vi + ākato (i→y)\n\n'),

          // #8
          MixedSegment(text: '⑧ '),
          MixedSegment(
            text: '[tuyệt đối]',
            isVietnamese: true,
            answer: 'accantaṃ',
          ),
          MixedSegment(text: ' = ati + antaṃ (ti→cc)\n\n'),

          // #9
          MixedSegment(text: '⑨ '),
          MixedSegment(
            text: '[đã mọc lên]',
            isVietnamese: true,
            answer: 'abbhuggato',
          ),
          MixedSegment(text: ' = abhi + uggato (abhi→abbha)\n\n'),

          // #10
          MixedSegment(text: '⑩ '),
          MixedSegment(
            text: '[đã chứng đắc]',
            isVietnamese: true,
            answer: 'ajjhāgama',
          ),
          MixedSegment(text: ' = adhi + āgama (adhi→ajjha)\n'),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 5: MIND GAME — Vyañjana + Niggahita
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson24_phase5',
        phaseTypeStr: 'mind_game',
        titleVi: '🧠 Trò Chơi Tư Duy: Vyañjana + Niggahita Sandhi',
        mixedSegments: const [
          // Vyañjana #3
          MixedSegment(text: '⓿ '),
          MixedSegment(
            text: '[pháp ấy]',
            isVietnamese: true,
            answer: 'esa dhammo',
          ),
          MixedSegment(text: ' = eso→esa (o→a trước phụ âm)\n\n'),

          // Vyañjana #4
          MixedSegment(text: '⓿ '),
          MixedSegment(
            text: '[sự tinh cần]',
            isVietnamese: true,
            answer: 'appamādo',
          ),
          MixedSegment(text: ' = a + pamādo (nhân đôi p)\n\n'),

          // Vyañjana #5
          MixedSegment(text: '⓿ '),
          MixedSegment(
            text: '[Chánh Pháp]',
            isVietnamese: true,
            answer: 'saddhammo',
          ),
          MixedSegment(text: ' = sa + dhammo (dh→ddh: bật hơi→không bật)\n\n'),

          // Niggahita #1
          MixedSegment(text: '⓿ '),
          MixedSegment(
            text: '[toàn giác]',
            isVietnamese: true,
            answer: 'sambodhi',
          ),
          MixedSegment(text: ' = saṃ + bodhi (ṃ→m trước b)\n\n'),

          MixedSegment(text: '⓿ '),
          MixedSegment(
            text: '[sự hội họp]',
            isVietnamese: true,
            answer: 'sannipāto',
          ),
          MixedSegment(text: ' = saṃ + nipāto (ṃ→n trước n)\n\n'),

          // Niggahita #2
          MixedSegment(text: '⓿ '),
          MixedSegment(
            text: '[chính cái đó]',
            isVietnamese: true,
            answer: 'taññeva',
          ),
          MixedSegment(text: ' = taṃ + eva (ṃ→ññ trước e)\n\n'),

          // Niggahita #3
          MixedSegment(text: '⓿ '),
          MixedSegment(
            text: '[thu thúc]',
            isVietnamese: true,
            answer: 'saññamo',
          ),
          MixedSegment(text: ' = saṃ + yamo (ṃ→ññ, bỏ y)\n\n'),

          // Niggahita #4
          MixedSegment(text: '⓿ '),
          MixedSegment(
            text: '[vị ấy nói điều đó]',
            isVietnamese: true,
            answer: 'etadavoca',
          ),
          MixedSegment(text: ' = etaṃ + avoca (ṃ→d cho eta)\n'),
        ],
      ),

      // ─────────────────────────────────────────────────────────────────
      // PHASE 6: LISTENING QUIZ — Tổng hợp Sandhi
      // ─────────────────────────────────────────────────────────────────
      LessonPhase(
        id: 'lesson24_phase6',
        phaseTypeStr: 'listening_quiz',
        titleVi: '🎧 Quiz Tổng Hợp: Phân Tích Sandhi',
        questions: const [
          QuizQuestion(
            id: 'lesson24_q08',
            questionText: '"abbhuggato" = abhi + uggato. Thuộc loại Sandhi nào?',
            options: [
              'A. Vyañjana Sandhi',
              'B. Niggahita Sandhi',
              'C. Sara Sandhi #9 (abhi→abbha trước nguyên âm)',
              'D. Sara Sandhi #1',
            ],
            correctIndex: 2,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson24_q09',
            questionText: '"sañjāta" = saṃ + jāta. Ṃ đổi thành âm mũi nào?',
            options: [
              'A. ṅ (vì j thuộc nhóm c,j→ñ... không, j thuộc nhóm c,j)',
              'B. ñ (vì j thuộc nhóm c,j → ñ)',
              'C. ṇ',
              'D. m',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson24_q10',
            questionText: '"etadavoca" = etaṃ + avoca. Tại sao ṃ→d?',
            options: [
              'A. Luôn luôn ṃ→d trước nguyên âm',
              'B. Đặc biệt cho "ta" và "eta" + nguyên âm → ṃ→d',
              'C. Vì "e" là nguyên âm đặc biệt',
              'D. Do nhân đôi phụ âm',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson24_q11',
            questionText: '"taṇhakkhayo" = taṇhā + khayo. Quy tắc nào?',
            options: [
              'A. Sara Sandhi #1: lược nguyên âm',
              'B. Vyañjana #2: rút ngắn nguyên âm trước phụ âm',
              'C. Niggahita #1: ṃ→âm mũi',
              'D. Sara #4: kéo dài nguyên âm',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson24_q12',
            questionText: '"paccāharati" = pati + āharati. Quy tắc Sara nào?',
            options: [
              'A. #1: lược nguyên âm',
              'B. #8: ti→cc (pati + nguyên âm → pacc...)',
              'C. #9: abhi→abbha',
              'D. #11: chèn phụ âm',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson24_q13',
            questionText: '"svāgataṃ" = su + āgataṃ. Quy tắc Sara nào?',
            options: [
              'A. #1: lược nguyên âm',
              'B. #4: kéo dài nguyên âm',
              'C. #7: u→v trước nguyên âm khác loại',
              'D. #11: chèn phụ âm',
            ],
            correctIndex: 2,
            practiceNumber: 'practice2',
          ),
          QuizQuestion(
            id: 'lesson24_q14',
            questionText: 'Tổng kết: 3 loại Sandhi được phân biệt dựa vào?',
            options: [
              'A. Vị trí trong câu',
              'B. Loại chữ cái tiếp xúc: nguyên âm+nguyên âm / nguyên âm+phụ âm / ṃ+...',
              'C. Thì của động từ',
              'D. Biến cách của danh từ',
            ],
            correctIndex: 1,
            practiceNumber: 'practice2',
          ),
        ],
        fabAnswers: const [
          FabAnswerItem(
            en: 'Q8: Sara #9 — abhi→abbha',
            vi: '⑧ Sara #9: abhi + nguyên âm → abbha. abhi+uggato = abbhuggato (đã mọc lên).',
          ),
          FabAnswerItem(
            en: 'Q9: j belongs to c,j group → ñ',
            vi: '⑨ j thuộc nhóm c,j → âm mũi ñ. saṃ+jāta = sañjāta (được sanh ra).',
          ),
          FabAnswerItem(
            en: 'Q10: Special rule for ta/eta',
            vi: '⑩ Đặc biệt cho "ta" và "eta": ṃ trước nguyên âm → d. etaṃ+avoca = etadavoca.',
          ),
          FabAnswerItem(
            en: 'Q11: Vyañjana #2 — shorten vowel',
            vi: '⑪ Vyañjana #2: rút ngắn nguyên âm trước phụ âm. taṇhā+khayo = taṇhakkhayo (đoạn diệt ái).',
          ),
          FabAnswerItem(
            en: 'Q12: Sara #8 — ti→cc',
            vi: '⑫ Sara #8: ti của pati đổi thành cc trước nguyên âm. pati+āharati = paccāharati (mang lại).',
          ),
          FabAnswerItem(
            en: 'Q13: Sara #7 — u→v',
            vi: '⑬ Sara #7: u đổi thành v trước nguyên âm khác loại. su+āgataṃ = svāgataṃ (chào đón).',
          ),
          FabAnswerItem(
            en: 'Q14: Based on type of letters in contact',
            vi: '⑭ 3 loại Sandhi phân biệt bởi loại chữ cái tiếp xúc: nguyên âm+nguyên âm (Sara), nguyên âm+phụ âm (Vyañjana), ṃ+... (Niggahita).',
          ),
        ],
      ),
    ],
  );
}

// =============================================================================
// PHẦN 5: HÀM TIỆN ÍCH
// =============================================================================

({LessonDay day1, LessonDay day2}) getLesson24Data() {
  return (
    day1: getLesson24Day1(),
    day2: getLesson24Day2(),
  );
}
