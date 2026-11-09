<p align="center">
  <img src="assets/branding/palineti_mark.png" width="120" alt="PALINETI">
</p>

<h1 align="center">PALINETI</h1>

<p align="center">
  Ứng dụng Flutter học ngữ pháp <strong>Pāḷi</strong> theo phương pháp Mind Game,<br>
  dựa trên <em>An Elementary Pāḷi Course</em> của Nārada Mahāthera (26 bài).
</p>

<p align="center">
  <a href="https://pabhassaracitto.github.io/palineti/">🌐 Bản web</a> ·
  <a href="https://github.com/Pabhassaracitto/palineti/releases">📦 Bản phát hành</a> ·
  <a href="https://github.com/Pabhassaracitto/palineti/issues">🐞 Báo lỗi</a>
</p>

---

## Tổng quan

PALINETI là một ứng dụng học cổ ngữ Pāḷi, không phải thư viện tái sử dụng.
Toàn bộ học liệu được đóng gói sẵn trong ứng dụng: không cần tài khoản, không
gọi API, không cần mạng sau khi cài (bản web chỉ cần mạng để tải trang lần đầu).

Mỗi bài gồm **2 ngày học**; các phase trong mỗi ngày thuộc **3 loại**:

```
Trang chủ → Bài học → Ngày 1 / Ngày 2 → Read → Mind Game → Quiz → Hoàn thành
```

- **Read** — nội dung ngữ pháp, từ vựng quan trọng, cấu trúc chính.
- **Mind Game** — chạm vào đoạn tiếng Việt để hiện đáp án Pāḷi; rèn phản xạ dịch.
- **Quiz** — trắc nghiệm 4 lựa chọn, phản hồi đúng/sai và giải thích từng câu.

### Trạng thái hiện tại

Rà soát ngày **09/11/2026**, tại commit `118e80a` trên nhánh `main`:

| Hạng mục | Hiện trạng | Ghi chú |
|---|---|---|
| Nội dung khóa học | ✅ 26/26 bài, 52 ngày, 151 phase | Đủ dữ liệu cho toàn bộ bài 1–26 |
| Từ vựng | ✅ 931 mục, 853 root | 456 mục có câu ví dụ Pāḷi |
| Bài tập | ✅ 297 câu quiz, 2.129 đoạn Mind Game | 2.032 đoạn nằm trong phase, 97 đoạn rời |
| Giao diện | ✅ 26 ngôn ngữ × 76 key | 0 key thiếu, 0 lỗi placeholder |
| Nội dung đa ngữ | ⚠️ vi + en + si/zh/my/hi | Chất lượng dịch máy còn khoảng trống (xem bên dưới) |
| Bản web | ✅ Đang chạy trên GitHub Pages | Build tự động từ `main` |
| Bản phát hành | ✅ `v0.3.0` (27/09/2026) | APK, AAB, Linux, Windows |
| Kiểm thử | ⚠️ 4 file, 302 dòng | Chưa phủ luồng UI |
| Lưu tiến trình | ❌ Chưa có | Chỉ lưu lựa chọn ngôn ngữ |
| Giấy phép | ❌ Chưa có | `LICENSE` vẫn là template TODO |

---

## Tính năng

- **Khóa học 26 bài** bám sát giáo trình của Nārada Mahāthera: biến cách danh
  từ, đại từ, phân từ, hợp từ, sandhi, thể bị động và bài thực hành dịch.
- **Mind Game** kiểu che–mở: chạm để lộ đáp án Pāḷi, có nút mở tất cả.
- **Quiz từng câu** với đáp án đúng, giải thích và bảng điểm cuối phase.
- **Danh sách từ vựng theo bài**, tra nghĩa Việt/Anh, phát âm, câu ví dụ.
- **Bảng biến cách 8 cách × 2 số** cho danh từ (xem giới hạn ở mục
  [Hạn chế đã biết](#hạn-chế-đã-biết)).
- **26 ngôn ngữ giao diện**: tìm kiếm, đổi ngôn ngữ có xác nhận và hoàn tác,
  giữ biểu tượng 🌐 3 giây để quay về ngôn ngữ hệ thống.
- **Nội dung học 6 ngôn ngữ**: tiếng Việt (nguồn), tiếng Anh (chuẩn), cùng
  Sinhala, Trung giản thể, Myanmar và Hindi.
- **Đa nền tảng**: Android, iOS, web, Windows, Linux, macOS.

### 26 bài học

<details>
<summary>Xem danh sách 26 bài</summary>

| # | Chủ đề (VI) | Chủ đề (EN) |
|---:|---|---|
| 1 | Danh từ Nam "-a": CC & ĐC | Masculine "-a": Nominative & Accusative |
| 2 | SDC & CĐC (Nam -a) + Động từ Ngôi 2 | Instrumental & Dative of Masc. -a; 2nd Person Verbs |
| 3 | XXC & STC (Nam -a) + Động từ Ngôi 1 | Ablative & Genitive of Masc. -a; 1st Person Verbs |
| 4 | ĐSC & HC (Nam -a) + Saddhiṃ & Sandhi | Locative & Vocative of Masc. -a; Saddhiṃ & Sandhi |
| 5 | Trung tánh "-a" & 8 Biến cách | Neuter "-a" & 8 Cases |
| 6 | Nữ tánh "-ā" & Nguyên thể | Feminine "-ā" & Infinitive |
| 7 | Thì Ajjatanī (Quá khứ) & Đại từ sở hữu | Aorist (Ajjatanī) & Possessive Pronouns |
| 8 | Danh từ Nam "-i" & Danh động từ (Gerund) | Masculine -i Stems & Gerund (-tvā) |
| 9 | Nữ tánh "-i" & Tương lai | Feminine "-i" & Future Tense |
| 10 | Nam/Nữ "-ī" & Lập Nữ tánh | Masc/Fem "-ī" & Feminine Formation |
| 11 | DT Nam/Trung/Nữ "-u/-ū" & Mệnh lệnh cách | -u/-ū Stems & Imperative (Pañcamī) |
| 12 | Đại từ & Khả năng cách | Pronouns & Potential Mood |
| 13 | Đại từ quan hệ, chỉ định & nghi vấn | Relative, Demonstrative & Interrogative Pronouns |
| 14 | Các loại Phân từ | Participles – Present, Past, Potential |
| 15 | Đại từ chỉ định ima/amu & Tính từ | Demonstratives ima/amu & Adjectives |
| 16 | Số đếm & Số thứ tự | Cardinal & Ordinal Numerals |
| 17 | DT Nam bất quy tắc (atta/rāja) & 7 loại động từ | Irregular Masc. Nouns (atta/rāja) & 7 Conjugations |
| 18 | Danh từ -tar (satthu) & Thức bị khiến | Agent Nouns in -tar (satthu) & Causal (Kārita) |
| 19 | DT "go" (bò), "mana" (tâm) & Thì bất thành khứ | — |
| 20 | Hợp từ (Samāsa) | Compounds (Samāsa) |
| 21 | Bất biến từ — 20 tiếp đầu ngữ | Indeclinables — 20 Prefixes (Upasagga) |
| 22 | Cách thành lập danh từ — Hậu tố | Nominal Derivatives (Taddhita) |
| 23 | Động danh từ — 8 hậu tố Kitaka | Verbal Derivatives (Kitaka) |
| 24 | Luật hài âm (Sandhi) | Rules of Combination (Sandhi) |
| 25 | Thực hành dịch thuật (A) | Translation Practice (A) |
| 26 | Thực hành dịch thuật (B) | Translation Practice (B) |

</details>

---

## Nội dung học

Các con số dưới đây được đo trực tiếp từ `lib/data/lessons/` và
`tools/corpus.json` (sinh bằng `python3 tools/_extract_corpus.py`):

| Nội dung | Số lượng |
|---|---:|
| Bài học (`LessonMeta`) | 26 |
| Ngày học (`LessonDay`) | 52 |
| Phase | 151 |
| — `read_listen` | 56 |
| — `mind_game` | 48 |
| — `listening_quiz` | 47 |
| Mục từ vựng (`PaliVocabModel`) | 931 |
| Root Pāḷi duy nhất | 853 |
| Mục từ vựng có câu ví dụ | 456 |
| Câu hỏi trắc nghiệm | 297 |
| Đoạn Mind Game (`MixedSegment`) | 2.129 |
| Chuỗi nội dung mỗi ngôn ngữ (sidecar) | 3.069 |

> **Lưu ý về "listening quiz":** hiện chưa có file âm thanh hay TTS. Phase này
> hoạt động như một bài đọc hiểu có transcript và câu hỏi, chưa phải bài nghe
> thật sự.

---

## Ngôn ngữ

### Giao diện — 26/26 ngôn ngữ

Mỗi locale có **76 key** trong `lib/l10n/app_*.arb`; kiểm tra bằng
`tools/audit_locales.py` cho kết quả **0 key thiếu, 0 lỗi placeholder** trên
cả 26 locale:

`ar, bn, bo, de, en, es, fr, hi, id, it, ja, km, ko, lo, mn, mr, my, pt, ru,
si, ta, te, th, vi, zh, zh_TW`

Template là `app_vi.arb`. File sinh tự động nằm trong `lib/l10n/generated/`
và được commit vào repo.

### Nội dung học — 6 ngôn ngữ

Chuỗi nội dung không nằm trong ARB mà nằm ở các **sidecar** trong
`lib/data/localization/`. Thứ tự fallback khi tra cứu:

```
locale chính xác (vd. zh_TW) → language code (zh) → en → vi
```

Tiếng Việt là nguồn inline trong lesson data. Tiếng Anh là bản chuẩn đầy đủ
trong sidecar và là nguồn cho pipeline dịch. Bốn locale `si`, `zh`, `my`, `hi`
được sinh bằng pipeline dịch máy và có overlay riêng.

Kết quả đo bằng `python3 tools/generate_locale_sidecars.py --verbose-quality`:

| Locale | Số chuỗi | Chưa dịch | Mất thuật ngữ Pāḷi | Có chữ viết đích |
|---|---:|---:|---:|---:|
| `si` — Sinhala | 3.069 | 3,9% | 10,5% | 95,7% |
| `zh` — Trung giản thể | 3.069 | 3,5% | 5,2% | 95,9% |
| `my` — Myanmar | 3.069 | 5,1% | 5,6% | 93,5% |
| `hi` — Hindi | 3.069 | **25,7%** | **12,3%** | 74,2% |

- **Chưa dịch** = chuỗi vẫn giống hệt bản tiếng Anh.
- **Mất thuật ngữ Pāḷi** = từ Pāḷi bị dịch máy chuyển tự/thay nghĩa
  (ví dụ `atta` → một từ Hindi nghĩa là "bột mì").
- Bao phủ key/đúng cấu trúc thì đạt 100%, nhưng **chất lượng Hindi** rõ ràng
  còn yếu; đây là khoảng trống nội dung lớn nhất hiện nay.

Thêm ngôn ngữ nội dung mới: xem `handoff/new_language_content_prompt.md`.
Không sửa lesson data hay model — chỉ thêm overlay sidecar.

---

## Cài đặt và chạy

### Yêu cầu

- **Flutter stable** với Dart tương thích `sdk: ^3.11.1` (khai báo trong
  `pubspec.yaml`).
- Android SDK nếu build Android; Xcode + CocoaPods nếu build iOS/macOS.
- Python 3.11+ nếu chạy các công cụ audit nội dung.

### Chạy local

```bash
git clone https://github.com/Pabhassaracitto/palineti.git
cd palineti

flutter pub get
flutter gen-l10n      # chỉ cần khi sửa file .arb
flutter run           # chọn thiết bị/emulator
```

Chạy bản web:

```bash
flutter config --enable-web
flutter run -d chrome
```

### Kiểm tra chất lượng

```bash
flutter analyze
flutter test

# Audit nội dung, không cần Flutter SDK
python3 tools/_extract_corpus.py
python3 tools/audit_vocab_coverage.py
python3 tools/audit_locales.py
python3 tools/generate_locale_sidecars.py --verbose-quality
```

`test/` hiện có 4 file (302 dòng):

| File | Nội dung |
|---|---|
| `test/morphology/masc_a_test.dart` | Bảng biến cách `masc_a` (nara, Buddha, …) |
| `test/pali_course_test.dart` | Barrel export + model từ vựng |
| `test/vocab_coverage_test.dart` | Registry từ vựng 26 bài, ID duy nhất |
| `test/widget_test.dart` | Placeholder, chưa có assertion |

---

## Build và phát hành

| Nền tảng | Lệnh | Ghi chú |
|---|---|---|
| Android APK | `flutter build apk --release --target-platform android-arm64` | Workflow chỉ đóng gói ARM64 |
| Android AAB | `flutter build appbundle --release` | Dùng cho Google Play |
| iOS | `flutter build ios --release --no-codesign` | CI đóng gói IPA để sideload, không ký |
| Web | `flutter build web --release --base-href /palineti/ --no-web-resources-cdn` | `--no-web-resources-cdn` để bundle tự chứa |
| Windows | `flutter build windows --release` | |
| Linux | `flutter build linux --release` | |
| macOS | `flutter build macos --release` | |

### Bản web (GitHub Pages)

🌐 **https://pabhassaracitto.github.io/palineti/**

Workflow [`.github/workflows/deploy_web.yml`](.github/workflows/deploy_web.yml):

- Push lên `main` → build release và deploy lên GitHub Pages.
- Pull request → chỉ build để bắt lỗi biên dịch.
- Chạy tay: **Actions → Deploy Web (GitHub Pages) → Run workflow**.
- Base href lấy theo tên repo (`/palineti/`). Nếu gắn custom domain ở gốc
  miền, đổi thành `--base-href /`.
- Deploy job kiểm tra Pages đang dùng `build_type = workflow`; nếu chưa bật,
  workflow báo lỗi kèm hướng dẫn thay vì fail mơ hồ.

Thiết lập một lần cho fork: **Settings → Pages → Build and deployment →
Source = "GitHub Actions"**.

### Phiên bản và release

- `pubspec.yaml`: `version: 1.0.0+1`.
- Tag phát hành gần nhất: **`v0.3.0`** (27/09/2026), kèm APK ARM64, AAB,
  Linux `.zip`, Windows `.zip`.
- Hai chuỗi phiên bản trên **chưa đồng bộ**; khi cắt release nên thống nhất
  lại `pubspec.yaml`, tag và tên asset.

---

## Cấu trúc dự án

```text
lib/
├── main.dart                     # MaterialApp, theme, font fallback đa chữ viết
├── pali_course.dart              # Barrel export cho lesson data + model + morphology
├── core/constants/               # app_colors.dart (màu Pāḷi, màu 26 bài)
├── data/
│   ├── lessons/                  # lesson_01_data.dart … lesson_26_data.dart
│   ├── models/                   # LessonMeta, LessonDay, LessonPhase, QuizQuestion…
│   ├── morphology/               # enum biến cách, paradigm engine, bảng bất quy tắc
│   ├── localization/             # sidecar nội dung học (en, si, zh, my, hi)
│   └── lesson_vocab_index.dart   # vocabForLesson(1..26)
├── l10n/                         # 26 file ARB + generated/
└── presentation/
    ├── screens/                  # home, lesson detail, day/phase navigator, settings…
    │   └── phases/               # read_listen, mind_game, quiz
    ├── localization/             # locale controller, language picker, lookups
    └── widgets/                  # vocab card, declension table, morph visual

test/                             # 4 file test
tools/                            # Python audit + sinh sidecar
assets/branding/                  # logo đóng gói vào app
branding/                         # brand guide + asset lưu trữ
handoff/                          # tài liệu bàn giao, tiến độ nội dung
reference/                        # 2 PDF giáo trình gốc (nguồn tham khảo)
backups/                          # bản sao lesson data cũ (bị loại khỏi analyzer)
.github/workflows/                # CI/CD đang hoạt động
```

### Mô hình dữ liệu

- **Pure Dart**, không Hive/SQLite. `PaliVocabModel` có các trường SRS
  (`repetitionCount`, `easeFactor`, `intervalDays`, `nextReview`) nhưng chỉ
  tồn tại trong bộ nhớ.
- `LessonMeta` → `LessonDay` → `LessonPhase`; phase mang nội dung, câu hỏi,
  đoạn Mind Game, FAB từ vựng/cấu trúc/đáp án.
- ID theo quy ước: `theme_XX_slug`, `lessonXX_dayY`, `lessonXX_phaseY`,
  `lessonXX_qYY`, `pv_LXX_root`.

### Engine hình thái

`PaliParadigmEngine.generate(paradigmId, root, case, number)` là dispatcher
trung tâm cho 8 cách × 2 số. Hiện trạng:

- ✅ `masc_a` — bảng đuôi đầy đủ (chủ yếu bài 1–4).
- ✅ `irregular` — tra bảng `go`, `satthu`.
- ⚠️ 96 `paradigmId` khác nhau xuất hiện trong dữ liệu từ vựng, nhưng phần
  lớn **chưa có paradigm class**; engine trả về root hoặc tra bất quy tắc,
  nên bảng biến cách của các bài sau chưa chính xác.

---

## Kiểm tra nội dung tự động

`tools/` là bộ công cụ Python chạy offline (trừ khi bật `--translate`):

| Lệnh | Việc kiểm tra |
|---|---|
| `_extract_corpus.py` | Trích lesson data thành `tools/corpus.json` (đã gitignore) |
| `audit_vocab_coverage.py` | Từ nào bài tập bắt dịch nhưng chưa được dạy? |
| `audit_locales.py` | ARB đủ key/placeholder + tỷ lệ đúng chữ viết của sidecar |
| `generate_locale_sidecars.py` | Validate sidecar; sinh overlay `si/zh/my/hi`; đo chất lượng dịch |

Kết quả đo hiện tại:

- **Bao phủ từ vựng:** 196 từ "untraced" (bài tập dùng từ không truy được về
  bài đã học) và 159 từ "never listed" (không nằm trong bất kỳ danh sách từ
  nào). CI đang đặt trần **203 / 162**, tức là vừa trên mức hiện tại để bắt
  regression nhưng không chặn công việc nội dung bình thường.
- **Giao diện:** 26 locale × 76 key, 0 thiếu, 0 lỗi placeholder.
- **Sidecar:** 537 entry/locale, 3.069 chuỗi/locale; cấu trúc và key set khớp
  bản tiếng Anh.

`generate_locale_sidecars.py --translate` gọi endpoint Google Translate công
khai; chỉ nên chạy trong GitHub Action hoặc môi trường được phép ra mạng.

---

## CI/CD

Các workflow **đang hoạt động** nằm trong `.github/workflows/`:

| Workflow | Kích hoạt | Chức năng |
|---|---|---|
| `deploy_web.yml` | push `main`, PR, thủ công | Build web + deploy GitHub Pages |
| `content_audit.yml` | mọi push/PR, thủ công | 4 bước audit nội dung, không cần Flutter |
| `full_build.yml` | tag `v*` ổn định, thủ công | Build Android/iOS/Windows/Linux/Web, tạo release |
| `full_build_pro.yml` | tag `v*`, thủ công | Bản nâng cao, có tham số `version` / `force_package` |
| `edit_by_gemini.yml` | tag `v*`, thủ công | Thực chất là một bản Full Build Pro v0.1.6 trùng lặp |
| `translate_content.yml` | chỉ thủ công | Dịch lại sidecar + quality gate + commit |

Lưu ý vận hành:

- `WORKFLOW_FIXED.yml` và `ANDROID_VERSIONED_BUILD_EXAMPLE.yml` ở thư mục gốc
  là **bản lưu / ví dụ**, GitHub không chạy chúng.
- **Ba workflow cùng lắng nghe tag `v*`** (`full_build`, `full_build_pro`,
  `edit_by_gemini`). Một tag có thể kích hoạt nhiều build và nhiều lần tạo
  release cho cùng tag. Nên giữ lại một workflow release duy nhất.
- `translate_content.yml` đặt gate mặc định **2%** cho cả "chưa dịch" và "mất
  Pāḷi", trong khi baseline hiện tại cao hơn (đặc biệt Hindi). Chạy với giá trị
  mặc định sẽ fail ở bước quality gate cho tới khi nội dung được dịch lại.

---

## Hạn chế đã biết

| Vấn đề | Ảnh hưởng | Ghi chú |
|---|---|---|
| Không lưu tiến trình học | Cao | `isCompleted`, `currentPhaseIndex` và SRS chỉ nằm trong RAM; `shared_preferences` chỉ lưu locale |
| Engine biến cách chưa đủ | Cao | Chỉ `masc_a` và `go`/`satthu`; 96 paradigm ID trong dữ liệu |
| Chất lượng Hindi | Trung bình | 25,7% chuỗi chưa dịch, 12,3% mất thuật ngữ Pāḷi |
| Không có audio/TTS | Trung bình | "Listening quiz" hiện là đọc hiểu |
| Test mỏng | Trung bình | Chưa có test cho luồng UI, persistence, quiz |
| Metadata phát hành | Trung bình | `applicationId`/bundle ID vẫn là `com.example.palineti` |
| Giấy phép | Trung bình | `LICENSE` là "TODO: Add your license here." |
| Vệ sinh repo | Thấp | `backups/` (8 file) và các release note cũ vẫn được track |

---

## Đóng góp

1. Tạo nhánh từ `main`, mô tả rõ thay đổi trong PR.
2. Với thay đổi nội dung:
   - Sửa `lib/data/lessons/` hoặc sidecar, **không** sửa file generated.
   - Chạy `python3 tools/audit_vocab_coverage.py` và
     `python3 tools/audit_locales.py`.
   - Nếu thêm/sửa chuỗi dịch, chạy `python3 tools/generate_locale_sidecars.py
     --verbose-quality` để kiểm tra cấu trúc và chất lượng.
3. Với thay đổi UI: cập nhật đủ 26 file ARB, chạy `flutter gen-l10n`, rồi
   `flutter analyze` + `flutter test`.
4. Không commit `tools/corpus.json`, `tools/vocab_audit.json` hay cache dịch
   (đã nằm trong `.gitignore`).

---

## Giấy phép

Repository **chưa có giấy phép chính thức**. File [`LICENSE`](LICENSE) hiện
chỉ chứa dòng `TODO: Add your license here.` Trước khi tái sử dụng, phân phối
hoặc đóng gói lên store, cần chọn và thêm giấy phép (MIT, Apache-2.0, …) cùng
ghi chú về bản quyền học liệu nguồn.

---

## Tài liệu liên quan

- [`handoff/v1.0.md`](handoff/v1.0.md) — bàn giao kiến trúc, 26 chủ đề, quy ước ID.
- [`handoff/english_content_progress.md`](handoff/english_content_progress.md) — tiến độ bản địa hóa nội dung học.
- [`handoff/new_language_content_prompt.md`](handoff/new_language_content_prompt.md) — quy trình thêm ngôn ngữ nội dung.
- [`BAO_CAO_RA_SOAT.md`](BAO_CAO_RA_SOAT.md) — báo cáo rà soát chất lượng và các lỗi dịch đã sửa.
- [`branding/BRAND_GUIDE.md`](branding/BRAND_GUIDE.md) — logo, bảng màu, quy tắc thương hiệu.
- [`reference/`](reference/) — hai PDF giáo trình Pāḷi dùng làm nguồn tham khảo.

---

<p align="center"><sub>Cập nhật README: 09/11/2026 · Nội dung phản ánh mã nguồn tại commit <code>118e80a</code>.</sub></p>
