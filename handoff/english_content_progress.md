# Learning-Content Localization — Progress

Ngày cập nhật: 2026-09-26

## Bối cảnh

PaliNeti có giao diện cho 26 ngôn ngữ (`lib/l10n/`). Nội dung bài học dùng
sidecar, không sửa lesson data hoặc model:

| File | Nội dung |
|---|---|
| `lib/data/localization/learning_content_translations.dart` | Lesson meta, day, phase và quiz registry |
| `lib/data/localization/quiz_translations/quiz_en_lesson*.dart` | Template quiz EN, 8 nhóm / 297 câu |
| `lib/data/localization/learning_content_translations_vocab.dart` | Nghĩa từ, ví dụ và nhãn từ loại |
| `lib/data/localization/learning_content_translations_content.dart` | Nội dung `read_listen` Day 2 thiếu inline EN |
| `lib/data/localization/mind_game_translations.dart` | Gloss Mind Game, keyed bằng Pāḷi `answer` runtime |
| `lib/data/localization/*_locales.dart` | Overlay SI / ZH / MY / HI được merge vào sidecar tương ứng |

Lookup hiện có chuỗi fallback an toàn: VI giữ nguyên inline tiếng Việt; các
locale nội dung khác fallback qua EN khi không có sidecar.

## Hoàn thành — English 100% (2026-09-24)

- [x] Lesson meta, day, phase
- [x] Quiz: 297/297 câu, 8 group files
- [x] Vocab: 415 nghĩa từ + 417 ví dụ
- [x] Phase content: 7/7
- [x] Mind Game: 447/447 glosses
- [x] partOfSpeech: 68/68 nhãn inline tiếng Việt

## Hoàn thành — Sinhala, Chinese, Myanmar, Hindi 100% (2026-09-26)

Mỗi locale `si`, `zh` (giản thể), `my`, `hi` có overlay độc lập trong các
sidecar. Lesson data (`lib/data/lessons/`) và model không bị sửa.

| Nội dung | SI | ZH | MY | HI |
|---|---:|---:|---:|---:|
| Lesson meta | 26/26 | 26/26 | 26/26 | 26/26 |
| Lesson day | 52/52 | 52/52 | 52/52 | 52/52 |
| Lesson phase | 151/151 | 151/151 | 151/151 | 151/151 |
| Quiz (`questionText` + đúng 4 options) | 297/297 | 297/297 | 297/297 | 297/297 |
| Vocab word | 415/415 | 415/415 | 415/415 | 415/415 |
| Vocab example | 417/417 | 417/417 | 417/417 | 417/417 |
| `read_listen` phase content | 7/7 | 7/7 | 7/7 | 7/7 |
| Mind Game segment gloss | 447/447 | 447/447 | 447/447 | 447/447 |
| partOfSpeech | 68/68 | 68/68 | 68/68 | 68/68 |

> **Lưu ý về meta:** bảng handoff cũ ghi 25. Nguồn EN hiện hành có 26 key
> (`theme_01` đến `theme_26`, bao gồm Lesson 23 đã được bổ sung trong PR #2),
> vì vậy locale overlays cố ý có **26/26** để không mất Lesson 23.

### Kiểm chứng đã chạy

`python3 tools/generate_locale_sidecars.py` chạy không cần Dart SDK và kiểm
tra bằng scanner string-aware:

- cấu trúc delimiter của tất cả sidecar gốc và overlay;
- tập ID/field cho meta, day, phase và 7 phase content;
- 297 quiz ID cho từng locale, mỗi ID có `questionText` và đúng 4 options;
- tập key `vocabWord` 415, `vocabExample` 417, `vocabPos` 68 và Mind Game
  447 cho từng locale;
- key Mind Game Pāḷi và key partOfSpeech đối chiếu byte-level với template EN;
- NFC cho key Unicode để chặn dấu Pāḷi bị decomposed.

Kết quả hiện tại:

```text
Catalog, key-set, quiz-shape, and string-aware syntax validation passed.
Canonical English counts: meta=26, day=52, phase=151, quiz=297,
word=415, example=417, pos=68, content=7, mind=447
```

## Lưu ý kiến trúc quan trọng

- Mind Game key là **runtime `answer` value** đã unescape (ví dụ
  `"Buddho'pi`, không phải `Buddho\'pi`). Không gõ lại key bằng tay.
- `partOfSpeech` key là value nhãn inline tiếng Việt verbatim. Nhãn EN/Pāḷi
  không có entry tiếp tục passthrough như trước.
- Không thay đổi `MixedSegment.isVietnamese`: đây là cờ cấu trúc chip, không
  phải kiểm tra locale.
- Khi thêm `zh_TW` sau này, dùng cùng key set với `zh`; hiện tại `zh` là chữ
  giản thể theo yêu cầu.
