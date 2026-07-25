// lesson05.dart
// ---------------------------------------------------------------------------
// Bài học số 5 — An Elementary Pāḷi Course (Nārada Mahāthera)
//
// Nội dung:
//   - Tổng hợp TÁM BIẾN CÁCH đầy đủ của Danh từ Nam tánh tận cùng "-a"
//   - Biến cách Danh từ TRUNG TÁNH (Neuter / n.) tận cùng "-a"
//       + Chỉ khác Nam tánh ở CC / HC / ĐC số nhiều — đuôi "-āni"
//   - Bảng thuật ngữ các cách trong Pāḷi:
//       Paṭhamā, Ālapana, Dutiyā, Tatiyā / Karaṇa, Catutthī,
//       Pañcamī, Chaṭṭhī, Sattamī
//   - Quy tắc Hài âm (Sandhi): Mukhaṃ + ca = mukhañca
//
// Cung cấp:
//     Lesson05Data getLesson05Data()
// Trả về Day 1 (Lý thuyết & Từ vựng) và Day 2 (Thực hành & Quiz).
// ---------------------------------------------------------------------------

// ============================ MODEL CLASSES ================================

import 'package:palineti/data/lessons/lesson_06_data.dart';

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
  final String wordEn; // Pāḷi (dictionary/root form)
  final String pronunciation;
  final String wordVi; // Nghĩa tiếng Việt
  final String partOfSpeech; // m. / n. / v. / indec. ...

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
  final String phaseTypeStr; // 'read_listen' | 'mind_game' | 'listening_quiz'
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

class Lesson05Data {
  final LessonDay day1;
  final LessonDay day2;
  const Lesson05Data({required this.day1, required this.day2});
}

// ============================ DATA: BÀI 5 ==================================

Lesson05Data getLesson05Data() {
  return Lesson05Data(
    day1: _buildDay1(),
    day2: _buildDay2(),
  );
}

// ------------------------------- DAY 1 ------------------------------------

LessonDay _buildDay1() {
  return LessonDay(
    titleVi: 'Day 1 — Lý thuyết & Từ vựng (Bài 5)',
    phases: [
      // Phase 1: Ngữ pháp
      LessonPhase(
        phaseTypeStr: 'read_listen',
        titleVi: 'Tám biến cách Nam tánh "-a" & Trung tánh "-a"',
        contentVi: _grammarContentVi,
        fabPhrases: const [
          FabPhraseItem(
            phrase: 'phalaṃ → phalā / phalāni (CC / HC / ĐC số nhiều)',
            meaning:
                'Trung tánh khác Nam tánh ở 3 cách số nhiều này; tất cả các cách còn lại GIỐNG HỆT Nam tánh "-a".',
          ),
          FabPhraseItem(
            phrase: 'CC / ĐC ít n. = -aṃ',
            meaning:
                'Số ít Trung tánh: Chủ cách và Đối cách đều có đuôi -aṃ (phal-aṃ).',
          ),
          FabPhraseItem(
            phrase: 'CC / HC / ĐC nhiều n. = -ā / -āni / -e',
            meaning:
                'CC & HC nhiều: -ā, -āni; ĐC nhiều: -e, -āni. Thường dùng -āni.',
          ),
          FabPhraseItem(
            phrase: 'Nguyên âm trước -ni, -bhi, -hi, -naṃ, -su luôn DÀI',
            meaning:
                'Vì thế ta có -ena, -esu, -ānaṃ, -ehi... (không phải -ěsu, -anaṃ).',
          ),
          FabPhraseItem(
            phrase: 'Mukhaṃ + ca = mukhañca',
            meaning:
                'Sandhi: niggahita (ṃ) trước "c" đổi thành "ñ" (mũi ngạc cứng), viết dính thành mukhañca = "và mặt / miệng".',
          ),
        ],
      ),
      // Phase 2: Từ vựng
      LessonPhase(
        phaseTypeStr: 'read_listen',
        titleVi: 'Từ vựng Bài 5 — Danh từ Trung tánh & Động từ mới',
        contentVi:
            'Toàn bộ danh từ Trung tánh "-a" và các động từ mới của Bài 5. Lưu ý: hai từ "mitta" (bạn) và "pāda" (bàn chân) có thể chia như Nam tánh HOẶC Trung tánh (m./n.).',
        fabVocab: _buildVocabList(),
      ),
    ],
  );
}

const String _grammarContentVi = '''
BÀI 5 — TỔNG HỢP 8 BIẾN CÁCH "-a" & DANH TỪ TRUNG TÁNH

1) TÁM BIẾN CÁCH DANH TỪ NAM TÁNH "-a" (phạm trù "nara" — người đàn ông)
   Số ít / Số nhiều:
   - Paṭhamā (Cách 1)  — Chủ cách (CC / Nominative):      naro   / narā
   - Ālapana           — Hô cách (HC / Vocative):          nara, narā / narā
   - Dutiyā (Cách 2)   — Đối cách (ĐC / Accusative):       naraṃ  / nare
   - Tatiyā / Karaṇa (Cách 3) — Bổ trợ / Sử dụng (SDC):    narena / narebhi, narehi
   - Catutthī (Cách 4) — Chỉ đích / Cách dữ (CĐC / Dative): narāya, narassa / narānaṃ
   - Pañcamī (Cách 5)  — Xuất xứ (XXC / Ablative):         narā, naramhā, narasmā / narebhi, narehi
   - Chaṭṭhī (Cách 6)  — Sở thuộc (STC / Genitive):        narassa / narānaṃ
   - Sattamī (Cách 7)  — Định sở (ĐSC / Locative):         nare, naramhi, narasmiṃ / naresu

   Ghi chú: Tatiyā (Bổ trợ cách) và Karaṇa (Sử dụng cách) có cùng đuôi (-ena / -ehi, -ebhi) nên trong bảng biến cách người ta thường chỉ nêu Sử dụng cách.

2) DANH TỪ TRUNG TÁNH (neuter / n.) tận cùng "-a" — phạm trù "phala" (trái cây)
   Điểm KHÁC duy nhất so với Nam tánh "-a" nằm ở 3 cách số nhiều (CC / HC / ĐC);
   TẤT CẢ các biến thể còn lại (SDC, CĐC, XXC, STC, ĐSC cả ít lẫn nhiều, và các cách số ít) ĐỀU GIỐNG HỆT Nam tánh "-a".

   Bảng nhanh:
                            Số ít (n.)          Số nhiều (n.)
   Paṭhamā (CC/Nom.)        phalaṃ              phalā, phalāni
   Ālapana  (HC/Voc.)       phala, phalā        phalā, phalāni
   Dutiyā   (ĐC/Acc.)       phalaṃ              phale, phalāni
   Còn lại (cách 3→7)       GIỐNG Nam tánh "nara"

   Qui tắc phát âm quan trọng:
   Các nguyên âm đứng trước các vĩ tố -ni, -bhi, -hi, -naṃ và -su LUÔN được kéo dài (là nguyên âm dài). Vì vậy ta có: -ena (và không phải -ĕna), -ānaṃ, -ehi, -ebhi, -esu.

3) BẢNG THUẬT NGỮ CÁC CÁCH TRONG PĀḶI (cần học thuộc)
   - Paṭhamā  (thứ 1)  = Chú cách / Nominative
   - Ālapana          = Hô cách / Vocative
   - Dutiyā   (thứ 2)  = Đối cách / Accusative
   - Tatiyā   (thứ 3)  = Bổ trợ cách / Auxiliary
   - Karaṇa           = Sử dụng cách / Instrumental
   - Catutthī (thứ 4)  = Chỉ đích cách / Dative
   - Pañcamī  (thứ 5)  = Xuất xứ cách / Ablative
   - Chaṭṭhī  (thứ 6)  = Sở thuộc cách / Genitive
   - Sattamī  (thứ 7)  = Định sở cách / Locative

4) HÀI ÂM (SANDHI): mukhaṃ + ca = mukhañca
   Khi niggahita (ṃ) đứng trước một phụ âm thuộc nhóm cổ (velar: k, kh, g, gh), răng lợi (cerebral: ṭ, ṭh, ḍ, ḍh), răng (dental: t, th, d, dh), hoặc môi (labial: p, ph, b, bh) thì ṃ đổi thành âm mũi cùng hạng với phụ âm đó:
     - trước k/kh/g/gh → ṅ (niggahita cổ)
     - trước c/ch/j/jh → ñ (mũi ngạc cứng, palatal nasal)
     - trước ṭ/ṭh/ḍ/ḍh/ṇ → ṇ
     - trước t/th/d/dh/n → n
     - trước p/ph/b/bh/m → m
   Ví dụ:
     * mukhaṃ + ca  = mukhañca (ṃ → ñ vì đứng trước c) = "và mặt / và miệng".
     * pāde ca mukhañca = "chân và mặt".
     * Tương tự: ahaṃ + api = aham'pi (ṃ → m trước p) — đã học ở Bài 4.

5) CÁCH NHẬN BIẾT DANH TỪ TRUNG TÁNH TRONG CÂU
   - Khi làm chủ ngữ / tân ngữ số nhiều, các danh từ n. thường có đuôi -āni:
       phalāni khādanti = (chúng) ăn các trái cây.
       bījāni vapanti = (họ) gieo các hạt giống.
       pupphāni = các bông hoa; potthakāni = các quyển sách.
   - Khi làm chủ ngữ / tân ngữ số ít, đuôi -aṃ (trùng với Đối cách Nam tánh số ít) — cần đoán nghĩa qua ngữ cảnh hoặc qua dạng động từ:
       phalaṃ patati = trái cây rụng (không phải "họ rụng trái cây" vì động từ số ít).
''';

List<FabVocabItem> _buildVocabList() {
  return const [
    // ---------- Danh từ Trung tánh "-a" (n.) ----------
    FabVocabItem(
      wordEn: 'Bīja',
      pronunciation: 'bii-ja',
      wordVi: 'hạt giống, mầm',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Bhaṇḍa',
      pronunciation: 'bhaṇ-ḍa',
      wordVi: 'hàng hóa, đồ dùng, vật dụng',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Ghara',
      pronunciation: 'gha-ra',
      wordVi: 'nhà cửa, tổ ấm',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Khetta',
      pronunciation: 'khet-ta',
      wordVi: 'cánh đồng, ruộng, điền',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Lekhana',
      pronunciation: 'le-kha-na',
      wordVi: 'lá thư, bức thư, văn tự',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Mitta',
      pronunciation: 'mit-ta',
      wordVi: 'người bạn (có thể là m. hay n.)',
      partOfSpeech: 'n./m.',
    ),
    FabVocabItem(
      wordEn: 'Mukha',
      pronunciation: 'mu-kha',
      wordVi: 'khuôn mặt, miệng',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Nagara',
      pronunciation: 'na-ga-ra',
      wordVi: 'kinh thành, thành phố',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Pāda',
      pronunciation: 'paa-da',
      wordVi: 'bàn chân (có thể là m. hay n.)',
      partOfSpeech: 'n./m.',
    ),
    FabVocabItem(
      wordEn: 'Pīṭha',
      pronunciation: 'pii-ṭha',
      wordVi: 'ghế, trượng kỷ, bục ngồi',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Potthaka',
      pronunciation: 'pot-tha-ka',
      wordVi: 'cuốn sách',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Puppha',
      pronunciation: 'pup-ha',
      wordVi: 'bông hoa',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Udaka',
      pronunciation: 'u-da-ka',
      wordVi: 'nước',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Vattha',
      pronunciation: 'vat-tha',
      wordVi: 'vải vóc, y phục, quần áo',
      partOfSpeech: 'n.',
    ),
    // Thêm các danh từ Trung tánh khác xuất hiện trong Bài tập 5
    FabVocabItem(
      wordEn: 'Phala',
      pronunciation: 'pha-la',
      wordVi: 'trái cây, quả (phạm trừ Trung tánh chuẩn)',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Āhāra',
      pronunciation: 'aa-haa-ra',
      wordVi: 'thức ăn, đồ ăn',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Osadha',
      pronunciation: 'o-sa-dha',
      wordVi: 'thuốc men, dược phẩm',
      partOfSpeech: 'n.',
    ),

    // ---------- Động từ ----------
    FabVocabItem(
      wordEn: 'Bhuñjati (bhuja)',
      pronunciation: 'bhuñ-ja-ti',
      wordVi: 'ăn, thọ dụng (thường chỉ đồ ăn mềm / món đã nấu)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Khādati (khāda)',
      pronunciation: 'khaa-da-ti',
      wordVi: 'ăn, nhai, cắn (thức ăn cứng, trái cây, cơm v.v.)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Likhati (likha)',
      pronunciation: 'li-kha-ti',
      wordVi: 'viết',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Nisīdati (ni + sada)',
      pronunciation: 'ni-sii-da-ti',
      wordVi: 'ngồi (ngồi xuống)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Pūjeti (pūja)',
      pronunciation: 'uu-je-ti',
      wordVi: 'cúng dường, tôn kính, dâng cúng',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Vapati (vapa)',
      pronunciation: 'va-pa-ti',
      wordVi: 'gieo (hạt giống)',
      partOfSpeech: 'v.',
    ),
    // Động từ khác xuất hiện trong bài tập (để hỗ trợ đọc hiểu)
    FabVocabItem(
      wordEn: 'Patati (pata)',
      pronunciation: 'pa-ta-ti',
      wordVi: 'rụng, rơi',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Dhovati (dhova)',
      pronunciation: 'dho-va-ti',
      wordVi: 'rửa, tắm rửa',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Kiṇāti (kiṇa)',
      pronunciation: 'ki-ṇaa-ti',
      wordVi: 'mua',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Vikkiṇāti (vi + kiṇa)',
      pronunciation: 'vik-ki-ṇaa-ti',
      wordVi: 'bán (mua đi / bán rải)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Āharati (ā + hara)',
      pronunciation: 'aa-ha-ra-ti',
      wordVi: 'đem đến, mang đến, đem lại',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Peseti (pesa)',
      pronunciation: 'pe-se-ti',
      wordVi: 'gửi, sai phái, gởi đi',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Nikkhamati (ni + khama)',
      pronunciation: 'nik-kha-ma-ti',
      wordVi: 'ra đi, xuất hành, đi ra khỏi',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Deti (dā)',
      pronunciation: 'de-ti',
      wordVi: 'cho, ban cho, trao',
      partOfSpeech: 'v.',
    ),
  ];
}

// ------------------------------- DAY 2 ------------------------------------

LessonDay _buildDay2() {
  return LessonDay(
    titleVi: 'Day 2 — Thực hành (Mind Game) & Quiz',
    phases: [
      // Phase 1: Mind Game — Exercise 5
      LessonPhase(
        phaseTypeStr: 'mind_game',
        titleVi: 'Trò Chơi Tư Duy — Bài Tập 5',
        contentVi:
            'Nhấn vào cụm tiếng Việt để nói to cụm Pāḷi tương ứng, rồi nhấn lại để xem đáp án. Chú ý các dạng số nhiều Trung tánh đuôi "-āni".',
        mixedSegments: _buildExerciseMixedSegments(),
      ),
      // Phase 2: Quiz
      LessonPhase(
        phaseTypeStr: 'listening_quiz',
        titleVi: 'Quiz — Kiểm tra kiến thức Bài 5',
        questions: _buildQuiz(),
        fabAnswers: const [
          FabAnswerItem(
              vi:
                  'Câu 1: Đuôi số nhiều Chủ/Hô/Đối cách của Trung tánh là "-āni" (cùng với dạng thay thế -ā cho CC/HC và -e cho ĐC).'),
          FabAnswerItem(
              vi:
                  'Câu 2: Sattamī (thứ 7) là ĐỊNH SỞ CÁCH (Locative), chỉ nơi chốn ("trong, trên, tại").'),
          FabAnswerItem(
              vi:
                  'Câu 3: Danh từ Trung tánh "-a" KHÁC Nam tánh duy nhất ở CC / HC / ĐC số nhiều; tất cả các cách còn lại (SDC, CĐC, XXC, STC, ĐSC) GIỐNG HỆT Nam tánh.'),
          FabAnswerItem(
              vi:
                  'Câu 4: "Mukhaṃ + ca = mukhañca" — niggahita (ṃ) trước phụ âm "c" (nhóm ngạc cứng) đổi thành "ñ", rồi hai từ viết dính liền.'),
          FabAnswerItem(
              vi:
                  'Câu 5: Karaṇa là SỬ DỤNG CÁCH (Instrumental, cách 3), chỉ phương tiện/do/bằng; có đuôi -ena (ít), -ehi / -ebhi (nhiều).'),
        ],
      ),
    ],
  );
}

// ---------------------------------------------------------------------------
// MIND GAME — EXERCISE 5 (15 câu tiêu biểu)
// Mỗi cụm Pāḷi luôn hiện; cụm tiếng Việt là chip bấm hiện/ẩn đáp án Pāḷi.
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
    // 1. Sakuṇā phalāni khādanti.
    ...sent(const [
      _Seg('Sakuṇā', 'Những con chim'),
      _Seg('phalāni', 'các trái cây'),
      _Seg('khādanti', '(chúng) ăn / cắn'),
    ]),
    // 2. Mayaṃ pīṭhesu nisīdāma, mañcesu supāma.
    ...sent(const [
      _Seg('Mayaṃ', 'Chúng tôi'),
      _Seg('pīṭhesu', 'trên các ghế'),
      _Seg('nisīdāma,', '(chúng tôi) ngồi,'),
      _Seg('mañcesu', 'trên các giường'),
      _Seg('supāma.', '(chúng tôi) ngủ.'),
    ]),
    // 4. Phalāni rukkhehi patanti.
    ...sent(const [
      _Seg('Phalāni', 'Những trái cây'),
      _Seg('rukkhehi', 'từ các cội cây'),
      _Seg('patanti', '(chúng) rụng / rơi'),
    ]),
    // 5. Kassakā khettesu bījāni vapanti.
    ...sent(const [
      _Seg('Kassakā', 'Những người nông dân'),
      _Seg('khettesu', 'trên các cánh đồng'),
      _Seg('bījāni', 'các hạt giống'),
      _Seg('vapanti', '(họ) gieo'),
    ]),
    // 6. Sabbadā mayaṃ udakena pāde ca mukhañca dhovāma.
    ...sent(const [
      _Seg('Sabbadā', 'Hằng ngày'),
      _Seg('mayaṃ', 'chúng tôi'),
      _Seg('udakena', 'bằng nước'),
      _Seg('pāde ca', '(các) bàn chân và'),
      _Seg('mukhañca', 'và mặt (mukhaṃ+ca)'),
      _Seg('dhovāma.', '(chúng tôi) rửa.'),
    ]),
    // 7. Sissā ācariyānaṃ lekhanāni likhanti.
    ...sent(const [
      _Seg('Sissā', 'Các đệ tử'),
      _Seg('ācariyānaṃ', '(cho) các vị thầy'),
      _Seg('lekhanāni', 'các lá thư'),
      _Seg('likhanti.', '(họ) viết.'),
    ]),
    // 9. Dāso taḷākasmiṃ vatthāni dhovati.
    ...sent(const [
      _Seg('Dāso', 'Người tớ / kẻ nô lệ'),
      _Seg('taḷākasmiṃ', 'tại cái ao'),
      _Seg('vatthāni', 'quần áo / vải vóc'),
      _Seg('dhovati.', '(anh ta) giặt / rửa.'),
    ]),
    // 10. So pupphehi Buddhaṃ pūjeti.
    ...sent(const [
      _Seg('So', 'Ông ấy'),
      _Seg('pupphehi', 'bằng các bông hoa'),
      _Seg('Buddhaṃ', 'Đức Phật'),
      _Seg('pūjeti.', '(ông ấy) cúng dường.'),
    ]),
    // 11. Kasmā tvaṃ āhāraṃ na bhuñjasi?
    ...sent(const [
      _Seg('Kasmā', 'Tại sao'),
      _Seg('tvaṃ', 'bạn / ngươi'),
      _Seg('āhāraṃ', 'thức ăn'),
      _Seg('na', 'không'),
      _Seg('bhuñjasi?', '(bạn) ăn?'),
    ]),
    // 15. Mayaṃ nagare gharāni passāma.
    ...sent(const [
      _Seg('Mayaṃ', 'Chúng tôi'),
      _Seg('nagare', 'trong thành phố'),
      _Seg('gharāni', 'các ngôi nhà'),
      _Seg('passāma.', '(chúng tôi) thấy.'),
    ]),
    // 18. Mittaṃ ācariyassa potthakaṃ pūjeti.
    ...sent(const [
      _Seg('Mittaṃ', 'Người bạn'),
      _Seg('ācariyassa', '(cho) vị thầy'),
      _Seg('potthakaṃ', 'quyển sách'),
      _Seg('pūjeti.', '(anh ta) dâng / cúng.'),
    ]),
    // 21. Ahaṃ mittāya lekhanaṃ likhāmi.
    ...sent(const [
      _Seg('Ahaṃ', 'Tôi'),
      _Seg('mittāya', '(cho) người bạn'),
      _Seg('lekhanaṃ', 'bức thư'),
      _Seg('likhāmi.', '(tôi) viết.'),
    ]),
    // 22. Mayaṃ phalāni khādāma.
    ...sent(const [
      _Seg('Mayaṃ', 'Chúng tôi'),
      _Seg('phalāni', 'các trái cây'),
      _Seg('khādāma.', '(chúng tôi) ăn.'),
    ]),
    // 26. Puttā udakena janakassa pāde dhovanti.
    ...sent(const [
      _Seg('Puttā', 'Các người con trai'),
      _Seg('udakena', 'bằng nước'),
      _Seg('janakassa', '(của) người cha'),
      _Seg('pāde', '(các) bàn chân'),
      _Seg('dhovanti.', '(họ) rửa.'),
    ]),
    // 30. Ahaṃ dāsena potthakāni gharaṃ pesemi.
    ...sent(const [
      _Seg('Ahaṃ', 'Tôi'),
      _Seg('dāsena', 'nhờ người tớ'),
      _Seg('potthakāni', 'các quyển sách'),
      _Seg('gharaṃ', '(về) nhà'),
      _Seg('pesemi.', '(tôi) gởi.'),
    ]),
  ];
}

class _Seg {
  final String pali;
  final String vi;
  const _Seg(this.pali, this.vi);
}

// ---------------------------------------------------------------------------
// QUIZ — 5 câu trắc nghiệm
// Chủ đề:
//   1. Đuôi "-āni" của Trung tánh số nhiều (CC/HC/ĐC).
//   2. Đặt tên thuật ngữ Pāḷi cho các cách (Paṭhamā … Sattamī).
//   3. Sự giống / khác giữa biến cách Nam và Trung.
//   4. Sandhi mukhaṃ + ca = mukhañca.
//   5. Nhận diện Karaṇa (Sử dụng cách).
// ---------------------------------------------------------------------------
List<QuizQuestion> _buildQuiz() {
  return const [
    QuizQuestion(
      questionText:
          '1. Đuôi số nhiều Chủ cách (CC) / Hô cách (HC) / Đối cách (ĐC) của các danh từ Trung tánh "-a" (vd. phala, bīja, puppha) là dạng nào?',
      options: [
        'A. -ā / -ā / -e (giống hệt Nam tánh)',
        'B. -e / -e / -āni',
        'C. -ā hoặc -āni (CC/HC) và -e hoặc -āni (ĐC); dạng thường dùng là -āni',
        'D. -ena / -ehi / -esu',
      ],
      correctIndex: 2,
    ),
    QuizQuestion(
      questionText:
          '2. Sattamī (Cách thứ 7) trong bảng thuật ngữ Pāḷi tương ứng với biến cách nào dưới đây?',
      options: [
        'A. Hô cách (Vocative) — dùng để gọi.',
        'B. Định sở cách (Locative) — chỉ nơi chốn / thời gian ("trong, trên, tại").',
        'C. Xuất xứ cách (Ablative) — nghĩa "từ".',
        'D. Sở thuộc cách (Genitive) — nghĩa "của".',
      ],
      correctIndex: 1,
    ),
    QuizQuestion(
      questionText:
          '3. Phát biểu nào ĐÚNG về sự khác nhau giữa biến cách Nam tánh và Trung tánh "-a"?',
      options: [
        'A. Trung tánh khác Nam tánh ở TẤT CẢ các cách, cả ít lẫn nhiều.',
        'B. Trung tánh và Nam tánh giống hệt nhau hoàn toàn; chỉ khác nghĩa từ.',
        'C. Trung tánh chỉ khác Nam tánh ở 3 cách số nhiều: CC, HC và ĐC (đuôi -āni); TẤT CẢ các cách còn lại GIỐNG HỆT Nam tánh.',
        'D. Trung tánh không có đuôi -esu ở Định sở cách số nhiều.',
      ],
      correctIndex: 2,
    ),
    QuizQuestion(
      questionText:
          '4. Tại sao "mukhaṃ + ca" lại trở thành "mukhañca" theo luật Hài âm (Sandhi)?',
      options: [
        'A. Niggahita (ṃ) luôn đổi thành "y" khi trước phụ âm.',
        'B. Niggahita (ṃ) trước phụ âm nhóm ngạc cứng (c, ch, j, jh) đổi thành "ñ" (mũi ngạc cứng), sau đó hai từ viết dính thành một.',
        'C. "ca" luôn đổi thành "ñca" sau mọi nguyên âm.',
        'D. Nguyên âm "a" của "mukha" được kéo dài thành "ā" rồi thêm "ña".',
      ],
      correctIndex: 1,
    ),
    QuizQuestion(
      questionText:
          '5. Karaṇa là tên Pāḷi của cách nào? Đuôi số ít / số nhiều là gì?',
      options: [
        'A. Chủ cách (Nominative) — đuôi -o / -ā.',
        'B. Sử dụng cách (Instrumental) — đuôi -ena (ít) / -ehi, -ebhi (nhiều); nghĩa "bằng, do, nhờ, với".',
        'C. Cách dữ (Dative) — đuôi -āya / -ānaṃ.',
        'D. Hô cách (Vocative) — đuôi -a, -ā / -ā.',
      ],
      correctIndex: 1,
    ),
  ];
}
