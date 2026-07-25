// lesson16.dart
// ---------------------------------------------------------------------------
// Bài học số 16 — An Elementary Pāḷi Course (Nārada Mahāthera)
//
// Nội dung:
//   - SỐ ĐẾM (Cardinal numerals): eka (1) → koṭi (10 triệu).
//       * eka / ti / catu biến cách theo 3 giống (m./n./f.).
//       * Số 2–18 chỉ biến cách ở số nhiều; trừ ti/catu còn lại chung giống.
//       * Số từ 19 → 89 kết thúc bằng -i/-ī/-ā là NỮ tánh, biến cách như
//         nữ "-i" (bhūmi); riêng tiṃsā / cattāḷīsā / paññāsā biến cách như
//         nữ "-ā" (kaññā).
//       * Số từ ek'ūnasata → lakkha là TRUNG tánh, biến cách như phala.
//       * Khi dùng chung / tập hợp có thể lấy số nhiều: dve vīsatiyo,
//         tīṇi satāni.
//   - SỐ THỨ TỰ (Ordinals):
//       * 1 paṭhama, 2 dutiya, 3 tatiya, 4 catuttha, 5 pañcama, 6 chaṭṭha;
//         từ thứ 7 trở đi thêm hậu tố "-ma" (sattama, aṭṭhama …).
//       * Nữ của paṭhama/dutiya/tatiya chia như kaññā (đuôi -ā);
//         từ catuttha → dasama thêm "-ī" thành nữ (catutthī, sattamī, dasamī),
//         chia như nārī; số 11 trở lên cũng thêm "-ī" (ekādasī…).
//       * Nam chia như nara (-a), Trung như phala (-a).
//
// Cung cấp:
//     Lesson16Data getLesson16Data()
// Trả về Day 1 (Lý thuyết & Từ vựng / Số đếm) và Day 2 (Thực hành & Quiz).
// ---------------------------------------------------------------------------

// ============================ MODEL CLASSES ================================

enum PaliCase { nom, voc, acc, ins, dat, abl, gen, loc }
enum PaliNumber { singular, plural }
enum PaliGender { masculine, neuter, feminine }

class AppColors {
  static const int paliGold = 0xFFD4A017;
  static const int paliSaffron = 0xFFE07B00;
  static const int paliMaroon = 0xFF8B1A1A;
  static const int paliJade = 0xFF2E8B57;
  static const int paliInk = 0xFF2B2B2B;
  static const int paliBg = 0xFFFDF8EC;
  static const int paliDivider = 0xFFE0D3A9;
}

class FabVocabItem {
  final String wordEn;
  final String pronunciation;
  final String wordVi;
  final String partOfSpeech; // m./n./f./adj./v./indec./adv./pron./num.

  const FabVocabItem({
    required this.wordEn,
    required this.pronunciation,
    required this.wordVi,
    required this.partOfSpeech,
  });
}

class FabPhraseItem {
  final String phrase;
  final String meaning;

  const FabPhraseItem({required this.phrase, required this.meaning});
}

class FabAnswerItem {
  final String vi;
  const FabAnswerItem({required this.vi});
}

}

class QuizQuestion {
  final String questionText;
  final List<String> options;
  final int correctIndex;

  const QuizQuestion({
    required this.questionText,
    required this.options,
    required this.correctIndex,
  });
}

class LessonPhase {
  final String phaseTypeStr;
  final String? titleVi;
  final String? contentVi;
  final List<FabVocabItem>? fabVocab;
  final List<FabPhraseItem>? fabPhrases;
  final List<MixedSegment>? mixedSegments;
  final List<QuizQuestion>? questions;
  final List<FabAnswerItem>? fabAnswers;

  const LessonPhase({
    required this.phaseTypeStr,
    this.titleVi,
    this.contentVi,
    this.fabVocab,
    this.fabPhrases,
    this.mixedSegments,
    this.questions,
    this.fabAnswers,
  });
}

class LessonDay {
  final String titleVi;
  final int currentPhaseIndex;
  final List<LessonPhase> phases;

  const LessonDay({
    required this.titleVi,
    this.currentPhaseIndex = 0,
    required this.phases,
  });
}

class Lesson16Data {
  final LessonDay day1;
  final LessonDay day2;
  const Lesson16Data({required this.day1, required this.day2});
}

// ============================ DATA: BÀI 16 ================================

Lesson16Data getLesson16Data() {
  return Lesson16Data(
    day1: _buildDay1(),
    day2: _buildDay2(),
  );
}

// ------------------------------- DAY 1 ------------------------------------

LessonDay _buildDay1() {
  return LessonDay(
    titleVi: 'Day 1 — Lý thuyết & Từ vựng Số đếm (Bài 16)',
    phases: [
      LessonPhase(
        phaseTypeStr: 'read_listen',
        titleVi: 'Ngữ pháp: Số đếm & Số thứ tự',
        contentVi: _grammarContentVi,
        fabPhrases: const [
          FabPhraseItem(
            phrase: 'eko / ekā / ekaṃ (m./f./n.) — một',
            meaning:
                'Biến cách theo 3 giống (như nara / kaññā / phala). Số ít; chỉ dùng số nhiều khi nghĩa "một vài / nào đó".',
          ),
          FabPhraseItem(
            phrase: 'dve / duve (cả 3 giống) — hai',
            meaning:
                'Chỉ có số nhiều: CC/ĐC dve; SDC/XXC dvībhi/dvīhi; STC dvinnaṃ; ĐSC dvīsu.',
          ),
          FabPhraseItem(
            phrase: 'tayo / tīni / tisso — ba',
            meaning: 'Nam: tayo; Trung: tīni; Nữ: tisso (số nhiều).',
          ),
          FabPhraseItem(
            phrase: 'cattāro/caturo / cattāri / catasso — bốn',
            meaning:
                'Nam: cattāro, caturo; Trung: cattāri; Nữ: catasso (số nhiều).',
          ),
          FabPhraseItem(
            phrase: 'pañca 5 → aṭṭhārasa 18: chung cả 3 giống',
            meaning:
                'CC/ĐC giữ nguyên; Súc/XX: -bhi/-hi; STC: -nnaṃ; ĐSC: -su (vd pañcasu).',
          ),
          FabPhraseItem(
            phrase: 'Số thứ tự: hậu tố -ma (từ thứ 7+)',
            meaning:
                '1 paṭhama, 2 dutiya, 3 tatiya, 4 catuttha, 5 pañcama, 6 chaṭṭha, 7 sattama, 8 aṭṭhama… Nữ: -ī (catutthī, sattamī, ekādasī).',
          ),
        ],
      ),
      LessonPhase(
        phaseTypeStr: 'read_listen',
        titleVi: 'Số đếm từ 1 đến koṭi + Từ vựng mới',
        contentVi:
            'Học thuộc danh sách số đếm từ 1 → 1 tỉ và các từ vựng mới (divasa, ito, māsa…). Các số từ 19 trở lên có ghi chú giống / cách chia.',
        fabVocab: _buildVocabList(),
      ),
    ],
  );
}

const String _grammarContentVi = '''
BÀI 16 — SỐ ĐẾM (CARDINALS) VÀ SỐ THỨ TỰ (ORDINALS)

1) SỐ ĐẾM TỪ 1 → 1 TỈ
   1  eka              21 eka-vīsati
   2  dvi              22 dve-vīsati / dvā-vīsati
   3  ti               23 te-vīsati
   4  catu             24 catu-vīsati
   5  pañca            25 pañca-vīsati
   6  cha              26 chabbīsati
   7  satta            27 satta-vīsati
   8  aṭṭha            28 aṭṭha-vīsati
   9  nava             29 ek'ūna-tiṃsati   (một còn thiếu của 30)
   10 dasa             30 tiṃsati / tiṃsa
   11 ekādasa          31 ekatiṃsati
   12 dvādasa / bārasa 32 dvattiṃsati
   13 terasa / teḷasa  33 tettiṃsati
   14 cuddasa / catuddasa 34 catuttiṃsati
   15 pañcadasa / paṇṇarasa 35 pañca-tiṃsati
   16 soḷasa / sorasa  36 chattiṃsati
   17 sattadasa / sattārasa 37 satta-tiṃsati
   18 aṭṭhadasa / aṭṭhārasa 38 aṭṭha-tiṃsati
   19 ek'ūna-vīsati    39 ek'ūna-cattāḷīsati
   20 vīsati / vīsaṃ   40 cattāḷīsati / cattāḷīsaṃ / cattāḷīsā
   49 ek'ūna-paññāsā   50 paṇṇāsa / paññāsa
   60 saṭṭhi           70 sattati
   79 ek'ūnāsīti       80 asīti
   90 navuti           99 ek'ūna-sataṃ
   100 sataṃ            200 dve sataṃ / dvi sataṃ
   1.000     sahassaṃ (1 ngàn)
   10.000    dasa-sahassaṃ / nahuta
   100.000   sata-sahassaṃ / lakkha
   10.000.000 koṭi (10 triệu)
   100.000.000  dasa-koṭi
   1.000.000.000 sata-koṭi (1 tỉ)

2) QUY TẮC BIẾN CÁCH SỐ ĐẾM
   a) EKA (1): chia cả 3 giống (nam/nữ/trung), ĐA SỐ chỉ khi có nghĩa "một vài /
      nào đó / kẻ nọ" (eke narā = một vài người).
      Hình thức tiêu biểu (số ít):
                 Nam       Nữ        Trung
      CC         eko       ekā       ekaṃ
      ĐC         ekaṃ      ekaṃ      ekaṃ
      SDC        ekena     ekāya     ekena
      XXC        ekamhā/ekasmā   ekāya   ekamhā/ekasmā
      CĐC/STC    ekassa    ekissā    ekassa
      ĐSC        ekasmiṃ/ekamhi ekissaṃ   ekasmiṃ/ekamhi
   b) DVI (2): chỉ có số nhiều, dùng chung cả 3 giống.
      CC/ĐC dve, duve; SDC/XXC dvībhi, dvīhi; CĐC/STC dvinnaṃ; ĐSC dvīsu.
   c) TI (3) — có 3 giống (số nhiều):
                 Nam        Trung     Nữ
      CC/ĐC     tayo       tīni      tisso
      SDC/XXC   tībhi, tīhi
      CĐC/STC   tiṇṇaṃ    tiṇṇannaṃ tissannaṃ
      ĐSC       tīsu
   d) CATU (4) — có 3 giống (số nhiều):
                 Nam (cattāro, caturo)   Trung (cattāri)   Nữ (catasso)
      SDC/XXC   catūbhi, catūhi
      CĐC/STC   catunnaṃ     catussannaṃ
      ĐSC       catusu, catūsu
   e) PAÑCA (5) → AṬṬHĀRASA (18): CHUNG cả 3 giống, chỉ có số nhiều.
      CC/ĐC   giữ nguyên (pañca, cha, satta, aṭṭha, … dasa, ekādasa …)
      SDC/XXC …bhi / …hi    (pañcabhi / pañcahi)
      CĐC/STC …naṃ          (pañcannaṃ)
      ĐSC     …su            (pañcasu)
   f) Số từ 19 → 89 & koṭi (kết thúc bằng -i / -ī / -ā) là NỮ TÁNH, chỉ số ít,
      biến cách như nữ "-i" (bhūmi). Riêng tiṃsā/cattāḷīsā/paññāsā biến cách như
      nữ "-ā" (kaññā).
   g) Số từ ek'ūnasata → lakkha (kết thúc -a) là TRUNG TÁNH, chỉ số ít, chia như
      phala (n.). Khi dùng theo nghĩa tập hợp có thể lấy số nhiều:
      dve vīsatiyo (2 × 20 = 40), tīṇi satāni (300 = ba trăm).

3) SỐ THỨ TỰ (Ordinals)
   a) Bảng 1–10:
      1 paṭhama     2 dutiya     3 tatiya
      4 catuttha    5 pañcama    6 chaṭṭha
      7 sattama     8 aṭṭhama     9 navama  (thường đọc navama)
      10 dasama
      Từ thứ 7 trở đi: số đếm + hậu tố "-ma" (sattama, aṭṭhama, navama, dasama,
      ekādasama…).
   b) Hòa hợp (agreement) với danh từ: số thứ tự hòa hợp về GIỐNG, SỐ, CÁCH
      với danh từ nó bổ nghĩa.
      - Nam: chia như nara (-a) → paṭhamo puriso.
      - Trung: chia như phala (-a) → paṭhamaṃ divasaṃ.
      - Nữ:
          * paṭhamā / dutiyā / tatiyā → chia như kaññā (nữ -ā) → paṭhamāya
            rattiyā, dutiyāya bhūmiyā;
          * Từ catuttha đến dasama, đổi "-a" cuối thành "-ī" rồi chia như nārī
            (nữ -ī): catuttha → catutthī (catutthiyā, catutthiyaṃ, catuttīsu);
            sattama → sattamī; pañcama → pañcamī; chaṭṭha → chaṭṭhī;
            dasama → dasamī;
          * Từ 11 lên (ekādasādimā): nữ hóa bằng cách thêm "-ī" trực tiếp:
            ekādasa → ekādasī; dvādasamā → dvādasamī;
            sattamī divase = "vào ngày thứ 7".
   c) Cách dùng:
      - Số thứ tự thường đứng trước danh từ, đôi khi ở ĐỊNH SỞ CÁCH với nghĩa
        "vào ngày thứ mấy" (sattame divase = vào ngày thứ 7).
      - Thường đi với ito (cách nay / từ nay): ito sattame divase = "cách nay
        (từ nay) ngày thứ 7, tức 7 ngày nữa".

4) MẸO NHỚ NHANH
   - 1 eka: 3 giống; 2 dvi: chung; 3/4 có dạng m./n./f. riêng; 5–18 chung giống,
     chỉ số nhiều.
   - Số tròn chục "-i/-ī/-ā" là nữ; số trăm ngàn "-a" là trung.
   - Số thứ tự nam/trung "-a", nữ đầu (1-3) "-ā", nữ từ 4 lên "-ī".
''';

List<FabVocabItem> _buildVocabList() {
  return const [
    // --- Số đếm cơ bản ---
    FabVocabItem(
      wordEn: 'eka',
      pronunciation: 'e-ka',
      wordVi: 'một (1) — chia 3 giống: eko / ekā / ekaṃ',
      partOfSpeech: 'num.',
    ),
    FabVocabItem(
      wordEn: 'dvi',
      pronunciation: 'dvi',
      wordVi: 'hai (2) — chỉ số nhiều: dve / duve',
      partOfSpeech: 'num.',
    ),
    FabVocabItem(
      wordEn: 'ti',
      pronunciation: 'ti',
      wordVi: 'ba (3) — tayo / tīni / tisso',
      partOfSpeech: 'num.',
    ),
    FabVocabItem(
      wordEn: 'catu',
      pronunciation: 'ca-tu',
      wordVi: 'bốn (4) — cattāro/caturo / cattāri / catasso',
      partOfSpeech: 'num.',
    ),
    FabVocabItem(
      wordEn: 'pañca',
      pronunciation: 'pañ-ca',
      wordVi: 'năm (5) — pañca / pañcannaṃ / pañcasu',
      partOfSpeech: 'num.',
    ),
    FabVocabItem(
      wordEn: 'cha',
      pronunciation: 'cha',
      wordVi: 'sáu (6)',
      partOfSpeech: 'num.',
    ),
    FabVocabItem(
      wordEn: 'satta',
      pronunciation: 'sat-ta',
      wordVi: 'bảy (7)',
      partOfSpeech: 'num.',
    ),
    FabVocabItem(
      wordEn: 'aṭṭha',
      pronunciation: 'aṭ-ṭha',
      wordVi: 'tám (8)',
      partOfSpeech: 'num.',
    ),
    FabVocabItem(
      wordEn: 'nava',
      pronunciation: 'na-va',
      wordVi: 'chín (9)',
      partOfSpeech: 'num.',
    ),
    FabVocabItem(
      wordEn: 'dasa',
      pronunciation: 'da-sa',
      wordVi: 'mười (10)',
      partOfSpeech: 'num.',
    ),
    FabVocabItem(
      wordEn: 'ekādasa',
      pronunciation: 'e-kaa-da-sa',
      wordVi: 'mười một (11)',
      partOfSpeech: 'num.',
    ),
    FabVocabItem(
      wordEn: 'dvādasa / bārasa',
      pronunciation: 'dvaa-da-sa / baa-ra-sa',
      wordVi: 'mười hai (12)',
      partOfSpeech: 'num.',
    ),
    FabVocabItem(
      wordEn: 'terasa / teḷasa',
      pronunciation: 'te-ra-sa / te-ḷa-sa',
      wordVi: 'mười ba (13)',
      partOfSpeech: 'num.',
    ),
    FabVocabItem(
      wordEn: 'cuddasa / catuddasa',
      pronunciation: 'cud-da-sa / ca-tud-da-sa',
      wordVi: 'mười bốn (14)',
      partOfSpeech: 'num.',
    ),
    FabVocabItem(
      wordEn: 'pañcadasa / paṇṇarasa',
      pronunciation: 'pañ-ca-da-sa / paṇ-ṇa-ra-sa',
      wordVi: 'mười năm (15)',
      partOfSpeech: 'num.',
    ),
    FabVocabItem(
      wordEn: 'soḷasa / sorasa',
      pronunciation: 'so-ḷa-sa / so-ra-sa',
      wordVi: 'mười sáu (16)',
      partOfSpeech: 'num.',
    ),
    FabVocabItem(
      wordEn: 'sattarasa / sattārasa',
      pronunciation: 'sat-ta-ra-sa / sat-taara-sa',
      wordVi: 'mười bảy (17)',
      partOfSpeech: 'num.',
    ),
    FabVocabItem(
      wordEn: 'aṭṭhadasa / aṭṭhārasa',
      pronunciation: 'aṭ-ṭha-da-sa / aṭ-ṭhaa-ra-sa',
      wordVi: 'mười tám (18)',
      partOfSpeech: 'num.',
    ),
    FabVocabItem(
      wordEn: "ek'ūnavīsati",
      pronunciation: 'ek-uu-na-vii-sa-ti',
      wordVi: "mười chín (19, 'một còn thiếu của 20')",
      partOfSpeech: 'num.',
    ),
    FabVocabItem(
      wordEn: 'vīsati / vīsaṃ',
      pronunciation: 'vii-sa-ti / vii-saṃ',
      wordVi: 'hai mươi (20) — nữ "-i"',
      partOfSpeech: 'num. (f.)',
    ),
    FabVocabItem(
      wordEn: 'tiṃsati / tiṃsā',
      pronunciation: 'tiṃ-sa-ti / tiṃ-saa',
      wordVi: 'ba mươi (30)',
      partOfSpeech: 'num. (f.)',
    ),
    FabVocabItem(
      wordEn: 'cattāḷīsati / cattāḷīsā',
      pronunciation: 'cat-taalii-sa-ti',
      wordVi: 'bốn mươi (40)',
      partOfSpeech: 'num. (f.)',
    ),
    FabVocabItem(
      wordEn: 'paññāsa / paṇṇāsa',
      pronunciation: 'pañ-ñaa-sa',
      wordVi: 'năm mươi (50)',
      partOfSpeech: 'num. (f.)',
    ),
    FabVocabItem(
      wordEn: 'saṭṭhi',
      pronunciation: 'saṭ-ṭhi',
      wordVi: 'sáu mươi (60) — nữ "-i"',
      partOfSpeech: 'num. (f.)',
    ),
    FabVocabItem(
      wordEn: 'sattati',
      pronunciation: 'sat-ta-ti',
      wordVi: 'bảy mươi (70)',
      partOfSpeech: 'num. (f.)',
    ),
    FabVocabItem(
      wordEn: 'asīti',
      pronunciation: 'a-sii-ti',
      wordVi: 'tám mươi (80)',
      partOfSpeech: 'num. (f.)',
    ),
    FabVocabItem(
      wordEn: 'navuti',
      pronunciation: 'na-vu-ti',
      wordVi: 'chín mươi (90)',
      partOfSpeech: 'num. (f.)',
    ),
    FabVocabItem(
      wordEn: 'sataṃ',
      pronunciation: 'sa-taṃ',
      wordVi: 'một trăm (100) — trung "-a"',
      partOfSpeech: 'num. (n.)',
    ),
    FabVocabItem(
      wordEn: 'sahassaṃ',
      pronunciation: 'sa-has-saṃ',
      wordVi: 'một ngàn (1.000)',
      partOfSpeech: 'num. (n.)',
    ),
    FabVocabItem(
      wordEn: 'lakkha',
      pronunciation: 'lak-kha',
      wordVi: 'một trăm ngàn (100.000)',
      partOfSpeech: 'num. (n.)',
    ),
    FabVocabItem(
      wordEn: 'koṭi',
      pronunciation: 'ko-ṭi',
      wordVi: 'mười triệu (10.000.000) — nữ "-i"',
      partOfSpeech: 'num. (f.)',
    ),

    // --- Số thứ tự ---
    FabVocabItem(
      wordEn: 'paṭhama',
      pronunciation: 'pa-ṭha-ma',
      wordVi: 'thứ nhất — nữ paṭhamā',
      partOfSpeech: 'num.ord.',
    ),
    FabVocabItem(
      wordEn: 'dutiya',
      pronunciation: 'du-ti-ya',
      wordVi: 'thứ hai — nữ dutiyā',
      partOfSpeech: 'num.ord.',
    ),
    FabVocabItem(
      wordEn: 'tatiya',
      pronunciation: 'ta-ti-ya',
      wordVi: 'thứ ba — nữ tatiyā',
      partOfSpeech: 'num.ord.',
    ),
    FabVocabItem(
      wordEn: 'catuttha (catutthī)',
      pronunciation: 'ca-tut-tha',
      wordVi: 'thứ tư — nữ catutthī',
      partOfSpeech: 'num.ord.',
    ),
    FabVocabItem(
      wordEn: 'pañcama (pañcamī)',
      pronunciation: 'pañ-ca-ma',
      wordVi: 'thứ năm — nữ pañcamī',
      partOfSpeech: 'num.ord.',
    ),
    FabVocabItem(
      wordEn: 'chaṭṭha (chaṭṭhī)',
      pronunciation: 'chaṭ-ṭha',
      wordVi: 'thứ sáu — nữ chaṭṭhī',
      partOfSpeech: 'num.ord.',
    ),
    FabVocabItem(
      wordEn: 'sattama (sattamī)',
      pronunciation: 'sat-ta-ma',
      wordVi: 'thứ bảy — nữ sattamī ("sattame divase" = vào ngày thứ 7)',
      partOfSpeech: 'num.ord.',
    ),
    FabVocabItem(
      wordEn: 'aṭṭhama (aṭṭhamī)',
      pronunciation: 'aṭ-ṭha-ma',
      wordVi: 'thứ tám — nữ aṭṭhamī',
      partOfSpeech: 'num.ord.',
    ),
    FabVocabItem(
      wordEn: 'navama (navamī)',
      pronunciation: 'na-va-ma',
      wordVi: 'thứ chín — nữ navamī',
      partOfSpeech: 'num.ord.',
    ),
    FabVocabItem(
      wordEn: 'dasama (dasamī)',
      pronunciation: 'da-sa-ma',
      wordVi: 'thứ mười — nữ dasamī',
      partOfSpeech: 'num.ord.',
    ),
    FabVocabItem(
      wordEn: 'ekādasī / ekādasamī',
      pronunciation: 'e-kaa-da-sii',
      wordVi: 'ngày thứ 11 (nữ)',
      partOfSpeech: 'num.ord. (f.)',
    ),
    FabVocabItem(
      wordEn: 'dvādasamaṃ',
      pronunciation: 'dvaa-da-sa-maṃ',
      wordVi: 'thứ mười hai (vd. chương thứ 12)',
      partOfSpeech: 'num.ord.',
    ),
    FabVocabItem(
      wordEn: 'soḷasama',
      pronunciation: 'so-ḷa-sa-ma',
      wordVi: 'thứ mười sáu (soḷasamo paricchedo = chương thứ 16)',
      partOfSpeech: 'num.ord.',
    ),
    FabVocabItem(
      wordEn: 'paññarasa / paṇṇarasama',
      pronunciation: 'paṇ-ṇa-ra-sa',
      wordVi: 'mười lăm / ngày thứ 15 (paṇṇarasame divase)',
      partOfSpeech: 'num./ord.',
    ),
    FabVocabItem(
      wordEn: 'aṭṭhavīsati / aṭṭhavīsatima',
      pronunciation: 'aṭ-ṭha-vii-sa-ti',
      wordVi: 'hai mươi tám — ngày thứ 28 (aṭṭha-vīsatime divase)',
      partOfSpeech: 'num./ord.',
    ),
    FabVocabItem(
      wordEn: "ekūnatima (ek'ūna-tiṃsatima)",
      pronunciation: 'ek-uu-na-tiṃ-sa-ti-ma',
      wordVi: "thứ 29 ('ek'ūna-tiṃsatime vasse' = vào năm thứ 29)",
      partOfSpeech: 'num.ord.',
    ),
    FabVocabItem(
      wordEn: 'pañcatiṃsatima',
      pronunciation: 'pañ-ca-tiṃ-sa-ti-ma',
      wordVi: 'thứ 35 / năm thứ 35 (pañca-tiṃsatime vasse)',
      partOfSpeech: 'num.ord.',
    ),

    // --- Từ vựng mới (theo sách p.160-161) ---
    FabVocabItem(
      wordEn: 'Divasa',
      pronunciation: 'di-va-sa',
      wordVi: 'ngày (nam/trung)',
      partOfSpeech: 'm./n.',
    ),
    FabVocabItem(
      wordEn: 'Ito',
      pronunciation: 'i-to',
      wordVi: 'từ đây, từ nay, cách đây, ago (bất biến từ)',
      partOfSpeech: 'indec.',
    ),
    FabVocabItem(
      wordEn: 'Māsa',
      pronunciation: 'maa-sa',
      wordVi: 'tháng (nam/trung)',
      partOfSpeech: 'm./n.',
    ),
    FabVocabItem(
      wordEn: 'Pana',
      pronunciation: 'pa-na',
      wordVi: 'nhưng, tuy nhiên, hơn nữa (bất biến từ)',
      partOfSpeech: 'indec.',
    ),
    FabVocabItem(
      wordEn: 'Pariccheda',
      pronunciation: 'pa-ric-che-da',
      wordVi: 'chương, phần, giới hạn, mức độ (nam)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Saraṇa',
      pronunciation: 'sa-ra-ṇa',
      wordVi: 'sự nương tựa, quy y (trung)',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Sīla',
      pronunciation: 'sii-la',
      wordVi: 'giới, đức hạnh, điều luật (trung, thường số nhiều sīlāni)',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Vassa',
      pronunciation: 'vas-sa',
      wordVi: 'năm, mùa mưa (nam/trung)',
      partOfSpeech: 'm./n.',
    ),

    // --- Từ/cụm hỗ trợ trong bài tập ---
    FabVocabItem(
      wordEn: 'Sacca',
      pronunciation: 'sac-ca',
      wordVi: 'sự thật / Chân lý (Ariya-saccāni = Tứ Thánh Đế)',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Loka',
      pronunciation: 'lo-ka',
      wordVi: 'thế giới (nam)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Aṅguli',
      pronunciation: 'aṅ-gu-ḷi',
      wordVi: 'ngón tay (nữ -i, số nhiều aṅguliyo)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Hattha',
      pronunciation: 'hat-tha',
      wordVi: 'bàn tay (nam)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Gāma',
      pronunciation: 'gaa-ma',
      wordVi: 'làng (nam)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Potthaka',
      pronunciation: 'pot-tha-ka',
      wordVi: 'sách, quyển sách (trung)',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Putta',
      pronunciation: 'put-ta',
      wordVi: 'con trai (nam)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Phala',
      pronunciation: 'pha-la',
      wordVi: 'quả, trái cây (trung)',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Itthī',
      pronunciation: 'it-thii',
      wordVi: 'người nữ, đàn bà (nữ -ī)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Antima',
      pronunciation: 'an-ti-ma',
      wordVi: 'cuối cùng, cuối (tính từ)',
      partOfSpeech: 'adj.',
    ),
    FabVocabItem(
      wordEn: 'Gahapati / Gahapatī',
      pronunciation: 'ga-ha-pa-ti',
      wordVi: 'gia chủ; dạng số nhiều gahapatī (nam -i)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Guṇavant',
      pronunciation: 'gu-ṇa-vant',
      wordVi: 'có đức, có giới hạnh (tính từ)',
      partOfSpeech: 'adj.',
    ),
    FabVocabItem(
      wordEn: 'Uposatha',
      pronunciation: 'u-po-sa-tha',
      wordVi: 'ngày trai giới (nam): aṭṭhamī = ngày mồng 8; cātuddasī = ngày 14; pañcadasī = ngày 15 (trăng tròn).',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Bhikkhu',
      pronunciation: 'bhik-khu',
      wordVi: 'vị tỳ-khưu (nam -u)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Sikkhāpada',
      pronunciation: 'sik-khaa-pa-da',
      wordVi: 'học giới, giới điều (trung)',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Seṭṭhin',
      pronunciation: 'seṭ-ṭhin',
      wordVi: 'trưởng giả, triệu phú (nam)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Catu-paññāsakoṭi',
      pronunciation: 'ca-tu-pañ-ñaa-sa-ko-ṭi',
      wordVi: 'bốn mươi lăm koṭi / 450 triệu (số từ ghép)',
      partOfSpeech: 'num.',
    ),
    FabVocabItem(
      wordEn: 'Āyu',
      pronunciation: 'aa-yu',
      wordVi: 'tuổi thọ, mạng sống (nam/trung)',
      partOfSpeech: 'm./n.',
    ),
    FabVocabItem(
      wordEn: 'Sammāsambuddha',
      pronunciation: 'sam-maasam-bud-dha',
      wordVi: 'Chánh Đẳng Chánh Giác (nam; một Đức Phật Toàn Giác)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Cakkhu',
      pronunciation: 'cak-khu',
      wordVi: 'mắt (nam, số nhiều cakkhūni)',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Mukha',
      pronunciation: 'mu-kha',
      wordVi: 'mặt, miệng (trung)',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Amba',
      pronunciation: 'am-ba',
      wordVi: 'xoài (nam/trung)',
      partOfSpeech: 'n./m.',
    ),
    FabVocabItem(
      wordEn: 'Tisaraṇa',
      pronunciation: 'ti-sa-ra-ṇa',
      wordVi: 'Tam quy (trung: Buddha, Dhamma, Saṅgha)',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Pañcasīla',
      pronunciation: 'pañ-ca-sii-la',
      wordVi: 'ngũ giới (trung, số nhiều pañca sīlāni)',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Gilāna',
      pronunciation: 'gi-laa-na',
      wordVi: 'người bịnh (nam/trung)',
      partOfSpeech: 'm./n.',
    ),
    FabVocabItem(
      wordEn: 'Āyu',
      pronunciation: 'aa-yu',
      wordVi: 'tuổi thọ (đã ghi ở trên)',
      partOfSpeech: 'm./n.',
    ),
    FabVocabItem(
      wordEn: 'Dhamma',
      pronunciation: 'dham-ma',
      wordVi: 'Giáo Pháp (nam, số nhiều Dhammā / Dhammāni tùy giống)',
      partOfSpeech: 'm.',
    ),
  ];
}

// ------------------------------- DAY 2 ------------------------------------

LessonDay _buildDay2() {
  return LessonDay(
    titleVi: 'Day 2 — Thực hành Mind Game & Quiz (Bài 16)',
    phases: [
      LessonPhase(
        phaseTypeStr: 'mind_game',
        titleVi: 'Trò Chơi Tư Duy — Bài Tập 16',
        contentVi:
            'Nhấn vào cụm tiếng Việt để nói to cụm Pāḷi tương ứng, rồi nhấn lại để xem đáp án. Chú ý các dạng số đếm (tayo/tīni/tisso/cattāro/cattāri/catasso) và số thứ tự đuôi "-ma" (hòa hợp giống/cách).',
        mixedSegments: _buildExerciseMixedSegments(),
      ),
      LessonPhase(
        phaseTypeStr: 'listening_quiz',
        titleVi: 'Quiz — Kiểm tra kiến thức Bài 16',
        questions: _buildQuiz(),
        fabAnswers: const [
          FabAnswerItem(
              vi:
                  'Câu 1: Đáp án B. Sattame divase: "sattama" ở ĐỊNH SỞ CÁCH số ít (giống n./m.), nghĩa là "trong / vào ngày thứ 7" ("ito sattame divase" = cách nay 7 ngày nữa).'),
          FabAnswerItem(
              vi:
                  'Câu 2: Đáp án A. Số đếm 1 eka, 3 ti, 4 catu BIẾN CÁCH theo cả 3 giống; số 2 dvi dùng chung giống (chỉ số nhiều); từ 5 trở lên chung giống.'),
          FabAnswerItem(
              vi:
                  'Câu 3: Đáp án B. Nữ của số thứ tự từ thứ 4 (catuttha) đến thứ 10 (dasama) thành lập bằng cách đổi "-a" cuối thành "-ī": catutthī, pañcamī, chaṭṭhī, sattamī, aṭṭhamī, navamī, dasamī; chia như nārī (nữ -ī).'),
          FabAnswerItem(
              vi:
                  'Câu 4: Đáp án C. "tayo / tīni / tisso" tương ứng Nam / Trung / Nữ của số 3 "ti"; tương tự cho số 4 là cattāro/caturo / cattāri / catasso.'),
          FabAnswerItem(
              vi:
                  'Câu 5: Đáp án D. "dvi" chỉ có dạng số nhiều; CC/ĐC là "dve / duve" cho cả 3 giống; SDC dvīhi/dvībhi; STC dvinnaṃ; ĐSC dvīsu. Không có dạng số ít nào.'),
          FabAnswerItem(
              vi:
                  'Câu 6: Đáp án A. Số từ 19→89 và koṭi kết thúc bằng -i/-ī/-ā là NỮ TÁNH, chỉ số ít, chia như bhūmi (nữ -i), riêng tiṃsā/cattāḷīsā/paññāsā chia như kaññā (nữ -ā). Số trăm ngàn kết thúc bằng -a là TRUNG tánh.'),
        ],
      ),
    ],
  );
}

// ---------------------------------------------------------------------------
// MIND GAME — Exercise 16 (15 câu tiêu biểu, phân đoạn Pāḷi – Việt)
// ---------------------------------------------------------------------------
List<MixedSegment> _buildExerciseMixedSegments() {
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

  final result = <MixedSegment>[];

  // Mở đầu kinh kệ Tam quy
  result.addAll(sent(const [
    _Seg('"Buddhaṃ', 'Đức Phật'),
    _Seg('saraṇaṃ', 'nương náu'),
    _Seg('gacchāmi.', 'con xin đi về."'),
  ]));
  result.addAll(sent(const [
    _Seg("Dutiyam'pi", 'Lần thứ hai cũng vậy'),
    _Seg('Buddhaṃ', 'Đức Phật'),
    _Seg('saraṇaṃ', 'nương náu'),
    _Seg('gacchāmi.', 'con xin đi về."'),
  ]));
  result.addAll(sent(const [
    _Seg("Tatiyam'pi", 'Lần thứ ba cũng vậy'),
    _Seg('Buddhaṃ', 'Đức Phật'),
    _Seg('saraṇaṃ', 'nương náu'),
    _Seg('gacchāmi."', 'con xin đi về."'),
  ]));

  // 1. Cattār'imāni, bhikkhave, saccāni.
  result.addAll(sent(const [
    _Seg("Cattār'imāni", 'Bốn cái này'),
    _Seg('bhikkhave,', 'này các tỳ-khưu,'),
    _Seg('saccāni.', '(là các) Chân lý / Thánh đế.'),
  ]));
  // 3. Tīsu lokesu sattā uppajjanti.
  result.addAll(sent(const [
    _Seg('Tīsu', 'Trong ba'),
    _Seg('lokesu', 'thế giới (địa ngục, nhân loại, thiên giới)'),
    _Seg('sattā', 'chúng sanh'),
    _Seg('uppajjanti', 'sanh ra / tái sanh.'),
  ]));
  // 4. Ekasmiṃ hatthe pañca aṅguliyo honti.
  result.addAll(sent(const [
    _Seg('Ekasmiṃ', 'Trên một'),
    _Seg('hatthe', 'bàn tay'),
    _Seg('pañca', 'năm'),
    _Seg('aṅguliyo', 'ngón tay (nữ, số nhiều)'),
    _Seg('honti.', 'có.'),
  ]));
  // 5. Ito sattame divase ahaṃ gamissāmi.
  result.addAll(sent(const [
    _Seg('Ito', 'Từ nay / cách nay'),
    _Seg('sattame', 'thứ bảy (định sở)'),
    _Seg('divase', 'ngày'),
    _Seg('ahaṃ', 'tôi'),
    _Seg('gamissāmi.', 'sẽ đi.'),
  ]));
  // 6. Mayaṃ tīṇi vassāni imasmiṃ gāme vasimhā.
  result.addAll(sent(const [
    _Seg('Mayaṃ', 'Chúng tôi'),
    _Seg('tīṇi', 'ba (trung)'),
    _Seg('vassāni', 'năm'),
    _Seg('imasmiṃ', 'trong này / tại... này'),
    _Seg('gāme', 'làng'),
    _Seg('vasimhā.', 'đã ở.'),
  ]));
  // 7. Ayaṃ pana imasmiṃ potthake soḷasamo paricchedo hoti.
  result.addAll(sent(const [
    _Seg('Ayaṃ', 'Này / Đây'),
    _Seg('pana', 'thì'),
    _Seg('imasmiṃ', 'trong quyển này'),
    _Seg('potthake', 'sách'),
    _Seg('soḷasamo', 'thứ mười sáu'),
    _Seg('paricchedo', 'chương'),
    _Seg('hoti.', 'là.'),
  ]));
  // 9. So tassa tiṇṇaṃ puttānaṃ cattāri cattāri katvā dvādasa phalāni adāsi.
  result.addAll(sent(const [
    _Seg('So', 'Ông ấy'),
    _Seg('tassa', 'cho người ấy / cho hắn'),
    _Seg('tiṇṇaṃ', 'ba (cho ba người)'),
    _Seg('puttānaṃ', 'người con trai'),
    _Seg('cattāri cattāri', 'bốn, bốn quả (mỗi người bốn)'),
    _Seg('katvā', 'làm xong / chia'),
    _Seg('dvādasa', 'mười hai'),
    _Seg('phalāni', 'trái cây'),
    _Seg('adāsi.', 'đã cho.'),
  ]));
  // 10. Etasmiṃ ghare catasso itthiyo vasanti.
  result.addAll(sent(const [
    _Seg('Etasmiṃ', 'Trong ngôi nhà này / ấy'),
    _Seg('ghare', 'nhà'),
    _Seg('catasso', 'bốn (nữ)'),
    _Seg('itthiyo', 'người phụ nữ / đàn bà'),
    _Seg('vasanti.', 'đang ở.'),
  ]));
  // 14. Guṇavanto sadā pañca sīlāni ca aṭṭhamiyaṃ cātuddasiyaṃ pañcadasiyaṃ ca aṭṭha sīlāni rakkhanti.
  result.addAll(sent(const [
    _Seg('Guṇavanto', 'Những người có đức'),
    _Seg('sadā', 'luôn luôn'),
    _Seg('pañca', 'năm'),
    _Seg('sīlāni', 'giới'),
    _Seg('ca', 'và'),
    _Seg('aṭṭhamiyaṃ', '(vào) ngày mồng 8'),
    _Seg('cātuddasiyaṃ', '(vào) ngày 14'),
    _Seg('pañcadasiyaṃ', '(vào) ngày 15'),
    _Seg('ca', 'và'),
    _Seg('aṭṭha', 'tám'),
    _Seg('sīlāni', 'giới'),
    _Seg('rakkhanti.', 'gìn giữ.'),
  ]));
  // 17. Ekasmiṃ māse tiṃsa divasā honti. Ekasmiṃ vasse pana tisata pañcasaṭṭhī divasā honti.
  result.addAll(sent(const [
    _Seg('Ekasmiṃ', 'Trong một'),
    _Seg('māse', 'tháng'),
    _Seg('tiṃsa', 'ba mươi'),
    _Seg('divasā', 'ngày'),
    _Seg('honti.', 'có.'),
  ]));
  result.addAll(sent(const [
    _Seg('Ekasmiṃ', 'Trong một'),
    _Seg('vasse', 'năm'),
    _Seg('pana', 'thì'),
    _Seg('tisata', 'ba trăm'),
    _Seg('pañcasaṭṭhī', 'sáu mươi lăm'),
    _Seg('divasā', 'ngày'),
    _Seg('honti.', 'có (tổng cộng 365 ngày).'),
  ]));
  // 21. Amhākaṃ dve cakkhūni, api ca ekaṃ mukhaṃ.
  result.addAll(sent(const [
    _Seg('Amhākaṃ', 'Của chúng ta'),
    _Seg('dve', 'hai'),
    _Seg('cakkhūni', 'con mắt'),
    _Seg('api ca', 'và cũng có / lại nữa'),
    _Seg('ekaṃ', 'một'),
    _Seg('mukhaṃ.', 'cái miệng / mặt.'),
  ]));
  // 25. Dārako tayo ambe kiṇitvā ekaṃ bhuñjitvā dve gharaṃ hari.
  result.addAll(sent(const [
    _Seg('Dārako', 'Đứa bé trai'),
    _Seg('tayo', 'ba (nam)'),
    _Seg('ambe', 'quả xoài'),
    _Seg('kiṇitvā', 'mua xong'),
    _Seg('ekaṃ', 'một'),
    _Seg('bhuñjitvā', 'ăn xong'),
    _Seg('dve', 'hai'),
    _Seg('gharaṃ', '(về) nhà'),
    _Seg('hari.', 'đã đem.'),
  ]));
  // 29. Ito sattame divase me janako mamaṃ passituṃ āgamissati.
  result.addAll(sent(const [
    _Seg('Ito', 'Từ nay'),
    _Seg('sattame', 'thứ bảy'),
    _Seg('divase', 'ngày'),
    _Seg('me', 'cho tôi (enclitic)'),
    _Seg('janako', 'người cha'),
    _Seg('mamaṃ', 'tôi (ĐC)'),
    _Seg('passituṃ', 'để thăm / thấy'),
    _Seg('āgamissati.', 'sẽ đến.'),
  ]));
  // 35. Mayhaṃ āyu aṭṭhadasa vassā hoti.
  result.addAll(sent(const [
    _Seg('Mayhaṃ', 'Của tôi'),
    _Seg('āyu', 'tuổi thọ'),
    _Seg('aṭṭhadasa', 'mười tám'),
    _Seg('vassā', 'năm (tuổi)'),
    _Seg('hoti.', 'là (năm nay tôi 18 tuổi).'),
  ]));

  return result;
}

class _Seg {
  final String pali;
  final String vi;
  const _Seg(this.pali, this.vi);
}

// ---------------------------------------------------------------------------
// QUIZ — 6 câu trắc nghiệm
// ---------------------------------------------------------------------------
List<QuizQuestion> _buildQuiz() {
  return const [
    QuizQuestion(
      questionText:
          '1. Cụm "vào ngày thứ 7 (cách nay 7 ngày nữa)" trong Pāḷi diễn đạt bằng hình thức nào?',
      options: [
        'A. satta divasā (chỉ dùng số đếm)',
        'B. sattame divase (sattama ở Định sở cách + divasa cũng ở Định sở)',
        'C. sattama divaso (chủ cách)',
        'D. satta divase (không dùng số thứ tự)',
      ],
      correctIndex: 1,
    ),
    QuizQuestion(
      questionText:
          '2. Các số đếm nào sau đây BIẾN CÁCH theo cả ba giống (nam/nữ/trung)?',
      options: [
        'A. eka (1), ti (3), catu (4)',
        'B. pañca (5) đến aṭṭhārasa (18)',
        'C. dvi (2) và các số hàng trăm',
        'D. Tất cả các số đếm đều chia đủ ba giống.',
      ],
      correctIndex: 0,
    ),
    QuizQuestion(
      questionText:
          '3. Nữ tánh của các số thứ tự từ thứ 4 (catuttha) đến thứ 10 (dasama) được thành lập như thế nào và chia giống nào?',
      options: [
        'A. Thêm "-ā", chia như kaññā (nữ -ā).',
        'B. Đổi "-a" cuối thành "-ī" (catutthī, sattamī, dasamī…), chia như nārī (nữ -ī).',
        'C. Giữ nguyên nam dạng cho cả nữ.',
        'D. Thêm "-nī" (như medhāvinī).',
      ],
      correctIndex: 1,
    ),
    QuizQuestion(
      questionText:
          '4. Bộ ba "tayo / tīni / tisso" tương ứng với các giống nào của số đếm "ba"?',
      options: [
        'A. Nữ / Trung / Nam (tisso / tīni / tayo).',
        'B. Trung / Nam / Nữ.',
        'C. Nam / Trung / Nữ (đáp số).',
        'D. Không có thứ tự nhất định.',
      ],
      correctIndex: 2,
    ),
    QuizQuestion(
      questionText:
          '5. Phát biểu nào ĐÚNG về số đếm "dvi" (hai)?',
      options: [
        'A. Chia đủ cả số ít lẫn số nhiều, cả ba giống.',
        'B. Chỉ có dạng số ít, chung giống.',
        'C. Có ba dạng giống như ti (dvayo/dveni/dvissā).',
        'D. Chỉ dùng ở số nhiều; CC/ĐC là "dve / duve" (chung cả 3 giống); STC/CĐC "dvinnaṃ"; ĐSC "dvīsu".',
      ],
      correctIndex: 3,
    ),
    QuizQuestion(
      questionText:
          '6. Về giống/cách chia của các số TỪ 19 TRỞ LÊN (19 → 89) và koṭi, phát biểu nào ĐÚNG?',
      options: [
        'A. Tất cả đều là trung tánh, chia như phala (-a).',
        'B. Tất cả đều là nam tánh, chia như nara (-a).',
        'C. Những số kết thúc bằng -i/-ī/-ā (vd. vīsati, saṭṭhi, asīti, koṭi, cattāḷīsā…) là NỮ TÁNH chỉ số ít (chia như bhūmi hoặc kaññā); số trăm/ngàn kết thúc bằng -a (sataṃ, sahassaṃ) là trung tánh.',
        'D. Các số 19-99 có cả số ít và số nhiều, chia đều cả 3 giống.',
      ],
      correctIndex: 2,
    ),
  ];
}





