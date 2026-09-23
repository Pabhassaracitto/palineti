# English Learning-Content Completion — Progress

Ngày cập nhật: 2026-09-24

## Bối cảnh

Kế hoạch mở rộng nội dung học cho 5 ngôn ngữ: **English, Sinhala, Hindi,
Chinese, Myanmar**. Bước 1 (đã chọn): **hoàn thiện tiếng Anh trước**.

Giao diện (UI) đã có sẵn 26 ngôn ngữ (26 file ARB × 76 keys trong
`lib/l10n/`) — không cần làm thêm. Nội dung học trước đó chỉ có
**Việt + Anh một phần**.

## Kiến trúc (đã hoàn thành)

Tất cả bản dịch EN (và sau này si/hi/zh/my) đặt vào **sidecar**, không sửa
file lesson data:

| File | Nội dung |
|---|---|
| `lib/data/localization/learning_content_translations.dart` | Meta (25), Day (52), Phase (151) — đủ EN; quiz merge từ 8 file group (297 câu) |
| `lib/data/localization/quiz_translations/quiz_en_lesson01.dart` | Quiz EN Lesson 01 (9 câu) |
| `lib/data/localization/quiz_translations/quiz_en_lesson02_04.dart` | Quiz EN Lesson 02–04 (39 câu) |
| `lib/data/localization/quiz_translations/quiz_en_lesson05_08.dart` | Quiz EN Lesson 05–08 (36 câu) |
| `lib/data/localization/quiz_translations/quiz_en_lesson09_12.dart` | Quiz EN Lesson 09–12 (29 câu: L9:5, L10:5, L11:13, L12:6) |
| `lib/data/localization/quiz_translations/quiz_en_lesson13_16.dart` | Quiz EN Lesson 13–16 (43 câu) |
| `lib/data/localization/quiz_translations/quiz_en_lesson17_20.dart` | Quiz EN Lesson 17–20 (42 câu) |
| `lib/data/localization/quiz_translations/quiz_en_lesson21_23.dart` | Quiz EN Lesson 21–23 (57 câu) |
| `lib/data/localization/quiz_translations/quiz_en_lesson24_26.dart` | Quiz EN Lesson 24–26 (42 câu) |
| `lib/data/localization/learning_content_translations_vocab.dart` | `vocabWordTranslations` (415/415) + `vocabExampleTranslations` (417/417) + `vocabPosTranslations` (68 labels VI→EN) — ĐỦ |
| `lib/data/localization/mind_game_translations.dart` | `mindGameSegmentTranslations` (447 Pāḷi `answer` → gloss EN) — ĐỦ |
| `lib/data/localization/learning_content_translations_content.dart` | `phaseContentTranslations` — Đủ (7 read_listen Day-2: L5, L6, L9, L10, L12, L16, L20) |
| `lib/presentation/localization/learning_content_localizations.dart` | Thêm lookup sidecar cho vocab word/example + phase content; fallback chain đã hỗ trợ si/hi/zh/my sẵn (`_contentLocaleCandidates`) |

## Hoàn thành — TIẾNG ANH 100% (2026-09-24)

- [x] Architecture sidecar (vocab word/example, phase content, quiz)
- [x] EN: LessonMeta description — 25/25
- [x] EN: LessonDay titles — 52/52
- [x] EN: LessonPhase titles — 151/151
- [x] EN: Quiz — 297/297 câu (8 file group, audit khớp 1:1 với lesson data)
- [x] EN: Vocab word fixes — 415/415
- [x] EN: Vocab examples — 417/417
- [x] EN: Phase content — 7/7 read_listen Day-2 (L5, L6, L9, L10, L12, L16, L20)
- [x] EN: Mind Game segment glosses — 447/447 (L5, L6, L9, L10, L12, L16, L20)
- [x] EN: partOfSpeech labels — 68/68 labels tiếng Việt (giá trị EN/Pāḷi passthrough)

**Kiểm chứng:** mọi câu Pāḷi trong sidecar đã được validate byte-level
(khớp verbatim với lesson data source); audit 297 quiz IDs không thiếu,
không thừa, không trùng; mỗi entry có đúng questionText + 4 options;
toàn bộ file qua syntax scan.

## Đã hoàn thành thêm (2026-09-24)

- [x] **Bug Lesson 23 trên HomeScreen** — ĐÃ SỬA: thêm `getLesson23Meta()`
  + đưa vào `_lessons` trong `home_screen.dart` + meta EN
  `theme_23_kitaka` trong `learning_content_translations.dart`.
  (commit `2d1ff27`)
- [x] **Mind Game (`MixedSegment`) EN** — sidecar `mind_game_translations.dart`
  (447 entries, keyed by Pāḷi `answer`). Chip trong `mind_game_screen.dart`
  gọi `segment.localizedText(context)`. Kiểm chứng: mọi key khớp byte-level
  với runtime text của lesson (gồm cả 1 case có `\'` escape). (commit `4770042`)
- [x] **`FabVocabItem.partOfSpeech` EN** — 68 entries trong
  `vocabPosTranslations` (cuối `learning_content_translations_vocab.dart`).
  Label tiếng Việt (cách ngữ, suffix, sandhi rule, abbrev như
  `danh_tu`/`dong_tu`/`qkpt`/`htpt`) được dịch; giá trị đã là EN/Pāḷi
  không liệt kê → fallback về value inline. Chip vocab FAB trong
  `read_listen_screen.dart` gọi `item.localizedPartOfSpeech(context)`.
  (commit `4770042`)

## Còn lại

1. **4 ngôn ngữ nội dung còn lại** (Sinhala, Hindi, Chinese, Myanmar):
   0% — dùng cùng kiến trúc sidecar (thêm `'si'/'hi'/'zh'/'my'` vào các
   map tương ứng); không cần sửa model.
   - Với Mind Game: thêm map keyed bằng Pāḷi `answer` (giống `'en'`).
   - Với partOfSpeech: thêm map keyed bằng value inline (giống `'en'`).
2. `MixedSegment.isVietnamese` vẫn là cờ logic (chọn chip tap-to-reveal vs
   Pāḷi text cố định) — đây là cấu trúc data, không phải localization;
   giữ nguyên.

## LƯU Ý QUAN TRỌNG

- **Dấu Pāḷi**: repo dùng codepoint chuẩn: ṇ = U+1E47, ṃ = U+1E43,
  ḍ = U+1E0D, ṭ = U+1E6D, ñ = U+00F1 (kiểu tilde, vd. taññeva, saññamo),
  ā = U+0101, ī = U+012B, ū = U+016B,  = U+1E45, ḷ = U+1E37.
  Khi thêm text Pāḷi mới phải kiểm tra byte-level khớp với file nguồn
  (đặc biệt các chữ có dấu dưới — dễ mất khi gõ tay).
- **Bẫy đã gặp khi gõ tay**: phụ âm đôi dễ bị mất một chữ
  (saṭṭhi ≠ saṭhi, tiṭṭhatha ≠ tiṭhatha, guṇiṭṭha ≠ guṇiha,
  paṇṇākāre, saṅgaṇho...); nên dùng script Python với `chr()` + verify
  ord() từng chữ sau khi ghi file.
- **Quiz sidecar**: số options phải bằng đúng số options trong data
  (`QuizQuestion.options.length`), đúng thứ tự — index correct không đổi.
- **Sidecar keyed bằng text inline (Mind Game / partOfSpeech)**: key phải
  là VALUE RUNTIME của Dart string (đã unescape `\'`, `\\`...), KHÔNG phải
  chuỗi raw trong file nguồn. Bẫy đã gặp: `_Seg('"Buddho\'pi', ...)` —
  runtime value là `"Buddho'pi` (không có backslash). Verify bằng cách
  unescape cả 2 phía rồi so tập hợp.
- `isVietnamese` của `MixedSegment` là cờ cấu trúc data (segment là Pāḷi
  cố định hay là gloss tap-to-reveal) — không phải ngôn ngữ; không thay
  bằng locale check.
