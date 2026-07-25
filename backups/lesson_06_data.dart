// lesson06.dart
// ---------------------------------------------------------------------------
// Bài học số 6 — An Elementary Pāḷi Course (Nārada Mahāthera)
//
// Nội dung:
//   - Tám biến cách Danh từ NỮ TÁNH tận cùng "-ā" (phạm trù "kaññā" — thiếu nữ).
//   - Lưu ý: Mọi danh từ tận cùng "-ā" đều là Nữ tánh, NGOẠI TRỪ "sā" (m.) = con chó.
//   - Động từ NGUYÊN THỂ (Infinitive): thêm tiếp vĩ ngữ "-tuṃ" vào gốc;
//       nếu gốc tận cùng "-a" → thường đổi thành "-i": paca+tuṃ = pacituṃ.
//   - Bảng động từ (Verbal Table) với các gốc: disa, gaha, gamu, hū, isu,
//       kara, lapa, ñā (jāna), nahā, pā, ruha, ṭhā — cùng dạng nguyên thể.
//
// Cung cấp:
//     Lesson06Data getLesson06Data()
// Trả về Day 1 (Lý thuyết & Từ vựng) và Day 2 (Thực hành & Quiz).
// ---------------------------------------------------------------------------

// ============================ MODEL CLASSES ================================

import 'package:palineti/data/lessons/lesson_09_data.dart';

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
  final String wordEn; // Pāḷi
  final String pronunciation;
  final String wordVi; // Nghĩa tiếng Việt
  final String partOfSpeech; // f. / m. / n. / v. / inf. / indec.

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

class Lesson06Data {
  final LessonDay day1;
  final LessonDay day2;
  const Lesson06Data({required this.day1, required this.day2});
}

// ============================ DATA: BÀI 6 ==================================

Lesson06Data getLesson06Data() {
  return Lesson06Data(
    day1: _buildDay1(),
    day2: _buildDay2(),
  );
}

// ------------------------------- DAY 1 ------------------------------------

LessonDay _buildDay1() {
  return LessonDay(
    titleVi: 'Day 1 — Lý thuyết & Từ vựng (Bài 6)',
    phases: [
      // Phase 1: Ngữ pháp
      LessonPhase(
        phaseTypeStr: 'read_listen',
        titleVi: 'Ngữ pháp: Danh từ Nữ tánh "-ā" & Động từ Nguyên thể',
        contentVi: _grammarContentVi,
        fabPhrases: const [
          FabPhraseItem(
            phrase: 'kaññā / kaññe / kaññaṃ (số ít CC / HC / ĐC)',
            meaning: 'thiếu nữ / Này thiếu nữ! / thiếu nữ (tân ngữ).',
          ),
          FabPhraseItem(
            phrase: 'kaññā, kaññāyo (CC/HC/ĐC số nhiều)',
            meaning: 'Ba cách đầu số nhiều đều có dạng: -ā, -āyo.',
          ),
          FabPhraseItem(
            phrase: 'kaññāya (SDC/XXC/CĐC/STC ít) — kaññāya, kaññāyaṃ (ĐSC ít)',
            meaning:
                'Một đuôi -āya cho SDC, XXC, CĐC, STC số ít; ĐSC ít có thêm dạng -āyaṃ.',
          ),
          FabPhraseItem(
            phrase: 'paca + tuṃ → pacituṃ (nấu)',
            meaning:
                'Gốc tận cùng "-a" đổi thành "-i" khi thêm "-tuṃ": nguyên thể chỉ mục đích / ý muốn.',
          ),
          FabPhraseItem(
            phrase: 'X icchati + inf. → "muốn làm X"',
            meaning:
                'Động từ "icchati" (muốn) đi với nguyên thể để diễn tả ý muốn: gantuṃ icchāmi = tôi muốn đi.',
          ),
        ],
      ),
      // Phase 2: Từ vựng
      LessonPhase(
        phaseTypeStr: 'read_listen',
        titleVi: 'Từ vựng Bài 6 — Danh từ Nữ tánh "-ā" & Động từ Nguyên thể',
        contentVi:
            'Học thuộc các danh từ Nữ tánh tận cùng "-ā" (ngoại trừ "sā" = con chó là Nam tánh) và các dạng nguyên thể (inf.) trong Bảng Động từ.',
        fabVocab: _buildVocabList(),
      ),
    ],
  );
}

const String _grammarContentVi = '''
BÀI 6 — DANH TỪ NỮ TÁNH "-ā" & ĐỘNG TỪ NGUYÊN THỂ

1) TÁM BIẾN CÁCH DANH TỪ NỮ TÁNH TẬN CÙNG "-ā" — phạm trù "kaññā" (thiếu nữ)

   Số ít (sg.) / Số nhiều (pl.):
   - Paṭhamā — Chủ cách (CC / Nom.):    kaññā        / kaññā, kaññāyo
   - Ālapana — Hô cách (HC / Voc.):     kaññe        / kaññā, kaññāyo
   - Dutiyā  — Đối cách (ĐC / Acc.):    kaññaṃ       / kaññā, kaññāyo
   - Tatiyā/Karaṇa (SDC) & Pañcamī (XXC):  kaññāya  / kaññābhi, kaññāhi
   - Catutthī (CĐC) & Chaṭṭhī (STC):    kaññāya      / kaññānaṃ
   - Sattamī — Định sở (ĐSC / Loc.):    kaññāya, kaññāyaṃ / kaññāsu

   Tóm tắt đuôi (Terminations) của "-ā" nữ tánh:
                            Số ít          Số nhiều
   CC (Nom.)               -ā              -ā, -āyo
   HC (Voc.)               -e              -ā, -āyo
   ĐC (Acc.)               -aṃ             -ā, -āyo
   SDC / XXC (Ins./Abl.)   -āya            -ābhi, -āhi
   CĐC / STC (Dat./Gen.)   -āya            -ānaṃ
   ĐSC (Loc.)              -āya, -āyaṃ     -āsu

   ⚠ LƯU Ý QUAN TRỌNG: Tất cả các danh từ tận cùng bằng "-ā" đều là NỮ TÁNH,
   NGOẠI TRỪ duy nhất từ "sā" (m.) = con chó (đực).

2) ĐỘNG TỪ NGUYÊN THỂ (Infinitive — vi: "để…", sự làm gì)

   - Được thành lập bằng cách thêm tiếp vĩ ngữ "-tuṃ" vào GỐC động từ.
   - Nếu gốc tận cùng bằng "-a" → "a" đó thường đổi thành "-i":
       * paca   + tuṃ = pacituṃ     (để nấu)
       * rakkha + tuṃ = rakkhituṃ   (để bảo vệ)
       * dā     + tuṃ = dātuṃ       (để cho / cúng dường)
       * desa   + tuṃ = desetuṃ     (để thuyết giảng)
       * kiṇa   + tuṃ = kiṇituṃ     (để mua)
       * bhuñja + tuṃ = bhuñjituṃ   (để ăn)
       * suṇa   + tuṃ = suṇituṃ, sotuṃ (để nghe)
       * pesa   + tuṃ = pesetuṃ     (để gởi)
   - Quy tắc thực hành: "-tuṃ" thường được thêm vào dạng gốc ở
     HIỆN TẠI NGÔI 3 SỐ NHIỀU (bỏ đuôi -anti / -enti / -onti).

3) BẢNG ĐỘNG TỪ (Verbal Table) — Nguyên thể các gốc thông dụng
   Gốc         Nghĩa              ht 3 nhiều  Nguyên thể
   -----------------------------------------------------------
   disa        thuyết (giảng)     desenti     desetuṃ
   disa        thấy               passanti    passituṃ
   gaha        lấy                gaṇhanti    gaṇhituṃ
   gamu        đi                 gacchanti   gantuṃ
   gamu + ā    đến / trở về       āgacchanti  āgantuṃ
   hū          là / trở thành     honti       hotuṃ
   isu         muốn / ước         icchanti    icchituṃ
   kara        làm                karonti     kātuṃ
   lapa (saṃ-) thảo luận          sallapanti  sallapituṃ
   ñā (jāna)   biết               jānanti     ñātuṃ, jānituṃ
   nahā        tắm                nahāyanti   nahāyituṃ
   pā          uống               pivanti     pātuṃ, pivituṃ
   ruha (+ā)   đi lên / leo       āruhanti    āruhituṃ
   ṭhā         đứng               tiṭṭhanti   ṭhātuṃ

4) CÁCH DÙNG NGUYÊN THỂ TRONG CÂU
   a) Chỉ mục đích: "… để làm gì"
      - Bhariyā dārikānaṃ dātuṃ odanaṃ pacati.
        = Người vợ nấu cơm ĐỂ cho các đứa bé gái.
      - Dārikāyo uggaṇhituṃ pāṭhasālaṃ gacchanti.
        = Các đứa bé gái đi đến trường ĐỂ học.
   b) Đứng sau động từ "icchati" (muốn): diễn tả ý muốn
      - Te gaṅgāyaṃ kīḷituṃ icchanti.
        = Họ MUỐN chơi ở sông Hằng.
      - Ahaṃ pāṭhasālaṃ gantuṃ icchāmi.
        = Tôi muốn đi đến trường.
   c) Nguyên thể đứng TRƯỚC động từ chính (giống tiếng Anh "to-V đi trước").

5) TÓM LƯỢI NHANH
   - Nữ tánh "-ā": CC ít = -ā; HC ít = -e; ĐC ít = -aṃ;
     3 cách gián tiếp ít đều -āya; ĐSC ít có thêm -āyaṃ;
     nhiều CC/HC/ĐC = -ā, -āyo; nhiều SDC/XXC = -ābhi, -āhi;
     nhiều CĐC/STC = -ānaṃ; nhiều ĐSC = -āsu.
   - Nguyên thể = gốc (+ biến âm) + tuṃ; gốc "-a" hay thành "-i".
   - Cặp mẫu mực: icchāmi gantuṃ (tôi muốn đi), sālāyaṃ nisīdati (ngồi tại sảnh đường),
     gaṅgāyaṃ nahāyituṃ gacchanti (họ đi tắm ở sông).
''';

List<FabVocabItem> _buildVocabList() {
  return const [
    // ---------- Danh từ Nữ tánh "-ā" (f.) theo Bài 6 ----------
    FabVocabItem(
      wordEn: 'Kaññā',
      pronunciation: 'kañ-ñaa',
      wordVi: 'cô gái, thiếu nữ, trinh nữ (phạm trừ bài)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Bhariyā',
      pronunciation: 'bha-ri-yaa',
      wordVi: 'người vợ, vợ',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Bhāsā',
      pronunciation: 'bhaa-saa',
      wordVi: 'ngôn ngữ, lời nói, tiếng',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Dārikā',
      pronunciation: 'daa-ri-kaa',
      wordVi: 'đứa bé gái, con gái',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Dhammasālā',
      pronunciation: 'dham-ma-saa-laa',
      wordVi: 'giảng đường, pháp đường',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Gaṅgā',
      pronunciation: 'gaṅ-gaa',
      wordVi: 'sông Hằng, dòng sông lớn',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Nāvā',
      pronunciation: 'naa-vaa',
      wordVi: 'tàu, thuyền',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Osadhasālā',
      pronunciation: 'o-sa-dha-saa-laa',
      wordVi: 'nhà thuốc, dược xá, phòng phát thuốc',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Pāḷibhāsā',
      pronunciation: 'paa-ḷi-bhaa-saa',
      wordVi: 'tiếng Pāḷi, ngôn ngữ Pāḷi',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Paññā',
      pronunciation: 'pañ-ñaa',
      wordVi: 'trí tuệ, tuệ, huệ',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Pāṭhasālā',
      pronunciation: 'paa-ṭha-saa-laa',
      wordVi: 'trường học (pāṭhasālā = nơi học đọc)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Saddhā',
      pronunciation: 'sad-dhaa',
      wordVi: 'đức tin, tín tâm, lòng tin',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Sālā',
      pronunciation: 'saa-laa',
      wordVi: 'sảnh đường, nhà rạp, gian nhà lớn',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Gilānasālā',
      pronunciation: 'gi-laa-na-saa-laa',
      wordVi: 'bệnh xá, bệnh viện (cho tỳ khưu / người bịnh)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Visikhā',
      pronunciation: 'vi-si-khaa',
      wordVi: 'con đường, đường phố; mũi tên',
      partOfSpeech: 'f.',
    ),
    // Thêm các Nữ tánh khác gặp trong bài tập
    FabVocabItem(
      wordEn: 'Assā',
      pronunciation: 'as-saa',
      wordVi: 'con ngựa cái (ngựa)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Vejjasālā',
      pronunciation: 'vej-ja-saa-laa',
      wordVi: 'trường y, nhà thương / phòng thuốc',
      partOfSpeech: 'f.',
    ),
    // Trường hợp đặc biệt
    FabVocabItem(
      wordEn: 'Sā',
      pronunciation: 'saa',
      wordVi: 'con chó (đực) — LƯU Ý: Nam tánh (m.) dù tận cùng -ā!',
      partOfSpeech: 'm.',
    ),

    // ---------- Động từ & Nguyên thể (inf.) trong Bảng Động từ ----------
    FabVocabItem(
      wordEn: 'Icchati (isu)',
      pronunciation: 'ic-cha-ti',
      wordVi: 'muốn, ước mong, mong muốn (đi với nguyên thể)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Gacchati (gamu)',
      pronunciation: 'gac-cha-ti',
      wordVi: 'đi',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Āgacchati (ā+gamu)',
      pronunciation: 'aa-gac-cha-ti',
      wordVi: 'đến, đi đến, trở lại',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Nahāyati (nahā)',
      pronunciation: 'na-haa-ya-ti',
      wordVi: 'tắm, tắm rửa',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Pivati (pā)',
      pronunciation: 'pi-va-ti',
      wordVi: 'uống',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Karoti (kara)',
      pronunciation: 'ka-ro-ti',
      wordVi: 'làm, hành động',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Jānāti (ñā)',
      pronunciation: 'jaa-naa-ti',
      wordVi: 'biết, hiểu biết',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Gaṇhāti (gaha)',
      pronunciation: 'gaṇ-haa-ti',
      wordVi: 'lấy, nắm bắt, thọ nhận',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Sallapati (saṃ+lapa)',
      pronunciation: 'sal-la-pa-ti',
      wordVi: 'thảo luận, đàm luận, chuyện trò',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Tiṭṭhati (ṭhā)',
      pronunciation: 'tiṭ-ṭha-ti',
      wordVi: 'đứng, đứng lại',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Āruhati (ā+ruha)',
      pronunciation: 'aa-ru-ha-ti',
      wordVi: 'leo lên, đi lên, bước lên',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Oruhati (ava+ruha)',
      pronunciation: 'o-ru-ha-ti',
      wordVi: 'đi xuống, bước xuống',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Harati (hara)',
      pronunciation: 'ha-ra-ti',
      wordVi: 'đem, mang, lấy đi, cầm đi',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Labhati (labha)',
      pronunciation: 'lab-bha-ti',
      wordVi: 'được, nhận được, đạt được',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Uggaṇhāti (u+gaha)',
      pronunciation: 'ug-gaṇ-haa-ti',
      wordVi: 'học, học tập, nắm vững',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Saṅgaṇhāti (saṃ+gaha)',
      pronunciation: 'saṅ-gaṇ-haa-ti',
      wordVi: 'chăm sóc, thăm hỏi, giúp đỡ, phụng dưỡng',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Nikkhamati (ni+khama)',
      pronunciation: 'nik-kha-ma-ti',
      wordVi: 'đi ra, ra đi, xuất hành',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Hoti (hū)',
      pronunciation: 'ho-ti',
      wordVi: 'là, trở thành, có mặt',
      partOfSpeech: 'v.',
    ),
    // Các dạng Nguyên thể thông dụng
    FabVocabItem(
      wordEn: 'gantuṃ',
      pronunciation: 'gan-tuṃ',
      wordVi: 'để đi (nguyên thể của gamu / gacchati)',
      partOfSpeech: 'inf.',
    ),
    FabVocabItem(
      wordEn: 'āgantuṃ',
      pronunciation: 'aa-gan-tuṃ',
      wordVi: 'để đến (nguyên thể của āgacchati)',
      partOfSpeech: 'inf.',
    ),
    FabVocabItem(
      wordEn: 'pacituṃ',
      pronunciation: 'pa-ci-tuṃ',
      wordVi: 'để nấu',
      partOfSpeech: 'inf.',
    ),
    FabVocabItem(
      wordEn: 'nahāyituṃ',
      pronunciation: 'na-haa-yi-tuṃ',
      wordVi: 'để tắm',
      partOfSpeech: 'inf.',
    ),
    FabVocabItem(
      wordEn: 'icchituṃ',
      pronunciation: 'ic-chi-tuṃ',
      wordVi: 'để muốn (thường dùng dạng chính icchati)',
      partOfSpeech: 'inf.',
    ),
    FabVocabItem(
      wordEn: 'bhuñjituṃ',
      pronunciation: 'bhuñ-ji-tuṃ',
      wordVi: 'để ăn, để thọ dụng',
      partOfSpeech: 'inf.',
    ),
    FabVocabItem(
      wordEn: 'sotuṃ / suṇituṃ',
      pronunciation: 'so-tuṃ / su-ṇi-tuṃ',
      wordVi: 'để nghe',
      partOfSpeech: 'inf.',
    ),
    FabVocabItem(
      wordEn: 'passituṃ',
      pronunciation: 'pas-si-tuṃ',
      wordVi: 'để thấy, để nhìn xem',
      partOfSpeech: 'inf.',
    ),
    FabVocabItem(
      wordEn: 'kātuṃ',
      pronunciation: 'kaa-tuṃ',
      wordVi: 'để làm',
      partOfSpeech: 'inf.',
    ),
    FabVocabItem(
      wordEn: 'dātuṃ',
      pronunciation: 'daa-tuṃ',
      wordVi: 'để cho, để cúng dường',
      partOfSpeech: 'inf.',
    ),
    FabVocabItem(
      wordEn: 'pātuṃ / pivituṃ',
      pronunciation: 'paa-tuṃ / pi-vi-tuṃ',
      wordVi: 'để uống',
      partOfSpeech: 'inf.',
    ),
    FabVocabItem(
      wordEn: 'nisīdetuṃ / nisīdituṃ',
      pronunciation: 'ni-sii-de-tuṃ',
      wordVi: 'để ngồi (xuống)',
      partOfSpeech: 'inf.',
    ),
    FabVocabItem(
      wordEn: 'kīḷituṃ',
      pronunciation: 'kii-ḷi-tuṃ',
      wordVi: 'để chơi đùa',
      partOfSpeech: 'inf.',
    ),
    FabVocabItem(
      wordEn: 'harituṃ',
      pronunciation: 'ha-ri-tuṃ',
      wordVi: 'để mang / đem',
      partOfSpeech: 'inf.',
    ),
    FabVocabItem(
      wordEn: 'labhituṃ',
      pronunciation: 'la-bhi-tuṃ',
      wordVi: 'để được / đạt',
      partOfSpeech: 'inf.',
    ),
    FabVocabItem(
      wordEn: 'likhituṃ',
      pronunciation: 'li-khi-tuṃ',
      wordVi: 'để viết',
      partOfSpeech: 'inf.',
    ),
    FabVocabItem(
      wordEn: 'desetuṃ',
      pronunciation: 'de-se-tuṃ',
      wordVi: 'để thuyết giảng',
      partOfSpeech: 'inf.',
    ),
    FabVocabItem(
      wordEn: 'pūjetuṃ',
      pronunciation: 'uu-je-tuṃ',
      wordVi: 'để cúng dường',
      partOfSpeech: 'inf.',
    ),
    FabVocabItem(
      wordEn: 'sallapituṃ',
      pronunciation: 'sal-la-pi-tuṃ',
      wordVi: 'để đàm luận, để nói chuyện',
      partOfSpeech: 'inf.',
    ),
  ];
}

// ------------------------------- DAY 2 ------------------------------------

LessonDay _buildDay2() {
  return LessonDay(
    titleVi: 'Day 2 — Thực hành (Mind Game) & Quiz',
    phases: [
      // Phase 1: Mind Game — Exercise 6
      LessonPhase(
        phaseTypeStr: 'mind_game',
        titleVi: 'Trò Chơi Tư Duy — Bài Tập 6',
        contentVi:
            'Nhấn vào cụm tiếng Việt để nói to cụm Pāḷi tương ứng; nhấn lại để xem đáp án. Chú ý dạng NỮ TÁNH "-ā" và các động từ NGUYÊN THỂ (đuôi -tuṃ).',
        mixedSegments: _buildExerciseMixedSegments(),
      ),
      // Phase 2: Quiz
      LessonPhase(
        phaseTypeStr: 'listening_quiz',
        titleVi: 'Quiz — Kiểm tra kiến thức Bài 6',
        questions: _buildQuiz(),
        fabAnswers: const [
          FabAnswerItem(
              vi: 'Câu 1: Hô cách (HC) số ít của nữ tánh "-ā" là đuôi "-e": kaññe = "Này thiếu nữ!"; số nhiều CC/HC/ĐC là -ā, -āyo.'),
          FabAnswerItem(
              vi: 'Câu 2: Nguyên thể đúng là "pacituṃ": khi thêm -tuṃ, gốc "paca" đổi "-a" cuối thành "-i" (quy tắc chuẩn cho gốc -a).'),
          FabAnswerItem(
              vi: 'Câu 3: "icchati + nguyên thể" có nghĩa "muốn (làm gì)". "Ahaṃ gantuṃ icchāmi" = "Tôi muốn đi".'),
          FabAnswerItem(
              vi: 'Câu 4: Tất cả danh từ tận cùng "-ā" đều là NỮ TÁNH, NGOẠI TRỪ một từ duy nhất "sā" (m.) = con chó.'),
          FabAnswerItem(
              vi: 'Câu 5: Định sở cách số nhiều của nữ tánh "-ā" là đuôi "-āsu": kaññāsu = "trong các cô gái / nơi các cô gái"; gaṅgāsu = "trên các sông".'),
        ],
      ),
    ],
  );
}

// ---------------------------------------------------------------------------
// MIND GAME — EXERCISE 6 (16 câu tiêu biểu)
// Mỗi cụm Pāḷi luôn hiện; cụm tiếng Việt là chip bấm hiện/ẩn answer Pāḷi.
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
    // 1. Kaññāyo gaṅgāyaṃ nahāyituṃ gacchanti.
    ...sent(const [
      _Seg('Kaññāyo', 'Những thiếu nữ'),
      _Seg('gaṅgāyaṃ', 'dưới / tại sông Hằng'),
      _Seg('nahāyituṃ', 'để tắm'),
      _Seg('gacchanti', '(họ) đi'),
    ]),
    // 2. Ahaṃ pāṭhasālaṃ gantuṃ icchāmi.
    ...sent(const [
      _Seg('Ahaṃ', 'Tôi'),
      _Seg('pāṭhasālaṃ', '(đến) trường học'),
      _Seg('gantuṃ', 'để đi'),
      _Seg('icchāmi', '(tôi) muốn'),
    ]),
    // 3. Mayaṃ Dhammaṃ sotuṃ sālāyaṃ nisīdāma.
    ...sent(const [
      _Seg('Mayaṃ', 'Chúng tôi'),
      _Seg('Dhammaṃ', 'Giáo Pháp'),
      _Seg('sotuṃ', 'để nghe'),
      _Seg('sālāyaṃ', 'tại giảng đường'),
      _Seg('nisīdāma', '(chúng tôi) ngồi'),
    ]),
    // 5. Dārikāyo saddhāya Buddhaṃ vandanti.
    ...sent(const [
      _Seg('Dārikāyo', 'Các cô bé gái'),
      _Seg('saddhāya', 'với lòng tin'),
      _Seg('Buddhaṃ', 'Đức Phật'),
      _Seg('vandanti', '(các em) đảnh lễ'),
    ]),
    // 6. Sissā idāni Pāḷibhāsāya lekhanāni likhituṃ jānanti.
    ...sent(const [
      _Seg('Sissā', 'Các đệ tử / học trò'),
      _Seg('idāni', 'bây giờ'),
      _Seg('Pāḷibhāsāya', 'bằng tiếng Pāḷi'),
      _Seg('lekhanāni', 'những lá thư'),
      _Seg('likhituṃ', 'để viết'),
      _Seg('jānanti', '(họ) biết / có thể'),
    ]),
    // 7. Narā paññaṃ labhituṃ bhāsāyo uggaṇhanti.
    ...sent(const [
      _Seg('Narā', 'Người ta / các người đàn ông'),
      _Seg('paññaṃ', 'trí tuệ'),
      _Seg('labhituṃ', 'để đạt được'),
      _Seg('bhāsāyo', 'các ngôn ngữ'),
      _Seg('uggaṇhanti', '(họ) học hỏi / nắm bắt'),
    ]),
    // 8. Kaññe, kuhiṃ tvaṃ pupphāni harituṃ icchasi?
    ...sent(const [
      _Seg('Kaññe,', 'Này thiếu nữ,'),
      _Seg('kuhiṃ', 'đâu'),
      _Seg('tvaṃ', 'bạn / cô'),
      _Seg('pupphāni', 'các bông hoa'),
      _Seg('harituṃ', 'để mang / đem'),
      _Seg('icchasi?', '(cô) muốn?'),
    ]),
    // 11. Sā ācariyassa bhariyā hoti.
    ...sent(const [
      _Seg('Sā', 'Bà ấy / Cô ấy'),
      _Seg('ācariyassa', '(của) vị thầy'),
      _Seg('bhariyā', '(là) người vợ'),
      _Seg('hoti', 'là / trở thành'),
    ]),
    // 13. Narā bhariyānaṃ dātuṃ āpaṇehi vatthāni kiṇanti.
    ...sent(const [
      _Seg('Narā', 'Những người đàn ông'),
      _Seg('bhariyānaṃ', '(cho) những người vợ'),
      _Seg('dātuṃ', 'để cho'),
      _Seg('āpaṇehi', 'từ các cửa hàng / chợ'),
      _Seg('vatthāni', 'quần áo / vải vóc'),
      _Seg('kiṇanti', '(họ) mua'),
    ]),
    // 14. Dārikā gharaṃ gantuṃ maggaṃ na jānāti.
    ...sent(const [
      _Seg('Dārikā', 'Đứa bé gái'),
      _Seg('gharaṃ', '(đến) nhà'),
      _Seg('gantuṃ', 'để đi'),
      _Seg('maggaṃ', 'đường đi'),
      _Seg('na', 'không'),
      _Seg('jānāti', '(em) biết'),
    ]),
    // 16. Gilānā gharāni gantuṃ osadhasālāya nikkhamanti.
    ...sent(const [
      _Seg('Gilānā', 'Những người bịnh'),
      _Seg('gharāni', '(về) những căn nhà'),
      _Seg('gantuṃ', 'để đi'),
      _Seg('osadhasālāya', 'khỏi nhà thuốc'),
      _Seg('nikkhamanti', '(họ) ra đi / xuất hành'),
    ]),
    // 17. Mayaṃ ācariyehi saddhiṃ pāḷibhāsāya sallapāma.
    ...sent(const [
      _Seg('Mayaṃ', 'Chúng tôi'),
      _Seg('ācariyehi saddhiṃ', 'với các vị thầy'),
      _Seg('pāḷibhāsāya', 'bằng tiếng Pāḷi'),
      _Seg('sallapāma', '(chúng tôi) đàm luận'),
    ]),
    // 20. Paññaṃ ca saddhaṃ ca labhituṃ mayaṃ Dhammaṃ suṇāma.
    ...sent(const [
      _Seg('Paññaṃ ca', 'Trí tuệ và'),
      _Seg('saddhaṃ ca', 'và đức tin'),
      _Seg('labhituṃ', 'để đạt được'),
      _Seg('mayaṃ', 'chúng tôi'),
      _Seg('Dhammaṃ', 'Giáo Pháp'),
      _Seg('suṇāma', '(chúng tôi) nghe'),
    ]),
    // 27. Dārikā saddhāya Buddhaṃ pupphehi pūjetuṃ gacchati.
    ...sent(const [
      _Seg('Dārikā', 'Cô bé gái'),
      _Seg('saddhāya', 'với lòng tin'),
      _Seg('Buddhaṃ', 'Đức Phật'),
      _Seg('pupphehi', 'bằng các bông hoa'),
      _Seg('pūjetuṃ', 'để cúng dường'),
      _Seg('gacchati', '(em) đi'),
    ]),
    // 29. Dārakā ca dārikāyo ca gaṅgāsu nahāyituṃ icchanti.
    ...sent(const [
      _Seg('Dārakā ca', 'Các bé trai và'),
      _Seg('dārikāyo ca', 'các bé gái'),
      _Seg('gaṅgāsu', 'trên các dòng sông'),
      _Seg('nahāyituṃ', 'để tắm'),
      _Seg('icchanti', '(chúng) muốn'),
    ]),
    // 36. So bhariyāya dātuṃ potthakaṃ āharati.
    ...sent(const [
      _Seg('So', 'Anh ta / Ông ấy'),
      _Seg('bhariyāya', '(cho) người vợ'),
      _Seg('dātuṃ', 'để cho'),
      _Seg('potthakaṃ', 'quyển sách'),
      _Seg('āharati', '(anh ta) đem đến'),
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
//   1. Đuôi HC số ít nữ tánh "-ā" (kaññe).
//   2. Dạng nguyên thể đúng của paca.
//   3. Cấu trúc "icchati + inf." (muốn).
//   4. Ngoại lệ duy nhất của "-ā" (sā là Nam tánh).
//   5. Đuôi ĐSC số nhiều nữ tánh "-āsu".
// ---------------------------------------------------------------------------
List<QuizQuestion> _buildQuiz() {
  return const [
    QuizQuestion(
      questionText:
          '1. Hô cách (Vocative) số ít của danh từ Nữ tánh tận cùng "-ā" (vd. kaññā) mang đuôi nào? Cụm từ dùng để gọi: "Này thiếu nữ!" là hình thức nào?',
      options: [
        'A. kaññā (đuôi -ā)',
        'B. kaññe (đuôi -e)',
        'C. kaññaṃ (đuôi -aṃ)',
        'D. kaññāya (đuôi -āya)',
      ],
      correctIndex: 1,
    ),
    QuizQuestion(
      questionText:
          '2. Dạng NGUYÊN THỂ nào sau đây là ĐÚNG của gốc "paca" (nấu)?',
      options: [
        'A. pacātuṃ',
        'B. pacatuṃ (giữ nguyên "a" cuối)',
        'C. pacituṃ ("a" cuối đổi thành "i" rồi thêm -tuṃ)',
        'D. pacitvā',
      ],
      correctIndex: 2,
    ),
    QuizQuestion(
      questionText:
          '3. Câu "Ahaṃ pāṭhasālaṃ gantuṃ icchāmi" có nghĩa gì? Cấu trúc ngữ pháp nào được dùng?',
      options: [
        'A. "Tôi đã đi học rồi" — dùng quá khứ phân từ.',
        'B. "Tôi sẽ đi học ngày mai" — dùng thì vị lai.',
        'C. "Tôi MUỐN đi đến trường" — "icchāmi" (muốn, ngôi 1 ít) đi với ĐỘNG TỪ NGUYÊN THỂ "gantuṃ" (để đi) để diễn ý muốn.',
        'D. "Tôi đang đi học" — dùng thì hiện tại tiếp diễn kép.',
      ],
      correctIndex: 2,
    ),
    QuizQuestion(
      questionText:
          '4. Tất cả các danh từ tận cùng bằng "-ā" trong Pāḷi đều thuộc giống Nữ tánh, NGOẠI TRỪ danh từ nào? Danh từ đó giống gì và nghĩa là gì?',
      options: [
        'A. "mātā" (mẹ) là Nam tánh.',
        'B. "bhariyā" (vợ) là Trung tánh.',
        'C. "sā" là Nam tánh (m.), nghĩa là "con chó (đực)".',
        'D. Tất cả "-ā" đều là Nữ tánh, không có ngoại lệ.',
      ],
      correctIndex: 2,
    ),
    QuizQuestion(
      questionText:
          '5. Định sở cách (Locative / Sattamī) số nhiều của danh từ Nữ tánh "-ā" có đuôi gì? Ví dụ "trong các dòng sông" là?',
      options: [
        'A. -esu (naresu, giống Nam tánh)',
        'B. -āsu (gaṅgāsu)',
        'C. -ānaṃ (gaṅgānaṃ)',
        'D. -āhi (gaṅgāhi)',
      ],
      correctIndex: 1,
    ),
  ];
}
