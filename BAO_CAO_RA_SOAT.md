# Báo cáo rà soát dự án PaliNeti

- **Ngày rà soát:** 2026-10-07
- **Branch:** `arena/d31ad54d-palineti` (từ commit `1a3e152`)
- **Phạm vi:** (1) tình hình tổng thể dự án, (2) mức độ sẵn sàng của ngôn ngữ giao diện & nội dung (tập trung Hindi, Sinhala), (3) kiểm tra "từ vựng đã được học trước khi bài tập yêu cầu dịch".

> **Lưu ý phương pháp:** môi trường rà soát không có Flutter/Dart SDK, nên không thể chạy `flutter analyze` / `flutter test`. Thay vào đó, toàn bộ dữ liệu `lib/data/**` và `lib/l10n/**` được phân tích bằng một parser Dart viết bằng Python (xem mục 6). Các con số dưới đây được đo trực tiếp từ mã nguồn, không ước lượng.

---

## 1. Tổng quan dự án

| Hạng mục | Hiện trạng |
|---|---|
| Nền tảng | Flutter / Dart (`sdk: ^3.11.1`), version `1.0.0+1`, 6 platform folder (android, ios, web, windows, linux, macos) |
| Mã nguồn | 97 file `.dart`, ~66.400 dòng (`lib` + `test`) |
| Dữ liệu học liệu | 26 bài học (`lib/data/lessons/lesson_01..26_data.dart`) |
| Từ vựng | **892** mục `PaliVocabModel` |
| Bài tập | **297** câu hỏi trắc nghiệm, **2.129** đoạn `MixedSegment` (Mind Game), **578** cặp `_Seg` |
| Ngôn ngữ giao diện | **26** locale ARB (`lib/l10n/app_*.arb`), 76 key mỗi locale |
| Ngôn ngữ nội dung | **5**: tiếng Việt (nguồn gốc, inline), English (đầy đủ), Sinhala / Chinese / Myanmar / Hindi (sidecar sinh máy) |
| CI | 3 workflow trong `.github/workflows/` (`edit_by_gemini.yml`, `full_build.yml`, `full_build_pro.yml`) |
| Test | `test/` chỉ có 3 file (`pali_course_test.dart`, `morphology/masc_a_test.dart`, `widget_test.dart`) — còn rất mỏng |
| Tài liệu | `README.md`, 3 file `RELEASE_*`, 4 file trong `handoff/`, 2 PDF trong `reference/` |

**Điểm mạnh:** cấu trúc dữ liệu bài học rất nhất quán; 3 pha (read_listen → mind_game → listening_quiz) lặp lại đều đặn; hệ thống sidecar bản địa hoá (`learning_content_translations*.dart`) tách biệt tốt khỏi dữ liệu gốc; `tools/generate_locale_sidecars.py` có bước validate chạy được.

**Vấn đề vệ sinh repo:** 6 file `WORKFLOW_FIXED_V0.1.x.yml` nằm lộn xộn ở thư mục gốc (đã được thay bằng `.github/workflows/`), thư mục `backups/` chứa 8 bản sao `lesson_*_data.dart` vẫn được track, còn `.aider.chat.history.md` / `.aider.input.history`.

---

## 2. Ngôn ngữ giao diện (UI) — **đạt, đầy đủ 26/26**

Đo bằng `tools/audit_locales.py`:

| Chỉ số | Kết quả |
|---|---|
| Số locale | 26 |
| Số key / locale | **76** (template là `app_vi.arb`) |
| Key bị thiếu | **0** ở mọi locale |
| Key khai báo thừa | **0** |
| Lỗi placeholder (`{count}`, `{correct}`, …) | **0** |
| File `lib/l10n/generated/app_localizations_*.dart` đồng bộ với ARB | Có (65 `@override` mỗi file, 0 key thiếu) |
| Hindi: chuỗi có chữ Devanagari | **53 / 76** |
| Sinhala: chuỗi có chữ Sinhala | **51 / 76** |

23–25 chuỗi còn lại không có chữ bản ngữ là các giá trị trung lập, bắt buộc giữ nguyên: `appTitle: 'Pāḷi Course'`, `brandName: 'PALINETI'`, `courseAuthor: 'Nārada Mahāthera'`, `scoreLabel: '{correct}/{total}'`, `quickFormLabel: '{caseAbbr} {numberAbbr}'`, `singularAbbr: 'sg'`, `pluralAbbr: 'pl'`, v.v.

Font fallback trong `lib/main.dart` đã khai báo đủ `Noto Sans Devanagari`, `Noto Sans Sinhala`, `Noto Sans Myanmar`, `Noto Sans CJK SC/TC`, `Noto Sans Tibetan`, `Noto Sans Khmer`, `Noto Sans Lao`, v.v.

**Kết luận mục 2:** Giao diện (menu, nút, nhãn, màn hình cài đặt) **đã dùng tốt cho cả Hindi và Sinhala**, không có chuỗi nào rơi về tiếng Việt hay tiếng Anh.

---

## 3. Ngôn ngữ nội dung học tập — **Sinhala dùng được; Hindi chưa đạt**

### 3.1. Cấu trúc

Nội dung được dịch qua 9 nhóm sidecar, tổng cộng **3.069 chuỗi cho mỗi ngôn ngữ đích**:

| Nhóm | Số chuỗi EN |
|---|---|
| lesson meta (tiêu đề/mô tả bài) | 27 |
| lesson day (tiêu đề ngày) | 52 |
| lesson phase (tiêu đề pha) | 151 |
| phase content (nội dung pha) | 7 |
| quiz (297 câu × 1 câu hỏi + 4 đáp án) | 1.485 |
| vocab word (nghĩa từ) | 415 |
| vocab example (câu ví dụ) | 417 |
| part of speech (nhãn ngữ pháp) | 68 |
| mind game (gloss tiếng mẹ đẻ) | 447 |

Công cụ có sẵn `python3 tools/generate_locale_sidecars.py` → **PASS**. Tuy nhiên bước validate này chỉ kiểm tra **đúng số key / đúng cấu trúc**, **không** kiểm tra giá trị đã được dịch thật hay chưa. Vì vậy lỗi dưới đây chưa từng bị CI phát hiện.

### 3.2. Tỷ lệ chuỗi "giống hệt bản tiếng Anh" (= chưa được dịch)

| Nhóm | Sinhala | Chinese | Myanmar | **Hindi** |
|---|---|---|---|---|
| lesson meta | 0,0% | 0,0% | 0,0% | 0,0% |
| lesson day | 0,0% | 0,0% | 0,0% | 0,0% |
| lesson phase | 0,0% | 0,0% | 0,0% | 0,0% |
| phase content | 0,0% | 0,0% | 0,0% | 0,0% |
| vocab word | 0,0% | 0,0% | 0,2% | **4,1%** |
| vocab example | 0,0% | 0,0% | 0,2% | 0,2% |
| part of speech | **38,2%** | 4,4% | 14,7% | **38,2%** |
| mind game | 0,2% | 0,2% | 0,2% | 0,4% |
| **quiz** | 6,1% | 6,9% | 9,4% | **49,2%** (730/1.485) |
| **TỔNG** | **3,8%** (117) | **3,5%** (107) | **5,0%** (153) | **25,3%** (776) |

### 3.3. Chi tiết phần thiếu của Hindi (nhóm quiz — 49,2%)

| Bài | Chuỗi chưa dịch | Bài | Chuỗi chưa dịch |
|---|---|---|---|
| L01 | **80%** (36/45) | L14 | 9% |
| L02 | 17% | L15 | 28% |
| L03 | 9% | L16 | **100%** (30/30) |
| L04 | 12% | L17 | 0% |
| L05 | **100%** (25/25) | L18 | 20% |
| L06 | **100%** (25/25) | L19 | 7% |
| L07 | 23% | L20 | **100%** (40/40) |
| L08 | 11% | L21 | **81%** (77/95) |
| L09 | **100%** (25/25) | L22 | **82%** (78/95) |
| L10 | **100%** (25/25) | L23 | **83%** (79/95) |
| L11 | 6% | L24 | **89%** (62/70) |
| L12 | **100%** (30/30) | L25 | **79%** (55/70) |
| L13 | 6% | L26 | **80%** (56/70) |

Ví dụ cụ thể (`lesson05_q01_01`):

- EN: *"1. What is the plural form of the Nominative (Nom.) / Vocative (Voc.) / Accusative (Acc.) for neuter "-a" nouns…"*
- **HI: giống nguyên văn bản tiếng Anh**
- SI: `"1. නපුංසක "-a" නාම පද සඳහා (උදා: ඵල, බීජ, පුප්පා) සඳහා නාමික (නාම.) …"` ✅
- ZH: `"1.中性“-a”名词（例如 phala、bīja、puppha）的主格 (Nom.) …"` ✅

### 3.4. Nhãn ngữ pháp (part of speech)

26 / 68 nhãn ở cả Sinhala và Hindi vẫn giữ nguyên bản gốc, ví dụ `'danh_tu'`, `'dong_tu'`, `'dai_tu'`, `'htpt'`, `'bbqkpt'`, `'hū Bhavissanti, Ngôi 3 số ít'`, `'danh từ, CC số ít'`. Nhãn này hiện **trên chính giao diện thẻ từ vựng**, nên người học Hindi/Sinhala sẽ thấy tiếng Việt.

### 3.5. Kết luận mục 3

| Ngôn ngữ | Đánh giá |
|---|---|
| **Sinhala** | **Dùng được.** ~96% nội dung đã dịch; phần chưa dịch chỉ là 68 nhãn ngữ pháp (38%). |
| **Chinese / Myanmar** | Tương đương Sinhala (96,5% / 95%). |
| **Hindi** | **Chưa dùng được trọn vẹn.** Khoảng **1/4 nội dung** và đặc biệt **1/2 câu hỏi trắc nghiệm vẫn hiện tiếng Anh**; 7/26 nhóm bài (L05, L06, L09, L10, L12, L16, L20) chưa được dịch **bất kỳ** câu hỏi nào. |

---

## 4. Kiểm tra "từ vựng đã học trước khi bài tập yêu cầu dịch"

### 4.1. Cách kiểm tra

Với mỗi bài L, lấy tập **từ Pāḷi xuất hiện trong phần bài tập** (câu thực hành trong pha `listening_quiz`, đáp án Mind Game, câu hỏi + 4 đáp án trắc nghiệm). Một từ được coi là **đã học** nếu nó truy ngược được về:

1. gốc từ trong danh sách `kLessonNNVocab` của bài L **hoặc bất kỳ bài trước đó** (có sinh hình thái: `masc_a`, động từ `-ati/-eti/-oti/-āti`, tiền tố upasagga…), **hoặc**
2. xuất hiện trong phần giảng giải (`read_listen`) của bài L hoặc bài trước, **hoặc**
3. được giải nghĩa trong FAB gloss của pha đó hoặc pha trước.

Nhóm từ chức năng ngữ pháp (đại từ, liên từ, tiểu từ: `ca, vā, na, so, sā, ahaṃ, tvaṃ, hoti…`) và các đuôi hình thái được trích dẫn trong giải thích (`-o, -aṃ, -ti, cc, dc…`) được loại khỏi báo cáo.

### 4.2. Kết quả tổng thể

| Chỉ số | Giá trị |
|---|---|
| Tổng số cặp *(bài học, từ bài-tập)* bị nghi ngờ chưa được dạy | **541** |
| Trong đó **không xuất hiện trong bất kỳ danh sách từ vựng nào** của cả 26 bài | **434 từ** |
| Số từ (không trùng lặp) chưa từng nằm trong danh sách từ vựng | **434** |

Chi tiết từng bài (`vocab` = số mục từ vựng bài khai báo; `exerW` = số từ Pāḷi khác nhau xuất hiện trong bài tập; `untraced` = không truy vết được về từ đã học):

| Bài | vocab | exerW | untraced | Bài | vocab | exerW | untraced |
|---|---|---|---|---|---|---|---|
| 01 | 16 | 40 | 2 | 14 | 64 | 152 | 43 |
| 02 | 21 | 42 | 2 | 15 | 78 | 184 | 31 |
| 03 | 23 | 103 | 5 | 16 | 83 | 93 | 21 |
| 04 | 33 | 95 | 4 | **17** | **13** | 117 | 33 |
| 05 | 31 | 58 | 5 | 18 | 60 | 101 | 24 |
| 06 | 55 | 73 | 5 | **19** | **2** | 126 | **59** |
| 07 | 20 | 122 | 33 | 20 | 105 | 97 | 11 |
| 08 | 20 | 143 | 38 | 21 | 20 | 65 | 23 |
| 09 | 39 | 71 | 14 | 22 | 17 | 54 | 30 |
| 10 | 51 | 87 | 20 | 23 | 19 | 55 | 21 |
| 11 | 33 | 127 | 26 | 24 | 14 | 40 | 8 |
| 12 | 51 | 68 | 10 | 25 | 11 | 45 | 16 |
| **13** | **2** | 124 | **52** | 26 | 11 | 26 | 5 |

### 4.3. ⚠️ Phát hiện cấu trúc (quan trọng nhất)

**(a) `kLessonNNVocab` — 892 mục từ vựng — không được giao diện tham chiếu ở bất cứ đâu.**

`grep -rn "kLesson" lib/ --include=*.dart | grep -v "^lib/data"` trả về **rỗng**. 26 danh sách này chỉ được export qua `lib/pali_course.dart`; màn hình thực tế chỉ hiển thị `FabVocabItem` viết tay trong từng phase. Hệ quả: kho từ vựng không tồn tại với người học, không có màn hình ôn từ, không có SRS, và quan trọng nhất là **không có nguồn "đã dạy từ gì" để đối chiếu với bài tập**. Đây là nguyên nhân gốc của toàn bộ nhóm lỗi bên dưới.

**(b) Bài 13 và bài 19 chỉ khai báo 2 mục từ vựng.**

- `kLesson13Vocab` = `disā` (phương hướng), `nāma` (tên) — trong khi bài tập của bài 13 dùng **124 từ Pāḷi** khác nhau: `ko, kā, kiṃ, kissa, eka, añña, aññatara, katama, katara, uttara, dakkhiṇa, pubba, pacchima, puratthima, apara, para, itara, sabbaṃ, nanu, payojanaṃ, vadatu, vadeyyāsi…`
- `kLesson19Vocab` = `go` (bò), `mana` (tâm) — trong khi bài tập dùng **126 từ**: `gāvo, gavaṃ, gunnaṃ, gāvena, manasā, sirasā, vacasā, vayasā, tejā, yasā, ojaṃ, rajaṃ, pitaro, itthiṃ, pūjenti, visujjhāpenti, pañcavīsati…`

**(c) Các bài có tỷ lệ từ vựng/bài tập mất cân đối:** L07 (20 mục / 122 từ), L08 (20 / 143), L17 (13 / 117), L25 (11 / 45).

### 4.4. Lỗi cụ thể đã xác minh tay (có thể sửa ngay)

| # | Vị trí | Lỗi | Chi tiết |
|---|---|---|---|
| 1 | `lesson_03_data.dart` | **Bất nhất chính tả từ vựng** | Danh sách từ vựng, FAB và một đoạn Mind Game dạy **`rukha`** (dòng 48, 196, 233, 293, 294) trong khi phần giảng giải và **toàn bộ bài tập** dùng **`rukkha`** (dòng 32, 69, 141, 461, 465, 515). Người học học "rukha" rồi bị bắt dịch "rukkhā / rukkhehi / rukkhasmā". Chuẩn Pāḷi là `rukkha`. |
| 2 | `lesson_07_data.dart:400,438,439,572` | **Sai chính tả** | `Acariyā` → phải là **`Ācariyā`** (các thầy, nom. pl.). Cùng file dùng đúng `ācariyo` (dòng 67), `ācariyassa` (dòng 459). |
| 3 | `lesson_07_data.dart:525,526` | **Sai chính tả** | `bhaṇdāni` → **`bhaṇḍāni`** (hàng hoá). |
| 4 | `lesson_07_data.dart:447,448` | **Sai chính tả** | `pottakaṃ` → **`potthakaṃ`** (quyển sách). |
| 5 | `lesson_07_data.dart:489,490` | **Sai chính tả** | `salāyaṃ` → **`sālāyaṃ`** (trong hội trường). |
| 6 | `lesson_01_data.dart` | **Thiếu từ vựng** | `vadati` (nói) xuất hiện trong câu tập dịch "Buddho vadati." và trong 3/9 câu hỏi trắc nghiệm, nhưng **không có trong 16 mục `kLesson01Vocab`** — chỉ được giải nghĩa trong FAB của phase 3 (dòng 515). |
| 7 | `lesson_08_data.dart` | **Thiếu từ vựng** | `muni` (ẩn sĩ) là **căn mẫu** của cả bài (dòng 125, 133, 138) và xuất hiện xuyên suốt bài tập (`muninā, munino, munissa, munismā, muniṃ, munīsu`), nhưng không có trong 20 mục `kLesson08Vocab`. |
| 8 | `lesson_25_data.dart` | **Thiếu từ vựng** | Bài có 11 mục (`puriso, rājā, putta, lekhana, gāma, sukha, ācariya, hattha, vijjā, sata, pitā`) nhưng bài tập còn bắt dịch: `akkhinā, bhāraṃ, hīno, kāṇo, kītaṃ, pitarā, sadiso, sīsena, temāsaṃ, vasa, vinā, dīyate`. |

### 4.5. Các nhóm "báo động giả" đã loại ra khỏi kết quả

Công cụ còn ghi nhận một số từ không truy vết được nhưng thực tế **được dạy như hiện tượng ngữ pháp**, không phải từ vựng mới — đã được phân loại và không tính là lỗi:

| Bài | Hiện tượng | Ví dụ |
|---|---|---|
| 07 | Thì Aorist (Ajjatanī) | `agamiṃsu, adaṃsu, aṭṭhaṃsu, ahosimhā, agamittha` |
| 08 | Gerund (-tvā) + danh từ đuôi -i | `gantvā, katvā, disvā, ñātayo, gahapatayo` |
| 21 | Ghép tiền tố (upasagga) | `abhidhamma, anugacchati, duddamo, sujane, suriyodaye` |
| 22 | Phái sinh (taddhita) | `ayomayā, manomaya, nāgarika, sundaratarā` |
| 23 | Danh từ tác nhân (kitaka) | `gamana, kārako, pāpakārino, taṇhakkhayo` |
| 24 | Sandhi | `etadavoca, sañjāta, svāgataṃ, uggato` |
| 26 | Thể bị động | `paccate, nīyate, rakkhīyate, sūyate` |

---

## 5. Khuyến nghị theo thứ tự ưu tiên

**P1 — Chặn lỗi dịch trong CI (1–2 giờ).** Thêm vào `tools/generate_locale_sidecars.py::validate()` một kiểm tra: *giá trị đích không được trùng nguyên văn với bản tiếng Anh* (bỏ qua các giá trị không có ký tự chữ cái, và các chuỗi thuần Pāḷi được bảo vệ bởi `PALI_WORD_RE`). Chỉ riêng bước này đã bắt được 776 chuỗi Hindi chưa dịch.

**P2 — Dịch lại Hindi.** Chạy lại pipeline cho `hi`, ưu tiên: nhóm quiz của L05, L06, L09, L10, L12, L16, L20 (100% chưa dịch), rồi L01 và L21–L26 (79–89%), và 68 nhãn part-of-speech (cả Hindi lẫn Sinhala).

**P3 — Sửa 8 lỗi dữ liệu ở mục 4.4** (5 lỗi chính tả bài 7, `rukha`→`rukkha` bài 3, thêm `vadati` vào bài 1, thêm `muni` vào bài 8). Đây là các sửa đổi 1 dòng, rủi ro rất thấp.

**P4 — Bổ sung từ vựng cho bài 13 và 19** (hiện 2 mục/bài) và cân bằng lại các bài 07, 08, 17, 25.

**P5 — Kết nối `kLessonNNVocab` vào giao diện.** 892 mục từ vựng (có trường SRS `repetitionCount / easeFactor / intervalDays / nextReview`, có `examplePali/exampleVi`, có bảng biến cách) đang là dữ liệu chết. Cần tối thiểu: màn hình danh sách từ vựng của bài + màn hình ôn tập. Đây cũng là điều kiện để câu hỏi "đã học từ gì rồi" có nghĩa.

**P6 — Vệ sinh repo & mở rộng test.** Xoá 6 file `WORKFLOW_FIXED_V0.1.x.yml` ở gốc, cân nhắc xoá `backups/` và `.aider.*`; bổ sung test cho `learning_content_localizations.dart` và một test "mọi từ trong bài tập phải nằm trong từ vựng đã học" dựa trên `tools/audit_vocab_coverage.py`.

---

## 6. Công cụ rà soát được thêm vào repo

| File | Chức năng |
|---|---|
| `tools/_dart_scan.py` | Scanner tối giản cho tập con Dart dùng trong `lib/data` (comment, string đơn/đôi/ba nháy, nhóm `() [] {}` cân bằng). |
| `tools/_extract_corpus.py` | Trích toàn bộ corpus ra `tools/corpus.json`: 892 từ vựng, 297 câu hỏi, 2.129 đoạn Mind Game, 578 cặp `_Seg`, nội dung từng phase. |
| `tools/audit_vocab_coverage.py` | Kiểm tra "từ vựng đã học trước khi bài tập yêu cầu dịch" (mục 4). `--json` để xuất chi tiết. |
| `tools/audit_locales.py` | Kiểm tra phủ sóng ARB (thiếu key, sai placeholder, chuỗi chưa dịch) và script coverage của nội dung (mục 2, 3). |
| `tools/generate_locale_sidecars.py` | (có sẵn) Sinh & validate sidecar — hiện **PASS**. |

Chạy lại:

```bash
python3 tools/generate_locale_sidecars.py        # validate sidecar hiện tại
python3 tools/_extract_corpus.py                 # tạo tools/corpus.json
python3 tools/audit_vocab_coverage.py            # bảng mục 4.2
python3 tools/audit_locales.py                   # bảng mục 2 & 3
```

`tools/corpus.json` và `tools/vocab_audit.json` là artefact sinh ra, đã được đưa vào `.gitignore`.

---

## 7. Trả lời trực tiếp hai câu hỏi

> **Ngôn ngữ giao diện, ngôn ngữ nội dung đã dùng được cho Hindi, Sinhala chưa?**

- **Giao diện:** ✅ **Đã dùng được cho cả hai**, đầy đủ 76/76 chuỗi, đúng script, font fallback đầy đủ.
- **Nội dung Sinhala:** ✅ **Dùng được** — 96,2% đã dịch (chỉ còn 68 nhãn ngữ pháp giữ tiếng Việt).
- **Nội dung Hindi:** ❌ **Chưa dùng được hoàn toàn** — 25,3% nội dung tổng thể và **49,2% câu hỏi trắc nghiệm vẫn là tiếng Anh**; 7/26 nhóm bài chưa dịch câu hỏi nào (L05, L06, L09, L10, L12, L16, L20). Nên coi Hindi là *bản thử nghiệm* cho đến khi chạy lại P1 + P2.

> **Các bài học có bảo đảm không có trường hợp chưa học từ vựng mà bài tập bắt dịch không?**

❌ **Chưa.** Đã đo được **541** cặp *(bài, từ bài-tập)* không truy vết được về từ vựng/phan giảng/FAB đã học, trong đó **434 từ** không nằm trong bất kỳ danh sách từ vựng nào của cả 26 bài. Nguyên nhân gốc: (1) 892 mục `kLessonNNVocab` **không được giao diện dùng đến**, nên không có ranh giới rõ "đã dạy gì"; (2) bài 13 và 19 chỉ khai báo **2** mục từ vựng; (3) 8 lỗi dữ liệu cụ thể đã liệt kê ở mục 4.4 (đáng chú ý nhất: bài 3 dạy `rukha` nhưng bài tập dùng `rukkha`; bài 7 có 4 từ viết sai chính tả xuất hiện ngay trong câu bắt dịch).
