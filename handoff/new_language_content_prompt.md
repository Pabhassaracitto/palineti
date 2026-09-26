# Prompt giao việc — Nội dung học cho các ngôn ngữ mới (SI / ZH / MY / HI)

> File này là prompt sẵn để gửi cho session agent mới, chạy **sau khi PR
> nội dung tiếng Anh (PR #2) được merge vào main**.

---

## Bối cảnh

Repo `Pabhassaracitto/palineti` — app Flutter học Pāḷi.

- **UI**: đã có sẵn 26 ngôn ngữ (26 file ARB trong `lib/l10n/`), gồm cả
  `si` (Sinhala), `zh` (Chinese), `my` (Myanmar), `hi` (Hindi) → **không cần
  làm gì thêm cho UI**.
- **Nội dung học**: hiện có tiếng Việt (inline trong
  `lib/data/lessons/lesson_*_data.dart`) + **tiếng Anh 100% trong sidecar**
  (`lib/data/localization/*`).
- Kiến trúc sidecar đã ổn định: fallback chain
  `_contentLocaleCandidates` = exact → language → `en` → `vi`. Thêm ngôn
  ngữ mới = **chỉ thêm map `'si'`/`'zh'`/`'my'`/`'hi'` vào các sidecar**,
  không sửa model, không sửa lesson data.

## Nhiệm vụ

Hoàn thiện **100% nội dung học** cho 4 ngôn ngữ theo thứ tự ưu tiên:

1. **Sinhala** (`si`) — Sri Lanka
2. **Chinese** (`zh`) — chữ giản thể
3. **Myanmar** (`my`) — Myanmar
4. **Hindi** (`hi`) — Ấn Độ

Đọc kỹ `handoff/english_content_progress.md` trước khi bắt đầu — trong đó
có kiến trúc đầy đủ, quy tắc codepoint Pāḷi, và các bẫy đã gặp.

## Quy tắc bắt buộc

1. **Không sửa lesson data** (`lib/data/lessons/lesson_*_data.dart`) và
   không sửa model. Chỉ thêm key locale mới vào các sidecar có sẵn.
2. **Key phải verbatim**: copy 100% từ sidecar `'en'` (hoặc lesson data cho
   phần chưa có EN) — **không bao giờ gõ lại Pāḷi tay**.
3. **Codepoint Pāḷi** — kiểm tra `ord()` từng chữ sau mỗi lần ghi file:
   ṇ = U+1E47, ṃ = U+1E43, ḍ = U+1E0D, ṭ = U+1E6D, ñ = U+00F1,
   ā = U+0101, ī = U+012B, ū = U+016B, ḷ = U+1E37.
   **Bẫy**: phụ âm đôi dễ mất một chữ khi gõ tay (saṭṭhi ≠ saṭhi,
   tiṭṭhatha ≠ tiṭhatha, guṇiṭha ≠ guiṭha) → dùng script Python với
   `chr()` + verify.
4. **Sandbox không có Dart/Flutter SDK** → syntax check bằng Python
   string-aware scanner (mô tả trong `english_content_progress.md`).
5. **Quiz**: chỉ dịch text; số options + thứ tự phải **đúng y hệt** data
   (index câu đúng không đổi).
6. **Mind Game**: key là value **runtime** của Pāḷi `answer` (đã unescape
   `\'`, `\\` của Dart string), KHÔNG phải chuỗi raw trong file nguồn.
   Bẫy đã gặp: `_Seg('"Buddho\'pi', ...)` → runtime value là `"Buddho'pi`
   (không có backslash).
7. **partOfSpeech**: key là value label inline verbatim (68 label tiếng
   Việt); giá trị đã là EN/Pāḷi được phép passthrough (không phải dịch).
8. **Không tự chế Pāḷi** không có trong nguồn.
9. **Quy ước dịch** (giữ song song với bản EN): động từ ghi
   (ngôi) + thì; cụm danh từ ngắn 2–5 từ; thuật ngữ Phật giáo theo chuẩn
   của mỗi ngôn ngữ:
   - Sinhala: dùng thuật ngữ kinh điển (vd. ධම්ම, බුද්ධ)
   - Chinese (giản thể): 法, 佛, 僧, 戒, 定, 慧...
   - Myanmar: dùng chữ Myanmar cho Pāḷi (vd. ဓမ္မ, ဗုဒ္ဓ)
   - Hindi: Devanagari, vd. धर्म, बुद्ध, संघ
10. **Chế độ tiếng Việt không được ảnh hưởng**: khi thiếu key, fallback
    về value inline VI; locale khác fallback qua `en` → **làm dở một phần
    vẫn an toàn**, không crash, không lẫn ngôn ngữ.

## Nội dung cần dịch mỗi ngôn ngữ (trong `lib/data/localization/`)

| File | Map cần thêm | Số lượng |
|---|---|---|
| `learning_content_translations.dart` | `lessonMetaTranslations` (title + description) | 25 |
| | `lessonDayTranslations` | 52 |
| | `lessonPhaseTranslations` | 151 |
| `quiz_translations/quiz_<locale>_lesson*.dart` (8 file, đặt cạnh bản EN) | questionText + 4 options | 297 câu |
| `learning_content_translations_vocab.dart` | `vocabWordTranslations` | 415 |
| | `vocabExampleTranslations` | 417 |
| | `vocabPosTranslations` | 68 |
| `learning_content_translations_content.dart` | `phaseContentTranslations` (7 read_listen Day-2: L5, L6, L9, L10, L12, L16, L20) | 7 |
| `mind_game_translations.dart` | `mindGameSegmentTranslations` (keyed by Pāḷi answer) | 447 |

## Workflow khuyến nghị (mỗi ngôn ngữ)

1. Tạo nhánh `content-<locale>` từ `main` (sau khi PR EN merge).
2. Đọc `handoff/english_content_progress.md` + sidecar EN (là "template"
   cho key lẫn tham khảo nghĩa).
3. Dịch theo thứ tự: **Meta → Days → Phases → Vocab words → Examples →
   Quiz (theo từng group) → Phase content → Mind Game → partOfSpeech**.
   Bản EN trong mỗi sidecar là nguồn nghĩa chính; nguồn gốc tiếng Việt
   nằm trong lesson data (wordVi, exampleVi, text phase, gloss `_Seg`,
   `partOfSpeech`).
4. Commit theo từng khối nội dung, vd:
   `feat(l10n): SI meta + days + phases (228 entries)`.
5. Sau MỖI khối: validate Pāḷi byte-level + syntax scan + đếm số entry.
6. **Acceptance 100%**: 25/52/151/297/415/417/7/447/68.
7. Tạo PR (base `main`) + cập nhật `handoff/english_content_progress.md`
   (thêm mục tiến độ cho ngôn ngữ mới).

## Checklist trước khi PR (mỗi ngôn ngữ)

- [ ] Đủ số entry đúng bảng trên (không thiếu, không trùng key)
- [ ] Mọi key Pāḷi byte-identical với sidecar `'en'` (so tập hợp)
- [ ] Quiz: số options khớp data từng câu
- [ ] Mind Game: 447 key khớp runtime value (đã unescape)
- [ ] partOfSpeech: 68 key khớp value inline verbatim
- [ ] Syntax scan pass toàn bộ file đã sửa
- [ ] Chế độ VI không đổi (fallback inline)

## Ghi chú

- Chinese: default `zh` = giản thể; UI đã có sẵn `zh_TW` (phồn thể) — nếu
  chủ app muốn bản phồn thể thì thêm map `zh_TW` sau (key giống hệt `zh`).
- Thứ tự ưu tiên (theo chủ app): Sri Lanka (si) → Chinese (zh) →
  Myanmar (my) → Ấn Độ (hi).
