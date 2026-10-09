# Dự thảo thân PR (dùng khi mở PR từ `arena/d31ad54d-palineti` vào `main`)

> Tiêu đề đề xuất:
> `feat(content): đợt rà soát toàn diện — sửa nội dung, kết nối từ vựng, pipeline dịch mới`

## Tóm tắt

Đợt rà soát toàn diện dự án (báo cáo đầy đủ: `BAO_CAO_RA_SOAT.md`), gồm:

### Nội dung
- **7 lỗi chính tả Pāḷi** đã sửa: `rukha→rukkha` (bài 3), `Acariyā/bhaṇdāni/pottakaṃ/salāyaṃ` (bài 7), `Gīlānānaṃ→Gilānānaṃ` (bài 19), `dhakkhiṇa→dakkhiṇa` (bài 13), `muṇino→munino` (bài 8). Mỗi lỗi xác nhận bằng đếm tần suất toàn corpus hoặc gloss Mind Game.
- **Xoay lại 222/447 mục gloss Mind Game** bị lệch 1 vị trí (mọi ngôn ngữ trừ tiếng Việt hiển thị sai nghĩa 49,7%).
- **Từ vựng 892 → 924 mục**: đăng ký lại những từ bài học đã dạy sẵn trong bảng giảng/FAB (bài 01: `vada`; bài 13: 14 tính từ chỉ định + `payojana`; bài 19: 16 danh từ nhóm Mano; bài 8: `muni` — căn mẫu của cả bài). Không có nội dung mới tự soạn.

### Giao diện
- **Toàn bộ từ vựng kết nối vào UI**: `lesson_vocab_index.dart` + `VocabListScreen`; thẻ "Từ vựng & Ngữ pháp" của bài hiện dữ liệu thật. Trước đây 892 mục là dữ liệu chết.

### Bản dịch (4 locale × 3.069 chuỗi)
- Pipeline dịch viết lại phần giao thức với Google Translate:
  - Google **xoá thẻ HTML** với tiếng Hindi ở mọi kích cỡ request (đo bằng probe) → thay bằng **marker văn bản thuần** làm dấu phân cách.
  - Google đôi khi **trả nguyên văn tiếng Anh** một cách tất định theo chuỗi → bản trả về trùng nguồn bị coi là thất bại, thử lại với **leo thang hình dạng** (trần → thêm dấu chấm → bọc nháy).
  - Chế độ `--only-gaps`: chỉ dịch phần còn thiếu, giữ nguyên bản dịch đã có.
  - Marker Pāḷi được bảo vệ và khôi phục kể cả khi Google chuyển tự chúng sang chữ Devanagari/Sinhala/Myanmar (so theo giá trị số).
- Kết quả: Pāḷi-bị-chuyển-tự-mất từ 5–12% → **0%** ở cả 4 locale. (Số liệu "chưa dịch" cập nhật trong bình luận PR sau khi run cuối hoàn tất.)

### CI & công cụ
- `.github/workflows/translate_content.yml` — dịch + chốt chất lượng (chạy tay / trigger tạm).
- `.github/workflows/content_audit.yml` — mỗi lần push: validate sidecar, chốt độ phủ từ vựng, phủ sóng ARB (Python thuần, ~20 giây).
- `test/vocab_coverage_test.dart` — khoá registry từ vựng.
- `tools/audit_vocab_coverage.py` — audit "từ bài tập phải truy về từ vựng đã học"; đã sửa lỗi off-by-one, thêm đuôi mệnh lệnh cách/aorist/enclitic (untraced 530 → 221 → 203).
- Xoá 5 bản chụp workflow cũ + 2 file nhật ký AI; giữ `WORKFLOW_FIXED.yml` (README chỉ định là bản chính).

### Việc cần làm sau merge (đã có issue Linear)
- Chạy `flutter analyze` & `flutter test` cục bộ (môi trường rà soát không có SDK) — IN4-70.
- Rà từ vựng bài 14/15 — IN4-66; dọn CI tạm thời — IN4-69.

### Ghi chú merge
Branch có nhiều commit trung gian (log chạy CI, probe). Đề xuất **squash merge** để `main` nhận 1 commit sạch — đúng thông lệ repo (PR #1–#4 đều squash).
