# [PALINETI] Release V0.1 - Hướng dẫn Build Fix

## Tình trạng đã khắc phục

### 1. Không có chỗ build thủ công
**Đã fix:** Workflow mới có `workflow_dispatch` với 5 boolean inputs:
- `build_android` (default false)
- `build_ios` (default true)
- `build_windows` (default false)
- `build_linux` (default false)
- `build_web` (default false)

Bạn có thể vào GitHub > Actions > Flutter Full Build > Run workflow > chọn platform cần build.

### 2. Lỗi cũ iOS: `The sandbox is not in sync with Podfile.lock`

**Nguyên nhân cũ (3 lần bạn gặp):**
```log
Run flutter build ios --release --no-codesign --no-pub
...
Updating minimum iOS deployment target to 13.0.
Upgrading Podfile
...
Error: The sandbox is not in sync with the Podfile.lock. Run 'pod install'
```

Workflow cũ làm:
```bash
rm -rf Podfile Podfile.lock Pods   # ❌ Xóa luôn Podfile
pod install
flutter build ios --release --no-codesign --no-pub
```

Khi `Podfile` bị xóa, Flutter tự generate lại trong lúc `flutter build ios` và ghi dòng `Updating minimum iOS... Upgrading Podfile`. Việc này làm `Podfile` mới không khớp với `Podfile.lock` vừa tạo -> lỗi sandbox.

**Fix mới (đã áp dụng):**

1. **Commit sẵn `ios/Podfile` với `platform :ios, '13.0'`** (đã push trong branch này)
   - File `ios/Podfile` nằm ở `ios/Podfile`
   - Đặt sẵn `platform :ios, '13.0'` nên Flutter không cần auto-upgrade nữa

2. **Không bao giờ xóa Podfile trong CI**
   ```bash
   rm -rf Pods Podfile.lock .symlinks   # ✅ Giữ lại Podfile
   pod repo update
   pod install --repo-update
   ```

3. **Double-check sync sau build**
   ```bash
   cd ios
   diff Podfile.lock Pods/Manifest.lock || pod install
   cd ..
   flutter build ios --release --no-codesign --no-pub || (pod install && build lại)
   ```

4. **Thứ tự chuẩn giống dự án mẫu bạn đưa:**
   - `flutter config --no-enable-swift-package-manager`
   - `flutter precache --ios`
   - `flutter pub get`
   - `dart run flutter_launcher_icons || true`
   - `pod install`
   - `flutter build ios`

### 3. Các cải tiến khác cho V0.1

- **Stable tag filter:** Chỉ build release khi tag là stable (không chứa `-`), ví dụ `v0.1.0`, `v1.0.0` sẽ build, còn `v0.1.1-rc.1`, `v0.1.1-beta.1` sẽ bỏ qua
  ```yaml
  if: (startsWith(github.ref, 'refs/tags/v') && !contains(github.ref_name, '-')) || inputs.build_xxx
  ```

- **Artifact naming đồng nhất:** Đổi từ `VDP-*` / `zenglish-*` lộn xộn sang `palineti-*`
  - `palineti-Android-ARM64-<tag>.apk`
  - `palineti-iOS-<tag>.ipa`
  - `palineti-Windows-<tag>.zip`
  - `palineti-Linux-<tag>.zip`

- **Dùng action mới:** `softprops/action-gh-release@v2` thay vì v1

- **Bỏ trigger `push: branches: main`** để tránh build thừa khi push code thường. Chỉ build khi:
  - Push tag `v*`
  - Manual dispatch

## File đã sửa trong branch `arena/019fa471-palineti`

### Đã push thành công lên GitHub:
- `ios/Podfile` (MỚI) - fix lỗi sandbox
- `WORKFLOW_FIXED.yml` (MỚI) - bản copy của workflow đã fix, vì GitHub App không có quyền push trực tiếp file trong `.github/workflows/`

### Cần copy thủ công (do giới hạn quyền workflows):

File gốc đã fix nằm ở local workspace:
`.github/workflows/full_build.yml` (trong máy ảo Arena hiện tại đã là bản fix)

Bạn có 2 cách để đưa lên GitHub:

#### Cách 1: Copy qua Web UI (nhanh nhất)
1. Mở file `WORKFLOW_FIXED.yml` trên GitHub trong branch `arena/019fa471-palineti`
2. Copy toàn bộ nội dung
3. Vào `https://github.com/Pabhassaracitto/palineti/edit/arena/019fa471-palineti/.github/workflows/full_build.yml` hoặc `main` nếu muốn
4. Paste đè lên và commit

Hoặc local:
```bash
git checkout arena/019fa471-palineti
cp WORKFLOW_FIXED.yml .github/workflows/full_build.yml
git add .github/workflows/full_build.yml
git commit -m "fix: apply V0.1 workflow fix"
git push
```

#### Cách 2: Merge branch này vào main bằng personal token
Trên máy cá nhân:
```bash
git fetch origin arena/019fa471-palineti
git checkout arena/019fa471-palineti
cp WORKFLOW_FIXED.yml .github/workflows/full_build.yml
git add .github/workflows/full_build.yml
rm WORKFLOW_FIXED.yml
git commit -m "release: V0.1 full build with manual dispatch"
git push origin arena/019fa471-palineti
# Tạo PR vào main
```

## Cách test Release V0.1

### Test manual build (không cần tag):
1. Vào GitHub repo > Actions
2. Chọn workflow "Flutter Full Build - Android, iOS, Windows, Linux, Web"
3. Bấm "Run workflow"
4. Chọn branch `arena/019fa471-palineti` hoặc `main` sau khi merge
5. Tick `Build iOS?` = true (hoặc platform bạn muốn)
6. Run - kiểm tra job `build-ios` chạy thành công, không còn lỗi sandbox

### Test release tag:
```bash
git tag v0.1.0
git push origin v0.1.0
```
Workflow sẽ tự động build tất cả platforms (vì tag stable) và tạo GitHub Release với file đính kèm.

Tag prerelease sẽ không build:
```bash
git tag v0.1.1-rc.1
git push origin v0.1.1-rc.1
# -> Jobs sẽ skip do contains '-'
```

## Checklist V0.1

- [x] ios/Podfile với platform 13.0 committed
- [x] Workflow có workflow_dispatch manual
- [x] Filter stable tags
- [x] Fix iOS sandbox sync error
- [x] Đồng nhất tên artifact palineti-*
- [ ] Copy WORKFLOW_FIXED.yml -> .github/workflows/full_build.yml (cần thao tác thủ công do giới hạn token)
- [ ] Test manual build iOS trên GitHub Actions
- [ ] Tạo tag v0.1.0 release
