// lesson10.dart
// ---------------------------------------------------------------------------
// Bài học số 10 — An Elementary Pāḷi Course (Nārada Mahāthera)
//
// Nội dung:
//   - Danh từ NAM tánh tận cùng "-ī" — phạm trù "sāmī" (ngài, chồng, chúa tể).
//   - Danh từ NỮ tánh tận cùng "-ī" — phạm trù "nārī" (người nữ).
//   - Cách thành lập danh từ NỮ tánh từ Nam tánh:
//       + thêm "-ā" / "-ī" vào gốc "-a" (aja → ajā; deva → devī);
//       + thêm "-inī" / "-nī" vào gốc "-a / -i / -ī / -u"
//         (medhāvī → medhāvinī; bhikkhu → bhikkhunī; rāja → rājinī);
//       + bất quy tắc: mātula → mātulānī, gahapati → gahapatānī.
//   - Luật NIGGAHITA với nhóm phụ âm: saṃ+gaho=saṅgaho; saṃ+ṭhāna=saṇṭhāna;
//       ahaṃ+pi=aham'pi; ahaṃ+ca=ahañca; taṃ+dhanaṃ=tandhanaṃ.
//   - Sandhi "seṭṭhaṃ iva" → seṭṭhaṃ'va.
//
// Cung cấp:
//     Lesson10Data getLesson10Data()
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

class Lesson10Data {
  final LessonDay day1;
  final LessonDay day2;
  const Lesson10Data({required this.day1, required this.day2});
}

// ============================ DATA: BÀI 10 =================================

Lesson10Data getLesson10Data() {
  return Lesson10Data(
    day1: _buildDay1(),
    day2: _buildDay2(),
  );
}

// ------------------------------- DAY 1 ------------------------------------

LessonDay _buildDay1() {
  return LessonDay(
    titleVi: 'Day 1 — Lý thuyết & Từ vựng (Bài 10)',
    phases: [
      LessonPhase(
        phaseTypeStr: 'read_listen',
        titleVi:
            'Ngữ pháp: Nam/Nữ tánh "-ī" & Cách thành lập danh từ Nữ tánh',
        contentVi: _grammarContentVi,
        fabPhrases: const [
          FabPhraseItem(
            phrase: 'sāmī (m.) — ngài, người chồng, chúa tể',
            meaning:
                'CC/HC/ĐC số ít: -ī / -iṃ; SDC -inā; XXC -inā/-imhā/-ismā; CĐC/STC -ino/-issa; ĐSC -ini/-imhi/-ismiṃ. Số nhiều: -ino/-īnaṃ/-īsu.',
          ),
          FabPhraseItem(
            phrase: 'nārī (f.) — người nữ',
            meaning:
                'Giống NỮ "-ī" chia theo hệ bhūmi (nữ "-i"): gián tiếp -iyā; ĐSC ít -iyā/-iyaṃ; nhiều -īhi/-īnaṃ/-īsu.',
          ),
          FabPhraseItem(
            phrase: 'Nam "-a" → Nữ "-ā / -ī": dāraka→dārikā; deva→devī',
            meaning:
                'Nếu gốc tận cùng "-ka", nguyên âm trước thường đổi sang "-i" (upāsaka→upāsikā).',
          ),
          FabPhraseItem(
            phrase: 'Nam "-a/-i/-ī/-u" → Nữ "-inī / -nī": bhikkhu→bhikkhunī',
            meaning:
                'medhāvī→medhāvinī; rāja→rājinī; hatthi→hatthinī.',
          ),
          FabPhraseItem(
            phrase: 'Niggahita + phụ âm → mũi cùng nhóm',
            meaning:
                'saṃ+gaho=saṅgaho; saṃ+ṭhāna=saṇṭhāna; ahaṃ+ca=ahañca; taṃ+dhanaṃ=tandhanaṃ.',
          ),
        ],
      ),
      LessonPhase(
        phaseTypeStr: 'read_listen',
        titleVi: 'Từ vựng Bài 10',
        contentVi:
            'Học thuộc các từ mới sau (danh từ Nam/Nữ tánh "-ī", Trung tánh, tính từ, bất biến từ) và các cặp Nam/Nữ minh hoạ cho quy tắc thành lập nữ tánh.',
        fabVocab: _buildVocabList(),
      ),
    ],
  );
}

const String _grammarContentVi = '''
BÀI 10 — DANH TỪ NAM TÁNH "-ī" & NỮ TÁNH "-ī" — CÁCH LẬP DANH TỪ NỮ TÁNH

1) DANH TỪ NAM TÁNH TẬN CÙNG "-ī" — phạm trù "sāmī" (m., ngài / chồng / chúa tể)

   Bảng biến cách:
                            Số ít (sg.)            Số nhiều (pl.)
   Paṭhamā (CC)              sāmī                  sāmī, sāmino
   Ālapana (HC)              sāmī                  sāmī, sāmino
   Dutiyā (ĐC)               sāmiṃ                 sāmī, sāmino
   Tatiyā/Karaṇa (SDC)       sāminā                sāmībhi, sāmīhi
   Pañcamī (XXC)             sāminā, sāmimhā, sāmismā   sāmībhi, sāmīhi
   Catutthī/Chaṭṭhī (CĐC/STC) sāmino, sāmissa      sāmīnaṃ
   Sattamī (ĐSC)             sāmini, sāmimhi, sāmismiṃ  sāmīsu

   Tóm tắt đuôi Nam "-ī":
                           Số ít              Số nhiều
   CC / HC                  -ī                  -ī, -ino
   ĐC                       -iṃ                 -ī, -ino
   SDC                      -inā                -ībhi, -īhi
   XXC                      -inā, -imhā, -ismā  -ībhi, -īhi
   CĐC / STC                -ino, -issa         -īnaṃ
   ĐSC                      -ini, -imhi, -ismiṃ -īsu

   💡 Mẹo nhớ: Nam "-ī" phần lớn giống Nam "-i" (muni, Bài 8), CHỈ khác:
      - CC/HC/ĐC số ít trần "-ī" (dài) chứ không phải "-i" ngắn.
      - Có thêm đuôi "-ino" cho CC/HC/ĐC số nhiều (bên cạnh "-ī").
      - ĐỊNH SỞ CÁCH số ít có THÊM đuôi "-ini" (sāmini), khác với Nam "-i" là -ismiṃ/-imhi.

2) DANH TỪ NỮ TÁNH TẬN CÙNG "-ī" — phạm trù "nārī" (f., người nữ)

   Bảng biến cách:
                            Số ít (sg.)            Số nhiều (pl.)
   Paṭhamā (CC)              nārī                  nārī, nāriyo
   Ālapana (HC)              nārī, nāri            nārī, nāriyo
   Dutiyā (ĐC)               nārī, nāriṃ           nārī, nāriyo
   Tatiyā/Karaṇa (SDC)       nārīyā                nārībhi, nārīhi
   Pañcamī (XXC)             nārīyā                nārībhi, nārīhi
   Catutthī/Chaṭṭhī (CĐC/STC) nārīyā               nārīnaṃ
   Sattamī (ĐSC)             nārīyā, nārīyaṃ       nārīsu

   Tóm tắt đuôi Nữ "-ī":
                           Số ít              Số nhiều
   CC                       -ī                  -ī, -iyo
   HC                       -ī / -i             -ī, -iyo
   ĐC                       -ī / -iṃ            -ī, -iyo
   SDC/XXC                  -iyā                -ībhi, -īhi
   CĐC/STC                  -iyā                -īnaṃ
   ĐSC                      -iyā / -iyaṃ        -īsu

   💡 Mẹo nhớ: Nữ "-ī" GIỐNG HỆT Nữ "-i" (bhūmi, Bài 9), chỉ khác:
      - CC số ít là "-ī" (nguyên âm DÀI), và
      - Có thêm dạng "-i" cho HC/ĐC số ít và "-iṃ" cho ĐC số ít.
      - Số nhiều dùng -iyo (không phải -āyo của Nữ "-ā").

3) CÁCH THÀNH LẬP DANH TỪ NỮ TÁNH TỪ DANH TỪ NAM TÁNH

   a) Thêm "-ā" hoặc "-ī" vào gốc Nam tánh tận cùng "-a":
      - aja (dê đực)      → ajā   (dê cái)
      - assa (ngựa đực)   → assā  (ngựa cái)
      - upāsaka (thiện nam) → upāsikā (tín nữ)  — nếu gốc tận cùng -ka thì
        nguyên âm trước thường đổi thành "-i".
      - dāraka (bé trai)  → dārikā (bé gái)
      - deva (thiên nam)  → devī  (thiên nữ)
      - dāsa (tôi đòi nam) → dāsī (tớ gái / nữ tì)
      - nara (người nam)  → nārī  (người nữ)

   b) Thêm "-inī" / "-nī" vào các gốc Nam tánh tận cùng "-a", "-i", "-ī", "-u":
      - rāja (vua)        → rājinī    (hoàng hậu)
      - hatthi (voi đực)  → hatthinī  (voi cái)
      - medhāvī (bậc trí nam) → medhāvinī (bậc trí nữ)
      - bhikkhu (tỳ-khưu) → bhikkhunī (tỳ-khưu-ni)

   c) Một dạng bất quy tắc:
      - mātula (cậu / người chú) → mātulānī (dì / người cô / mợ)
      - gahapati (gia chủ nam)   → gahapatānī (bà gia chủ)

4) LUẬT NIGGAHITA (Ṃ) VỚI NHÓM PHỤ ÂM (Sandhi)

   Khi niggahita (ṃ) đứng trước một phụ âm, nó biến thành âm MŨI của chính
   nhóm phụ âm đó:
     - trước k/kh/g/gh        → ṅ (mũi cổ):       saṃ + gaho   = saṅgaho
     - trước c/ch/j/jh       → ñ (mũi ngạc cứng): saṃ + cetanā = (ví dụ ahaṃ+ca=ahañca)
     - trước ṭ/ṭh/ḍ/ḍh/ṇ     → ṇ (mũi ngạc mềm): saṃ + ṭhāna  = saṇṭhāna
     - trước t/th/d/dh/n     → n (mũi răng):     taṃ + dhanaṃ = tandhanaṃ
     - trước p/ph/b/bh/m     → m (mũi môi):      ahaṃ + pi    = aham'pi

   Ngoài ra:
     - seṭṭhaṃ + iva = seṭṭhaṃ'va (co rút nguyên âm "i"): "như của tối thượng".
     - Tương tự cho các sandhi quen: bhikkhunīnañca = bhikkhunīnaṃ + ca
       (niggahita trước "c" → ñ: n-nañ-ca).

5) CÁCH DÙNG TRONG CÂU — Nhận xét nhanh về Exercise 10
   - Từ "have" (thật vậy, dĩ nhiên) và "iva" (như, giống như) là bất biến từ.
   - Động từ trong Exercise có cả thì QUÁ KHỨ đơn: agami (đã đi), adaṃsu (đã cho),
     agamiṃsu (đã đi), dhāviṃsu / palāyiṃsu (đã chạy), pāpuṇi (đã đến), pati
     (đã rơi) — các em chỉ cần nhận diện nghĩa; thì quá khứ sẽ học kỹ ở bài sau.
   - "appamāda" (không phóng dật / tinh cần) và "dhana" (của cải) là danh từ trung;
     "puñña" (phước), "pāpa" (ác) cũng là trung tánh.
''';

List<FabVocabItem> _buildVocabList() {
  return const [
    // --- Phạm trừ bài học ---
    FabVocabItem(
      wordEn: 'Sāmī',
      pronunciation: 'saa-mii',
      wordVi: 'ngài, chồng, chúa tể, chủ nhân (nam -ī)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Nārī',
      pronunciation: 'naa-rii',
      wordVi: 'người nữ, đàn bà (nữ -ī)',
      partOfSpeech: 'f.',
    ),

    // --- Từ chuẩn theo sách (p.80-83) ---
    FabVocabItem(
      wordEn: 'Appamāda',
      pronunciation: 'ap-pa-maa-da',
      wordVi: 'sự không phóng dật, tinh cần (nam)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Bhaginī',
      pronunciation: 'bha-gi-nii',
      wordVi: 'người chị / người em gái (nữ)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Brahmacārī',
      pronunciation: 'brahma-caa-rii',
      wordVi: 'người sống phạm hạnh / độc thân (nam -ī)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Dhammacārī',
      pronunciation: 'dhamma-caa-rii',
      wordVi: 'người thực hành chánh pháp (nam -ī)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Dhana',
      pronunciation: 'dha-na',
      wordVi: 'của cải, tài sản (trung)',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Duggati',
      pronunciation: 'du-gga-ti',
      wordVi: 'cõi khổ, ác thú (nữ)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Have',
      pronunciation: 'ha-ve',
      wordVi: 'thật vậy, dĩ nhiên, quả thật (bất biến từ)',
      partOfSpeech: 'indec.',
    ),
    FabVocabItem(
      wordEn: 'Iva',
      pronunciation: 'i-va',
      wordVi: 'như, giống như, tựa như (bất biến từ)',
      partOfSpeech: 'indec.',
    ),
    FabVocabItem(
      wordEn: 'Jananī',
      pronunciation: 'ja-na-nii',
      wordVi: 'người mẹ (nữ -ī)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Mahesī',
      pronunciation: 'ma-he-sii',
      wordVi: 'hoàng hậu, phi tần (nữ -ī)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Medhāvī',
      pronunciation: 'me-dhaa-vii',
      wordVi: 'bậc có trí tuệ, người thông thái (nam -ī)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Pāpa',
      pronunciation: 'paa-pa',
      wordVi: 'điều ác, tội lỗi (trung)',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Pāpakārī',
      pronunciation: 'paa-pa-kaa-rii',
      wordVi: 'kẻ làm ác (nam -ī)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Puñña',
      pronunciation: 'puñ-ña',
      wordVi: 'phước đức, việc lành (trung)',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Puññakārī',
      pronunciation: 'puñ-ña-kaa-rii',
      wordVi: 'người làm phước (nam -ī)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Seṭṭha',
      pronunciation: 'seṭ-ṭha',
      wordVi: 'tối thượng, tối thắng, bậc nhất (tính từ)',
      partOfSpeech: 'adj.',
    ),
    FabVocabItem(
      wordEn: 'Sugati',
      pronunciation: 'su-ga-ti',
      wordVi: 'cõi lành, thiện thú, an lạc (nữ)',
      partOfSpeech: 'f.',
    ),

    // --- Các danh từ Nữ tạo từ Nam theo quy tắc B (tham khảo / bài tập) ---
    FabVocabItem(
      wordEn: 'Ajā',
      pronunciation: 'a-jaa',
      wordVi: 'con dê cái (nữ, từ aja)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Assā',
      pronunciation: 'as-saa',
      wordVi: 'con ngựa cái (nữ, từ assa)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Upāsikā',
      pronunciation: 'u-paa-si-kaa',
      wordVi: 'cư sĩ nữ, tín nữ (nữ, từ upāsaka)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Dāsī',
      pronunciation: 'daa-sii',
      wordVi: 'nữ tì, tớ gái (nữ, từ dāsa)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Devī',
      pronunciation: 'de-vii',
      wordVi: 'nữ thần, hoàng hậu (nữ, từ deva)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Rājinī',
      pronunciation: 'raa-ji-nii',
      wordVi: 'hoàng hậu (nữ, từ rāja)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Hatthinī',
      pronunciation: 'hat-thi-nii',
      wordVi: 'voi cái (nữ, từ hatthi)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Medhāvinī',
      pronunciation: 'me-dhaa-vi-nii',
      wordVi: 'người nữ có trí tuệ (nữ, từ medhāvī)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Bhikkhunī',
      pronunciation: 'bhik-khu-nii',
      wordVi: 'tỳ-khưu-ni (nữ, từ bhikkhu)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Mātulānī',
      pronunciation: 'maa-tu-laa-nii',
      wordVi: 'người dì / cô / mợ (nữ, bất quy tắc từ mātula)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Gahapatānī',
      pronunciation: 'ga-ha-pa-taanii',
      wordVi: 'bà gia chủ (nữ, bất quy tắc từ gahapati)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Sabhaginī',
      pronunciation: 'sa-bha-gi-nii',
      wordVi: 'cùng chị em gái (nữ)',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Pupphahatthā',
      pronunciation: 'pup-pa-hat-thaa',
      wordVi: 'người tay cầm hoa (nữ)',
      partOfSpeech: 'f.',
    ),

    // --- Động từ / từ khác xuất hiện trong bài tập ---
    FabVocabItem(
      wordEn: 'Rakkhati (rakkha)',
      pronunciation: 'rak-kha-ti',
      wordVi: 'bảo vệ, hộ trì',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Karoti (kara)',
      pronunciation: 'ka-ro-ti',
      wordVi: 'làm; quá khứ: akaṃsu / katvā (sau khi làm)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Deti (dā)',
      pronunciation: 'de-ti',
      wordVi: 'cho, ban cho; qk. adaṃsu (họ đã cho)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Agamā / Agami',
      pronunciation: 'a-ga-maa',
      wordVi: 'đã đi (quá khứ của gacchati)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Pāpuṇāti (pa+apa)',
      pronunciation: 'paa-pu-ṇaa-ti',
      wordVi: 'đến nơi, đạt đến; tl. pāpuṇissati; qk. pāpuṇi',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Saṅgaṇhāti (saṃ+gaha)',
      pronunciation: 'saṅ-gaṇ-haa-ti',
      wordVi: 'chăm sóc, phụng dưỡng, thăm hỏi',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Hoti (bhū)',
      pronunciation: 'ho-ti',
      wordVi: 'là, trở thành; qk. āsi / hosim? (pl. homa = chúng ta là / trở thành)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Patati (pata)',
      pronunciation: 'pa-ta-ti',
      wordVi: 'rụng, rơi, đáp xuống; qk. pati (đã rơi)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Passati (disa)',
      pronunciation: 'pas-sa-ti',
      wordVi: 'thấy; qk. addasa / disvā (sau khi thấy)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Dhāvati (dhāva)',
      pronunciation: 'dhaa-va-ti',
      wordVi: 'chạy; qk. dhāviṃsu (chúng đã chạy)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Palāyati (palā)',
      pronunciation: 'pa-laa-ya-ti',
      wordVi: 'chạy trốn; qk. palāyiṃsu (chúng đã chạy trốn)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Uggaṇhāti (u+gaha)',
      pronunciation: 'ug-gaṇ-haa-ti',
      wordVi: 'học, nắm vững',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Āruhati (ā+ruha)',
      pronunciation: 'aa-ru-ha-ti',
      wordVi: 'leo lên, cỡi lên',
      partOfSpeech: 'v.',
    ),

    // --- Từ bổ trợ cho bài tập ---
    FabVocabItem(
      wordEn: 'Hatthin / Hatthī',
      pronunciation: 'hat-thii',
      wordVi: 'con voi (nam -i/-ī)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Hatthino',
      pronunciation: 'hat-thi-no',
      wordVi: 'các con voi (CC nhiều của hatthī / voi đực)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Mayhaṃ',
      pronunciation: 'may-haṃ',
      wordVi: 'của tôi (đại từ sở hữu)',
      partOfSpeech: 'pron.',
    ),
    FabVocabItem(
      wordEn: 'Tassa / Tassā',
      pronunciation: 'tas-saa',
      wordVi: 'của người ấy / cô ấy (đại từ)',
      partOfSpeech: 'pron.',
    ),
    FabVocabItem(
      wordEn: 'Paṇṇākāra',
      pronunciation: 'paṇ-ṇaa-kaa-ra',
      wordVi: 'vật thực (được đi khất thực), đồ ăn (nam)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Hīyo / Hiyo',
      pronunciation: 'hii-yo',
      wordVi: 'hôm qua (phó từ thời gian)',
      partOfSpeech: 'adv.',
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
        titleVi: 'Trò Chơi Tư Duy — Bài Tập 10',
        contentVi:
            'Nhấn vào cụm tiếng Việt để nói to cụm Pāḷi rồi xem đáp án. Chú ý các dạng Nam "-ī" / Nữ "-ī" và luật niggahita với nhóm phụ âm (saṅgaho, ahañca, bhikkhunīnañca).',
        mixedSegments: _buildExerciseMixedSegments(),
      ),
      LessonPhase(
        phaseTypeStr: 'listening_quiz',
        titleVi: 'Quiz — Kiểm tra kiến thức Bài 10',
        questions: _buildQuiz(),
        fabAnswers: const [
          FabAnswerItem(
              vi:
                  'Câu 1: Đáp án A. "-ino" là một trong các đuôi số nhiều CC/HC/ĐC của nam tánh "-ī" (bên cạnh "-ī"). Ví dụ: sāmino, medhāvino, brahmacārino, puññakārino.'),
          FabAnswerItem(
              vi:
                  'Câu 2: Đáp án C. Nữ "-ī" (nārī) GIỐNG hệt cách chia của nữ "-i" (bhūmi), chỉ khác CC/HC/ĐC số ít dùng "-ī" dài và có thêm dạng -i/-iṃ cho HC/ĐC số ít.'),
          FabAnswerItem(
              vi:
                  'Câu 3: Đáp án B. "upāsaka → upāsikā" — khi gốc tận cùng -ka thì nguyên âm trước đổi thành "-i" rồi thêm "-ā". Tương tự dāraka→dārikā.'),
          FabAnswerItem(
              vi:
                  'Câu 4: Đáp án D. "bhikkhu → bhikkhunī" thêm "-nī" (hoặc "-inī") vào gốc nam tánh tận cùng "-u" để tạo nữ tánh.'),
          FabAnswerItem(
              vi:
                  'Câu 5: Đáp án C. "saṃ + gaho = saṅgaho" — niggahita ṃ trước nhóm k/kh/g/gh đổi thành "ṅ" (mũi cổ). "seṭṭhaṃ+iva=seṭṭhaṃ\'va" là co rút nguyên âm i chứ không phải đổi ṃ.'),
        ],
      ),
    ],
  );
}

// ---------------------------------------------------------------------------
// MIND GAME — EXERCISE 10 (13 câu tiêu biểu)
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
    // 1. "Dhammo have rakkhati Dhammacārī."
    ...sent(const [
      _Seg('"Dhammo', 'Chánh pháp'),
      _Seg('have', 'thật vậy / quả nhiên'),
      _Seg('rakkhati', 'hộ trì / bảo vệ'),
      _Seg('Dhammacārī."', 'người thực hành Chánh pháp."'),
    ]),
    // 2. "Na duggatiṃ gacchati dhammacārī."
    ...sent(const [
      _Seg('Na', 'Không'),
      _Seg('duggatiṃ', '(đến) cõi khổ / ác thú'),
      _Seg('gacchati', 'đi đến'),
      _Seg('dhammacārī.', 'người hành Chánh pháp.'),
    ]),
    // 3. Narā ca nāriyo ca puññaṃ katvā sugatīsu uppajjissanti.
    ...sent(const [
      _Seg('Narā ca', 'Người nam và'),
      _Seg('nāriyo ca', 'người nữ thì'),
      _Seg('puññaṃ', 'phước đức'),
      _Seg('katvā', 'sau khi đã làm'),
      _Seg('sugatīsu', 'trong các cõi lành'),
      _Seg('uppajjissanti', 'sẽ tái sanh'),
    ]),
    // 4. Bhaginī tassā sāminā saddhiṃ jananiṃ passituṃ sve gamissati.
    ...sent(const [
      _Seg('Bhaginī', 'Người chị gái'),
      _Seg('tassā', '(cùng) chồng của cô ấy'),
      _Seg('sāminā saddhiṃ', 'với chồng của cô'),
      _Seg('jananiṃ', 'mẹ'),
      _Seg('passituṃ', 'để thăm / để thấy'),
      _Seg('sve', 'ngày mai'),
      _Seg('gamissati', 'sẽ đi'),
    ]),
    // 5. Pāpakārī, tumhe pāpaṃ katvā duggatīsu uppajjissatha.
    ...sent(const [
      _Seg('Pāpakārī,', 'Này kẻ làm ác,'),
      _Seg('tumhe', 'các ngươi'),
      _Seg('pāpaṃ', 'điều ác'),
      _Seg('katvā', 'sau khi làm'),
      _Seg('duggatīsu', 'trong các cõi khổ'),
      _Seg('uppajjissatha', 'các ngươi sẽ tái sanh'),
    ]),
    // 7. Mahesiyo nārīnaṃ puññaṃ kātuṃ dhanaṃ denti.
    ...sent(const [
      _Seg('Mahesiyo', 'Các hoàng hậu'),
      _Seg('nārīnaṃ', '(cho) các người nữ'),
      _Seg('puññaṃ', 'phước đức'),
      _Seg('kātuṃ', 'để làm / tạo'),
      _Seg('dhanaṃ', 'của cải'),
      _Seg('denti', '(họ) ban cho'),
    ]),
    // 8. Hatthino ca hatthiniyo ca aṭavīsu ca pabbatesu ca vasanti.
    ...sent(const [
      _Seg('Hatthino ca', 'Các voi đực và'),
      _Seg('hatthiniyo ca', 'các voi cái thì'),
      _Seg('aṭavīsu ca', 'trong rừng và'),
      _Seg('pabbatesu ca', 'trên núi'),
      _Seg('vasanti', '(chúng) sống'),
    ]),
    // 10. Mahesī narapatinā saddhiṃ sve nagaraṃ pāpuṇissati.
    ...sent(const [
      _Seg('Mahesī', 'Hoàng hậu'),
      _Seg('narapatinā saddhiṃ', 'cùng với vua'),
      _Seg('sve', 'ngày mai'),
      _Seg('nagaraṃ', '(đến) kinh thành'),
      _Seg('pāpuṇissati', 'sẽ đến nơi'),
    ]),
    // 11. Medhāvino ca medhāviniyo ca appamādena Dhammaṃ uggaṇhitvā muttiṃ labhissanti.
    ...sent(const [
      _Seg('Medhāvino ca', 'Các bậc nam trí và'),
      _Seg('medhāviniyo ca', 'các bậc nữ trí thì'),
      _Seg('appamādena', 'nhờ sự tinh cần / không phóng dật'),
      _Seg('Dhammaṃ', 'Giáo Pháp'),
      _Seg('uggaṇhitvā', 'sau khi học thông'),
      _Seg('muttiṃ', 'sự giải thoát'),
      _Seg('labhissanti', 'sẽ chứng đạt'),
    ]),
    // 14. Bhikkhuniyo gahapatānīnaṃ ovādaṃ adaṃsu.
    ...sent(const [
      _Seg('Bhikkhuniyo', 'Các tỳ-khưu-ni'),
      _Seg('gahapatānīnaṃ', '(cho) các bà gia chủ'),
      _Seg('ovādaṃ', 'lời giáo giới'),
      _Seg('adaṃsu', 'đã ban cho'),
    ]),
    // 15. "Appamādañca medhāvī - dhanaṃ seṭṭhaṃ'va rakkhati."
    ...sent(const [
      _Seg('"Appamādañca', 'Sự tinh cần thì'),
      _Seg('medhāvī', 'người trí'),
      _Seg("dhanaṃ seṭṭhaṃ'va", 'như của cải tối thượng'),
      _Seg('rakkhati."', 'gìn giữ."'),
    ]),
    // 18. Mayhaṃ sāmī hatthiṃ āruhitvā bhūmiyaṃ pati.
    ...sent(const [
      _Seg('Mayhaṃ', 'Của tôi'),
      _Seg('sāmī', 'chồng / ngài'),
      _Seg('hatthiṃ', 'con voi'),
      _Seg('āruhitvā', 'sau khi đã cỡi lên'),
      _Seg('bhūmiyaṃ', 'xuống đất'),
      _Seg('pati', 'đã rơi / ngã'),
    ]),
    // 24. Janani, ahaṃ suve (mayhaṃ) mātulaṃ ca mātulāniṃ ca passituṃ gamissāmi.
    ...sent(const [
      _Seg('Janani,', 'Thưa mẹ,'),
      _Seg('ahaṃ', 'con'),
      _Seg('suve', 'ngày mai'),
      _Seg('mātulaṃ ca', 'cậu và'),
      _Seg('mātulāniṃ ca', 'dì thì'),
      _Seg('passituṃ', 'để thăm'),
      _Seg('gamissāmi', 'sẽ đi'),
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
// ---------------------------------------------------------------------------
List<QuizQuestion> _buildQuiz() {
  return const [
    QuizQuestion(
      questionText:
          '1. Số nhiều CC/HC/ĐC của danh từ NAM tánh tận cùng "-ī" (vd. sāmī, medhāvī, brahmacārī) mang đuôi nào sau đây?',
      options: [
        'A. -ī, -ino (vd. medhāvino)',
        'B. -ayo (như nam tánh "-a")',
        'C. -iyo (như nữ tánh "-i")',
        'D. -āni (như trung tánh "-a")',
      ],
      correctIndex: 0,
    ),
    QuizQuestion(
      questionText:
          '2. Phát biểu nào ĐÚNG về cách chia của danh từ NỮ tánh tận cùng "-ī" (vd. nārī, bhaginī, mahesī)?',
      options: [
        'A. Khác hẳn nữ "-i" (bhūmi) ở mọi cách.',
        'B. Chỉ có số nhiều, không có số ít.',
        'C. Cơ bản GIỐNG hệ nữ "-i" (bhūmi), chỉ dùng "-ī" (dài) ở CC số ít và các đuôi phụ -i/-iṃ cho HC/ĐC số ít; gián tiếp "-iyā", số nhiều "-iyo" / "-īhi" / "-īnaṃ" / "-īsu".',
        'D. Giống hệt nam "-ī" (sāmī).',
      ],
      correctIndex: 2,
    ),
    QuizQuestion(
      questionText:
          '3. Khi thành lập danh từ NỮ tánh từ nam tánh "-aka" (vd. upāsaka → ???, dāraka → dārikā), quy tắc nào được áp dụng?',
      options: [
        'A. Giữ nguyên rồi thêm "-ī": upāsaka→upāsakī.',
        'B. Nguyên âm trước -ka đổi thành "-i" rồi thêm "-ā": upāsaka→upāsikā, dāraka→dārikā.',
        'C. Thêm "-nī": upāsaka→upāsakanī.',
        'D. Thêm "-ānī": upāsaka→upāsakānī.',
      ],
      correctIndex: 1,
    ),
    QuizQuestion(
      questionText:
          '4. Cặp nào sau đây thể hiện quy tắc thêm "-nī/-inī" để tạo nữ tánh từ nam tánh tận cùng nguyên âm dài / "-u"?',
      options: [
        'A. nara → nārī',
        'B. deva → devī',
        'C. aja → ajā',
        'D. bhikkhu → bhikkhunī',
      ],
      correctIndex: 3,
    ),
    QuizQuestion(
      questionText:
          '5. Ví dụ nào sau đây minh hoạ đúng luật niggahita (ṃ) biến thành âm mũi cùng nhóm trước một phụ âm cổ (k/kh/g/gh)?',
      options: [
        'A. seṭṭhaṃ + iva = seṭṭhaṃ\'va',
        'B. ahaṃ + pi = aham\'pi',
        'C. saṃ + gaho = saṅgaho',
        'D. itipi so bhagavā (không có niggahita)',
      ],
      correctIndex: 2,
    ),
  ];
}





