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
| `lib/data/localization/learning_content_translations.dart` | Meta (25), Day (52), Phase (151) — đã đủ EN; quiz merge từ các file group |
| `lib/data/localization/quiz_translations/quiz_en_lesson01.dart` | Quiz EN Lesson 01 (di chuyển từ file gốc, giữ nguyên 100%) |
| `lib/data/localization/quiz_translations/quiz_en_lesson02_04.dart` | Quiz EN Lesson 02–04 (39 câu) |
| `lib/data/localization/learning_content_translations_vocab.dart` | `vocabWordTranslations` (86 entries: L5/L6 — wordEn gốc chỉ là root) + `vocabExampleTranslations` (130 entries: L1–L4, L7, L8) |
| `lib/data/localization/learning_content_translations_content.dart` | `phaseContentTranslations` — CHƯA ĐỔ SẼN (7 read_listen Day-2 thiếu contentEn: L5, L6, L9, L10, L12, L16, L20) |
| `lib/presentation/localization/learning_content_localizations.dart` | Thêm lookup sidecar cho vocab word/example + phase content; fallback chain đã hỗ trợ si/hi/zh/my sẵn (`_contentLocaleCandidates`) |

## Hoàn thành

- [x] Architecture sidecar (vocab word/example, phase content, quiz)
- [x] EN: LessonMeta description — 25/25 (L2–L20 + L21,22,24,25,26)
- [x] EN: LessonDay titles — 52/52
- [x] EN: LessonPhase titles — 151/151
- [x] EN: Quiz — L1 (9) + L2–L4 (39) = 48/297 câu
- [x] EN: Vocab word fixes — L5 (31) + L6 (55) = 86/415
- [x] EN: Vocab examples — L1(16) L2(20) L3(21) L4(33) L7(20) L8(20) = 130/417

## Còn lại (tiếp theo theo thứ tự)

1. **Quiz EN**:
   - L5–L8 (34 câu) → `quiz_translations/quiz_en_lesson05_08.dart`
   - L9–L12 (29 câu) → `quiz_en_lesson09_12.dart`
   - L13–L16 (49 câu) → `quiz_en_lesson13_16.dart`
   - L17–L20 (42 câu) → `quiz_en_lesson17_20.dart`
   - L21–L23 (57 câu) → `quiz_en_lesson21_23.dart`
   - L24–L26 (42 câu) → `quiz_en_lesson24_26.dart`
   - Sau đó khai báo `...quizQuestionEnLxx` trong `quizQuestionTranslations`
2. **Vocab EN**:
   - Examples: L11(33) L13(2) L14(51) L15(39) L17(13) L18(55) L19(2) L21(20) L22(17) L23(19) L24(14) L25(11) L26(11)
   - Word fixes: L9(39) L10(51) L12(51) L16(83) L20(105)
3. **Phase content EN**: 7 read_listen Day-2 (L5, L6, L9, L10, L12, L16, L20) vào `learning_content_translations_content.dart`

## LƯU Ý QUAN TRỌNG

- **Dấu Pāḷi**: repo dùng codepoint chuẩn: ṇ = U+1E47, ṃ = U+1E43,
  ḍ = U+1E0D, ṭ = U+1E6D. Khi thêm text Pāḷi mới phải kiểm tra byte-level
  khớp với file nguồn (đặc biệt các chữ có dấu dưới — dễ mất khi gõ tay).
- **Quiz sidecar**: số options phải bằng đúng số options trong data
  (`QuizQuestion.options.length`), đúng thứ tự — index correct không đổi.
- **Lesson 23 bị thiếu khỏi HomeScreen** (bug cũ): không có
  `getLesson23Meta()` và không có trong danh sách `_lessons` của
  `home_screen.dart`. Chưa sửa — cần xác nhận trước khi thêm meta mới.
- Mind Game (`MixedSegment`) hardcode `isVietnamese` — chưa localize được,
  cần refactor riêng (phạm vi ngoài "hoàn thiện EN" hiện tại).
