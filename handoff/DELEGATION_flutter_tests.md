# Giao việc: chạy flutter analyze & flutter test, sửa lỗi nếu có

> Prompt này để giao cho một agent khác **có cài Flutter/Dart SDK** (môi
> trường rà soát hiện tại không có). Dán toàn bộ nội dung từ mục **Yêu cầu**
> trở xuống.

---

## Yêu cầu

Repo: `Pabhassaracitto/palineti`, branch `arena/d31ad54d-palineti`.

Trong đợt sửa lỗi vừa qua, nhiều file Dart đã thay đổi nhưng **chưa từng
được compile thật** (môi trường trước không có SDK, chỉ kiểm tra cân bằng
ngoặc bằng Python). Cần chạy kiểm tra thật và sửa lỗi nếu có.

### Các bước

```bash
flutter analyze          # phải 0 lỗi (warning chấp nhận được nhưng ghi lại)
flutter test             # tất cả test phải xanh
```

### Vùng thay đổi cần chú ý

- `lib/data/lesson_vocab_index.dart` — registry mới, switch 26 bài
- `lib/presentation/screens/vocab_list_screen.dart` — màn hình mới
- `lib/presentation/screens/lesson_detail_screen.dart` — thẻ từ vựng
- `lib/data/lessons/lesson_01_data.dart`, `lesson_08_data.dart`,
  `lesson_13_data.dart`, `lesson_19_data.dart` — thêm 33 mục từ vựng
- `lib/data/localization/*_locales.dart` — sidecar vừa sinh lại hàng loạt

### Nếu có lỗi

1. Sửa trên branch `arena/d31ad54d-palineti`, commit với message rõ ràng.
2. **Không đổi số id** của mục từ vựng đã có trong `kLessonNNVocab` — sidecar
   giữ key `pv_LNN_0XX` trỏ theo số đó, đổi số sẽ làm bản dịch trỏ nhầm từ.
3. **Không thêm key l10n mới** vào `l10n.yaml`/ARB (26 locale × 27 file sinh
   ra phải đồng bộ). Nếu bắt buộc, ghi rõ trong kết quả để có kế hoạch riêng.
4. Chạy lại `flutter analyze && flutter test` cho tới khi xanh.

### Kết quả phải nộp

1. Kết quả `flutter analyze` (nguyên văn phần tổng kết).
2. Kết quả `flutter test` (tổng kết + tên test lỗi nếu có).
3. Danh sách commit đã tạo.
4. Nếu mở được app: chụp/xác nhận màn hình danh sách từ vựng của bài 13
   (17 từ) và bài 19 (18 từ) hiển thị đúng.

### Không làm

- Không chạy pipeline dịch (`--translate`).
- Không sửa `tools/*.py`.
- Không force-push.
