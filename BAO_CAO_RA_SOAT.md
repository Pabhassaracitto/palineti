# Báo cáo rà soát dự án PaliNeti

- **Ngày rà soát:** 2026-10-07
- **Branch:** `arena/d31ad54d-palineti` (từ commit `1a3e152`)
- **Phạm vi:** (1) tình hình tổng thể dự án, (2) mức độ sẵn sàng của ngôn ngữ giao diện & nội dung (tập trung Hindi, Sinhala), (3) kiểm tra "từ vựng đã được học trước khi bài tập yêu cầu dịch".

> **Lưu ý phương pháp:** môi trường rà soát không có Flutter/Dart SDK, nên không thể chạy `flutter analyze` / `flutter test`. Thay vào đó, toàn bộ `lib/data/**` và `lib/l10n/**` được phân tích bằng một parser Dart viết bằng Python (xem mục 7). Mọi con số dưới đây đo trực tiếp từ mã nguồn.

---

## 0. Tóm tắt: 3 lỗi nghiêm trọng nhất tìm được

| # | Lỗi | Phạm vi | Trạng thái |
|---|---|---|---|
| **A** | **Mind Game: 222/447 gloss (49,7%) hiển thị sai nghĩa** — khối giá trị bị xoay lệch 1 vị trí, mỗi mục từ mang nghĩa của mục kế tiếp | Mọi ngôn ngữ trừ tiếng Việt (en, si, zh, my, hi) | ✅ **Đã sửa** (xoay lại đúng vị trí) |
| **B** | **`protect_pali()` không bao giờ được gọi** — mọi chữ Pāḷi trong nội dung bịGoogle dịch chuyển tự sang bản ngữ (`atta` → `अट्टा` = *bột mì* trong tiếng Hindi) | si 10,5%, zh 5,2%, my 5,6%, **hi 12,3%** chuỗi | ✅ **Đã sửa pipeline**; ⚠️ file hiện tại cần dịch lại |
| **C** | **Hindi: 49,2% câu hỏi trắc nghiệm chưa được dịch** (vẫn là tiếng Anh); 7/26 nhóm bài chưa dịch câu nào | Hindi | ⚠️ Cần chạy lại pipeline (có mạng) |

Kèm theo 8 lỗi dữ liệu từ vựng/chính tả (mục 5) và một vấn đề cấu trúc: **892 mục từ vựng không được giao diện dùng đến** (mục 4.3a).

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

**Vấn đề vệ sinh repo:** 6 file `WORKFLOW_FIXED_V0.1.x.yml` nằm ở thư mục gốc (đã thay bằng `.github/workflows/`); `backups/` chứa 8 bản sao `lesson_*_data.dart` vẫn được track; còn `.aider.chat.history.md`, `.aider.input.history`.

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

### 4.2. Kết quả — **530** cặp *(bài, từ)* không truy vết được; **437** từ không nằm trong danh sách từ vựng nào

| Bài | vocab | exerW | untraced | | Bài | vocab | exerW | untraced |
|---|---|---|---|---|---|---|---|---|
| 01 | 16 | 40 | 2 | | 14 | 64 | 152 | 42 |
| 02 | 21 | 42 | 2 | | 15 | 78 | 184 | 29 |
| 03 | 23 | 103 | 4 | | 16 | 83 | 93 | 21 |
| 04 | 33 | 95 | 3 | | **17** | **13** | 117 | 33 |
| 05 | 31 | 58 | 5 | | 18 | 60 | 101 | 24 |
| 06 | 55 | 73 | 5 | | **19** | **2** | 126 | **58** |
| 07 | 20 | 122 | 29 | | 20 | 105 | 97 | 11 |
| 08 | 20 | 143 | 37 | | 21 | 20 | 65 | 23 |
| 09 | 39 | 71 | 14 | | 22 | 17 | 54 | 30 |
| 10 | 51 | 87 | 20 | | 23 | 19 | 55 | 21 |
| 11 | 33 | 127 | 26 | | 24 | 14 | 40 | 8 |
| 12 | 51 | 68 | 10 | | 25 | 11 | 45 | 16 |
| **13** | **2** | 124 | **52** | | 26 | 11 | 26 | 5 |

### 4.3. Phát hiện cấu trúc

**(a) `kLessonNNVocab` — 892 mục — không được giao diện tham chiếu ở bất cứ đâu.**
`grep -rn "kLesson" lib/ --include=*.dart | grep -v "lib/data"` → **0 kết quả**. 26 danh sách này chỉ được export qua `lib/pali_course.dart`; màn hình thật chỉ hiển thị `FabVocabItem` viết tay trong từng phase. Hệ quả: không có màn hình từ vựng, không có SRS (dù model có sẵn `repetitionCount / easeFactor / intervalDays / nextReview`), và **không có nguồn "đã dạy từ gì" để đối chiếu với bài tập**. Đây là nguyên nhân gốc của cả nhóm lỗi này.

**(b) Bài 13 và 19 chỉ khai báo 2 mục từ vựng.**
- `kLesson13Vocab` = `disā`, `nāma` — bài tập dùng **124 từ Pāḷi** khác nhau (`ko, kā, kiṃ, kissa, eka, añña, aññatara, katama, katara, uttara, dakkhiṇa, pubba, pacchima, puratthima, apara, para, itara, nanu, payojanaṃ, vadatu, vadeyyāsi…`).
- `kLesson19Vocab` = `go`, `mana` — bài tập dùng **126 từ** (`gāvo, gavaṃ, gunnaṃ, gāvena, manasā, sirasā, vacasā, vayasā, tejā, yasā, ojaṃ, rajaṃ, pitaro, itthiṃ, pūjenti, visujjhāpenti, pañcavīsati…`).

**(c) Tỷ lệ mất cân đối:** L07 (20 mục / 122 từ), L08 (20 / 143), L17 (13 / 117), L25 (11 / 45).

### 4.4. Lỗi cụ thể — 5 lỗi chính tả Pāḷi đã **sửa**

| # | File | Lỗi | Đã sửa thành |
|---|---|---|---|
| 1 | `lesson_03_data.dart` | Danh sách từ vựng / FAB / một đoạn Mind Game dạy **`rukha`**, toàn bộ bài tập và phần giảng dùng **`rukkha`** (chuẩn Pāḷi) | `rukkha` (5 chỗ) + phát âm `ruk-kho` → `ruk-kha` |
| 2 | `lesson_07_data.dart` | `Acariyā` | **`Ācariyā`** (4 chỗ) |
| 3 | `lesson_07_data.dart` | `bhaṇdāni` | **`bhaṇḍāni`** (2 chỗ) |
| 4 | `lesson_07_data.dart` | `pottakaṃ` | **`potthakaṃ`** (2 chỗ) |
| 5 | `lesson_07_data.dart` | `salāyaṃ` | **`sālāyaṃ`** (2 chỗ) |

Hai lỗi (4) và (5) được xác nhận chắc chắn vì **chính tả đúng đã có sẵn trong gloss Mind Game**: `potthakaṃ → "the book"`, `sālāyaṃ → "in the lecture hall"`. Lỗi (2) cũng được sửa trong 2 file sidecar mang nguyên chuỗi Pāḷi đó (`quiz_en_lesson05_08.dart`, `learning_content_translations_locales.dart` bản `my`).

Sau khi sửa: L03 giảm 5 → 4 untraced, L07 giảm 33 → 29.

### 4.5. Lỗi cụ thể — từ vựng thiếu (chưa sửa, cần quyết định nội dung)

| Bài | Thiếu | Chi tiết |
|---|---|---|
| **01** | `vadati` (nói) | Có trong câu dịch "Buddho vadati." và 3/9 câu hỏi, nhưng **không có trong 16 mục `kLesson01Vocab`** — chỉ giải nghĩa trong FAB phase 3 |
| **08** | `muni` (ẩn sĩ) | Là **căn mẫu** của cả bài (biến cách `-i`), xuất hiện xuyên suốt bài tập (`muninā, munino, munissa, munismā, muniṃ, munīsu`), không có trong 20 mục từ vựng |
| **13 / 19** | toàn bộ | 2 mục/bài (xem 4.3b) |
| **25** | 11 từ | Bài tập còn dùng `akkhinā, bhāraṃ, hīno, kāṇo, kītaṃ, pitarā, sadiso, sīsena, temāsaṃ, vasa, vinā, dīyate` |

*Chưa sửa vì:* thêm mục từ vựng đòi hỏi thêm bản dịch en/si/zh/my/hi tương ứng (validate hiện bắt buộc khớp đúng tập key). Việc này cần chạy pipeline dịch (có mạng) hoặc quyết định của tác giả.

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

**P1 — Dịch lại toàn bộ nội dung bằng pipeline đã sửa (cần chạy trên CI có mạng).**

```bash
python3 tools/generate_locale_sidecars.py --translate            # tất cả ngôn ngữ
python3 tools/generate_locale_sidecars.py --translate --locale hi # riêng Hindi
```

Lần chạy này sẽ đồng thời: (a) dịch 790 chuỗi Hindi còn tiếng Anh, (b) giữ nguyên mọi chữ Pāḷi nhờ `protect_pali()` đã được nối lại, (c) giữ nguyên 221 gloss Mind Game vừa sửa tay (chúng nằm trong map `mind_game_translations.dart`, là đầu vào chứ không bị sinh lại).

**P2 — Bật chốt chất lượng trong CI.** Sau khi dịch lại, thêm vào workflow:

```bash
python3 tools/generate_locale_sidecars.py --max-untranslated 2 --max-pali-lost 2
```

Hiện trạng để tham chiếu: untranslated si 3,9% / zh 3,5% / my 5,1% / **hi 25,7%**; Pāḷi-bị-mất si 10,5% / zh 5,2% / my 5,6% / **hi 12,3%**. Không bật thì 3 lỗi A/B/C có thể tái diễn mà CI vẫn xanh.

**P3 — Bổ sung từ vựng bài 13 và 19** (hiện 2 mục/bài) và cân bằng lại bài 07, 08, 17, 25; thêm `vadati` (bài 1), `muni` (bài 8).

**P4 — Kết nối `kLessonNNVocab` vào giao diện.** 892 mục (có SRS, có `examplePali/exampleVi`, có bảng biến cách) đang là dữ liệu chết. Tối thiểu cần màn hình danh sách từ vựng của bài + màn hình ôn tập. Đây cũng là điều kiện để câu hỏi "đã học từ gì rồi" có nghĩa.

**P5 — Vệ sinh repo & mở rộng test.** Xoá 6 file `WORKFLOW_FIXED_V0.1.x.yml` ở gốc, cân nhắc xoá `backups/` và `.aider.*`; bổ sung test dựa trên `tools/audit_vocab_coverage.py` ("mọi từ trong bài tập phải nằm trong từ vựng đã học").

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

`python3 tools/generate_locale_sidecars.py` vẫn **PASS** sau mọi thay đổi.

---

## 7. Công cụ rà soát

| File | Chức năng |
|---|---|
| `tools/_dart_scan.py` | Scanner tối giản cho tập con Dart trong `lib/data` (comment, string đơn/đôi/ba nháy, nhóm `() [] {}` cân bằng) |
| `tools/_extract_corpus.py` | Trích corpus 26 bài ra `tools/corpus.json` (892 từ vựng, 297 câu hỏi, 2.129 đoạn Mind Game, 578 cặp `_Seg`, nội dung từng phase) |
| `tools/audit_vocab_coverage.py` | Kiểm tra "từ vựng đã học trước khi bài tập yêu cầu dịch" (mục 4) |
| `tools/audit_locales.py` | Phủ sóng ARB (thiếu key, sai placeholder) + script coverage |
| `tools/generate_locale_sidecars.py` | (có sẵn) Sinh & validate sidecar — đã mở rộng |

```bash
python3 tools/generate_locale_sidecars.py                    # validate + báo cáo chất lượng
python3 tools/generate_locale_sidecars.py --verbose-quality   # kèm ví dụ
python3 tools/_extract_corpus.py && python3 tools/audit_vocab_coverage.py
python3 tools/audit_locales.py
```

`tools/corpus.json` và `tools/vocab_audit.json` là artefact sinh ra, đã đưa vào `.gitignore`.

---

## 8. Trả lời trực tiếp hai câu hỏi

> **Ngôn ngữ giao diện, ngôn ngữ nội dung đã dùng được cho Hindi, Sinhala chưa?**

- **Giao diện:** ✅ **đạt cho cả hai** — 76/76 chuỗi, đúng script, font đầy đủ.
- **Nội dung Sinhala:** ✅ **Dùng được**, và sau đợt sửa này đã đúng hơn (Mind Game trả đúng nghĩa). Còn 68 nhãn ngữ pháp giữ tiếng Việt và ~10% chuỗi bị chuyển tự chữ Pāḷi — cần một lần dịch lại để sạch hoàn toàn.
- **Nội dung Hindi:** ❌ **Chưa dùng được.** Ba vấn đề chồng nhau: **49,2% câu hỏi trắc nghiệm vẫn là tiếng Anh** (7/26 nhóm bài chưa dịch câu nào), **12,3% chuỗi bị chuyển tự mất chữ Pāḷi** (`atta` → `अट्टा` = *bột mì*), và 38% nhãn ngữ pháp chưa dịch. Cần chạy P1 trước khi coi Hindi là sẵn sàng.

> **Các bài học có bảo đảm không có trường hợp chưa học từ vựng mà bài tập bắt dịch không?**

❌ **Chưa.** Đo được **530** cặp *(bài, từ bài-tập)* không truy vết được về từ vựng/phan giảng/FAB đã học, trong đó **437 từ** không nằm trong danh sách từ vựng nào của cả 26 bài.

Ba nguyên nhân, theo thứ tự quan trọng:

1. **892 mục `kLessonNNVocab` không được giao diện dùng đến** — không có ranh giới "đã dạy gì", nên cũng không có gì để kiểm chứng.
2. **Bài 13 và 19 chỉ khai báo 2 mục từ vựng** trong khi bài tập dùng 124–126 từ Pāḷi.
3. **5 lỗi chính tả Pāḷi** — đáng chú ý nhất: bài 3 dạy `rukha` nhưng bài tập bắt dịch `rukkha`; bài 7 có 4 từ viết sai **ngay trong câu bắt dịch** (`Acariyā`, `bhaṇdāni`, `pottakaṃ`, `salāyaṃ`).

➕ **Ngoài phạm vi câu hỏi nhưng nghiêm trọng hơn:** Mind Game — pha cốt lõi để luyện nhớ hình thái — đã **hiển thị sai nghĩa ở 222/447 mục (49,7%)** cho mọi ngôn ngữ trừ tiếng Việt, do khối gloss bị xoay lệch. Lỗi này đã được sửa trong đợt này.
