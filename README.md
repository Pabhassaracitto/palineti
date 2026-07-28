# Palineti

Phiên bản: 1.0.0

GitHub Copilot Chat Assistant — README viết bằng tiếng Việt.

## Tổng quan
Palineti là một dự án Flutter (Dart) bắt đầu từ template mặc định. Mục tiêu của README này là cung cấp hướng dẫn nhanh để cài đặt, chạy, đóng gói, và thông tin CI (GitHub Actions) để bạn có thể build thoải mái trên workflow mà không lo bị timeout.

## Tính năng
- Ứng dụng Flutter đa nền tảng (Android, iOS, Web, Windows, Linux, macOS).
- Cấu trúc dự án đã chuẩn bị sẵn nhiều thư mục nền tảng.
- Workflow CI mẫu được cấu hình trong `WORKFLOW_FIXED.yml` để build đa nền tảng khi tạo tag `v*` hoặc chạy thủ công (workflow_dispatch).

## Yêu cầu
- Flutter SDK (khuyến nghị kênh stable, tương thích Dart SDK >= 3.11.x)
- Android SDK / Xcode (nếu build cho nền tảng tương ứng)
- CocoaPods (cho iOS)

Phiên bản môi trường đề xuất:
- Dart/Flutter: tương thích với `environment: sdk: ^3.11.1` trong `pubspec.yaml`.

## Khởi động nhanh (local)
1. Clone repository:

   git clone https://github.com/Pabhassaracitto/palineti.git
   cd palineti

2. Lấy dependency:

   flutter pub get

3. Chạy trên thiết bị/emulator:

   flutter run

4. Chạy debug/analyze/test:

   flutter analyze
   flutter test

## Đóng gói / Build
- Android (debug): flutter build apk
- Android (release, ARM64): flutter build apk --release --target-platform android-arm64
- Android (App Bundle): flutter build appbundle --release
- iOS (no codesign trên CI): flutter build ios --release --no-codesign --no-pub
- Web: flutter build web --release
- Windows: flutter build windows --release
- Linux: flutter build linux --release

Lưu ý: để build iOS thực sự deploy được (App Store), cần codesign với certificate/provisioning profile. Trên CI (macOS runner) workflow hiện tạo IPA từ Runner.app để sideload hoặc tải về kiểm thử.

## GitHub Actions (CI) — tóm tắt và mẹo tối ưu
File workflow chính: `WORKFLOW_FIXED.yml` (đa job: build-android, build-ios, build-windows, build-linux, build-web, create-release).

Những điểm quan trọng:
- GitHub-hosted runners có giới hạn thời gian chạy 1 job = 6 giờ. Tránh job kéo dài hơn 6 giờ.
- Workflow hiện đã tách job theo nền tảng — đây là cách tốt để giữ mỗi job ngắn hơn giới hạn.
- Để tiết kiệm thời gian và tránh timeout, nên thêm cache cho:
  - pub packages (`~/.pub-cache`)
  - Gradle (`~/.gradle/caches` / `~/.gradle/wrapper`)
  - CocoaPods (`ios/Pods` hoặc `~/.cocoapods/repos`) khi hợp lệ
- Sử dụng artifact upload/download để chia kết quả giữa job (workflow hiện đã upload artifacts cho mỗi nền tảng).
- Chỉ build những nền tảng bạn cần: workflow đã có inputs (build_android, build_ios, …) để bật/tắt build từng nền tảng khi chạy thủ công.
- Nếu cần job chạy lâu hơn 6 giờ, cân nhắc dùng self-hosted runner (bạn phải quản lý tài nguyên và bảo mật).

Ví dụ cache (thêm vào trước `flutter pub get`):

```yaml
- name: Cache pub packages
  uses: actions/cache@v4
  with:
    path: ~/.pub-cache
    key: ${{ runner.os }}-pub-${{ hashFiles('**/pubspec.lock') }}

- name: Cache gradle
  uses: actions/cache@v4
  with:
    path: |
      ~/.gradle/caches
      ~/.gradle/wrapper
    key: ${{ runner.os }}-gradle-${{ hashFiles('**/gradle/wrapper/gradle-wrapper.properties') }}

- name: Cache CocoaPods
  uses: actions/cache@v4
  with:
    path: ios/Pods
    key: ${{ runner.os }}-pods-${{ hashFiles('ios/Podfile.lock') }}
```

## Các gợi ý vận hành
- Theo dõi thời gian chạy job (run duration) và cache hit/miss để tinh chỉnh key cache.
- Sử dụng `workflow_dispatch` inputs để chỉ build nền tảng cần thiết.
- Sử dụng `timeout-minutes` cho job nếu muốn fail sớm trên job kéo dài bất thường.
- Thêm `concurrency` group nếu cần hạn chế chạy nhiều release/CI song song.

## Cấu trúc dự án (chỉ mục nhanh)
- android/  
- ios/  
- lib/  (mã nguồn chính Flutter)
- assets/branding/  (assets dự án)  
- test/  
- WORKFLOW_FIXED.yml (CI)  
- pubspec.yaml

## Đóng góp
Bạn hoan nghênh các đóng góp. Mẹo khi tạo PR:
- Mô tả rõ thay đổi và mục đích
- Đảm bảo `flutter analyze` và `flutter test` pass
- Nếu liên quan CI, thêm/kiểm tra cache keys và artifacts

## License
Hiện repository có file LICENSE tại root. Nếu bạn muốn thay đổi license (MIT/Apache-2.0), hãy cập nhật file LICENSE tương ứng.

## Liên hệ
Nếu cần mình cập nhật README theo phong cách cụ thể hoặc thêm phần hướng dẫn chi tiết cho một nền tảng (ví dụ iOS release signing), reply: “Cập nhật README: thêm phần iOS signing” hoặc “Viết README bằng tiếng Anh”.
