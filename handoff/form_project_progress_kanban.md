📊 VipLang / Pali Course Project Progress — Kanban Board
Ngày cập nhật: 2026-07-25
Sprint hiện tại: Sprint 02 - Core Content Integration & Navigation Fixes
Mục tiêu Sprint: Load data cho tất cả các lessons (1-20) và chỉnh sửa luồng chọn ngày học.

📋 Backlog (Kho tính năng / Nhiệm vụ lâu dài)
🚀 Features (Tính năng mới)
[ ] Hoàn thành soạn thảo nội dung Lessons 21-26 (hoặc xác định không làm các lesson này nếu metadata chỉ cần 20 lesson).
[ ] Thêm cài đặt (settings): quản lý tiến trình, xóa dữ liệu bài học.
🛠️ Optimization & Tech Debt (Tối ưu hóa & Sửa lỗi tồn đọng)
[ ] Tách giao diện example app ra các file / widget chuyên biệt, tái cấu trúc để code sạch hơn.
[ ] Viết Unit Test cho `PaliParadigmEngine` và `MascAParadigm`.

🎯 To Do (Danh sách việc cần làm trong Sprint hiện tại)
[x] Hoàn thành viết unit tests bảo vệ UI lessons
[x] Rà soát, kiểm định lại chất lượng data lessons từ bài 1 -> 20 (Đã hoàn thiện logic metadata cho toàn bộ 20 bài học để export ra HomeScreen).

🚧 In Progress (Đang thực hiện)
(Currently none - tasks are completed)

✅ Done (Đã hoàn thành)
Sprint: Sprint 02 - Core Content Integration (2026-07-24)
✅ Cập nhật file dữ liệu gốc: Thêm function `getLessonXXMeta()` vào trực tiếp các file data của bài 5, 6, 9, 10, 12, 16, 20 và public qua thư viện pali_course.
✅ Cập nhật HomeScreen: Load toàn bộ metadata dari các lesson 1 đến 20 để hiển thị danh sách bài học đầy đủ trên example app thay vì bị hardcode chỉ có bài 1.
✅ Cập nhật LessonDetailScreen: Bỏ luồng hardcode kiểm tra lesson 1, chuyển hướng sang đúng màn hình chọn Ngày học cho bất kỳ lesson nào.
✅ Cập nhật DayNavigatorScreen: Thay logic tĩnh (getLesson01Day1 / Day2) bằng logic load động, tương ứng vớ bài đang chọn qua hàm _getDay.
✅ Hoàn tất các task Sprint 02 (2026-07-25).

🚫 Blocked / Issues (Điểm nghẽn / Lỗi nghiêm trọng)
Không có.

📝 Notes (Ghi chú kiến trúc & Quyết định quan trọng)
🗺️ Sơ đồ cấu trúc thư mục (Architecture Folder Tree)
lib/
├── core/                      ← Constants, colors
├── data/
│   ├── lessons/               ← Data lessons từ 01->20 (Mỗi lesson có thể gồm meta, day1, day2)
│   ├── models/                ← Lớp mô hình: LessonMeta, LessonDay, LessonPhase
│   └── morphology/            ← Phân tích hình thái, Pali Engine
├── presentation/              ← Các widgets tái sử dụng
└── pali_course.dart           ← Barrel export file

🔀 Bảng đối chiếu ánh xạ dữ liệu (Data/Enum Mappings)
_getDay mapping logic tại DayNavigatorScreen phải trỏ thủ công theo index (getLesson01Day1, getLesson02Day1...) vì dart không hỗ trợ reflection / string dynamic execution tốt, để đảm bảo type-safety.

🎯 Definition of Done (Định nghĩa trạng thái hoàn thành)
[x] Truy cập HomeScreen hiện đủ 20 lessons (đã bổ sung đầy đủ metadata cho các bài 5,6,9,10,12,16,20).
[x] Click vào lesson hiển thị detail và có thể bấm bắt đầu học để hiện Day1, Day2.
