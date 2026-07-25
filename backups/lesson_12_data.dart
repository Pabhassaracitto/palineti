// lesson12.dart
// ---------------------------------------------------------------------------
// Bài học số 12 — An Elementary Pāḷi Course (Nārada Mahāthera)
//
// Nội dung:
//   - Đại từ nhân xưng (Personal Pronouns):
//       + amha (tôi): ahaṃ, mayaṃ/amhe, maṃ, mayā, mama/mayhaṃ, mayi
//         kèm enclitic "me / no" (không đứng đầu câu).
//       + tumha (bạn/các bạn): tvaṃ/tuvaṃ, tumhe, taṃ/tavaṃ, tvayā/tayā,
//         tava/tuyhaṃ, tvayi/tayi kèm enclitic "te / vo".
//   - Khả năng cách / Mong mỏi cách (Sattamī / Optative-Conditional):
//       đuôi -eyya / -eyyuṃ / -eyyāsi / -eyyātha / -eyyāmi / -eyyāma;
//       ngôi 3 số ít còn có dạng rút gọn "-e" (pace).
//     Dùng để diễn lời khuyên / mệnh lệnh nhẹ / mong cầu / câu điều kiện
//     (thường đi với sace / ce / yadi = nếu).
//   - Từ vựng mới (Alikavādī, Āroceti, Asādhu, Bhajati, Bhaṇati, Dāna, Evaṃ,
//     Jināti, Kadariya, Kodha, Khippaṃ, Paṇḍita, Pāpaka, Sādhu, Vāyamati,
//     Vaṇṇa, Sacca, Yadā, Tadā …).
//
// Cung cấp:
//     Lesson12Data getLesson12Data()
// Trả về Day 1 (Lý thuyết & Từ vựng) và Day 2 (Thực hành & Quiz).
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
  final String partOfSpeech;

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

class Lesson12Data {
  final LessonDay day1;
  final LessonDay day2;
  const Lesson12Data({required this.day1, required this.day2});
}

// ============================ DATA: BÀI 12 ================================

Lesson12Data getLesson12Data() {
  return Lesson12Data(
    day1: _buildDay1(),
    day2: _buildDay2(),
  );
}

// ------------------------------- DAY 1 ------------------------------------

LessonDay _buildDay1() {
  return LessonDay(
    titleVi: 'Day 1 — Lý thuyết & Từ vựng (Bài 12)',
    phases: [
      LessonPhase(
        phaseTypeStr: 'read_listen',
        titleVi: 'Ngữ pháp: Đại từ nhân xưng & Khả năng cách (Sattamī)',
        contentVi: _grammarContentVi,
        fabPhrases: const [
          FabPhraseItem(
            phrase: 'ahaṃ → mayaṃ (chúng tôi)',
            meaning:
                'Ngôi thứ nhất: CC ahaṃ/mayaṃ; ĐC maṃ; SDC/XXC mayā; STC mama/mayhaṃ (+me); ĐSC mayi.',
          ),
          FabPhraseItem(
            phrase: 'tvaṃ → tumhe (các bạn)',
            meaning:
                'Ngôi thứ hai: CC tvaṃ/tuvaṃ/tumhe; ĐC taṃ/tavaṃ; SDC tvayā/tayā; STC tava/tuyhaṃ (+te); ĐSC tvayi/tayi.',
          ),
          FabPhraseItem(
            phrase: 'Enclitics: me, no, te, vo',
            meaning:
                'me = cho tôi / của tôi; no = cho chúng tôi / của chúng tôi; te = cho bạn/của bạn; vo = cho các bạn/của các bạn. KHÔNG đứng đầu câu.',
          ),
          FabPhraseItem(
            phrase: '-eyyāmi / -eyyāsi / -eyya (ít)',
            meaning:
                'Khả năng cách số ít: ngôi 1/2/3. Ngôi 3 có thể rút gọn "-eyya" → "-e" (pace = anh ấy nên nấu).',
          ),
          FabPhraseItem(
            phrase: '-eyyāma / -eyyātha / -eyyuṃ (nhiều)',
            meaning: 'Khả năng cách số nhiều: chúng tôi nên / các bạn nên / họ nên.',
          ),
          FabPhraseItem(
            phrase: 'Sace / Yadi / Ce ...',
            meaning:
                'Từ nối "nếu" đứng đầu mệnh đề điều kiện, động từ chia Khả năng cách.',
          ),
        ],
      ),
      LessonPhase(
        phaseTypeStr: 'read_listen',
        titleVi: 'Từ vựng Bài 12',
        contentVi:
            'Toàn bộ từ mới theo sách (tr.108-110) và các dạng đại từ nhân xưng. Học kỹ các enclitic "me/te/vo/no" và nghĩa của chúng trong câu.',
        fabVocab: _buildVocabList(),
      ),
    ],
  );
}

const String _grammarContentVi = '''
BÀI 12 — ĐẠI TỪ NHÂN XƯNG & KHẢ NĂNG CÁCH (SATTAMĪ)

1) ĐẠI TỪ NHÂN XƯNG AMHA ("tôi")
                            Số ít (sg.)                  Số nhiều (pl.)
   CC (Nominative)          ahaṃ                         mayaṃ, amhe, (no)
   ĐC (Accusative)          maṃ, mamaṃ                   amhe, amhākaṃ, (no)
   SDC (Instrumental)       mayā, (me)                   amhebhi, amhehi, (no)
   XXC (Ablative)           mayā                         amhebhi, amhehi
   CĐC/STC (Dat./Gen.)      mama, mayhaṃ, mamaṃ, (me)   amhaṃ, amhākaṃ, amhe, (no)
   ĐSC (Locative)           mayi                         amhesu

   Quy tắc cho enclitic "(me) / (no)":
     - me  = cho tôi, của tôi (có thể thay thế ĐC, SDC, STC/CĐC số ít)
     - no  = cho chúng tôi, của chúng tôi (thay thế các cách số nhiều tương ứng)
     - Chúng KHÔNG BAO GIỜ đứng ở đầu câu; luôn đứng sau một từ khác.

2) ĐẠI TỪ NHÂN XƯNG TUMHA ("bạn / các bạn")
                            Số ít (sg.)                     Số nhiều (pl.)
   CC                       tvaṃ, tuvaṃ                    tumhe, (vo)
   ĐC                       taṃ, tavaṃ, tvaṃ, tuvaṃ       tumhākaṃ, tumhe, (vo)
   SDC                      tvayā, tayā, (te)              tumhebhi, tumhehi, (vo)
   XXC                      tvayā, tayā                    tumhebhi, tumhehi
   CĐC/STC                  tava, tuyhaṃ, tumhaṃ, (te)   tumhākaṃ, tumhaṃ, (vo)
   ĐSC                      tvayi, tayi                    tumhesu

   Quy tắc cho enclitic "(te) / (vo)":
     - te  = cho bạn / của bạn (ngôi 2 số ít)
     - vo  = cho các bạn / của các bạn (ngôi 2 số nhiều)
     - Cũng không đứng đầu câu.

   Ví dụ:
     * Dhammaṃ vo desessāmi  = Tôi sẽ thuyết pháp cho CÁC BẠN (vo = tumhākaṃ).
     * Sace tvaṃ me ovādaṃ suṇeyyāsi = Nếu bạn nghe lời khuyên của TÔI (me = mama/mayhaṃ).
     * Tvaṃ me lekhanaṃ āhareyyāsi? = Bạn đem thư đến cho TÔI nhé? (me = mayhaṃ/mama → cho tôi).

3) KHẢ NĂNG CÁCH / MONG MỎI CÁCH (Sattamī / Optative – Conditional)

   Biến tố thêm ngay sau gốc động từ (nguyên âm trước đổi thành "-i-" như
   ở thì tương lai; đôi khi còn giữ "-a-" trong loại paca → pace/paceyya):
                            Số ít (sg.)              Số nhiều (pl.)
   Ngôi 3                   eyya (hoặc -e)          eyyuṃ
   Ngôi 2                   eyyāsi                   eyyātha
   Ngôi 1                   eyyāmi                   eyyāma

   Ví dụ với paca (nấu):
                            Số ít                    Số nhiều
   Ngôi 3                   pace / paceyya           paceyyuṃ
                            (anh ấy nên nấu)         (họ nên nấu)
   Ngôi 2                   paceyyāsi                paceyyātha
                            (bạn nên nấu)            (các bạn nên nấu)
   Ngôi 1                   paceyyāmi                paceyyāma
                            (tôi nên nấu)            (chúng tôi nên nấu)

   Ghi chú:
     - Ngôi 3 số ít "-eyya" thường rút gọn thành "-e": pace, gacche, bhaṇe, kare.
     - Động từ gốc bất quy tắc:
         * atthi (là/có)  → assa / siyā
         * hoti (là)      → heyya / heyyāsi / heyyāmi …
         * karoti (làm)   → kareyya / kare
         * gacchati (đi)  → gaccheyya / gacche
         * bujjhati (giác/ngộ) → bujjheyyāmi
         * jānāti (biết)  → jāneyya

4) CÁCH DÙNG CỦA KHẢ NĂNG CÁCH
   a) Mong muốn / cầu nguyện / lời chúc:
        * Sādhu bhante, evaṃ no kareyyāma. = Lành thay, bạch ngài, chúng con
          xin nên làm như vậy.
   b) Mệnh lệnh một cách nhẹ nhàng / khuyên bảo:
        * Saccaṃ bhaṇe = Hãy nói sự thật.
        * Na bhaje pāpake mitte = Chớ giao du với bạn ác.
   c) Điều kiện ("nếu… thì…"), thường bắt đầu bằng sace / yadi / ce:
        * Sace bhikkhū dhammaṃ deseyyuṃ, mayaṃ sādhukaṃ suṇeyyāma.
          = Nếu chư tỳ-khưu thuyết Pháp, chúng ta nên nghe một cách khéo léo.
        * Yadi tvaṃ vāyāmeyyāsi, khippaṃ paṇḍito bhaveyyāsi.
          = Nếu bạn (nên) tinh cần, bạn sẽ sớm trở thành bậc trí.
   d) Lưu ý: "yāva … tāva" (chừng nào … thì … / cho đến khi …) cũng thường đi
      với Khả năng cách trong văn cảnh khuyến tấn:
        * Yāva tumhe muttiṃ labheyyātha, tāva appamādena vāyameyyātha.
          = Cho đến khi các bạn chứng được giải thoát, các bạn hãy tinh cần không phóng dật.

5) CÁC CỤM TỪ / BẤT BIẾN TỪ CẦN NHỚ
   - sādhu  = lành thay, tốt thay; người tốt (có thể làm thán từ hoặc danh từ/tính từ).
   - asādhu = không tốt, xấu, ác; kẻ ác.
   - evaṃ   = như vậy, như thế.
   - khippaṃ = nhanh chóng, lập tức.
   - niccaṃ = thường xuyên, luôn luôn.
   - yadā … tadā … = khi nào … thì khi ấy … (cặp đại từ liên hệ-chỉ định).
   - sādhukaṃ = một cách khéo léo / kỹ lưỡng (trạng từ của sādhu).
''';

List<FabVocabItem> _buildVocabList() {
  return const [
    // --- Đại từ nhân xưng amha (tôi) ---
    FabVocabItem(
      wordEn: 'ahaṃ',
      pronunciation: 'a-haṃ',
      wordVi: 'tôi (CC số ít)',
      partOfSpeech: 'pron.',
    ),
    FabVocabItem(
      wordEn: 'mayaṃ / amhe',
      pronunciation: 'ma-yaṃ / a-mhe',
      wordVi: 'chúng tôi (CC số nhiều)',
      partOfSpeech: 'pron.',
    ),
    FabVocabItem(
      wordEn: 'maṃ / mamaṃ',
      pronunciation: 'maṃ / ma-maṃ',
      wordVi: 'tôi (ĐC số ít)',
      partOfSpeech: 'pron.',
    ),
    FabVocabItem(
      wordEn: 'mayā',
      pronunciation: 'ma-yaa',
      wordVi: 'do/bởi tôi, với tôi (SDC/XXC số ít)',
      partOfSpeech: 'pron.',
    ),
    FabVocabItem(
      wordEn: 'mama / mayhaṃ',
      pronunciation: 'ma-ma / may-haṃ',
      wordVi: 'của tôi, cho tôi (STC/CĐC số ít)',
      partOfSpeech: 'pron.',
    ),
    FabVocabItem(
      wordEn: 'mayi',
      pronunciation: 'ma-yi',
      wordVi: 'nơi tôi, trong tôi (ĐSC số ít)',
      partOfSpeech: 'pron.',
    ),
    FabVocabItem(
      wordEn: 'me',
      pronunciation: 'me',
      wordVi: 'tôi / của tôi / cho tôi (enclitic, không đầu câu)',
      partOfSpeech: 'pron.enc.',
    ),
    FabVocabItem(
      wordEn: 'no',
      pronunciation: 'no',
      wordVi: 'chúng tôi / của chúng tôi (enclitic, không đầu câu)',
      partOfSpeech: 'pron.enc.',
    ),
    // --- Đại từ nhân xưng tumha (bạn) ---
    FabVocabItem(
      wordEn: 'tvaṃ / tuvaṃ',
      pronunciation: 'tvaṃ / tu-vaṃ',
      wordVi: 'bạn, ngươi (CC số ít)',
      partOfSpeech: 'pron.',
    ),
    FabVocabItem(
      wordEn: 'tumhe',
      pronunciation: 'tum-he',
      wordVi: 'các bạn (CC/ĐC số nhiều)',
      partOfSpeech: 'pron.',
    ),
    FabVocabItem(
      wordEn: 'taṃ / tavaṃ',
      pronunciation: 'taṃ / ta-vaṃ',
      wordVi: 'bạn (ĐC số ít)',
      partOfSpeech: 'pron.',
    ),
    FabVocabItem(
      wordEn: 'tvayā / tayā',
      pronunciation: 'tva-yaa / ta-yaa',
      wordVi: 'do/bởi bạn (SDC/XXC số ít)',
      partOfSpeech: 'pron.',
    ),
    FabVocabItem(
      wordEn: 'tava / tuyhaṃ',
      pronunciation: 'ta-va / tuy-haṃ',
      wordVi: 'của bạn, cho bạn (STC/CĐC số ít)',
      partOfSpeech: 'pron.',
    ),
    FabVocabItem(
      wordEn: 'tvayi / tayi',
      pronunciation: 'tva-yi / ta-yi',
      wordVi: 'nơi bạn, trong bạn (ĐSC số ít)',
      partOfSpeech: 'pron.',
    ),
    FabVocabItem(
      wordEn: 'te',
      pronunciation: 'te',
      wordVi: 'bạn / của bạn / cho bạn (enclitic, không đầu câu)',
      partOfSpeech: 'pron.enc.',
    ),
    FabVocabItem(
      wordEn: 'vo',
      pronunciation: 'vo',
      wordVi: 'các bạn / của các bạn (enclitic, không đầu câu)',
      partOfSpeech: 'pron.enc.',
    ),

    // --- Từ mới theo sách (p.108-110) ---
    FabVocabItem(
      wordEn: 'Alikavādī',
      pronunciation: 'a-li-ka-vaa-dii',
      wordVi: 'kẻ nói dối, người nói lời không thật (nam)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Āroceti (ā+ruca)',
      pronunciation: 'aa-ro-ce-ti',
      wordVi: 'báo cáo, thông báo, nói cho biết',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Asādhu',
      pronunciation: 'a-saa-dhu',
      wordVi: 'kẻ xấu, người không tốt; xấu, ác (nam/tính từ)',
      partOfSpeech: 'm./adj.',
    ),
    FabVocabItem(
      wordEn: 'Bhajati (bhaja)',
      pronunciation: 'bha-ja-ti',
      wordVi: 'cọng tác, giao du, gần gũi, phụng sự',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Bhaṇati (bhaṇa)',
      pronunciation: 'bha-ṇa-ti',
      wordVi: 'nói, tụng đọc, thuyết (v.d. bhaṇeyya = nên nói)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Dāna',
      pronunciation: 'daa-na',
      wordVi: 'sự bố thí, sự cho, của thí (trung)',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Evaṃ',
      pronunciation: 'e-vaṃ',
      wordVi: 'như vậy, như thế (bất biến từ)',
      partOfSpeech: 'indec.',
    ),
    FabVocabItem(
      wordEn: 'Jināti (ji)',
      pronunciation: 'ji-naa-ti',
      wordVi: 'chiến thắng, chinh phục',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Kadariya',
      pronunciation: 'ka-da-ri-ya',
      wordVi: 'kẻ keo kiệt, bủn xỉn (nam)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Kodha',
      pronunciation: 'ko-dha',
      wordVi: 'sân, sự tức giận (nam)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Khippaṃ',
      pronunciation: 'khip-paṃ',
      wordVi: 'nhanh, lập tức (trạng từ)',
      partOfSpeech: 'adv./indec.',
    ),
    FabVocabItem(
      wordEn: 'Paṇḍita',
      pronunciation: 'paṇ-ḍi-ta',
      wordVi: 'bậc trí tuệ, người học rộng (nam)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Pāpaka',
      pronunciation: 'paa-pa-ka',
      wordVi: 'xấu, ác, tội lỗi (tính từ)',
      partOfSpeech: 'adj.',
    ),
    FabVocabItem(
      wordEn: 'Sādhu',
      pronunciation: 'saa-dhu',
      wordVi: 'người tốt; tốt, lành; lành thay! (nam/tt/thán từ)',
      partOfSpeech: 'm./adj./indec.',
    ),
    FabVocabItem(
      wordEn: 'Vāyamati (ā+vi+yama)',
      pronunciation: 'vaa-ya-ma-ti',
      wordVi: 'cố gắng, tinh tấn, nỗ lực',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Vaṇṇa',
      pronunciation: 'vaṇ-ṇa',
      wordVi: 'dung sắc, màu da, sắc đẹp, sự khen, hạng (nam)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Sacca',
      pronunciation: 'sac-ca',
      wordVi: 'chân lý, sự thật (trung)',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Yadā',
      pronunciation: 'ya-daa',
      wordVi: 'khi nào (đại từ liên hệ, bất biến từ)',
      partOfSpeech: 'indec.',
    ),
    FabVocabItem(
      wordEn: 'Tadā',
      pronunciation: 'ta-daa',
      wordVi: 'lúc bấy giờ, khi ấy (bất biến từ)',
      partOfSpeech: 'indec.',
    ),

    // --- Từ bổ trợ trong bài tập ---
    FabVocabItem(
      wordEn: 'Sace / Yadi / Ce',
      pronunciation: 'sa-ce / ya-di / ce',
      wordVi: 'nếu (liên từ điều kiện)',
      partOfSpeech: 'indec.',
    ),
    FabVocabItem(
      wordEn: 'Yāva',
      pronunciation: 'yaa-va',
      wordVi: 'cho đến khi, chừng nào (liên từ)',
      partOfSpeech: 'indec.',
    ),
    FabVocabItem(
      wordEn: 'Tāva',
      pronunciation: 'taa-va',
      wordVi: 'thì, cho đến lúc ấy (liên từ tương quan với yāva)',
      partOfSpeech: 'indec.',
    ),
    FabVocabItem(
      wordEn: 'Sādhukaṃ',
      pronunciation: 'saa-dhu-kaṃ',
      wordVi: 'một cách khéo léo, cẩn thận (trạng từ)',
      partOfSpeech: 'adv.',
    ),
    FabVocabItem(
      wordEn: 'Akkodha',
      pronunciation: 'ak-ko-dha',
      wordVi: 'không sân, vô sân (nam)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Kujjhati (kudh)',
      pronunciation: 'kuj-jha-ti',
      wordVi: 'nổi giận, tức tối (v.d. na kujjheyya = không nên nổi giận)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Abhibhavati (abhi+bhu)',
      pronunciation: 'a-bhi-bha-va-ti',
      wordVi: 'chinh phục, chế ngự, thắng hơn',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Adhipati',
      pronunciation: 'a-dhi-pa-ti',
      wordVi: 'chúa tể, người lãnh đạo, chồng (nam)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Bhante',
      pronunciation: 'bhan-te',
      wordVi: 'bạch ngài (xưng hô với tỳ-khưu / Sa-môn)',
      partOfSpeech: 'voc.',
    ),
    FabVocabItem(
      wordEn: 'Pañha',
      pronunciation: 'pañ-ha',
      wordVi: 'câu hỏi (nam)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Pucchati (puccha)',
      pronunciation: 'puc-cha-ti',
      wordVi: 'hỏi (pucchituṃ = để hỏi)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Niccaṃ',
      pronunciation: 'nic-caṃ',
      wordVi: 'thường luôn, luôn luôn (trạng từ)',
      partOfSpeech: 'adv.',
    ),
    FabVocabItem(
      wordEn: 'Peseti (pesa)',
      pronunciation: 'pe-se-ti',
      wordVi: 'gởi, sai bảo',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Bujjhati (budh)',
      pronunciation: 'buj-jha-ti',
      wordVi: 'giác ngộ, tỉnh thức, hiểu biết',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Mittā / Mitta',
      pronunciation: 'mit-taa / mit-ta',
      wordVi: 'bạn bè (nam / nữ)',
      partOfSpeech: 'm./f.',
    ),
    FabVocabItem(
      wordEn: 'Āharati (ā+hara)',
      pronunciation: 'aa-ha-ra-ti',
      wordVi: 'đem đến, mang đến (āhareyyāsi = bạn nên đem)',
      partOfSpeech: 'v.',
    ),
  ];
}

// ------------------------------- DAY 2 ------------------------------------

LessonDay _buildDay2() {
  return LessonDay(
    titleVi: 'Day 2 — Thực hành (Mind Game) & Quiz',
    phases: [
      LessonPhase(
        phaseTypeStr: 'mind_game',
        titleVi: 'Trò Chơi Tư Duy — Bài Tập 12',
        contentVi:
            'Nhấn vào cụm tiếng Việt để nói to cụm Pāḷi tương ứng; nhấn lại để xem đáp án. Chú ý các dạng Khả năng cách (-eyyāmi/-eyyāsi/-eyya/-eyyuṃ/-eyyāma/-eyyātha) và enclitic me/te/vo/no.',
        mixedSegments: _buildExerciseMixedSegments(),
      ),
      LessonPhase(
        phaseTypeStr: 'listening_quiz',
        titleVi: 'Quiz — Kiểm tra kiến thức Bài 12',
        questions: _buildQuiz(),
        fabAnswers: const [
          FabAnswerItem(
              vi:
                  'Câu 1: Đáp án C. "Dhammaṃ vo desessāmi" — "vo" là enclitic ngôi 2 số nhiều, nghĩa "cho các bạn / của các bạn"; cả câu: "Tôi sẽ thuyết pháp cho các bạn."'),
          FabAnswerItem(
              vi:
                  'Câu 2: Đáp án A. "me, te, vo, no" là các enclitic và KHÔNG ĐƯỢC ĐỨNG ĐẦU CÂU; chúng thay thế các cách gián tiếp của đại từ amha/tumha.'),
          FabAnswerItem(
              vi:
                  'Câu 3: Đáp án B. Đuôi ngôi thứ 3 số ít Khả năng cách là "-eyya" (thường rút gọn thành "-e"), ngôi 3 nhiều "-eyyuṃ". Ví dụ pace/paceyya = anh ấy nên nấu; paceyyuṃ = họ nên nấu.'),
          FabAnswerItem(
              vi:
                  'Câu 4: Đáp án A. "-eyyāmi / -eyyāsi / -eyya" theo thứ tự là ngôi 1/2/3 số ít. Số nhiều tương ứng là "-eyyāma / -eyyātha / -eyyuṃ".'),
          FabAnswerItem(
              vi:
                  'Câu 5: Đáp án C. Câu điều kiện với "sace / yadi / ce" (nếu) động từ được chia ở Khả năng cách; "yadā… tadā" có nghĩa "khi nào… thì khi ấy", không phải liên từ điều kiện.'),
          FabAnswerItem(
              vi:
                  'Câu 6: Đáp án B. "paceyyāma" là ngôi 1 số nhiều Khả năng cách của paca: "chúng tôi nên nấu" / "chúng ta hãy nấu".'),
        ],
      ),
    ],
  );
}

// ---------------------------------------------------------------------------
// MIND GAME — EXERCISE 12 (15+ câu tiêu biểu)
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

  return [
    // 1. "Gāmaṃ no gaccheyyāma."
    ...sent(const [
      _Seg('"Gāmaṃ', 'Làng'),
      _Seg('no', 'chúng tôi (cho chúng tôi / enclitic)'),
      _Seg('gaccheyyāma."', 'chúng ta nên đi / chúng tôi hãy đi."'),
    ]),
    // 2. "Buddho'pi Buddhassa bhaṇeyya vaṇṇaṃ."
    ...sent(const [
      _Seg('"Buddho\'pi', 'Dù là Đức Phật cũng'),
      _Seg('Buddhassa', '(về) phẩm hạnh của Đức Phật'),
      _Seg('bhaṇeyya', 'cũng nên nói / sẽ nói'),
      _Seg('vaṇṇaṃ."', 'lời tán thán / sắc đẹp."'),
    ]),
    // 3. "Na bhaje pāpake mitte."
    ...sent(const [
      _Seg('"Na', 'Chớ / Đừng'),
      _Seg('bhaje', 'giao du / kết bạn (nên giao du)'),
      _Seg('pāpake', 'với những kẻ xấu ác'),
      _Seg('mitte."', 'bạn bè."'),
    ]),
    // 4. "Saccaṃ bhaṇe, na kujjheyya."
    ...sent(const [
      _Seg('"Saccaṃ', 'Sự thật / lời chân thật'),
      _Seg('bhaṇe,', 'hãy nói,'),
      _Seg('na kujjheyya."', 'chớ nên nổi giận."'),
    ]),
    // 5. "Dhammaṃ vo desessāmi."
    ...sent(const [
      _Seg('"Dhammaṃ', 'Giáo Pháp'),
      _Seg('vo', 'cho các bạn'),
      _Seg('desessāmi."', 'tôi sẽ thuyết giảng."'),
    ]),
    // 6. Sace ahaṃ saccāni bujjheyyāmi te āroceyyāmi.
    ...sent(const [
      _Seg('Sace', 'Nếu'),
      _Seg('ahaṃ', 'tôi'),
      _Seg('saccāni', 'các chân lý'),
      _Seg('bujjheyyāmi', 'tôi nên giác ngộ / chứng ngộ'),
      _Seg('te', 'cho bạn (enclitic)'),
      _Seg('āroceyyāmi', 'tôi sẽ báo lại / thông báo'),
    ]),
    // 7. Yadi tvaṃ vāyāmeyyāsi khippaṃ paṇḍito bhaveyyāsi.
    ...sent(const [
      _Seg('Yadi', 'Nếu'),
      _Seg('tvaṃ', 'bạn'),
      _Seg('vāyāmeyyāsi', 'nên cố gắng / tinh cần'),
      _Seg('khippaṃ', 'sớm / nhanh chóng'),
      _Seg('paṇḍito', 'một bậc trí'),
      _Seg('bhaveyyāsi', 'bạn sẽ trở thành'),
    ]),
    // 9. Sace bhikkhū dhammaṃ deseyyuṃ mayaṃ sādhukaṃ suṇeyyāma.
    ...sent(const [
      _Seg('Sace', 'Nếu'),
      _Seg('bhikkhū', 'chư tỳ-khưu'),
      _Seg('dhammaṃ', 'Giáo Pháp'),
      _Seg('deseyyuṃ', 'nên thuyết giảng'),
      _Seg('mayaṃ', 'chúng ta / chúng tôi'),
      _Seg('sādhukaṃ', 'một cách khéo léo'),
      _Seg('suṇeyyāma', 'chúng ta nên lắng nghe'),
    ]),
    // 10. Sādhu bhante, evaṃ no kareyyāma.
    ...sent(const [
      _Seg('Sādhu', 'Lành thay!'),
      _Seg('bhante,', 'bạch ngài,'),
      _Seg('evaṃ', 'như vậy'),
      _Seg('no', 'chúng con (enclitic)'),
      _Seg('kareyyāma', 'xin hãy làm / sẽ làm'),
    ]),
    // 14. Yāva tumhe muttiṃ labheyyātha tāva appamādena vāyameyyātha.
    ...sent(const [
      _Seg('Yāva', 'Cho đến khi'),
      _Seg('tumhe', 'các bạn'),
      _Seg('muttiṃ', 'sự giải thoát'),
      _Seg('labheyyātha', 'các bạn chứng được / đạt được'),
      _Seg('tāva', 'thì / cho đến lúc đó'),
      _Seg('appamādena', 'với sự không phóng dật / tinh cần'),
      _Seg('vāyameyyātha', 'các bạn hãy nỗ lực'),
    ]),
    // 15. Câu kệ: Akkodhena jine kodhaṃ …
    ...sent(const [
      _Seg('"Akkodhena', 'Với vô sân (không giận)'),
      _Seg('jine', 'hãy chiến thắng'),
      _Seg('kodhaṃ', 'cơn giận'),
      _Seg('asādhuṃ', 'kẻ xấu / điều ác'),
      _Seg('sādhunā', 'bằng người tốt / điều thiện'),
      _Seg('jine', 'hãy chiến thắng'),
    ]),
    ...sent(const [
      _Seg('Jine', 'Hãy chiến thắng'),
      _Seg('kadariyaṃ', 'kẻ keo kiệt'),
      _Seg('dānena', 'bằng sự bố thí'),
      _Seg('saccena', 'bằng sự thật'),
      _Seg('alikavādinaṃ."', 'kẻ nói dối."'),
    ]),
    // 18. Dārakā, tumhe niccaṃ saccaṃ bhaṇeyyātha.
    ...sent(const [
      _Seg('Dārakā,', 'Này các bé trai,'),
      _Seg('tumhe', 'các con'),
      _Seg('niccaṃ', 'luôn luôn'),
      _Seg('saccaṃ', 'lời chân thật'),
      _Seg('bhaṇeyyātha', 'các con hãy nói'),
    ]),
    // 23. Sace tvaṃ me ovādaṃ suṇeyyāsi, ahaṃ te saddhiṃ have gaccheyyāmi.
    ...sent(const [
      _Seg('Sace', 'Nếu'),
      _Seg('tvaṃ', 'bạn'),
      _Seg('me', 'lời giáo giới của tôi (enclitic)'),
      _Seg('ovādaṃ', 'lời khuyên / giáo giới'),
      _Seg('suṇeyyāsi,', 'nghe / lắng nghe,'),
      _Seg('ahaṃ', 'tôi'),
      _Seg('te', 'với bạn (enclitic)'),
      _Seg('saddhiṃ', 'cùng'),
      _Seg('have', 'quả thật / chắc chắn'),
      _Seg('gaccheyyāmi', 'tôi sẽ đi'),
    ]),
    // 26. Mayaṃ dānena kadariye jineyyāma.
    ...sent(const [
      _Seg('Mayaṃ', 'Chúng tôi'),
      _Seg('dānena', 'bằng sự bố thí'),
      _Seg('kadariye', 'kẻ keo kiệt (tính bủn xỉn)'),
      _Seg('jineyyāma', 'chúng ta hãy chiến thắng'),
    ]),
    // 29. Sace sādhu asādhunā saddhiṃ bhajeyya, so asādhu api bhaveyya.
    ...sent(const [
      _Seg('Sace', 'Nếu'),
      _Seg('sādhu', 'người tốt'),
      _Seg('asādhunā saddhiṃ', 'với kẻ xấu'),
      _Seg('bhajeyya,', 'giao du / kết bạn,'),
      _Seg('so', 'người ấy'),
      _Seg('asādhu', '(thành) kẻ xấu'),
      _Seg('api', 'cũng'),
      _Seg('bhaveyya', 'sẽ trở thành'),
    ]),
    // 31. Sace tumhe sādhukaṃ maṃ suṇeyyatha, saddhā tumhesu jāyeyya.
    ...sent(const [
      _Seg('Sace', 'Nếu'),
      _Seg('tumhe', 'các bạn'),
      _Seg('sādhukaṃ', 'một cách khéo léo / chăm chú'),
      _Seg('maṃ', 'tôi'),
      _Seg('suṇeyyatha,', 'lắng nghe,'),
      _Seg('saddhā', 'niềm tin / đức tin'),
      _Seg('tumhesu', 'nơi các bạn'),
      _Seg('jāyeyya', 'sẽ sanh khởi'),
    ]),
  ];
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
          '1. Từ "vo" trong câu "Dhammaṃ vo desessāmi" thuộc loại đại từ nào và có nghĩa gì?',
      options: [
        'A. Đại từ chỉ định "đó" (đứng đầu câu).',
        'B. Danh từ "tiếng nói".',
        'C. Enclitic ngôi 2 số nhiều của tumha, nghĩa là "cho các bạn / của các bạn"; không đứng đầu câu.',
        'D. Từ nối "vì vậy".',
      ],
      correctIndex: 2,
    ),
    QuizQuestion(
      questionText:
          '2. Quy tắc nào sau đây ĐÚNG đối với các enclitic "me, te, vo, no"?',
      options: [
        'A. Chúng luôn đứng đầu câu để nhấn mạnh chủ thể.',
        'B. Chúng KHÔNG được dùng ở đầu câu; thay thế các cách gián tiếp của ahaṃ/tvaṃ (tương ứng: me=của tôi, te=của bạn, vo=của các bạn, no=của chúng tôi).',
        'C. Chúng chỉ dùng với Định sở cách.',
        'D. "me" là số nhiều của "no".',
      ],
      correctIndex: 1,
    ),
    QuizQuestion(
      questionText:
          '3. Đuôi ngôi thứ 3 Khả năng cách (số ít / số nhiều) của động từ là gì?',
      options: [
        'A. -eyya (ít), -eyyuṃ (nhiều); trong đó ngôi 3 ít còn có dạng rút gọn -e.',
        'B. -ati / -anti (thì hiện tại).',
        'C. -issati / -issanti (thì tương lai).',
        'D. -tu / -antu (mệnh lệnh cách).',
      ],
      correctIndex: 0,
    ),
    QuizQuestion(
      questionText:
          '4. Biến tố "-eyyāmi, -eyyāsi, -eyya" tương ứng với các ngôi nào (số ít)?',
      options: [
        'A. Ngôi 1, ngôi 2, ngôi 3 (tôi / bạn / anh ấy) số ít.',
        'B. Ngôi 3 / 2 / 1 (anh ấy / bạn / tôi) số ít.',
        'C. Số nhiều cả 3 ngôi.',
        'D. Quá khứ số ít cả 3 ngôi.',
      ],
      correctIndex: 0,
    ),
    QuizQuestion(
      questionText:
          '5. Từ nối nào sau đây thường đứng đầu câu điều kiện dùng Khả năng cách với nghĩa "nếu"?',
      options: [
        'A. "iti" (rằng).',
        'B. "saddhiṃ" (với).',
        'C. "sace / ce / yadi" (nếu).',
        'D. "yadā … tadā" (khi nào… thì).',
      ],
      correctIndex: 2,
    ),
    QuizQuestion(
      questionText:
          '6. Dạng "paceyyāma" thuộc chia nào của động từ paca (nấu)?',
      options: [
        'A. Ngôi 3 số nhiều thì hiện tại: "họ nấu".',
        'B. Ngôi 1 số nhiều Khả năng cách: "chúng ta nên nấu / chúng tôi hãy nấu".',
        'C. Ngôi 2 số nhiều mệnh lệnh: "hãy nấu".',
        'D. Nguyên thể: "để nấu".',
      ],
      correctIndex: 1,
    ),
  ];
}





