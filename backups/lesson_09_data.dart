// lesson09.dart
// ---------------------------------------------------------------------------
// Bài học số 9 — An Elementary Pāḷi Course (Nārada Mahāthera)
//
// Nội dung:
//   - Danh từ NỮ TÁNH tận cùng "-i" (phạm trù "bhūmi" — mặt đất / địa cầu).
//   - Thì TƯƠNG LAI (Bhavissanti / Future Tense): đuôi
//       -issati / -issanti / -issasi / -issatha / -issāmi / -issāma.
//     Nguyên âm trước các biến tố tương lai luôn đổi thành "-i-".
//     Cấu tạo: thêm "ssa" vào đuôi thì hiện tại.
//   - Từ vựng mới (Nữ / Nam / Trung tánh + động từ + phó từ "suve / sve").
//
// Cung cấp:
//     Lesson09Data getLesson09Data()
// Trả về Day 1 (Lý thuyết & Từ vựng) và Day 2 (Thực hành & Quiz).
// ---------------------------------------------------------------------------

// ============================ MODEL CLASSES ================================

enum PaliCase { nom, voc, acc, ins, dat, abl, gen, loc 
enum PaliNumber { singular, plural 
enum PaliGender { masculine, neuter, feminine 
enum PaliTense { present, future, aorist 

class AppColors {
  static const int paliGold = 0xFFD4A017;
  static const int paliSaffron = 0xFFE07B00;
  static const int paliMaroon = 0xFF8B1A1A;
  static const int paliJade = 0xFF2E8B57;
  static const int paliInk = 0xFF2B2B2B;
  static const int paliBg = 0xFFFDF8EC;
  static const int paliDivider = 0xFFE0D3A9;


class FabVocabItem {
  final String wordEn;
  final String pronunciation;
  final String wordVi;
  final String partOfSpeech; // m. / n. / f. / v. / adv. / indec.

  const FabVocabItem({
    required this.wordEn,
    required this.pronunciation,
    required this.wordVi,
    required this.partOfSpeech,
  


class FabPhraseItem {
  final String phrase;
  final String meaning;

  const FabPhraseItem({required this.phrase, required this.meaning


class FabAnswerItem {
  final String vi;
  const FabAnswerItem({required this.vi



  
  
  

  
    
    
    
  


class QuizQuestion {
  final String questionText;
  final List<String> options;
  final int correctIndex;

  const QuizQuestion({
    required this.questionText,
    required this.options,
    required this.correctIndex,
  


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
  


class LessonDay {
  final String titleVi;
  final int currentPhaseIndex;
  final List<LessonPhase> phases;

  const LessonDay({
    required this.titleVi,
    this.currentPhaseIndex = 0,
    required this.phases,
  


class Lesson09Data {
  final LessonDay day1;
  final LessonDay day2;
  const Lesson09Data({required this.day1, required this.day2


// ============================ DATA: BÀI 9 ==================================

Lesson09Data getLesson09Data() {
  return Lesson09Data(
    day1: _buildDay1(),
    day2: _buildDay2(),
  );


// ------------------------------- DAY 1 ------------------------------------

LessonDay _buildDay1() {
  return LessonDay(
    titleVi: 'Day 1 — Lý thuyết & Từ vựng (Bài 9)',
    phases: [
      LessonPhase(
        phaseTypeStr: 'read_listen',
        titleVi: 'Ngữ pháp: Nữ tánh "-i" & Thì Tương lai (Bhavissanti)',
        contentVi: _grammarContentVi,
        fabPhrases: const [
          FabPhraseItem(
            phrase: 'bhūmi (f.) — mặt đất',
            meaning:
                'CC/HC/ĐC số ít: -i / -iṃ; số nhiều: -ī, -iyo. SDC/XXC/CĐC/STC số ít: -iyā.',
          ),
          FabPhraseItem(
            phrase: 'bhūmiyā / bhūmiyaṃ (ĐSC số ít)',
            meaning:
                'Định sở số ít nữ tánh "-i" có 2 dạng: -iyā và -iyaṃ (ở / tại mặt đất).',
          ),
          FabPhraseItem(
            phrase: 'bhūmīsu (ĐSC số nhiều)',
            meaning:
                'Định sở số nhiều nữ tánh "-i" có đuôi -īsu (nguyên âm i dài trước su).',
          ),
          FabPhraseItem(
            phrase: 'pacati → pacissati (sẽ nấu)',
            meaning:
                'Thêm "-ssa-" + đuôi hiện tại → tương lai. Nguyên âm trước đổi thành "i".',
          ),
          FabPhraseItem(
            phrase: '-issati / -issasi / -issāmi (ít)',
            meaning:
                'Ngôi 3 / 2 / 1 số ít thì tương lai. Số nhiều: -issanti / -issatha / -issāma.',
          ),
          FabPhraseItem(
            phrase: 'suve / sve (adv.)',
            meaning:
                'Phó từ chỉ thời gian: "ngày mai". Thường đi với thì tương lai.',
          ),
        ],
      ),
      LessonPhase(
        phaseTypeStr: 'read_listen',
        titleVi: 'Từ vựng Bài 9 — Nữ tánh "-i", Nam/Trung tánh, Động từ',
        contentVi:
            'Học thuộc các từ mới bên dưới. Chú ý: các NỮ tánh "-i" chia theo bảng "bhūmi"; các NAM tánh tận cùng "-i" (ví dụ: agni — lửa, đã học ở Bài 8) chia theo một bảng KHÁC (đuôi số ít -i / -iṃ nhưng gián tiếp -inā, -ino…).',
        fabVocab: _buildVocabList(),
      ),
    ],
  );


const String _grammarContentVi = '''
BÀI 9 — DANH TỪ NỮ TÁNH "-i" & THÌ TƯƠNG LAI

1) DANH TỪ NỮ TÁNH TẬN CÙNG "-i" — phạm trù "bhūmi" (f., mặt đất / địa cầu / miền)

   Bảng biến cách:
                            Số ít (sg.)         Số nhiều (pl.)
   Paṭhamā / Ālapana (CC/HC)   bhūmi             bhūmī, bhūmiyo
   Dutiyā (ĐC)                 bhūmiṃ            bhūmī, bhūmiyo
   Tatiyā/Karaṇa (SDC)         bhūmiyā           bhūmībhi, bhūmīhi
   Pañcamī (XXC)               bhūmiyā           bhūmībhi, bhūmīhi
   Catutthī (CĐC)              bhūmiyā           bhūmīnaṃ
   Chaṭṭhī (STC)               bhūmiyā           bhūmīnaṃ
   Sattamī (ĐSC)               bhūmiyā, bhūmiyaṃ bhūmīsu

   Tóm tắt đuôi:
                         Số ít          Số nhiều
   CC / HC               -i             -ī, -iyo
   ĐC                    -iṃ            -ī, -iyo
   SDC / XXC             -iyā           -ībhi, -īhi
   CĐC / STC             -iyā           -īnaṃ
   ĐSC                   -iyā, -iyaṃ    -īsu

   ✅ Điểm cần nhớ để phân biệt với Nam tánh "-i" (Bài 8):
      - NỮ tánh "-i" CC/HC số ít trần "-i" (bhūmi), còn NAM tánh "-i" CC số ít thường là "-i" (như agini/aggi) và số nhiều là "-ayo" không phải "-iyo" — nhưng cách dễ nhất là tra từ điển hoặc nhớ giống của từ.
      - Gián tiếp số ít của NỮ "-i" luôn là "-iyā" (bhūmiyā); NAM "-i" có "-inā" (SDC), "-issa" (STC/CĐC), "-ismā" (XXC), "-ismiṃ" (ĐSC).
      - Định sở số nhiều của NỮ "-i" là "-īsu"; của NAM "-i" là "-īsu" (trùng).

2) THÌ TƯƠNG LAI (Bhavissanti / Future Tense) — Thể chủ động

   Cách thành lập: lấy đuôi thì hiện tại, thêm "ssa" vào giữa gốc và đuôi.
   Nguyên âm đứng ngay trước nhóm đuôi tương lai (-issa-) LUÔN đổi thành "-i-".

   Biến tố (terminations) thì tương lai:
                    Số ít                Số nhiều
   Ngôi 3 (he/they)      -issati          -issanti
   Ngôi 2 (you)          -issasi          -issatha
   Ngôi 1 (I/we)         -issāmi          -issāma

   Ví dụ với paca (nấu):
                    Số ít              Số nhiều
   Ngôi 3           pacissati          pacissanti   (sẽ nấu)
   Ngôi 2           pacissasi          pacissatha
   Ngôi 1           pacissāmi          pacissāma

   Một số ví dụ với động từ khác:
     * bhavati  (là / trở thành) → bhavissati  (sẽ là / sẽ trở thành)
     * khaṇati  (đào)            → khaṇissati  (sẽ đào)
     * jāyati   (sanh / khởi)    → jāyissati   (sẽ sanh)
     * pāpuṇāti (đến / đạt)      → pāpuṇissati (sẽ đến / sẽ đạt)
     * pavisati (vào)            → pavisissati (sẽ vào)
     * tarati   (băng qua)       → tarissati   (sẽ băng qua)
     * gacchati (đi)             → gamissati   (sẽ đi — bất quy tắc)
     * passati  (thấy)           → passissati  (sẽ thấy)
     * suṇāti   (nghe)           → suṇissati   (sẽ nghe)
     * deseti   (thuyết)         → desessati   (sẽ thuyết)
     * karoti   (làm)            → karissati   (sẽ làm)
     * tiṭṭhati (đứng)           → ṭhassati    (sẽ đứng — bất quy tắc)
     * patati   (rụng / ngã)     → patissati   (sẽ rụng / ngã)

3) CÁCH DÙNG THÌ TƯƠNG LAI
   - Diễn tả một hành động sẽ xảy ra trong tương lai:
       * Gahapati kūpaṃ khaṇissati = Gia chủ SẼ đào cái giếng.
       * Mayaṃ gaṅgaṃ tarissāma = Chúng ta SẼ băng qua sông Hằng.
   - Thường đi với các phó từ thời gian:
       * suve / sve (ngày mai), ajja (hôm nay), kadā (khi nào), sabbadā (hằng ngày).
   - Trong câu có mệnh đề chỉ mục đích dùng nguyên thể (-tuṃ), động từ chính vẫn có thể chia tương lai:
       * Sve mayaṃ muttiṃ labhituṃ Dhammassavanaṃ karissāma.
         = Ngày mai chúng tôi sẽ làm việc nghe Pháp để đạt được giải thoát.

4) GIỚI THIỆU NGẮN VỀ DANH ĐỘNG TỪ (Gerund / Indeclinable Past Participle)
   - Trong bài tập có dạng như: pavisitvā (đã vào), nisīditvā (đã ngồi),
     taritvā (đã băng qua), labhitvā (đã đạt được), gahetvā (đã lấy),
     nikkhamitvā (đã ra đi), gantvā (đã đi) — đuôi "-tvā" chỉ hành động
     xảy ra TRƯỚC hành động của động từ chính trong câu.
   - Cách này sẽ học kỹ ở Bài 8/Bài 10; ở Bài 9 chỉ cần nhận diện nghĩa.
''';

List<FabVocabItem> _buildVocabList() {
  return const [
    // --- Từ chuẩn theo sách (Words list) ---
    FabVocabItem(
      wordEn: 'Bhūmi',
      pronunciation: 'bhuu-mi',
      wordVi: 'mặt đất, địa cầu, miền, xứ',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Aṅguḷi',
      pronunciation: 'aṅ-gu-ḷi',
      wordVi: 'ngón tay',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Aṭavi',
      pronunciation: 'a-ṭa-vi',
      wordVi: 'rừng, khu rừng',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Bhaya',
      pronunciation: 'bha-ya',
      wordVi: 'sự sợ hãi, nỗi sợ (trung tánh)',
      partOfSpeech: 'n.',
    ),
    FabVocabItem(
      wordEn: 'Mutti',
      pronunciation: 'mut-ti',
      wordVi: 'sự giải thoát, sự thoát ly',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Pīti',
      pronunciation: 'pii-ti',
      wordVi: 'niềm hỷ lạc',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Rati',
      pronunciation: 'ra-ti',
      wordVi: 'sự dính mắc, ái luyến, vui thích',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Khanti',
      pronunciation: 'khan-ti',
      wordVi: 'sự kham nhẫn, nhẫn nại',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Ratti',
      pronunciation: 'rat-ti',
      wordVi: 'ban đêm, đêm',
      partOfSpeech: 'f.',
    ),
    FabVocabItem(
      wordEn: 'Kuddāla',
      pronunciation: 'kud-daa-la',
      wordVi: 'cái thuổng, cái cuốc, cái xẻng (m./n.)',
      partOfSpeech: 'm./n.',
    ),
    FabVocabItem(
      wordEn: 'Soka',
      pronunciation: 'so-ka',
      wordVi: 'sự ưu sầu, phiền muộn',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Kūpa',
      pronunciation: 'kuu-pa',
      wordVi: 'cái giếng',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Suve / Sve',
      pronunciation: 'su-ve / sve',
      wordVi: 'ngày mai (phó từ)',
      partOfSpeech: 'adv.',
    ),

    // --- Động từ mới theo sách ---
    FabVocabItem(
      wordEn: 'Bhavati (bhū)',
      pronunciation: 'bha-va-ti',
      wordVi: 'là, trở thành, hiện hữu; thì tương lai: bhavissati',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Khaṇati (khaṇa)',
      pronunciation: 'kha-ṇa-ti',
      wordVi: 'đào, xới; tl: khaṇissati',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Jāyati (jana)',
      pronunciation: 'jaa-ya-ti',
      wordVi: 'nổi lên, sanh ra, sinh khởi; tl: jāyissati',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Pāpuṇāti (pa+apa)',
      pronunciation: 'paa-pu-ṇaa-ti',
      wordVi: 'đến nơi, đạt được, thành tựu; tl: pāpuṇissati',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Pavisati (pa+visa)',
      pronunciation: 'pa-vi-sa-ti',
      wordVi: 'đi vào, bước vào; tl: pavisissati',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Tarati (tara)',
      pronunciation: 'ta-ra-ti',
      wordVi: 'băng qua, vượt qua; tl: tarissati',
      partOfSpeech: 'v.',
    ),

    // --- Động từ / từ khác xuất hiện trong Exercise 9 để hỗ trợ đọc ---
    FabVocabItem(
      wordEn: 'Gahapati',
      pronunciation: 'ga-ha-pa-ti',
      wordVi: 'gia chủ, chủ nhà, cư sĩ (nam tánh)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Narapati',
      pronunciation: 'na-ra-pa-ti',
      wordVi: 'vua, quốc vương (chúa tể loài người)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Muni',
      pronunciation: 'mu-ni',
      wordVi: 'bậc thánh nhân, ẩn sĩ (nam tánh, đuôi -i)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Kapi',
      pronunciation: 'ka-pi',
      wordVi: 'con khỉ (nam tánh, đuôi -i)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Kavi',
      pronunciation: 'ka-vi',
      wordVi: 'nhà thơ, thi sĩ (nam tánh, đuôi -i)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Mani',
      pronunciation: 'ma-ṇi',
      wordVi: 'viên ngọc, ngọc báu (nam tánh, đuôi -i)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Purato',
      pronunciation: 'pu-ra-to',
      wordVi: 'phía trước, ở trước (phó từ)',
      partOfSpeech: 'adv.',
    ),
    FabVocabItem(
      wordEn: 'Ovāda',
      pronunciation: 'o-vaa-da',
      wordVi: 'lời giáo giới, lời khuyên dạy (nam tánh)',
      partOfSpeech: 'm.',
    ),
    FabVocabItem(
      wordEn: 'Āharati (ā+hara)',
      pronunciation: 'aa-ha-ra-ti',
      wordVi: 'đem đến, mang lại; tl: āharissati',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Gacchati (gamu)',
      pronunciation: 'gac-cha-ti',
      wordVi: 'đi; tl: gamissati (bất quy tắc)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Passati (disa)',
      pronunciation: 'pas-sa-ti',
      wordVi: 'thấy; tl: passissati',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Suṇāti (su)',
      pronunciation: 'su-ṇaa-ti',
      wordVi: 'nghe; tl: suṇissati',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Deseti (disa)',
      pronunciation: 'de-se-ti',
      wordVi: 'thuyết giảng; tl: desessati',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Karoti (kara)',
      pronunciation: 'ka-ro-ti',
      wordVi: 'làm; tl: karissati',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Tiṭṭhati (ṭhā)',
      pronunciation: 'tiṭ-ṭha-ti',
      wordVi: 'đứng; tl: ṭhassati (bất quy tắc)',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Patati (pata)',
      pronunciation: 'pa-ta-ti',
      wordVi: 'rụng, rơi, ngã; tl: patissati',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Uppajjati (ud+pad)',
      pronunciation: 'up-paj-ja-ti',
      wordVi: 'sanh, khởi lên; tl: uppajjissati',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Vicarati (vi+cara)',
      pronunciation: 'vi-ca-ra-ti',
      wordVi: 'đi lại, lang thang; tl: vicarissati',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Vasati (vasa)',
      pronunciation: 'va-sa-ti',
      wordVi: 'ở, cư ngụ; tl: vasissati',
      partOfSpeech: 'v.',
    ),
    FabVocabItem(
      wordEn: 'Bhuñjati (bhuja)',
      pronunciation: 'bhuñ-ja-ti',
      wordVi: 'ăn, thọ dụng; tl: bhuñjissati',
      partOfSpeech: 'v.',
    ),
  ];


// ------------------------------- DAY 2 ------------------------------------

LessonDay _buildDay2() {
  return LessonDay(
    titleVi: 'Day 2 — Thực hành (Mind Game) & Quiz',
    phases: [
      LessonPhase(
        phaseTypeStr: 'mind_game',
        titleVi: 'Trò Chơi Tư Duy — Bài Tập 9',
        contentVi:
            'Nhấn vào cụm tiếng Việt để nói to cụm Pāḷi tương ứng; nhấn lại để xem đáp án. Chú ý các dạng **thì tương lai** (-issati/-issanti/-issasi/-issatha/-issāmi/-issāma) và các từ Nữ tánh "-i" (bhūmiyā, rattiyaṃ, aṭavīsu …).',
        mixedSegments: _buildExerciseMixedSegments(),
      ),
      LessonPhase(
        phaseTypeStr: 'listening_quiz',
        titleVi: 'Quiz — Kiểm tra kiến thức Bài 9',
        questions: _buildQuiz(),
        fabAnswers: const [
          FabAnswerItem(
              vi:
                  'Câu 1: Định sở (Locative) số nhiều của NỮ tánh "-i" là đuôi "-īsu" (nguyên âm i DÀI + su). Ví dụ bhūmīsu = "trong các xứ / trên mặt đất (nhiều nơi)"; aṭavīsu = "trong các khu rừng". Nam tánh "-i" cũng có ĐSC nhiều "-īsu".'),
          FabAnswerItem(
              vi:
                  'Câu 2: Đáp án đúng là "pacissati" — thêm "-ssa-" vào giữa gốc paca (với -a- đổi thành -i-) và đuôi ngôi 3 ít là "-ti" → pa-c-i-ssa-ti = pacissati (anh ta sẽ nấu).'),
          FabAnswerItem(
              vi:
                  'Câu 3: "Suve / Sve" là PHÓ TỪ (adv.), nghĩa là "ngày mai", thường đi với thì tương lai: suve gacchati = ngày mai anh ta sẽ đi.'),
          FabAnswerItem(
              vi:
                  'Câu 4: Biến tố SỐ ÍT thì tương lai là: ngôi 3 "-issati", ngôi 2 "-issasi", ngôi 1 "-issāmi". Cặp "pacissanti / pacissāma" là số nhiều (ngôi 3 / ngôi 1).'),
          FabAnswerItem(
              vi:
                  'Câu 5: Khác biệt chính: NỮ tánh "-i" có gián tiếp số ít "-iyā" (bhūmiyā) cho SDC/XXC/CĐC/STC, và ĐSC số ít là "-iyā/-iyaṃ"; NAM tánh "-i" có SDC "-inā", STC "-issa", XXC "-ismā", ĐSC "-ismiṃ" — hệ thống đuôi khác hẳn.'),
        ],
      ),
    ],
  );


// ---------------------------------------------------------------------------
// MIND GAME — EXERCISE 9 (12+ câu tiêu biểu)
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
      
    
    result.add(const MixedSegment(text: '.\n', isVietnamese: false));
    return result;
  

  return [
    // 1. Gahapati kuddālena bhūmiyaṃ kūpaṃ khaṇissati.
    ...sent(const [
      _Seg('Gahapati', 'Vị gia chủ'),
      _Seg('kuddālena', 'bằng cái cuốc'),
      _Seg('bhūmiyaṃ', 'trên mặt đất'),
      _Seg('kūpaṃ', 'cái giếng'),
      _Seg('khaṇissati', 'sẽ đào'),
    ]),
    // 2. Khantiyā pīti uppajjissati.
    ...sent(const [
      _Seg('Khantiyā', 'Nhờ nhẫn nại'),
      _Seg('pīti', 'niềm hỷ'),
      _Seg('uppajjissati', 'sẽ sanh / sẽ khởi lên'),
    ]),
    // 3. Narapati sve aṭaviṃ pavisitvā muniṃ passissati.
    ...sent(const [
      _Seg('Narapati', 'Vị vua'),
      _Seg('sve', 'ngày mai'),
      _Seg('aṭaviṃ', '(vào) khu rừng'),
      _Seg('pavisitvā', 'sau khi đã vào'),
      _Seg('muniṃ', 'vị thánh nhân'),
      _Seg('passissati', 'sẽ thấy'),
    ]),
    // 5. Rattiyaṃ te aṭavīsu na vasissanti.
    ...sent(const [
      _Seg('Rattiyaṃ', 'Vào ban đêm'),
      _Seg('te', 'họ'),
      _Seg('aṭavīsu', 'trong các khu rừng'),
      _Seg('na vasissanti', 'sẽ không ở'),
    ]),
    // 7. Narapati, tvaṃ muttiṃ labhitvā Buddho bhavissasi.
    ...sent(const [
      _Seg('Narapati,', 'Tâu đại vương,'),
      _Seg('tvaṃ', 'ngài / bạn'),
      _Seg('muttiṃ', 'sự giải thoát'),
      _Seg('labhitvā', 'sau khi đã chứng đắc'),
      _Seg('Buddho', 'một vị Phật'),
      _Seg('bhavissasi', 'ngài sẽ trở thành'),
    ]),
    // 9. Kuhiṃ tvaṃ sve gamissasi?
    ...sent(const [
      _Seg('Kuhiṃ', 'Đâu'),
      _Seg('tvaṃ', 'bạn'),
      _Seg('sve', 'ngày mai'),
      _Seg('gamissasi?', 'sẽ đi?'),
    ]),
    // 10. Tumhe rattiyaṃ visikhāsu na vicarissatha.
    ...sent(const [
      _Seg('Tumhe', 'Các bạn / các ngươi'),
      _Seg('rattiyaṃ', 'ban đêm'),
      _Seg('visikhāsu', 'trên các con đường phố'),
      _Seg('na vicarissatha', 'sẽ không đi lại'),
    ]),
    // 11. Rattiyaṃ tumhe candaṃ passissatha.
    ...sent(const [
      _Seg('Rattiyaṃ', 'Ban đêm'),
      _Seg('tumhe', 'các bạn'),
      _Seg('candaṃ', 'mặt trăng'),
      _Seg('passissatha', 'các bạn sẽ thấy'),
    ]),
    // 14. Mayaṃ gaṅgaṃ taritvā sve aṭaviṃ pāpuṇissāma.
    ...sent(const [
      _Seg('Mayaṃ', 'Chúng tôi'),
      _Seg('gaṅgaṃ', 'sông Hằng'),
      _Seg('taritvā', 'sau khi đã băng qua'),
      _Seg('sve', 'ngày mai'),
      _Seg('aṭaviṃ', '(đến) khu rừng'),
      _Seg('pāpuṇissāma', 'chúng tôi sẽ đến / đạt'),
    ]),
    // 17. Kapi tassa aṅgulīhi phalāni bhuñjissati.
    ...sent(const [
      _Seg('Kapi', 'Con khỉ'),
      _Seg('tassa', 'của người ấy / nó'),
      _Seg('aṅgulīhi', 'bằng các ngón tay'),
      _Seg('phalāni', 'các trái cây'),
      _Seg('bhuñjissati', 'sẽ ăn'),
    ]),
    // 18. So sve aṭaviṃ tarissati.
    ...sent(const [
      _Seg('So', 'Ông ấy / Anh ta'),
      _Seg('sve', 'ngày mai'),
      _Seg('aṭaviṃ', '(qua) khu rừng'),
      _Seg('tarissati', 'sẽ vượt / băng qua'),
    ]),
    // 22. Munayo, kadā tumhe muttiṃ labhitvā lokāya Dhammaṃ desessatha?
    ...sent(const [
      _Seg('Munayo,', 'Này các bậc thánh nhân,'),
      _Seg('kadā', 'khi nào'),
      _Seg('tumhe', 'các ngài'),
      _Seg('muttiṃ', 'sự giải thoát'),
      _Seg('labhitvā', 'chứng được rồi'),
      _Seg('lokāya', 'cho đời / thế gian'),
      _Seg('Dhammaṃ', 'Giáo Pháp'),
      _Seg('desessatha?', 'sẽ thuyết giảng?'),
    ]),
    // 26. Ahaṃ kavi bhavissāmi.
    ...sent(const [
      _Seg('Ahaṃ', 'Tôi'),
      _Seg('kavi', '(một) nhà thơ'),
      _Seg('bhavissāmi', 'sẽ trở thành'),
    ]),
    // 28. Khantiyā mayaṃ muttiṃ labhissāma.
    ...sent(const [
      _Seg('Khantiyā', 'Nhờ lòng nhẫn nại'),
      _Seg('mayaṃ', 'chúng tôi'),
      _Seg('muttiṃ', 'sự giải thoát'),
      _Seg('labhissāma', 'sẽ đạt được'),
    ]),
    // 30. Mayam'eva pītiyā gilāne saṅgaṇhissāma.
    ...sent(const [
      _Seg("Mayam'eva", 'Chính chúng tôi'),
      _Seg('pītiyā', 'bằng niềm hỷ'),
      _Seg('gilāne', 'những người bịnh'),
      _Seg('saṅgaṇhissāma', 'sẽ chăm sóc / phụng dưỡng'),
    ]),
  ];


class _Seg {
  final String pali;
  final String vi;
  const _Seg(this.pali, this.vi);


// ---------------------------------------------------------------------------
// QUIZ — 5 câu trắc nghiệm
// Chủ đề:
//   1. Đuôi ĐSC số nhiều Nữ "-i" (-īsu) — có thể so sánh nhanh với Nam "-i".
//   2. Chia tương lai ngôi 3 số ít paca → pacissati.
//   3. Từ loại và nghĩa của "suve / sve" (adv. ngày mai).
//   4. Nhận diện bộ đuôi tương lai SỐ ÍT.
//   5. So sánh đuôi gián tiếp Nữ "-i" (-iyā) vs Nam "-i" (-inā…).
// ---------------------------------------------------------------------------
List<QuizQuestion> _buildQuiz() {
  return const [
    QuizQuestion(
      questionText:
          '1. Định sở cách (Locative / Sattamī) số nhiều của danh từ NỮ tánh tận cùng "-i" (vd. bhūmi, aṭavi, ratti) mang đuôi nào?',
      options: [
        'A. -īsu (bhūmīsu, aṭavīsu, rattīsu)',
        'B. -esu (giống nam tánh "-a")',
        'C. -āsu (giống nữ tánh "-ā")',
        'D. -īhi (bhūmīhi)',
      ],
      correctIndex: 0,
    ),
    QuizQuestion(
      questionText:
          '2. Chia động từ "paca" (nấu) ở thì TƯƠNG LAI ngôi thứ 3 số ít ("anh ta sẽ nấu") là dạng nào?',
      options: [
        'A. pacitā',
        'B. pacissati',
        'C. pacissāmi',
        'D. pacanti',
      ],
      correctIndex: 1,
    ),
    QuizQuestion(
      questionText:
          '3. Từ "suve / sve" thuộc loại từ nào và có nghĩa là gì?',
      options: [
        'A. Danh từ Nữ tánh "-i" nghĩa là "mặt trời".',
        'B. Danh từ Nam tánh "-a" nghĩa là "người bạn".',
        'C. Phó từ (adv.), nghĩa là "ngày mai"; thường dùng với thì tương lai.',
        'D. Đại từ nhân xưng ngôi 3 nghĩa là "họ".',
      ],
      correctIndex: 2,
    ),
    QuizQuestion(
      questionText:
          '4. Bộ đuôi thì TƯƠNG LAI cho các NGÔI SỐ ÍT (ngôi 3 / ngôi 2 / ngôi 1) là nào?',
      options: [
        'A. -ati / -asi / -āmi (như thì hiện tại)',
        'B. -issati / -issasi / -issāmi',
        'C. -issanti / -issatha / -issāma (bộ này là số nhiều)',
        'D. -tu / -hi / -mi (mệnh lệnh cách)',
      ],
      correctIndex: 1,
    ),
    QuizQuestion(
      questionText:
          '5. Phát biểu nào ĐÚNG về sự KHÁC NHAU chính giữa biến cách NỮ tánh "-i" (bhūmi) và NAM tánh "-i" (vd. muni, kapi, aggi)?',
      options: [
        'A. Hoàn toàn giống hệt nhau, chỉ khác giống (gender).',
        'B. NỮ tánh "-i" có đuôi gián tiếp số ít "-iyā" (bhūmiyā) dùng chung cho SDC/XXC/CĐC/STC, còn NAM tánh "-i" có các đuôi RIÊNG: -inā (SDC), -issa (STC/CĐC), -ismā (XXC), -ismiṃ (ĐSC).',
        'C. Cả hai đều có số nhiều CC là "-āyo".',
        'D. Nữ tánh "-i" không có ĐC số ít, nam tánh thì có.',
      ],
      correctIndex: 1,
    ),
  ];




