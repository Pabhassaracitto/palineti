# V0.1.2 FINAL FIX - Root cause found

## Lỗi bạn gặp liên tục
```
Run flutter build ios --release --no-codesign --no-pub
...
Error (Xcode): The sandbox is not in sync with the Podfile.lock. Run 'pod install'
```
Dù đã pod install 3 lần trong cùng job, vẫn fail.

Log chi tiết có dòng quan trọng:
```
[!] CocoaPods did not set the base configuration of your project because your project already has a custom config set. In order for CocoaPods integration to work at all, please either set the base configurations of the target `Runner` to `Target Support Files/Pods-Runner/Pods-Runner.debug.xcconfig` or include the `Target Support Files/Pods-Runner/Pods-Runner.debug.xcconfig` in your build configuration `Flutter/Debug.xcconfig`).
```

## Root cause thực sự

`ios/Flutter/Debug.xcconfig` và `Release.xcconfig` trong repo cũ chỉ có:
```
#include "Generated.xcconfig"
```

Thiếu dòng:
```
#include? "Pods/Target Support Files/Pods-Runner/Pods-Runner.debug.xcconfig"
```

Đây là template chuẩn của Flutter. Khi thiếu, CocoaPods không thể integrate Pods vào Runner target, Xcode không thấy Pods, nên báo `sandbox not in sync` dù Podfile.lock và Manifest.lock giống nhau.

## Fix V0.1.2 (đã push)

### 1. Sửa ios/Flutter/Debug.xcconfig
```xcconfig
#include? "Pods/Target Support Files/Pods-Runner/Pods-Runner.debug.xcconfig"
#include "Generated.xcconfig"
```

### 2. Sửa ios/Flutter/Release.xcconfig
```xcconfig
#include? "Pods/Target Support Files/Pods-Runner/Pods-Runner.release.xcconfig"
#include "Generated.xcconfig"
```

Đã commit và push lên `arena/019fa471-palineti` trong commit `4edd5d6`.

### 3. Giữ ios/Podfile với platform 13.0 và deployment target enforcement

### 4. Workflow với auto-retry (đã push bản copy)

File `WORKFLOW_FIXED_V0.1.2.yml` chứa workflow có:
- `clean`: rm -rf Pods Podfile.lock .symlinks + pod deintegrate + pod install --repo-update --verbose
- `build with auto-retry`: attempt 1 fail -> pod install -> attempt 2 -> attempt 3

## Cách áp dụng cuối cùng

Branch `arena/019fa471-palineti` hiện đã có fix xcconfig, bạn chỉ cần copy workflow:

```bash
git checkout arena/019fa471-palineti
git pull
cp WORKFLOW_FIXED_V0.1.2.yml .github/workflows/full_build.yml
git add .github/workflows/full_build.yml
git commit -m "fix: V0.1.2 final workflow with xcconfig fix"
git push
```

Hoặc trên GitHub Web UI: copy content của `WORKFLOW_FIXED_V0.1.2.yml` paste vào `.github/workflows/full_build.yml`.

Sau đó chạy lại Actions > Build iOS. Lần này sẽ thấy:
```
pod install ... (không còn warning base configuration)
...
Xcode build done
✅ Build succeeded
```

## Test đã fix

- [x] ios/Flutter/Debug.xcconfig include Pods
- [x] ios/Flutter/Release.xcconfig include Pods
- [x] ios/Podfile platform 13.0 + deployment target
- [x] Workflow auto-retry
- [ ] Copy WORKFLOW_FIXED_V0.1.2.yml -> full_build.yml
- [ ] Re-run Build iOS
