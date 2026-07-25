// lesson20.dart
// ---------------------------------------------------------------------------
// Bài học số 20 — Hợp từ (Samāsa)
//
// Năm (5) loại hợp từ trong Pāḷi:
//   1. Kammadhāraya  — Tính từ hợp từ (Adjectival / Determinative-appositive)
//   2. Tappurisa     — Biến cách hợp từ (Case / Determinative), gồm các cách
//                      ĐC (2), Bổ trợ/SDC (3), CĐC (4), XXC (5), STC (6), ĐSC (7)
//   3. Dvanda        — Danh từ hợp từ (Copulative / "và")
//   4. Bahubbīhi     — Thuộc ngữ hợp từ (Attributive / Possessive, ngoại chủng)
//   5. Avyayībhāva   — Trạng từ hợp từ (Adverbial), bắt đầu bằng tiếp đầu ngữ
//                      hoặc bất biến từ; toàn thể thành bất biến từ, thêm -ṃ
//                      ở cuối nếu kết thúc -a/-ā.
//
// Quy tắc gốc: chỉ từ cuối của hợp từ mang biến cách; từ trước bỏ đuôi cách
// (trừ vài trường hợp ngoại lệ) và trở về GỐC (base). Các thành phần nối
// với nhau theo luật Sandhi.
//
// Cung cấp: Lesson20Data getLesson20Data().
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

class Lesson20Data {
  final LessonDay day1;
  final LessonDay day2;
  const Lesson20Data({required this.day1, required this.day2});
}

// ============================ DATA: BÀI 20 ================================

Lesson20Data getLesson20Data() {
  return Lesson20Data(
    day1: _buildDay1(),
    day2: _buildDay2(),
  );
}

// ------------------------------- DAY 1 ------------------------------------

LessonDay _buildDay1() {
  return LessonDay(
    titleVi: 'Day 1 — Lý thuyết & Ví dụ 5 loại Hợp từ (Samāsa)',
    phases: [
      LessonPhase(
        phaseTypeStr: 'read_listen',
        titleVi: 'Tổng quan về Hợp từ (Samāsa)',
        contentVi: _grammarContentVi,
        fabPhrases: const [
          FabPhraseItem(
            phrase: 'Quy tắc vàng',
            meaning:
                'Chỉ từ CUỐI của hợp từ mang biến cách (case endings); các từ đứng trước BỎ đuôi cách, trở về gốc (base), nối với nhau theo luật Sandhi.',
          ),
          FabPhraseItem(
            phrase: 'Kammadhāraya — tính từ / đồng vị bổ nghĩa',
            meaning:
                'Tính từ / danh từ đồng vị / bất biến từ bổ nghĩa cho danh từ đứng sau (hay trước). Vd: taruṇapuriso (thanh niên), sīladhanaṃ (giới là của cải).',
          ),
          FabPhraseItem(
            phrase: 'Tappurisa — biến cách hợp từ',
            meaning:
                'Quan hệ cách (từ cách 2→7) giữa hai danh từ; từ sau quyết định giống. Vd: gāmagato (đã đi đến làng, ĐC), Buddhadhammo (Pháp của Phật, STC), vanavāso (trú trong rừng, ĐSC).',
          ),
          FabPhraseItem(
            phrase: 'Dvanda — liên kết "và"',
            meaning:
                'Nối hai hay nhiều từ vốn nối bằng "ca". Riêng lẻ → số nhiều, giống từ cuối; tập hợp → số ít trung. Vd: candasuriyā (mặt trăng và mặt trời); nāmarūpaṃ (danh-sắc).',
          ),
          FabPhraseItem(
            phrase: 'Bahubbīhi — ngoại chủng / chỉ người mang tính chất',
            meaning:
                'Toàn hợp từ CHỈ MỘT ĐỐI TƯỢNG KHÁC (thường là người) có tính chất được các thành phần mô tả; lấy giống của đối tượng ngầm ẩn. Vd: pītambaro (người mặc áo vàng = tỳ-khưu); diṭṭhadhammo (bậc đã thấy Pháp = Thánh nhân); nittaṇho (đã lìa ái = A-la-hán).',
          ),
          FabPhraseItem(
            phrase: 'Avyayībhāva — trạng từ bất biến',
            meaning:
                'Thành phần đầu là tiếp đầu ngữ (upasagga: anu-, adhi-, upa-, a-…) hoặc bất biến từ (yathā-, yāva-, pacchā-…). Toàn hợp từ thành TRUNG-TÍNH SỐ ÍT (thêm -ṃ nếu cuối a/ā). Vd: anupubbaṃ (tuần tự), upagaṅgaṃ (ven sông), yathābalaṃ (theo sức), yāvajīvaṃ (trọn đời).',
          ),
          FabPhraseItem(
            phrase: 'Digu (số đếm hợp từ) — loại phụ của Kammadhāraya',
            meaning:
                'Thành phần đầu là số đếm; nếu chỉ một tập hợp → trung số ít: tilokaṃ (tam giới), catusaccaṃ (tứ đế), sattāhaṃ (tuần lễ = 7 ngày).',
          ),
        ],
      ),
      LessonPhase(
        phaseTypeStr: 'read_listen',
        titleVi: 'Ví dụ tiêu biểu cho từng loại Hợp từ',
        contentVi:
            'Dưới đây là các ví dụ kinh điển cho cả 5 loại hợp từ (cộng phụ loại Digu và hợp từ hỗn hợp). Học thuộc để nhận diện khi đọc câu.',
        fabVocab: _buildVocabList(),
      ),
    ],
  );
}

const String _grammarContentVi = '''
BÀI 20 — HỢP TỪ (SAMĀSA)

1) ĐỊNH NGHĨA & QUY TẮC CHUNG
   - Samāsa (Hợp từ) là từ ghép tạo bởi HAI hoặc NHIỀU từ đơn.
   - Quy tắc vàng:
     * CHỈ TỪ CUỐI CÙNG của hợp từ giữ lại các biến cách (case endings).
     * Tất cả các thành phần đứng trước (trừ vài ngoại lệ) BỎ đuôi cách,
       trở về dạng GỐC (stem/base) rồi ghép lại.
     * Các thành phần được nối với nhau theo luật Hài âm (Sandhi).
   - Pāḷi có 5 loại hợp từ chính:
       1. Kammadhāraya  — Tính từ hợp từ
       2. Tappurisa     — Biến cách hợp từ (cách 2 → cách 7)
       3. Dvanda        — Danh từ hợp từ (liên kết "và")
       4. Bahubbīhi     — Thuộc ngữ hợp từ (chỉ đối tượng khác)
       5. Avyayībhāva   — Trạng từ hợp từ (bất biến hóa)

2) LOẠI 1 — KAMMADHĀRAYA (Tính từ hợp từ / Đồng vị hợp từ)
   - Thành lập khi từ trước là:
       (a) một TÍNH TỪ bổ nghĩa cho danh từ sau;
       (b) một DANH TỪ ĐỒNG VỊ (cùng chỉ một đối tượng);
       (c) một BẤT BIẾN TỪ mang nghĩa tính từ (như su- "tốt/lành",
           na-/a-/an- "bất/không/phi").
   - Đôi khi tính từ đứng SAU danh từ.
   - Ví dụ:
       * taruṇapuriso    = taruṇa (trẻ) + puriso (người nam) → thanh niên.
       * taruṇakaññā     = thiếu nữ trẻ.
       * taruṇaphalaṃ    = trái non.
       * mukhacando      = mukha (mặt) + cando (trăng) → "mặt như trăng"
                           (nguyệt diện; từ sau là ẩn dụ bổ nghĩa).
       * sīladhanaṃ      = sīla (giới) + dhanaṃ (của) → "của cải là giới"
                           (giới sản; từ trước là chủ thể, từ sau là thuật vị).
       * sujano          = su (tốt) + jano (người) → thiện nam, người tốt.
       * akusalaṃ        = a (bất-) + kusalaṃ (thiện) → bất thiện; na +
                           phụ âm → a; na + nguyên âm → an-:
                           a-n-asso = anasso (không phải ngựa = con la);
                           a-manusso = amanusso (phi nhân = phi nhân/quỷ thần).
       * sumedhapaṇḍito  = Sumedha (riêng) + paṇḍito (bậc trí) → bậc trí
                           Sumedha (đồng vị).
   - Phụ loại: DIGU SAMĀSA (Số đếm hợp từ)
       + Từ đứng đầu là số đếm; khi chỉ một TẬP HỢP/TOÀN BỘ → trung-số ít:
           dvi-aṅguli → dvaṅgulaṃ (2 ngón [đo]);
           ti-loka   → tilokaṃ  (tam giới);
           catur-disā → catuddisaṃ (tứ phương);
           catu-sacca → catusaccaṃ (tứ đế);
           satta-aha  → sattāhaṃ  (bảy ngày = tuần lễ).
       + Khi không hàm ý tập hợp, thường giữ giống/số thông thường:
           ekaputto (con một, nam); tibhavā (tam hữu, số nhiều);
           catuddisā (bốn phương, số nhiều).

3) LOẠI 2 — TAPPURISA (Biến cách hợp từ)
   - Quan hệ GIỮA HAI DANH TỪ tương ứng với một trong các cách GIÁN TIẾP
     (cách 2 → cách 7; Chủ cách và Hô cách không lập Tappurisa).
   - Từ trước lược bỏ đuôi cách, giữ ở gốc; từ sau quyết định GIỐNG/SỐ.
   - Ví dụ theo từng cách:
       * Cách 2 (Đối cách / Accusative):
           gāmagato  = gāma (làng, ĐC gāmaṃ) + gato (đã đi) → đã đi đến làng.
           sivaṃkaro = siva (phước lành) + karo (người làm) → người ban phước
                      (giữ đuôi ĐC -ṃ là một ngoại lệ).
       * Cách 3 (Sử dụng / Thể công cụ - Bổ trợ):
           Buddhadesito = Buddha + desita → được thuyết bởi Đức Phật (SDC-agent).
           asikalaho    = asinā (bằng gươm) + kalaho (trận chiến) → gươm chiến.
       * Cách 4 (Chỉ đích / CĐC — cho/để):
           lokahito = lokassa (cho thế gian) + hito (ích lợi) → lợi ích cho đời.
       * Cách 5 (Xuất xứ / XXC — từ):
           corabhayaṃ = corasmā (từ kẻ trộm) + bhayaṃ (sợ) → sự sợ kẻ trộm.
       * Cách 6 (Sở thuộc / STC — của):
           Buddhadhammo = Buddhassa (của Phật) + dhammo (Pháp) → Pháp của Phật.
       * Cách 7 (Định sở / ĐSC — tại/trong):
           vanavāso    = vane (trong rừng) + vāso (cư trú) → trú xứ trong rừng.
           antevāsiko  = ante (gần bên) + vāsiko (người trú) → vị sống gần thầy,
                        tức là đệ tử / học trò.
   - Lưu ý: vài trường hợp từ trước GIỮ đuôi cách (sivaṃkaro là ví dụ).

4) LOẠI 3 — DVANDA (Danh từ hợp từ — "và")
   - Nối hai hay nhiều từ mà nếu không ghép sẽ nối bằng tiểu từ "ca" (và).
   - Hai cách dùng:
       (a) Xem từng phần RIÊNG LẺ: hợp từ lấy số NHIỀU và GIỐNG của từ cuối.
           * candimā ca suriyo ca → candasuriyā (mặt trăng và mặt trời, nam, nhiều).
       (b) Xem như một TẬP HỢP TOÀN THỂ: lấy TRUNG-TÍNH SỐ ÍT.
           * nāmañca rūpañca → nāmarūpaṃ (danh-sắc, một tập hợp).
           * sukhañca dukkhañca → sukhadukkhaṃ (lạc-khổ).
           * hatthi gavo assā → hatthigavāssaṃ (voi-bò-ngựa = thú bốn chân).
   - Từ ít âm tiết hơn thường đứng trước.

5) LOẠI 4 — BAHUBBĪHI (Thuộc ngữ / ngoại chủng)
   - Đặc điểm chính: TOÀN HỢP TỪ CHỈ MỘT ĐỐI TƯỢNG HOÀN TOÀN KHÁC với những
     gì các thành phần nói lên. Hợp từ hoạt động như một tính từ chỉ người/vật
     SỞ HỮU tính chất đó; lấy GIỐNG của đối tượng ngầm ẩn (thường là "người" →
     nam tính, trừ khi ngữ cảnh nói khác).
   - Ví dụ:
       * pītambara = pīta (vàng) + ambara (y phục) → người MẶC y phục vàng
         → vị tỳ-khưu (chính hợp từ không phải "y phục vàng" — đó là nghĩa
         của từ ghép, nhưng trong Pāḷi đây chỉ người mặc y).
       * āgatasamaṇa = āgata (đã đến) + samaṇa (sa-môn) → nơi các sa-môn đã
         đến → tu viện (trung tính vì "nơi" là đối tượng ngầm ẩn).
       * diṭṭhadhammo = diṭṭha (đã thấy) + dhammo (Pháp) → người ĐÃ THẤY
         Pháp → bậc Thánh (Thánh nhân).
       * nittaṇho = ni (không còn, thoát) + taṇhā (ái dục) → người đã thoát
         tham ái → bậc A-la-hán.

6) LOẠI 5 — AVYAYĪBHĀVA (Trạng từ hợp từ)
   - Thành phần ĐẦU là một tiếp đầu ngữ (upasagga: anu, adhi, upa, ā, paṭi,
     abhi, ni, pari …) hoặc một bất biến từ (nipāta: yathā, yāva, pacchā …)
     không mang nghĩa tính từ, mà xác định nghĩa cho thành phần SAU.
   - Toàn bộ trở thành BẤT BIẾN TỪ; nhìn hình thức giống TRUNG-TÍNH
     CHỦ-CÁCH SỐ ÍT: thêm "-ṃ" nếu từ cuối kết thúc "-a" hoặc "-ā"; nguyên
     âm cuối dài sẽ được rút ngắn; nguyên âm ngắn thì giữ nguyên.
   - Ví dụ với tiếp đầu ngữ:
       * anu-pubba   → anupubbaṃ  (liên tục, tuần tự, dần dần)
       * adhi-itthī  → adhitthi   (về/sâu về nữ giới — -ī ngắn không thêm ṃ)
       * upa-gaṅgā   → upagaṅgaṃ (ven sông / gần sông)
       * upa-nagara  → upanagaraṃ (ngoại ô, ven thành)
   - Ví dụ với bất biến từ:
       * yathā-bala  → yathābalaṃ  (theo sức lực)
       * yathā-kama  → yathākkamaṃ (theo thứ tự)
       * yathā-vuḍḍha → yathāvuḍḍhaṃ (theo hạ lạp / thâm niên)
       * yathā-satti → yathāsatti  (theo khả năng — giữ -i)
       * yāva-attha  → yāvadatthaṃ (đúng như ý muốn, vừa đủ)
       * yāva-jīva   → yāvajīvaṃ   (trọn đời)
       * pacchā-bhatta → pacchābhattaṃ (sau bữa ăn = buổi chiều)

7) HỢP TỪ HỖN HỢP (Mixed Compounds)
   - Một hợp từ đã tạo thành lại có thể ghép thêm từ đơn hay hợp từ khác.
   - Ví dụ:
       setaṃ + vatthaṃ        → setavatthaṃ     (vải trắng)          [Kammadhāraya]
       pituno + setavatthaṃ   → pitusetavatthaṃ (vải trắng của cha) [Tappurisa]

       puttā + ca dhītaro ca  → puttadhītaro   (các con trai gái)    [Dvanda]
       mahantāni + gharāni    → mahāgharāni    (nhà lớn)           [Kammadhāraya]
       puttadhītānaṃ mahāgharāni → puttadhītumahāgharāni (nhà lớn
         của các con trai gái) [Tappurisa + Dvanda + Kammadhāraya]

8) MẸO NHẬN DIỆN NHANH KHI ĐỌC KINH
   a) Nếu từ đầu là "su-/a-/an-/ku-" (tốt/xấu/phi) → rất có thể là Kammadhāraya.
   b) Nếu từ đầu ở gốc (không có cách nào khớp) nhưng từ sau mang nghĩa hành động
      hoặc có đuôi "-ka/-ika/-in" → kiểm tra Tappurisa.
   c) Hai danh từ cùng loạt ("mặt trăng và mặt trời") → Dvanda.
   d) Hợp từ kết thúc bằng một tính từ (đặc biệt "-in/-a/-ī") mà từ điển dịch là
      "người có…" → Bahubbīhi.
   e) Bắt đầu bằng yathā-/yāva-/anu-/upa-/adhi-/pacchā- và trông như trạng từ
      → Avyayībhāva.
''';

List<FabVocabItem> _buildVocabList() {
  return const [
    // --- Kammadhāraya (Tính từ / đồng vị / Digu) ---
    FabVocabItem(
      wordEn: 'taruṇapuriso',
      pronunciation: 'ta-ru-ṇa-pu-ri-so',
      wordVi: 'thanh niên, người đàn ông trẻ (taruṇa+purisa) — KAMMADHĀRAYA',
      partOfSpeech: 'm. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'taruṇakaññā',
      pronunciation: 'ta-ru-ṇa-kañ-ñaa',
      wordVi: 'cô gái trẻ, thiếu nữ trẻ — KAMMADHĀRAYA (f.)',
      partOfSpeech: 'f. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'taruṇaphalaṃ',
      pronunciation: 'ta-ru-ṇa-pha-laṃ',
      wordVi: 'trái non, trái cây còn trẻ — KAMMADHĀRAYA (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'mukhacando',
      pronunciation: 'mu-kha-can-do',
      wordVi: 'nguyệt diện (mặt như trăng) — KAMMADHĀRAYA (m.)',
      partOfSpeech: 'm. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'sīladhanaṃ',
      pronunciation: 'sii-la-dha-naṃ',
      wordVi: 'giới sản (giới là của cải) — KAMMADHĀRAYA (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'sujano',
      pronunciation: 'su-ja-no',
      wordVi: 'thiện nam, người tốt (su+jana) — KAMMADHĀRAYA (m.)',
      partOfSpeech: 'm. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'akusalaṃ',
      pronunciation: 'a-ku-sa-laṃ',
      wordVi: 'bất thiện (a+kusala) — KAMMADHĀRAYA (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'anasso',
      pronunciation: 'a-nas-so',
      wordVi: 'không phải ngựa → con la (an+assa) — KAMMADHĀRAYA (m.)',
      partOfSpeech: 'm. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'amanusso',
      pronunciation: 'a-ma-nus-so',
      wordVi: 'phi nhân, không phải người → quỷ thần (a+manussa) — KAMMADHĀRAYA (m.)',
      partOfSpeech: 'm. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'sumedhapaṇḍito',
      pronunciation: 'su-me-dha-paṇ-ḍi-to',
      wordVi: 'bậc trí Sumedha (đồng vị) — KAMMADHĀRAYA (m.)',
      partOfSpeech: 'm. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'tilokaṃ',
      pronunciation: 'ti-lo-kaṃ',
      wordVi: 'tam giới (ba thế giới, tập hợp) — DIGU (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'catusaccaṃ',
      pronunciation: 'ca-tu-sac-caṃ',
      wordVi: 'tứ Thánh đế (bốn sự thật, tập hợp) — DIGU (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'catuddisaṃ',
      pronunciation: 'ca-tud-di-saṃ',
      wordVi: 'tứ phương (bốn hướng, tập hợp) — DIGU (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'sattāhaṃ',
      pronunciation: 'sat-taahaṃ',
      wordVi: 'tuần lễ (bảy ngày) — DIGU (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'ekaputto',
      pronunciation: 'e-ka-put-to',
      wordVi: 'con một (chỉ một người con) — DIGU / KAMMADHĀRAYA (m.)',
      partOfSpeech: 'm. (samāsa)',
    ),
    // --- Tappurisa (Biến cách) ---
    FabVocabItem(
      wordEn: 'gāmagato',
      pronunciation: 'gaa-ma-ga-to',
      wordVi: 'đã đi đến làng (ĐC) — TAPPURISA (m.)',
      partOfSpeech: 'm. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'Buddhadesito',
      pronunciation: 'bud-dha-de-si-to',
      wordVi: 'được thuyết bởi Đức Phật (SDC/Bổ-trợ-cách tác tử) — TAPPURISA (m.)',
      partOfSpeech: 'm. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'asikalaho',
      pronunciation: 'a-si-ka-la-ho',
      wordVi: 'trận gươm (SDC — bằng gươm) — TAPPURISA (m.)',
      partOfSpeech: 'm. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'lokahito',
      pronunciation: 'lo-ka-hi-to',
      wordVi: 'lợi ích cho đời (CĐC) — TAPPURISA (m.)',
      partOfSpeech: 'm. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'corabhayaṃ',
      pronunciation: 'co-ra-bha-yaṃ',
      wordVi: 'nỗi sợ trộm cướp (XXC — sợ từ trộm) — TAPPURISA (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'Buddhadhammo',
      pronunciation: 'bud-dha-dham-mo',
      wordVi: 'Pháp của Phật (STC) — TAPPURISA (m.)',
      partOfSpeech: 'm. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'vanavāso',
      pronunciation: 'va-na-vaa-so',
      wordVi: 'cư trú trong rừng (ĐSC) — TAPPURISA (m.)',
      partOfSpeech: 'm. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'antevāsiko',
      pronunciation: 'an-te-vaa-si-ko',
      wordVi: 'đệ tử, học trò (người ở gần bên thầy) — TAPPURISA (m.)',
      partOfSpeech: 'm. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'rājabhayena',
      pronunciation: 'raa-ja-bha-ye-na',
      wordVi: 'bởi nỗi sợ vua (SDC) — TAPPURISA',
      partOfSpeech: 'samāsa',
    ),
    FabVocabItem(
      wordEn: 'mātāpitā / mātāpitaro',
      pronunciation: 'maataa-pi-ta-ro',
      wordVi: 'cha mẹ (mātā+pitaro, dạng Số nhiều đôi khi xếp Tappurisa hay Dvanda)',
      partOfSpeech: 'm. pl. (samāsa)',
    ),
    // --- Dvanda ---
    FabVocabItem(
      wordEn: 'candasuriyā',
      pronunciation: 'can-da-su-ri-yaa',
      wordVi: 'mặt trăng và mặt trời — DVANDA (m. pl.)',
      partOfSpeech: 'm. pl. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'nāmarūpaṃ',
      pronunciation: 'naa-ma-ruu-paṃ',
      wordVi: 'danh-sắc (danh và sắc, tập hợp) — DVANDA (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'sukhadukkhaṃ',
      pronunciation: 'su-kha-duk-khaṃ',
      wordVi: 'lạc khổ (sướng và khổ) — DVANDA (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'hatthigavāssaṃ',
      pronunciation: 'hat-thi-ga-vaas-saṃ',
      wordVi: 'voi, bò và ngựa (tập hợp súc vật) — DVANDA (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'puttadhītaro',
      pronunciation: 'put-ta-dhii-ta-ro',
      wordVi: 'các con trai và con gái — DVANDA (m. pl.)',
      partOfSpeech: 'm. pl. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'itthipurisā',
      pronunciation: 'it-thi-pu-ri-saa',
      wordVi: 'đàn bà và đàn ông — DVANDA (m. pl.)',
      partOfSpeech: 'm. pl. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'mañcapīṭhāni',
      pronunciation: 'mañ-ca-pii-ṭhaani',
      wordVi: 'giường và ghế (số nhiều, tập thể) — DVANDA (n. pl.)',
      partOfSpeech: 'n. pl. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'dāsadāsīhi',
      pronunciation: 'daa-sa-daa-siihi',
      wordVi: 'do các tôi trai và tớ gái — DVANDA (f./m. pl. SDC)',
      partOfSpeech: 'pl. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'bhikkhubhikkhuniyo',
      pronunciation: 'bhik-khu-bhik-khu-ni-yo',
      wordVi: 'các tỳ-khưu và tỳ-khưu-ni — DVANDA',
      partOfSpeech: 'm./f. pl.',
    ),
    // --- Bahubbīhi ---
    FabVocabItem(
      wordEn: 'pītambaro',
      pronunciation: 'pii-tam-ba-ro',
      wordVi: 'người mặc y vàng → vị tỳ-khưu — BAHUBBĪHI (m.)',
      partOfSpeech: 'm. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'diṭṭhadhammo',
      pronunciation: 'diṭ-ṭha-dham-mo',
      wordVi: 'người đã thấy Pháp → bậc Thánh (Thánh nhân) — BAHUBBĪHI (m.)',
      partOfSpeech: 'm. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'nittaṇho',
      pronunciation: 'nit-ta-ṇho',
      wordVi: 'người đã lìa tham ái → bậc A-la-hán — BAHUBBĪHI (m.)',
      partOfSpeech: 'm. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'khīṇāsavo',
      pronunciation: 'khii-ṇaa-sa-vo',
      wordVi: 'người đã tận các lậu hoặc → bậc A-la-hán — BAHUBBĪHI (m.)',
      partOfSpeech: 'm. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'saddhācetasā',
      pronunciation: 'sad-dhaa-ce-ta-saa',
      wordVi: 'có tâm thành tín (có lòng tin) — BAHUBBĪHI (pl.)',
      partOfSpeech: 'pl. (samāsa)',
    ),
    // --- Avyayībhāva ---
    FabVocabItem(
      wordEn: 'anupubbaṃ',
      pronunciation: 'a-nu-pub-baṃ',
      wordVi: 'tuần tự, dần dần — AVYAYĪBHĀVA',
      partOfSpeech: 'adv. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'upagaṅgaṃ',
      pronunciation: 'u-pa-gaṅ-gaṃ',
      wordVi: 'ven sông, gần sông — AVYAYĪBHĀVA',
      partOfSpeech: 'adv. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'upanagaraṃ',
      pronunciation: 'u-pa-na-ga-raṃ',
      wordVi: 'ngoại ô, ven thành — AVYAYĪBHĀVA',
      partOfSpeech: 'adv. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'yathābalaṃ',
      pronunciation: 'ya-thaa-ba-laṃ',
      wordVi: 'theo sức lực — AVYAYĪBHĀVA',
      partOfSpeech: 'adv. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'yathākkamaṃ',
      pronunciation: 'ya-thak-ka-maṃ',
      wordVi: 'theo thứ tự — AVYAYĪBHĀVA',
      partOfSpeech: 'adv. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'yāvajīvaṃ',
      pronunciation: 'yaa-va-jii-vaṃ',
      wordVi: 'trọn đời — AVYAYĪBHĀVA',
      partOfSpeech: 'adv. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'pacchābhattaṃ',
      pronunciation: 'pac-chaab-hat-taṃ',
      wordVi: 'sau bữa ăn, buổi chiều — AVYAYĪBHĀVA',
      partOfSpeech: 'adv. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'yathāsatti',
      pronunciation: 'ya-thaa-sat-ti',
      wordVi: 'theo khả năng — AVYAYĪBHĀVA',
      partOfSpeech: 'adv. (samāsa)',
    ),
    // --- Một số từ ghép trong Exercise 20 ---
    FabVocabItem(
      wordEn: 'dhammadānaṃ',
      pronunciation: 'dham-ma-daa-naṃ',
      wordVi: 'thí pháp (bố thí Giáo Pháp) — TAPPURISA/KAMMADHĀRAYA (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'tisaraṇaṃ',
      pronunciation: 'ti-sa-ra-ṇaṃ',
      wordVi: 'tam quy (ba nơi nương náu) — DIGU/KAMMADHĀRAYA (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'devamanussānaṃ',
      pronunciation: 'de-va-ma-nus-saanaṃ',
      wordVi: 'của chư thiên và loài người — DVANDA (m. pl. STC)',
      partOfSpeech: 'pl. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'vejjakammaṃ',
      pronunciation: 'vej-ja-kam-maṃ',
      wordVi: 'nghề y (công việc bác sĩ) — TAPPURISA (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'gāmanagaresu',
      pronunciation: 'gaa-ma-na-ga-re-su',
      wordVi: 'trong làng và thành thị — DVANDA (m. pl. ĐSC)',
      partOfSpeech: 'pl. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'pāpakammaṃ',
      pronunciation: 'paa-pa-kam-maṃ',
      wordVi: 'việc ác, nghiệp ác (pāpa+karma) — KAMMADHĀRAYA (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'sītodakaṃ',
      pronunciation: 'sii-to-da-kaṃ',
      wordVi: 'nước lạnh (sīta+udaka) — KAMMADHĀRAYA (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'uṇhodakaṃ',
      pronunciation: 'u-ṇho-da-kaṃ',
      wordVi: 'nước nóng (uṇha+udaka) — KAMMADHĀRAYA (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'saddhādhanaṃ',
      pronunciation: 'sad-dhaa-dha-naṃ',
      wordVi: 'đức tin là của cải (tín sản) — KAMMADHĀRAYA (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'paññādhanaṃ',
      pronunciation: 'pañ-ñaa-dha-naṃ',
      wordVi: 'tuệ sản (trí tuệ là của cải) — KAMMADHĀRAYA (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'mettacittena',
      pronunciation: 'met-ta-cit-te-na',
      wordVi: 'với tâm từ (tâm bi mẫn) — TAPPURISA/KAMMADHĀRAYA (SDC)',
      partOfSpeech: 'samāsa',
    ),
    FabVocabItem(
      wordEn: 'mahāpāsāda',
      pronunciation: 'ma-haap-paa-saa-da',
      wordVi: 'cung điện lớn, điện đài cao (mahā+pāsāda) — KAMMADHĀRAYA (m.)',
      partOfSpeech: 'm. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'samaṇadhammaṃ',
      pronunciation: 'sa-ma-ṇa-dham-maṃ',
      wordVi: 'phạm hạnh sa-môn (pháp Sa-môn) — TAPPURISA (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'upāsakopāsikānaṃ',
      pronunciation: 'u-paa-sa-ko-paa-si-kaanaṃ',
      wordVi: 'của các cận sự nam và cận sự nữ — DVANDA (pl. STC)',
      partOfSpeech: 'pl. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'kūpodakaṃ',
      pronunciation: 'kuu-po-da-kaṃ',
      wordVi: 'nước giếng (kūpa+udaka) — TAPPURISA (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'samuddodakaṃ',
      pronunciation: 'sa-mud-do-da-kaṃ',
      wordVi: 'nước biển (samudda+udaka) — TAPPURISA (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'catuppadānaṃ',
      pronunciation: 'ca-tup-pa-daanaṃ',
      wordVi: 'loài bốn chân (catu+padāna) — DIGU/TAPPURISA (n. pl.)',
      partOfSpeech: 'pl. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'aṭṭhasīlaṃ',
      pronunciation: 'aṭ-ṭha-sii-laṃ',
      wordVi: 'bát giới (tám giới) — DIGU (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'maccubhayaṃ',
      pronunciation: 'mac-cu-bha-yaṃ',
      wordVi: 'sợ chết (maccu+bhaya) — TAPPURISA (n.)',
      partOfSpeech: 'n. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'Sabbaññubuddho',
      pronunciation: 'sab-bañ-ñu-bud-dho',
      wordVi: 'Đức Phật Toàn Giác (sabbaññu+Buddha — đồng vị / KAMMADHĀRAYA)',
      partOfSpeech: 'm. (samāsa)',
    ),
    // --- Từ đơn cần cho bài tập ---
    FabVocabItem(
      wordEn: 'jināti',
      pronunciation: 'ji-naa-ti',
      wordVi: 'thắng, chiến thắng',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'detha',
      pronunciation: 'de-tha',
      wordVi: 'xin hãy cho (mệnh lệnh cách, ngôi 2 nhiều, từ deti)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'bhagavā',
      pronunciation: 'bha-ga-vaa',
      wordVi: 'Thế Tôn, Thiên Nhân Sư (đức Thế Tôn)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Arahaṃ',
      pronunciation: 'a-ra-haṃ',
      wordVi: 'bậc Ứng Cúng (A-la-hán)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Sammāsambuddho',
      pronunciation: 'sam-maasam-bud-dho',
      wordVi: 'bậc Chánh Đẳng Chánh Giác',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'satthā',
      pronunciation: 'sat-thaa',
      wordVi: 'Đạo Sư, vị thầy',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'disā',
      pronunciation: 'di-saa',
      wordVi: 'phương hướng (nữ)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'pubbā',
      pronunciation: 'pub-baa',
      wordVi: 'phương đông (trước)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'dakkhiṇā',
      pronunciation: 'dak-khi-ṇaa',
      wordVi: 'phương nam (hữu / bên phải)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'paralokaṃ',
      pronunciation: 'pa-ra-lo-kaṃ',
      wordVi: 'thế giới bên kia, đời sau',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'anugacchanti',
      pronunciation: 'a-nu-gac-chan-ti',
      wordVi: 'đi theo, đi cùng',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'taruṇavejjo',
      pronunciation: 'ta-ru-ṇa-vej-jo',
      wordVi: 'thầy lang trẻ (bác sĩ trẻ) — KAMMADHĀRAYA',
      partOfSpeech: 'm. (samāsa)',
    ),
    FabVocabItem(
      wordEn: 'vicarati',
      pronunciation: 'vi-ca-ra-ti',
      wordVi: 'đi lại, du hành',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'ovāde',
      pronunciation: 'o-vaa-de',
      wordVi: 'trong lời giáo giới (ĐSC)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'ṭhatvā',
      pronunciation: 'ṭhat-vaa',
      wordVi: 'sau khi đứng (danh động từ)',
      partOfSpeech: 'indec.',
    ),
    FabVocabItem(
      wordEn: 'kiñci',
      pronunciation: 'kiñ-ci',
      wordVi: 'một chút gì đó, cái gì đó',
      partOfSpeech: 'pron.',
    ),
    FabVocabItem(
      wordEn: 'āhara',
      pronunciation: 'aa-ha-ra',
      wordVi: 'hãy đem đến (mệnh lệnh)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'ahosi',
      pronunciation: 'a-ho-si',
      wordVi: 'đã là, đã có (quá khứ của hoti)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'vasitabbaṃ',
      pronunciation: 'va-si-tab-baṃ',
      wordVi: 'cần phải ở / nên ở (bổn phận cách / gerundive)',
      partOfSpeech: 'v. (fpp.)',
    ),
    FabVocabItem(
      wordEn: 'diṭṭhapubbo',
      pronunciation: 'diṭ-ṭha-pub-bo',
      wordVi: 'đã từng thấy trước đây',
      partOfSpeech: 'adj.',
    ),
    FabVocabItem(
      wordEn: 'sutapubbo',
      pronunciation: 'su-ta-pub-bo',
      wordVi: 'đã từng nghe trước đây',
      partOfSpeech: 'adj.',
    ),
    FabVocabItem(
      wordEn: 'bhuñjamānā',
      pronunciation: 'bhuñ-ja-maa-naa',
      wordVi: 'đang thọ hưởng (hiện tại phân từ)',
      partOfSpeech: 'adj./v.',
    ),
    FabVocabItem(
      wordEn: 'tibhave',
      pronunciation: 'ti-bha-ve',
      wordVi: 'trong tam hữu (ba cõi)',
      partOfSpeech: 'm. (loc.)',
    ),
    FabVocabItem(
      wordEn: 'amaccā',
      pronunciation: 'a-mac-caa',
      wordVi: 'các đại thần (m. pl.)',
      partOfSpeech: 'm. pl.',
    ),
    FabVocabItem(
      wordEn: 'nikkhamiṃsu',
      pronunciation: 'nik-kha-miṃ-su',
      wordVi: 'họ đã ra đi',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'ahesuṃ',
      pronunciation: 'a-he-suṃ',
      wordVi: 'họ đã trở thành / đã có (quá khứ)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'pūjeyyuṃ',
      pronunciation: 'uu-jeyyuṃ',
      wordVi: 'họ nên tôn kính / cúng dường',
      partOfSpeech: 'v. (opt.)',
    ),
    FabVocabItem(
      wordEn: 'dhovanti',
      pronunciation: 'dho-van-ti',
      wordVi: '(họ) rửa (tắm)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'pāpamittehi',
      pronunciation: 'paa-pa-mit-te-hi',
      wordVi: 'với những bạn bè xấu ác (pāpa+mitta) — KAMMADHĀRAYA',
      partOfSpeech: 'pl.',
    ),
    FabVocabItem(
      wordEn: 'dippanti',
      pronunciation: 'dip-pan-ti',
      wordVi: 'chiếu sáng, tỏa sáng',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'bhātā',
      pronunciation: 'bhaa-taa',
      wordVi: 'người anh / em trai',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'atthāya',
      pronunciation: 'at-thaa-ya',
      wordVi: 'vì lợi ích, vì (CĐC)',
      partOfSpeech: 'indec./postp.',
    ),
    FabVocabItem(
      wordEn: 'mahāsattā',
      pronunciation: 'ma-haa-sat-taa',
      wordVi: 'các vị đại sĩ (mahā+satta) — KAMMADHĀRAYA',
      partOfSpeech: 'm. pl.',
    ),
    FabVocabItem(
      wordEn: 'ghaṭasmiṃ',
      pronunciation: 'gha-ṭasmiṃ',
      wordVi: 'trong cái ghè/bình',
      partOfSpeech: 'm. (loc.)',
    ),
    FabVocabItem(
      wordEn: 'siho',
      pronunciation: 'si-ho',
      wordVi: 'con sư tử',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'dhovitāni',
      pronunciation: 'dho-vi-taani',
      wordVi: 'đã được rửa (quá khứ phân từ, n. pl.)',
      partOfSpeech: 'adj.',
    ),
    FabVocabItem(
      wordEn: 'setahatthayo',
      pronunciation: 'se-ta-hat-tha-yo',
      wordVi: 'những (voi) tay trắng / các xe có ngựa trắng (seta+hattha) — KAMMADHĀRAYA',
      partOfSpeech: 'pl.',
    ),
    FabVocabItem(
      wordEn: 'nīlassā',
      pronunciation: 'nii-las-saa',
      wordVi: 'những loại vải xanh (nīla+assa?/nīla+ssā — KAMMADHĀRAYA)',
      partOfSpeech: 'pl.',
    ),
  ];
}

// ------------------------------- DAY 2 ------------------------------------

LessonDay _buildDay2() {
  return LessonDay(
    titleVi: 'Day 2 — Thực hành Mind Game & Nhận diện Hợp từ (Quiz)',
    phases: [
      LessonPhase(
        phaseTypeStr: 'mind_game',
        titleVi: 'Trò Chơi Tư Duy — Bài Tập 20 (Kinh điển)',
        contentVi:
            'Nhấn vào cụm tiếng Việt để nói to cụm Pāḷi tương ứng, rồi xem đáp án. Gạch chân các hợp từ khi đọc và cố gắng gọi tên loại hợp từ (Kammadhāraya / Tappurisa / Dvanda / Bahubbīhi / Avyayībhāva).',
        mixedSegments: _buildExerciseMixedSegments(),
      ),
      LessonPhase(
        phaseTypeStr: 'listening_quiz',
        titleVi: 'Quiz — Nhận diện loại Hợp từ',
        questions: _buildQuiz(),
        fabAnswers: _buildQuizAnswers(),
      ),
    ],
  );
}

// ---------------------------------------------------------------------------
// MIND GAME — Exercise 20 (câu kinh tiêu biểu, phân đoạn Pāḷi – Việt)
// ---------------------------------------------------------------------------
List<MixedSegment> _buildExerciseMixedSegments() {
  List<MixedSegment> sent(List<_Seg> parts, {bool quote = false}) {
    final result = <MixedSegment>[];
    if (quote) {
      result.add(const MixedSegment(text: '"', isVietnamese: false));
    }
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
    if (quote) {
      result.add(const MixedSegment(text: '".\n', isVietnamese: false));
    } else {
      result.add(const MixedSegment(text: '.\n', isVietnamese: false));
    }
    return result;
  }

  return [
    // 1. "Sabbadānaṃ dhammadānaṃ jināti."
    ...sent(const [
      _Seg('Sabbadānaṃ', 'Giữa mọi sự bố thí'),
      _Seg('dhammadānaṃ', 'sự thí pháp'),
      _Seg('jināti', 'thắng hơn / chiến thắng'),
    ], quote: true),
    // 2. "Ahaṃ te saddhiṃ puttadhītāhi dāsī bhavissāmi."
    ...sent(const [
      _Seg('Ahaṃ', 'Tôi (con)'),
      _Seg('te saddhiṃ', 'với ngài (cùng ngài)'),
      _Seg('puttadhītāhi', 'với các con trai gái'),
      _Seg('dāsī', 'nữ tì / người nữ tớ'),
      _Seg('bhavissāmi', 'sẽ trở thành / sẽ là'),
    ], quote: true),
    // 3. "Tisaraṇena saddhiṃ pañcasīlaṃ detha me bhante."
    ...sent(const [
      _Seg('Tisaraṇena saddhiṃ', 'Cùng với Tam quy'),
      _Seg('pañcasīlaṃ', 'ngũ giới'),
      _Seg('detha', 'xin hãy cho'),
      _Seg('me', 'cho con (enclitic)'),
      _Seg('bhante', 'bạch ngài'),
    ], quote: true),
    // 4. "Iti'pi so Bhagavā arahaṃ sammāsambuddho ... satthā devamanussānaṃ."
    ...sent(const [
      _Seg("Iti'pi", 'Thật vậy, Ngài'),
      _Seg('so Bhagavā', 'Đức Thế Tôn ấy'),
      _Seg('Araham', 'là bậc Ứng Cúng,'),
      _Seg('Sammāsambuddho', 'bậc Chánh Đẳng Chánh Giác,'),
      _Seg('satthā', 'là Đạo Sư'),
      _Seg('devamanussānaṃ', 'của chư thiên và nhân loại'),
    ], quote: true),
    // 5. "Mātāpitā disā pubbā, ācariyā dakkhiṇā disā."
    ...sent(const [
      _Seg('Mātāpitā', 'Cha mẹ (là)'),
      _Seg('disā pubbā', 'phương đông (phương trước)'),
      _Seg('ācariyā', 'các vị thầy (là)'),
      _Seg('dakkhiṇā disā', 'phương nam (phương hữu/hướng phải)'),
    ], quote: true),
    // 6. Paralokaṃ gacchantaṃ puttadhītaro vā ... na anugacchanti.
    ...sent(const [
      _Seg('Paralokaṃ', 'Đến đời sau / thế giới bên kia'),
      _Seg('gacchantaṃ', '(kẻ đang đi)'),
      _Seg('puttadhītaro vā', 'dù các con trai gái'),
      _Seg('bhātaro vā', 'hay các anh em'),
      _Seg('hatthigavāssaṃ vā', 'hay voi-bò-ngựa (tài sản)'),
      _Seg('na anugacchanti', 'không đi theo'),
    ]),
    // 7. Eho taruṇavejjo vejjakammaṃ karonto gāmanagaresu vicarati.
    ...sent(const [
      _Seg('Eho', 'Này'),
      _Seg('taruṇavejjo', 'thầy lang trẻ'),
      _Seg('vejjakammaṃ', 'nghề thuốc / công việc lang y'),
      _Seg('karonto', 'đang hành (làm)'),
      _Seg('gāmanagaresu', 'trong các làng và thành phố'),
      _Seg('vicarati', 'đi lại / du hành'),
    ]),
    // 9. Sītodakaṃ vā uṇhodakaṃ vā āhara.
    ...sent(const [
      _Seg('Sītodakaṃ', 'Nước lạnh hoặc'),
      _Seg('vā … uṇhodakaṃ', 'hay nước nóng'),
      _Seg('vā', ''),
      _Seg('āhara', 'hãy đem đến'),
    ]),
    // 10. Amhākaṃ Buddho pana pubbe Sumedhapaṇḍito nāma ahosi.
    ...sent(const [
      _Seg('Amhākaṃ', 'Của chúng con'),
      _Seg('Buddho', 'Đức Phật thì'),
      _Seg('pubbe', 'trước đây'),
      _Seg('Sumedhapaṇḍito', 'bậc trí tên là Sumedha'),
      _Seg('nāma', 'tên là'),
      _Seg('ahosi', 'đã là'),
    ]),
    // 11. Sattasu dhanesu saddhādhanaṃ pana paṭhamaṃ; sīladhanaṃ dutiyaṃ, paññādhanaṃ sattamaṃ.
    ...sent(const [
      _Seg('Sattasu', 'Trong bảy'),
      _Seg('dhanesu', 'loại của cải (tài sản)'),
      _Seg('saddhādhanaṃ', 'tín sản (đức tin là của)'),
      _Seg('paṭhamaṃ', 'thứ nhất'),
      _Seg('sīladhanaṃ', 'giới sản thứ hai'),
      _Seg('dutiyaṃ', ''),
      _Seg('paññādhanaṃ', 'tuệ sản (trí tuệ là của) thứ bảy'),
      _Seg('sattamaṃ', ''),
    ]),
    // 14. Itthipurisā sukhadukkhaṃ bhuñjamānā tibhave vicaranti.
    ...sent(const [
      _Seg('Itthipurisā', 'Đàn ông và đàn bà'),
      _Seg('sukhadukkhaṃ', 'lạc và khổ'),
      _Seg('bhuñjamānā', 'đang thọ hưởng'),
      _Seg('tibhave', 'trong tam giới / tam hữu'),
      _Seg('vicaranti', 'luân hồi / lang thang (đi lại)'),
    ]),
    // 15. Amaccaputtā rājabhayena mahāpāsādato nikkhamiṃsu.
    ...sent(const [
      _Seg('Amaccaputtā', 'Các hoàng tử con đại thần'),
      _Seg('rājabhayena', 'bởi nỗi sợ vua'),
      _Seg('mahāpāsādato', 'từ cung điện lớn'),
      _Seg('nikkhamiṃsu', 'đã bỏ đi / xuất hành'),
    ]),
    // 16. Mayhaṃ antevāsikesu dve brahmacārino saddhācetasā Buddhadesitaṃ dhammaṃ sutvā samaṇadhammaṃ katvā diṭṭhadhammā ahesuṃ.
    ...sent(const [
      _Seg('Mayhaṃ', 'Của tôi'),
      _Seg('antevāsikesu', 'giữa các đệ tử'),
      _Seg('dve brahmacārino', 'hai vị phạm hạnh'),
      _Seg('saddhācetasā', 'có tâm thành tín'),
      _Seg('Buddhadesitaṃ', 'do Phật thuyết'),
      _Seg('dhammaṃ', 'Giáo Pháp'),
      _Seg('sutvā', 'sau khi đã nghe'),
      _Seg('samaṇadhammaṃ', 'phạm hạnh sa-môn'),
      _Seg('katvā', 'sau khi đã thực hành'),
      _Seg('diṭṭhadhammā', 'bậc đã thấy Pháp'),
      _Seg('ahesuṃ', 'đã trở thành'),
    ]),
    // 22. Candasuriyā ākāse dippanti.
    ...sent(const [
      _Seg('Candasuriyā', 'Mặt trăng và mặt trời'),
      _Seg('ākāse', 'trên bầu trời'),
      _Seg('dippanti', 'tỏa sáng / chiếu rọi'),
    ]),
    // 26. Siho catuppadānaṃ rājā hoti.
    ...sent(const [
      _Seg('Siho', 'Sư tử'),
      _Seg('catuppadānaṃ', 'của các loài bốn chân'),
      _Seg('rājā', 'vua'),
      _Seg('hoti', 'là'),
    ]),
    // 29. Buddhena desitaṃ catusaccaṃ bujjhitvā nittaṇho bhavāmi.
    ...sent(const [
      _Seg('Buddhena desitaṃ', 'Được Đức Phật thuyết'),
      _Seg('catusaccaṃ', 'Tứ Thánh Đế'),
      _Seg('bujjhitvā', 'sau khi chứng ngộ'),
      _Seg('nittaṇho', 'bậc đã lìa ái (A-la-hán)'),
      _Seg('bhavāmi', 'tôi trở thành'),
    ]),
    // 30. Arahantānaṃ maccubhayaṃ na atthi.
    ...sent(const [
      _Seg('Arahantānaṃ', 'Của các bậc A-la-hán'),
      _Seg('maccubhayaṃ', 'sợ chết'),
      _Seg('na atthi', 'không có'),
    ]),
    // 32. "Iminā Dhammadānena Sabbaññubuddho bhavāmi!"
    ...sent(const [
      _Seg('Iminā', 'Nhờ (bằng) sự thí pháp này'),
      _Seg('Dhammadānena', ''),
      _Seg('Sabbaññubuddho', 'một vị Phật Toàn Giác'),
      _Seg('bhavāmi', 'tôi sẽ trở thành'),
    ], quote: true),
  ];
}

class _Seg {
  final String pali;
  final String vi;
  const _Seg(this.pali, this.vi);
}

// ---------------------------------------------------------------------------
// QUIZ — 8 câu nhận diện loại Hợp từ
// ---------------------------------------------------------------------------
List<QuizQuestion> _buildQuiz() {
  return const [
    QuizQuestion(
      questionText:
          '1. Hợp từ "taruṇapuriso" (người đàn ông trẻ, thanh niên) thuộc loại nào?',
      options: [
        'A. Tappurisa (biến cách hợp từ)',
        'B. Kammadhāraya (tính từ hợp từ: taruṇa "trẻ" bổ nghĩa cho purisa "người")',
        'C. Dvanda (danh từ hợp từ)',
        'D. Avyayībhāva (trạng từ hợp từ)',
      ],
      correctIndex: 1,
    ),
    QuizQuestion(
      questionText:
          '2. Hợp từ "Buddhadhammo" (Pháp của Phật, với quan hệ sở hữu "của") thuộc loại nào?',
      options: [
        'A. Kammadhāraya',
        'B. Bahubbīhi',
        'C. Tappurisa — Sở thuộc cách (Chaṭṭhī / cách 6)',
        'D. Dvanda',
      ],
      correctIndex: 2,
    ),
    QuizQuestion(
      questionText:
          '3. Hợp từ "nāmarūpaṃ" (danh và sắc; chỉ tâm-vật, một tập hợp 5 uẩn) thuộc loại nào?',
      options: [
        'A. Dvanda — tập hợp (danh từ nối bằng "ca", trung-số ít)',
        'B. Tappurisa',
        'C. Kammadhāraya',
        'D. Bahubbīhi',
      ],
      correctIndex: 0,
    ),
    QuizQuestion(
      questionText:
          '4. Hợp từ "diṭṭhadhammo" (người ĐÃ THẤY Pháp → chỉ bậc Thánh, chứ không phải "Pháp được thấy") thuộc loại nào?',
      options: [
        'A. Kammadhāraya',
        'B. Tappurisa',
        'C. Avyayībhāva',
        'D. Bahubbīhi (toàn từ chỉ một đối tượng khác — người đã thấy Pháp)',
      ],
      correctIndex: 3,
    ),
    QuizQuestion(
      questionText:
          '5. Hợp từ "anupubbaṃ" (dần dần, tuần tự; bắt đầu bằng tiếp đầu ngữ "anu-" và trở thành trạng từ trung-số-it) thuộc loại nào?',
      options: [
        'A. Dvanda',
        'B. Avyayībhāva (trạng từ hợp từ)',
        'C. Kammadhāraya',
        'D. Bahubbīhi',
      ],
      correctIndex: 1,
    ),
    QuizQuestion(
      questionText:
          '6. Hợp từ "vanavāso" (cư trú trong rừng; quan hệ Định sở cách "trong rừng") thuộc loại nào?',
      options: [
        'A. Kammadhāraya',
        'B. Tappurisa — Định sở cách (Sattamī / cách 7)',
        'C. Dvanda',
        'D. Avyayībhāva',
      ],
      correctIndex: 1,
    ),
    QuizQuestion(
      questionText:
          '7. Hợp từ "sīladhanaṃ" (giới là của cải, giới sản — hai danh từ đồng vị: giới = của) thuộc loại nào?',
      options: [
        'A. Kammadhāraya (đồng vị / "A là B")',
        'B. Dvanda',
        'C. Tappurisa',
        'D. Bahubbīhi',
      ],
      correctIndex: 0,
    ),
    QuizQuestion(
      questionText:
          '8. Hợp từ "catusaccaṃ" (bốn sự thật → Tứ Thánh Đế; số đếm + danh từ, chỉ tập hợp, lấy trung-số-it "catusaccaṃ") là phụ loại nào thuộc Kammadhāraya?',
      options: [
        'A. Dvanda',
        'B. Tappurisa',
        'C. Digu (Số đếm hợp từ)',
        'D. Avyayībhāva',
      ],
      correctIndex: 2,
    ),
  ];
}

List<FabAnswerItem> _buildQuizAnswers() {
  return const [
    FabAnswerItem(
      vi:
          'Câu 1: B. Kammadhāraya — tính từ "taruṇa" đứng trước bổ nghĩa trực tiếp cho danh từ "purisa"; giống/số do purisa quyết định (nam số ít).',
    ),
    FabAnswerItem(
      vi:
          'Câu 2: C. Tappurisa — Chaṭṭhī (Sở thuộc / cách 6): từ trước "Buddha-" ở gốc tương ứng với Buddhassa (của Phật); từ sau dhammo quyết định giống nam.',
    ),
    FabAnswerItem(
      vi:
          'Câu 3: A. Dvanda — hai từ gốc là "nāma" và "rūpa" vốn nối bằng "ca"; khi hiểu là tập hợp (danh-sắc là một pháp tổ hợp), lấy trung-tính số ít -aṃ.',
    ),
    FabAnswerItem(
      vi:
          'Câu 4: D. Bahubbīhi — hợp từ không chỉ "Pháp được thấy" mà chỉ NGƯỜI (đối tượng khác) đã thấy Pháp, nên trở thành một tính từ bổ nghĩa cho một nhân vật ngầm = bậc Thánh.',
    ),
    FabAnswerItem(
      vi:
          'Câu 5: B. Avyayībhāva — đầu là tiếp đầu ngữ "anu-", thành phần sau bị chi phối nghĩa; toàn hợp từ thành trạng từ bất biến, có đuôi -aṃ vì "pubba" kết thúc -a.',
    ),
    FabAnswerItem(
      vi:
          'Câu 6: B. Tappurisa — Sattamī (Định sở / cách 7): "vana-" = vane (trong rừng), bổ nghĩa cho "vāso" (sự ở).',
    ),
    FabAnswerItem(
      vi:
          'Câu 7: A. Kammadhāraya — đồng vị/chủ-vị: sīla (giới) chính là dhana (của cải), dịch là "giới sản / của cải giới".',
    ),
    FabAnswerItem(
      vi:
          'Câu 8: C. Digu Samāsa — phụ loại của Kammadhāraya có số đếm làm thành phần đầu; khi chỉ tập hợp/bộ (tứ đế là một bộ), lấy trung-tính số ít (-ṃ).',
    ),
  ];
}





