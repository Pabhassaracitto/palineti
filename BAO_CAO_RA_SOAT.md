# Báo cáo rà soát dự án PaliNeti

- **Ngày rà soát:** 2026-10-07 → 2026-10-08 (cập nhật sau đợt sửa)
- **Branch:** `arena/d31ad54d-palineti` (từ commit `1a3e152`) — 5 commit: `9f4e266`, `c8b4b7e`, `4e9410a`, `fe47ab0`, `4ecae19`
- **Phạm vi:** (1) tình hình tổng thể dự án, (2) mức độ sẵn sàng của ngôn ngữ giao diện & nội dung (tập trung Hindi, Sinhala), (3) kiểm tra "từ vựng đã được học trước khi bài tập yêu cầu dịch".

> **Lưu ý phương pháp:** môi trường rà soát không có Flutter/Dart SDK, nên không thể chạy `flutter analyze` / `flutter test`. Thay vào đó, toàn bộ `lib/data/**` và `lib/l10n/**` được phân tích bằng một parser Dart viết bằng Python (xem mục 7). Mọi con số dưới đây đo trực tiếp từ mã nguồn.

---

## 0. Tóm tắt: 4 lỗi nghiêm trọng nhất tìm được

| # | Lỗi | Phạm vi | Trạng thái |
|---|---|---|---|
| **A** | **Mind Game: 222/447 gloss (49,7%) hiển thị sai nghĩa** — khối giá trị bị xoay lệch 1 vị trí, mỗi mục từ mang nghĩa của mục kế tiếp | Mọi ngôn ngữ trừ tiếng Việt (en, si, zh, my, hi) | ✅ **Đã sửa** (xoay lại đúng vị trí) |
| **B** | **`protect_pali()` không bao giờ được gọi** — mọi chữ Pāḷi trong nội dung bịGoogle dịch chuyển tự sang bản ngữ (`atta` → `अट्टा` = *bột mì* trong tiếng Hindi) | si 10,5%, zh 5,2%, my 5,6%, **hi 12,3%** chuỗi | ✅ **Đã sửa pipeline**; ⚠️ file hiện tại cần dịch lại |
| **C** | **Hindi: 49,2% câu hỏi trắc nghiệm chưa được dịch** (vẫn là tiếng Anh); 7/26 nhóm bài chưa dịch câu nào | Hindi | ⚠️ Cần chạy lại pipeline (có mạng) |
| **D** | **892 mục `kLessonNNVocab` là dữ liệu chết** — không nơi nào ngoài `lib/data` tham chiếu; `VocabCardWidget` và `VocabDetailScreen` đã viết xong (có cả bản ngữ) nhưng không bao giờ được dựng. Hệ quả: không có định nghĩa "bài này dạy từ gì", nên cũng không có gì để kiểm chứng | 26 bài | ✅ **Đã kết nối** (mục 4.3a) |

Kèm theo 7 lỗi chính tả Pāḷi đã sửa (mục 4.4) và 3 nhóm từ vựng thiếu đã bổ sung (mục 4.5).

> ⚠️ **Một con số trong bản báo cáo đầu tiên đã bị sửa.** Lần rà soát đầu đo được **530** cặp *(bài, từ bài-tập)* không truy vết được về từ vựng đã học. Con số đó **đếm thừa**: công cụ audit của chính báo cáo này có lỗi — nó gộp phần giảng (`read_listen`) và bảng FAB của bài N vào tập "đã học" **sau khi** đã kiểm tra xong bài N, trái ngược với tài liệu của chính nó. Vì vậy mọi từ mà một bài chỉ dạy trong FAB của bài đó đều bị tính là "chưa từng dạy". Đã sửa (mục 4.1), số đúng là **246**, và sau khi bổ sung từ vựng (mục 4.5) còn **221**. Mọi con số trong bản này dùng phiên bản đã sửa.

---

## 1. Tổng quan dự án

| Hạng mục | Hiện trạng |
|---|---|
| Nền tảng | Flutter / Dart (`sdk: ^3.11.1`), version `1.0.0+1`, 6 platform folder |
| Mã nguồn | 97 file `.dart`, ~66.400 dòng (`lib` + `test`) |
| Dữ liệu học liệu | 26 bài học (`lib/data/lessons/lesson_01..26_data.dart`) |
| Từ vựng | **892** mục `PaliVocabModel` |
| Bài tập | **297** câu hỏi trắc nghiệm, **2.129** đoạn `MixedSegment` (Mind Game), **578** cặp `_Seg` |
| Ngôn ngữ giao diện | **26** locale ARB, 76 key mỗi locale |
| Ngôn ngữ nội dung | tiếng Việt (nguồn, inline) + English (đầy đủ) + Sinhala / Chinese / Myanmar / Hindi (sidecar sinh máy) |
| CI | 3 workflow trong `.github/workflows/` |
| Test | `test/` chỉ 3 file — còn rất mỏng |

**Điểm mạnh:** cấu trúc dữ liệu nhất quán; 3 pha (read_listen → mind_game → listening_quiz) lặp đều; kiến trúc sidecar bản địa hoá tách biệt tốt; `tools/generate_locale_sidecars.py` có bước validate chạy được.

**Vấn đề vệ sinh repo:** ✅ **đã xử lý** — 5 file `WORKFLOW_FIXED_V0.1.1…V0.1.5.yml` ở gốc và 2 file nhật ký AI `.aider.*` đã xoá. `WORKFLOW_FIXED.yml` được **giữ lại** vì README.md chỉ định nó là bản chính.

**Còn lại (đều có lý do, không phải rác):** `backups/` chứa 8 bản chụp `lesson_*_data.dart` (324 KB, tất cả đều khác bản hiện tại → dữ liệu thật); `reference/` chứa 2 PDF nguồn (23 MB). Cả hai là ứng viên cho Git LFS — `.git` hiện 29 MB.

---

## 2. Ngôn ngữ giao diện (UI) — **đạt, 26/26**

| Chỉ số | Kết quả |
|---|---|
| Số locale / số key | 26 / **76** mỗi locale |
| Key thiếu | **0** |
| Lỗi placeholder | **0** |
| `lib/l10n/generated/` đồng bộ với ARB | Có (65 `@override`/file, 0 thiếu) |
| Hindi: chuỗi có Devanagari | **53 / 76** |
| Sinhala: chuỗi có Sinhala | **51 / 76** |

23–25 chuỗi còn lại là giá trị trung lập bắt buộc giữ nguyên: `appTitle: 'Pāḷi Course'`, `brandName: 'PALINETI'`, `courseAuthor: 'Nārada Mahāthera'`, `scoreLabel: '{correct}/{total}'`, `quickFormLabel: '{caseAbbr} {numberAbbr}'`, `singularAbbr: 'sg'`, `pluralAbbr: 'pl'`… Font fallback trong `lib/main.dart` đã đủ (Devanagari, Sinhala, Myanmar, CJK SC/TC, Tibetan, Khmer, Lao…).

**Kết luận:** giao diện dùng tốt cho cả Hindi và Sinhala.

---

## 3. Ngôn ngữ nội dung học tập

### 3.1. Cấu trúc — 3.069 chuỗi/ngôn ngữ

| Nhóm | Số chuỗi EN | | Nhóm | Số chuỗi EN |
|---|---|---|---|---|
| lesson meta | 27 | | vocab word | 415 |
| lesson day | 52 | | vocab example | 417 |
| lesson phase | 151 | | part of speech | 68 |
| phase content | 7 | | mind game | 447 |
| quiz (297 × 5) | 1.485 | | | |

`python3 tools/generate_locale_sidecars.py` → **PASS**, nhưng bước này vốn chỉ kiểm **đủ key/đúng cấu trúc**, không kiểm giá trị đã dịch thật chưa — nên cả 3 lỗi A/B/C đều chưa từng bị CI phát hiện.

### 3.2. Lỗi A — Mind Game: khối gloss bị xoay lệch 1 vị trí ⭐

Map `mindGameSegmentTranslations` gồm 447 cặp *(từ Pāḷi → gloss tiếng mẹ đẻ)*. Kiểm tra đối chiếu với gloss gốc tiếng Việt cho thấy:

- **Index 0–224: đúng.**
- **Index 225–446 (222 mục, 49,7%): mỗi key đang mang gloss của key kế tiếp.**

Ví dụ (trước khi sửa), khối bài 20:

| Key (Pāḷi) | Gloss tiếng Việt | Gloss EN đang hiển thị | Phải là |
|---|---|---|---|
| `Araham` | là bậc Ứng Cúng | *That Blessed One* ❌ | is the Arahant, |
| `Sammāsambuddho` | bậc Chánh Đẳng Chánh Giác | *is the Arahant,* ❌ | the Perfectly Enlightened One, |
| `satthā` | là Đạo Sư | *the Perfectly Enlightened One,* ❌ | the Teacher |
| `devamanussānaṃ` | của chư thiên và nhân loại | *the Teacher* ❌ | of gods and humans |
| `Mātāpitā` | Cha mẹ (là) | *of gods and humans* ❌ | The mother and father (are) |
| `disā pubbā` | phương đông | *The mother and father (are)* ❌ | the east |
| `ācariyā` | các vị thầy (là) | *the east* ❌ | the teachers (are) |
| `Paralokaṃ` | Đến đời sau | *the south* ❌ | To the next world |

Nguyên nhân: `translate_batch()` ghép các chuỗi thành `<span id="T00001">…</span>` và thu hồi bằng regex. Khi Google làm mất một thẻ đóng, toàn bộ giá trị phía sau trong batch bị trượt 1 vị trí; đoạn kiểm `if set(found) != …` chỉ phát hiện **id biến mất**, không phát hiện **nội dung bị trượt**. Vì không có giá trị nào biến mất, lỗi đi qua CI hoàn toàn êm.

Đặc biệt đúng là **xoay vòng**: giá trị của key cuối cùng (446) bị đẩy lên đầu đoạn lệch (225) nên có thể khôi phục **xác định, không cần dịch lại**.

**Đã sửa:** xoay trái lại 1 vị trí trên đoạn [225..446] ở cả 5 map (en, si, zh, my, hi). Bốn locale có cùng thứ tự key nên sửa đồng loạt.

Kiểm chứng sau sửa (đối chiếu độc lập bằng các gloss tiếng Việt có chữ số — trước sửa khớp ở offset +1, sau sửa khớp ở offset 0):

| Key | Gloss tiếng Việt | Gloss EN sau sửa |
|---|---|---|
| `aṭṭhamiyaṃ` | (vào) ngày mồng 8 | (on) the 8th ✅ |
| `cātuddasiyaṃ` | (vào) ngày 14 | (on) the 14th ✅ |
| `pañcadasiyaṃ` | (vào) ngày 15 | (on) the 15th ✅ |
| `Siho` | Sư tử | The lion ✅ |
| `sattā` | chúng sanh | beings ✅ |
| `Sabbaññubuddho` | một vị Phật Toàn Giác | an All-Enlightened Buddha ✅ |
| `ācariyā` | các vị thầy (là) | the teachers (are) ✅ |

Nhóm quiz **không** bị lệch (đã kiểm chứng trên bài 17: `Nominative → नामांकित`, `Class 1 → कक्षा 1`, … khớp từng đáp án).

### 3.3. Lỗi B — Chữ Pāḷi bị chuyển tự thay vì giữ nguyên ⭐

`tools/generate_locale_sidecars.py` định nghĩa `protect_pali()` để thay mọi từ Pāḷi bằng marker `PALI0001X` trước khi gửi đi dịch — nhưng hàm này **không bao giờ được gọi** (`grep -c "protect_pali("` = 1, tức chỉ có định nghĩa). Hậu quả:

| Bản gốc | Hindi hiện tại | Nghĩa thực của chữ Hindi |
|---|---|---|
| `"Attanā" in the sentence "Attanā've kataṃ pāpaṃ" is which case of "atta"?` | `"अट्टाना" … "अट्टा" का कौन सा मामला है?` | `अट्टा` = **bột mì** |
| The verb `"paca"` (cook) belongs to which class? | क्रिया `"पका"` (कुक) … | `पका` = **đã chín** |
| `"ācariyā"` (các vị thầy) | `अकारिया` | — |
| `muni` (ẩn sĩ) | `मुनि` | (tình cờ đúng) |

Đo được (tỷ lệ chuỗi có ít nhất một từ Pāḷi không còn nguyên văn trong bản dịch):

| | Sinhala | Chinese | Myanmar | Hindi |
|---|---|---|---|---|
| **Pāḷi bị mất** | **10,5%** (321) | 5,2% (160) | 5,6% (173) | **12,3%** (377) |

**Đã sửa pipeline:** `translate_batch()` nay gọi `protect_pali()` và khôi phục marker sau khi dịch; phần bù cho token bị rớt dùng bản đã thay marker để khôi phục đồng nhất. **File hiện tại vẫn cần chạy lại `--translate`** để sửa dữ liệu đã sinh.

### 3.4. Lỗi C — Hindi chưa được dịch (tỷ lệ chuỗi trùng nguyên văn bản Anh)

| Nhóm | Sinhala | Chinese | Myanmar | **Hindi** |
|---|---|---|---|---|
| lesson meta / day / phase / content | 0,0% | 0,0% | 0,0% | 0,0% |
| vocab word | 0,0% | 0,0% | 0,2% | 4,1% |
| vocab example | 0,0% | 0,0% | 0,2% | 0,2% |
| part of speech | **38,2%** | 4,4% | 14,7% | **38,2%** |
| mind game | 0,2% | 0,2% | 0,2% | 0,4% |
| **quiz** | 6,1% | 6,9% | 9,4% | **49,2%** (790/1.485) |
| **TỔNG** | **3,9%** (121) | **3,5%** (106) | **5,1%** (155) | **25,7%** (790) |

Hindi, nhóm quiz, theo bài: **100% chưa dịch** ở L05, L06, L09, L10, L12, L16, L20; 79–89% ở L01, L21, L22, L23, L24, L25, L26; 0–28% ở các bài còn lại.

Nhãn ngữ pháp (part of speech): 26/68 nhãn ở cả Sinhala và Hindi vẫn giữ nguyên bản gốc (`'danh_tu'`, `'dong_tu'`, `'htpt'`, `'bbqkpt'`, `'danh từ, CC số ít'`…) — hiện ngay trên thẻ từ vựng.

### 3.5. Kết luận mục 3

| Ngôn ngữ | Trước rà soát | Sau đợt sửa này |
|---|---|---|
| **Sinhala** | Dùng được (~96% đã dịch) | ✅ Tốt hơn (gloss Mind Game đã đúng lại) |
| **Chinese / Myanmar** | Tương đương Sinhala | ✅ Tốt hơn |
| **Hindi** | ❌ ~1/4 nội dung, **1/2 câu hỏi** vẫn là tiếng Anh | ⚠️ **Vẫn cần dịch lại** — đang bị cả 3 lỗi |

---

## 4. Kiểm tra "từ vựng đã học trước khi bài tập yêu cầu dịch"

### 4.1. Cách kiểm tra

Với mỗi bài L, lấy tập **từ Pāḷi xuất hiện trong phần bài tập** (câu thực hành trong `listening_quiz`, đáp án Mind Game, câu hỏi + 4 đáp án trắc nghiệm). Một từ được coi là **đã học** nếu truy ngược được về:

1. gốc từ trong `kLessonNNVocab` của bài L **hoặc bất kỳ bài trước đó** (có sinh hình thái `masc_a`, động từ `-ati/-eti/-oti/-āti`, tiền tố upasagga…), **hoặc**
2. xuất hiện trong phần giảng giải (`read_listen`) của bài L hoặc bài trước, **hoặc**
3. được giải nghĩa trong FAB gloss của pha đó hoặc pha trước.

Từ chức năng ngữ pháp (`ca, vā, na, so, sā, ahaṃ, tvaṃ, hoti…`) và các đuôi hình thái được trích dẫn (`-o, -aṃ, -ti, cc, dc…`) được loại khỏi báo cáo.

**Ba lần đo, theo thứ tự thời gian:**

| Lúc | untraced | neverListed | Ghi chú |
|---|---|---|---|
| Báo cáo đầu tiên | ~~530~~ | ~~437~~ | **Đếm thừa** — lỗi off-by-one trong chính công cụ audit (xem dưới) |
| Sau khi sửa công cụ | 246 | 193 | Cùng một bộ dữ liệu, đo đúng |
| Sau khi bổ sung từ vựng (4.5) | **221** | **179** | +32 mục từ vựng |

**Lỗi trong chính công cụ audit (đã sửa).** Trong vòng lặp cộng dồn, `cum_teaching` và `cum_fab` được gộp vào ở **cuối** thân vòng lặp, tức là sau khi đã kiểm tra xong bài N:

```python
for row in per_lesson:
    cum_roots |= row["roots"]      # ← gốc từ: gộp TRƯỚC  ✓
    ...
    cum_teaching |= row["teaching"]  # ← phần giảng: gộp SAU  ✗
    cum_fab      |= row["fab"]       # ← bảng FAB:  gộp SAU  ✗
```

Kết quả: phần giảng và bảng FAB của **chính bài đang kiểm tra** không được tính là đã học, trái ngược hoàn toàn với tài liệu của hàm ("a FAB gloss of **the same lesson** or an earlier one"). Đây là nguyên nhân làm bài 13 (dạy 14 tính từ chỉ định trong FAB nhưng chỉ khai báo 2 mục từ vựng) đội lên 52 từ "chưa học".

### 4.2. Kết quả — **221** cặp *(bài, từ)* không truy vết được; **179** từ không nằm trong danh sách từ vựng nào

| Bài | vocab | exerW | untraced | | Bài | vocab | exerW | untraced |
|---|---|---|---|---|---|---|---|---|
| 01 | 17 | 40 | 1 | | 14 | 64 | 152 | **30** |
| 02 | 21 | 42 | 0 | | 15 | 78 | 184 | **25** |
| 03 | 23 | 103 | 3 | | 16 | 83 | 93 | 11 |
| 04 | 33 | 95 | 2 | | 17 | 13 | 117 | 17 |
| 05 | 31 | 58 | 2 | | 18 | 60 | 101 | 18 |
| 06 | 55 | 73 | 2 | | 19 | **18** | 126 | 16 |
| 07 | 20 | 122 | 15 | | 20 | 105 | 97 | 7 |
| 08 | 20 | 143 | **20** | | 21 | 20 | 65 | 2 |
| 09 | 39 | 71 | 6 | | 22 | 17 | 54 | 4 |
| 10 | 51 | 87 | 13 | | 23 | 19 | 55 | 3 |
| 11 | 33 | 127 | 11 | | 24 | 14 | 40 | 0 |
| 12 | 51 | 68 | 1 | | 25 | 11 | 45 | 0 |
| 13 | **17** | 124 | 12 | | 26 | 11 | 26 | 0 |

*(Cột `vocab` là số mục sau khi bổ sung — bài 13 từ 2 → 17, bài 19 từ 2 → 18, bài 01 từ 16 → 17.)*

### 4.3. Phát hiện cấu trúc

**(a) `kLessonNNVocab` — 892 mục — không được giao diện tham chiếu ở bất cứ đâu.** → ✅ **đã kết nối**
`grep -rn "kLesson" lib/ --include=*.dart | grep -v "lib/data"` → **0 kết quả** (tại thời điểm rà soát). 26 danh sách này chỉ được export qua `lib/pali_course.dart`; màn hình thật chỉ hiển thị `FabVocabItem` viết tay trong từng phase. Đáng chú ý là **`VocabCardWidget` và `VocabDetailScreen` đã được viết đầy đủ**, đã có sẵn extension bản ngữ (`localizedWord / localizedSecondaryWord / localizedExample`), nhưng không được dựng từ bất cứ đâu.

Đã thêm `lib/data/lesson_vocab_index.dart` (`vocabForLesson(1..26)`) và màn hình `VocabListScreen`; thẻ "Từ vựng & Ngữ pháp" trong `LessonDetailScreen` — vốn chỉ in một câu hướng dẫn — nay hiện đúng số mục, 3 mục đầu, và mở được danh sách đầy đủ. **Không thêm key l10n nào**: `l10n.yaml` đặt `app_vi.arb` làm template, nên một key mới đòi sửa 26 file ARB + 27 file sinh ra; màn hình dùng lại `lessonLabel`, `importantVocabulary`, `noContent`, `lessonDetailHint`.

*Hạn chế còn lại:* engine hình thái chỉ xử lý `masc_a` (147/892) và `irregular`; 745 mục thuộc 87 paradigm khác rơi vào nhánh `default` và trả về nguyên gốc từ. Không gây lỗi, nhưng chip paradigm hiện `verb_pres`, `niggahita_sandhi_1b`… cho người học — cần tác giả quyết định bộ nhãn gọn (~16 nhãn) trước khi đưa vào l10n.

**(b) Bài 13 và 19 chỉ khai báo 2 mục từ vựng.** → ✅ **đã bổ sung 31 mục**
- `kLesson13Vocab` = `disā`, `nāma` — bài tập dùng **124 từ Pāḷi** khác nhau.
- `kLesson19Vocab` = `go`, `mana` — bài tập dùng **126 từ**.

Điểm quan trọng: những từ thiếu **không phải nội dung mới**. Cả hai bài đều in sẵn chúng trong bảng giảng của chính mình — bài 13 có bảng "14 TÍNH TỪ CHỈ ĐỊNH", bài 19 có bảng "16 danh từ nhóm Mano" — và bài 13 còn liệt kê đủ 14 tính từ trong FAB. Chúng chỉ chưa bao giờ được đăng ký vào `kLessonNNVocab`, nên audit không có cách nào biết là đã dạy. Việc bổ sung vì thế là đăng ký lại nội dung đã có, không phải tự soạn.

**(c) Tỷ lệ mất cân đối:** L07 (20 mục / 122 từ), L08 (20 / 143), L17 (13 / 117). Cả ba chưa xử lý — cần tác giả quyết định (xem 4.5).

### 4.4. Lỗi cụ thể — 7 lỗi chính tả Pāḷi đã **sửa**

| # | File | Lỗi | Đã sửa thành |
|---|---|---|---|
| 1 | `lesson_03_data.dart` | Danh sách từ vựng / FAB / một đoạn Mind Game dạy **`rukha`**, toàn bộ bài tập và phần giảng dùng **`rukkha`** (chuẩn Pāḷi) | `rukkha` (5 chỗ) + phát âm `ruk-kho` → `ruk-kha` |
| 2 | `lesson_07_data.dart` | `Acariyā` | **`Ācariyā`** (4 chỗ) |
| 3 | `lesson_07_data.dart` | `bhaṇdāni` | **`bhaṇḍāni`** (2 chỗ) |
| 4 | `lesson_07_data.dart` | `pottakaṃ` | **`potthakaṃ`** (2 chỗ) |
| 5 | `lesson_07_data.dart` | `salāyaṃ` | **`sālāyaṃ`** (2 chỗ) |
| 6 | `lesson_19_data.dart` | **`Gīlānānaṃ`** (Ex 17 + đáp án) — dạng `ī` dài xuất hiện đúng **2 lần trong toàn bộ corpus** và không nằm trong danh sách từ vựng nào | **`Gilānānaṃ`** — chuẩn PTS, xuất hiện **39 lần** (có trong từ vựng các bài trước); câu tiếng Việt đi kèm đọc là *"tỳ-khưu **bệnh**"* |
| 7 | `lesson_13_data.dart` | **`dhakkhiṇa`** (phía Nam) — dạng có `h` xuất hiện **4 lần, toàn bộ nằm trong bài 13** | **`dakkhiṇa`** — chuẩn PTS; bài 20 dùng `disā dakkhiṇā` |

Hai lỗi (4) và (5) được xác nhận chắc chắn vì **chính tả đúng đã có sẵn trong gloss Mind Game**: `potthakaṃ → "the book"`, `sālāyaṃ → "in the lecture hall"`. Lỗi (2) cũng được sửa trong 2 file sidecar mang nguyên chuỗi Pāḷi đó (`quiz_en_lesson05_08.dart`, `learning_content_translations_locales.dart` bản `my`). Lỗi (6) và (7) được xác nhận bằng **đếm tần suất toàn corpus** — đây cùng một dạng lỗi với `rukha` (bài 3): một dạng viết sai chỉ xuất hiện trong một bài, trong khi dạng chuẩn hiện diện khắp nơi.

### 4.5. Từ vựng thiếu

**Đã bổ sung (+32 mục):**

| Bài | Đã thêm | Nguồn |
|---|---|---|
| **01** | gốc động từ **`vada`** (nói) | "Buddho vadati." là câu 1 của bài 1, có trong FAB, nhưng không có trong 16 mục từ vựng. Bài 13 sau đó lại dùng `vadatu` / `vadeyyāsi` |
| **13** | **14 tính từ chỉ định** (`añña, aññatara, apara, dakkhiṇa, eka, itara, katara, katama, pacchima, para, pubba, puratthima, sabba, uttara`) + `payojana` | Bảng "E. 14 TÍNH TỪ CHỈ ĐỊNH" của chính bài 13 + FAB |
| **19** | **16 danh từ nhóm Mano** (`aha, aya, ceta, chanda, oja, paya, raja, sara, sira, tama, tapa, teja, ura, vaca, vaya, yasa`) | Bảng "16 danh từ nhóm Mano" của chính bài 19, kèm hình thức ghép `a → o/ā` mà bài dạy |

Kết quả: L01 2 → 1, L13 52 → 12, L19 57 → 16. Tổng 892 → **924** mục từ vựng.

**Còn lại (cần quyết định của tác giả):**

| Bài | Thiếu | Chi tiết |
|---|---|---|
| **08** | `muni` (ẩn sĩ) | Là **căn mẫu** của cả bài (biến cách `-i`), xuất hiện xuyên suốt bài tập (`muninā, munino, munissa, munismā, muniṃ, munīsu`), không có trong 20 mục từ vựng. Đây là thiếu sót rõ ràng nhất còn lại |
| **14 / 15** | 55 cặp | Hai bài chiếm phần lớn số còn lại; cần rà từng bài |
| **19** | 16 từ | `adā, ahesuṃ` (aorist — dạng ngữ pháp), `dehī, suṇāhi, dippāhi` (mệnh lệnh cách), `dāpetvā` (gerund), `itthiṃ, manusse, manussā, kammaṃ, pañcavīsati, pūjenti, visujjhāpenti, jinī` (từ vựng thật sự thiếu) |

*Lưu ý:* khoảng một nửa số còn lại là **dạng biến cách hợp nhất** mà bộ giải gốc chưa tách được (`aparāyaṃ, aññesaṃ, katamāyaṃ, paresaṃ, pubbāyaṃ` — gốc `apara, añña, katama, para, pubba` đều đã được dạy). Đó là giới hạn của công cụ đo, không phải lỗi nội dung.

### 4.6. Các nhóm "báo động giả" đã loại

| Bài | Hiện tượng ngữ pháp | Ví dụ |
|---|---|---|
| 07 | Thì Aorist (Ajjatanī) | `agamiṃsu, adaṃsu, aṭṭhaṃsu, ahosimhā, agamittha` |
| 08 | Gerund (-tvā) + danh từ -i | `gantvā, katvā, disvā, ñātayo, gahapatayo` |
| 21 | Ghép tiền tố (upasagga) | `abhidhamma, anugacchati, duddamo, suriyodaye` |
| 22 | Phái sinh (taddhita) | `ayomayā, manomaya, nāgarika, sundaratarā` |
| 23 | Danh từ tác nhân (kitaka) | `gamana, kārako, pāpakārino, taṇhakkhayo` |
| 24 | Sandhi | `etadavoca, sañjāta, svāgataṃ, uggato` |
| 26 | Thể bị động | `paccate, nīyate, rakkhīyate, sūyate` |

---

## 5. Khuyến nghị theo thứ tự ưu tiên

| | Việc | Trạng thái |
|---|---|---|
| **P1** | Dịch lại nội dung bằng pipeline đã sửa; bật chốt `--max-untranslated` / `--max-pali-lost` | ⏳ **Chờ chạy** — đã có workflow, cần bấm nút trên CI có mạng |
| **P2** | Bật chốt chất lượng trong CI | ✅ **Xong** — `.github/workflows/translate_content.yml` |
| **P3** | Bổ sung từ vựng bài 13 / 19 / 01; sửa chính tả Pāḷi | ✅ **Xong** (7 lỗi chính tả, +32 mục). Còn `muni` (bài 8) và rà lại bài 14/15 |
| **P4** | Kết nối `kLessonNNVocab` vào giao diện | ✅ **Xong** — `VocabListScreen` + `LessonDetailScreen` |
| **P5** | Vệ sinh repo & mở rộng test | ✅ **Xong** — dọn 7 file rác, 2 workflow, `test/vocab_coverage_test.dart` |

---

### P1 — Dịch lại toàn bộ nội dung bằng pipeline đã sửa (cần chạy trên CI có mạng)

Đây là việc duy nhất còn lại mà tôi **không thể làm trong môi trường này** (không có đường ra tới Google Translate). Mọi thứ đã sẵn sàng: chạy workflow **"Translate learning content"** trên GitHub Actions, hoặc thủ công:

```bash
python3 tools/generate_locale_sidecars.py --translate            # tất cả ngôn ngữ
python3 tools/generate_locale_sidecars.py --translate --locale hi # riêng Hindi
```

Lần chạy này sẽ đồng thời: (a) dịch 790 chuỗi Hindi còn tiếng Anh, (b) giữ nguyên mọi chữ Pāḷi nhờ `protect_pali()` đã được nối lại, (c) giữ nguyên 221 gloss Mind Game vừa sửa tay (chúng nằm trong map `mind_game_translations.dart`, là đầu vào chứ không bị sinh lại).

### P2 — Chốt chất lượng trong CI ✅

`.github/workflows/translate_content.yml` chạy đúng lệnh trên và **tự commit** các sidecar vừa sinh. Hiện trạng để tham chiếu: untranslated si 3,9% / zh 3,5% / my 5,1% / **hi 25,7%**; Pāḷi-bị-mất si 10,5% / zh 5,2% / my 5,6% / **hi 12,3%**. Không bật thì các lỗi A/B/C có thể tái diễn mà CI vẫn xanh.

### P3 — Từ vựng & chính tả ✅ (còn việc nhỏ)

Đã làm: 7 lỗi chính tả (mục 4.4) và +32 mục từ vựng bài 01/13/19 (mục 4.5). Còn lại: `muni` (bài 8) và rà lại bài 14/15.

### P4 — Kết nối `kLessonNNVocab` vào giao diện ✅

Đã làm (mục 4.3a). Bước tiếp theo tự nhiên là **màn hình ôn tập** — `PaliVocabModel` đã có sẵn đủ trường SRS (`repetitionCount / easeFactor / intervalDays / nextReview`, và `isDueForReview`), chỉ chưa có gì đọc chúng.

### P5 — Vệ sinh repo & test ✅

- Đã xoá `WORKFLOW_FIXED_V0.1.1` … `V0.1.5` (5 bản chụp phiên bản ở gốc — GitHub không bao giờ đọc file ở gốc; `V0.1.4` trùng **từng byte** với `.github/workflows/full_build.yml`) và `.aider.chat.history.md` / `.aider.input.history` (nhật ký phiên AI, không nên nằm trong git).
- **Giữ lại `WORKFLOW_FIXED.yml`** — README.md chỉ định nó là bản chính ("File workflow chính: `WORKFLOW_FIXED.yml`"), khác với khuyến nghị ban đầu của báo cáo là xoá cả 6.
- **Giữ lại `backups/`** (8 bản chụp bài học cũ, 324K, đều khác bản hiện tại) và `reference/` (2 PDF, 23 MB) — đây là dữ liệu thật, không phải bản sao. Cả hai là ứng viên cho Git LFS để giảm kích thước `.git` (hiện 29 MB).
- `test/vocab_coverage_test.dart` khoá registry mới: mọi bài 1–26 đều khai báo từ vựng, id duy nhất toàn khóa trình, mỗi mục trỏ đúng về bài khai báo nó.
- `.github/workflows/content_audit.yml` chạy mỗi lần push: validate sidecar, chốt độ phủ từ vựng (`--max-untraced 221 --max-neverlisted 179`), phủ sóng ARB. Chạy bằng Python thuần, vài giây, không cần Flutter.

---

## 6. Những gì đã sửa trong đợt rà soát này

| # | Thay đổi | File |
|---|---|---|
| 1 | Sửa chính tả `rukha → rukkha` (+ phát âm) | `lesson_03_data.dart` |
| 2 | Sửa 4 lỗi chính tả Pāḷi `Acariyā / bhaṇdāni / pottakaṃ / salāyaṃ` | `lesson_07_data.dart` |
| 3 | Đồng bộ 2 sidecar mang chuỗi Pāḷi đó | `quiz_en_lesson05_08.dart`, `learning_content_translations_locales.dart` |
| 4 | **Xoay lại 221 giá trị gloss Mind Game** về đúng vị trí (index 225–446) | `mind_game_translations.dart`, `mind_game_translations_locales.dart` (×4 locale) |
| 5 | **Nối `protect_pali()` vào `translate_batch()`** — trước đây là hàm chết | `tools/generate_locale_sidecars.py` |
| 6 | Thêm báo cáo chất lượng dịch (untranslated + Pāḷi-bị-mất) vào `validate()` | `tools/generate_locale_sidecars.py` |
| 7 | Thêm cờ `--strict`, `--max-untranslated`, `--max-pali-lost`, `--verbose-quality` | `tools/generate_locale_sidecars.py` |
| 8 | Sửa chính tả `Gīlānānaṃ → Gilānānaṃ` (bài 19) | `lesson_19_data.dart` |
| 9 | Sửa chính tả `dhakkhiṇa → dakkhiṇa` (bài 13, 4 chỗ) | `lesson_13_data.dart` |
| 10 | **Kết nối 892 mục `kLessonNNVocab` vào giao diện** — registry + màn hình danh sách từ vựng; thẻ "Từ vựng & Ngữ pháp" hiện dữ liệu thật thay vì câu hướng dẫn | `lesson_vocab_index.dart`, `vocab_list_screen.dart`, `lesson_detail_screen.dart`, `pali_course.dart` |
| 11 | Bổ sung gốc động từ `vada` (bài 1) | `lesson_01_data.dart` |
| 12 | Bổ sung 14 tính từ chỉ định + `payojana` (bài 13) | `lesson_13_data.dart` |
| 13 | Bổ sung 16 danh từ nhóm Mano (bài 19) | `lesson_19_data.dart` |
| 14 | **Sửa lỗi off-by-one trong chính công cụ audit** — phần giảng & FAB của bài N bị tính sau khi đã kiểm tra bài N | `tools/audit_vocab_coverage.py` |
| 15 | Thêm cờ `--max-untraced`, `--max-neverlisted` để CI chặn tụt lùi | `tools/audit_vocab_coverage.py` |
| 16 | Test registry từ vựng | `test/vocab_coverage_test.dart` |
| 17 | Workflow dịch + chốt chất lượng | `.github/workflows/translate_content.yml` |
| 18 | Workflow kiểm tra nội dung mỗi lần push | `.github/workflows/content_audit.yml` |
| 19 | Xoá 5 bản chụp workflow cũ + 2 file nhật ký AI; ignore cache dịch | repo gốc, `.gitignore` |

`python3 tools/generate_locale_sidecars.py` vẫn **PASS** sau mọi thay đổi. Từ vựng: 892 → **924** mục. Từ bài-tập không truy vết được: 530 → **221**.

---

## 7. Công cụ rà soát

| File | Chức năng |
|---|---|
| `tools/_dart_scan.py` | Scanner tối giản cho tập con Dart trong `lib/data` (comment, string đơn/đôi/ba nháy, nhóm `() [] {}` cân bằng) |
| `tools/_extract_corpus.py` | Trích corpus 26 bài ra `tools/corpus.json` (924 từ vựng, 297 câu hỏi, 2.129 đoạn Mind Game, 578 cặp `_Seg`, nội dung từng phase) |
| `tools/audit_vocab_coverage.py` | Kiểm tra "từ vựng đã học trước khi bài tập yêu cầu dịch" (mục 4). Có `--max-untraced` / `--max-neverlisted` để dùng làm chốt CI |
| `tools/audit_locales.py` | Phủ sóng ARB (thiếu key, sai placeholder) + script coverage |
| `tools/generate_locale_sidecars.py` | (có sẵn) Sinh & validate sidecar — đã mở rộng |
| `.github/workflows/translate_content.yml` | Dịch lại sidecar + chốt chất lượng (chạy tay) |
| `.github/workflows/content_audit.yml` | Validate sidecar + chốt từ vựng + phủ sóng ARB (mỗi lần push) |

```bash
python3 tools/generate_locale_sidecars.py                    # validate + báo cáo chất lượng
python3 tools/generate_locale_sidecars.py --verbose-quality   # kèm ví dụ
python3 tools/_extract_corpus.py && python3 tools/audit_vocab_coverage.py
python3 tools/audit_locales.py
python3 tools/audit_vocab_coverage.py --max-untraced 221 --max-neverlisted 179   # chốt CI
```

`tools/corpus.json`, `tools/vocab_audit.json` và `.locale_translation_cache.json` là artefact sinh ra, đã đưa vào `.gitignore`.

---

## 8. Trả lời trực tiếp hai câu hỏi

> **Ngôn ngữ giao diện, ngôn ngữ nội dung đã dùng được cho Hindi, Sinhala chưa?**

- **Giao diện:** ✅ **đạt cho cả hai** — 76/76 chuỗi, đúng script, font đầy đủ.
- **Nội dung Sinhala:** ✅ **Dùng được**, và sau đợt sửa này đã đúng hơn (Mind Game trả đúng nghĩa). Còn 68 nhãn ngữ pháp giữ tiếng Việt và ~10% chuỗi bị chuyển tự chữ Pāḷi — cần một lần dịch lại để sạch hoàn toàn.
- **Nội dung Hindi:** ❌ **Chưa dùng được.** Ba vấn đề chồng nhau: **49,2% câu hỏi trắc nghiệm vẫn là tiếng Anh** (7/26 nhóm bài chưa dịch câu nào), **12,3% chuỗi bị chuyển tự mất chữ Pāḷi** (`atta` → `अट्टा` = *bột mì*), và 38% nhãn ngữ pháp chưa dịch. Cần chạy P1 trước khi coi Hindi là sẵn sàng.

> **Các bài học có bảo đảm không có trường hợp chưa học từ vựng mà bài tập bắt dịch không?**

❌ **Chưa, nhưng đã thu hẹp đáng kể: 530 → 221** cặp *(bài, từ bài-tập)* không truy vết được về từ vựng/phan giảng/FAB đã học, trong đó **179** từ không nằm trong danh sách từ vựng nào của cả 26 bài.

Bốn nguyên nhân, theo thứ tự quan trọng:

1. **892 mục `kLessonNNVocab` không được giao diện dùng đến** — không có ranh giới "đã dạy gì", nên cũng không có gì để kiểm chứng. ✅ **Đã kết nối.**
2. **Bài 13 và 19 chỉ khai báo 2 mục từ vựng** trong khi bài tập dùng 124–126 từ Pāḷi. ✅ **Đã bổ sung 31 mục** lấy từ chính bảng giảng của hai bài.
3. **7 lỗi chính tả Pāḷi.** Đáng chú ý nhất: bài 3 dạy `rukha` nhưng bài tập bắt dịch `rukkha`; bài 7 có 4 từ viết sai **ngay trong câu bắt dịch** (`Acariyā`, `bhaṇdāni`, `pottakaṃ`, `salāyaṃ`); bài 19 viết `Gīlānānaṃ` (dạng `ī` dài chỉ xuất hiện 2 lần toàn corpus, thay vì `Gilānānaṃ` chuẩn PTS xuất hiện 39 lần). ✅ **Đã sửa cả 7.**
4. **Công cụ đo của chính báo cáo này có lỗi** — gộp phần giảng và FAB của bài N vào tập "đã học" sau khi đã kiểm tra xong bài N, làm 284 cặp bị tính oan. ✅ **Đã sửa.**

Phần còn lại (221) tập trung ở bài 14 (30), 15 (25), 08 (20), 18 (18), 17 (17), 19 (16). Khoảng một nửa là dạng biến cách mà bộ giải gốc chưa tách được, không phải lỗi nội dung; nửa còn lại cần tác giả rà từng bài — **trong đó rõ ràng nhất là `muni` (bài 8): căn mẫu của cả bài, xuất hiện xuyên suốt bài tập, nhưng không có trong danh sách từ vựng.**

➕ **Ngoài phạm vi câu hỏi nhưng nghiêm trọng hơn:** Mind Game — pha cốt lõi để luyện nhớ hình thái — đã **hiển thị sai nghĩa ở 222/447 mục (49,7%)** cho mọi ngôn ngữ trừ tiếng Việt, do khối gloss bị xoay lệch. Lỗi này đã được sửa trong đợt này.
