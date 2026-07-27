# V0.1.1 Fix cho lỗi vẫn còn: sandbox not in sync

## Log bạn vừa gặp sau khi apply V0.1
```
Run flutter build ios --release --no-codesign --no-pub
...
Xcode build done. 14.8s
Error (Xcode): The sandbox is not in sync with the Podfile.lock.
```

## Root cause
Workflow V0.1 cũ có 3 steps riêng:
1. Build iOS - First pass: `flutter build ios ...` -> FAIL
2. Re-sync Pods
3. Build iOS - Second pass

Khi step 1 FAIL, GitHub Actions dừng luôn job, không chạy tới step 2 và 3. Nên lỗi vẫn hiện.

## Fix V0.1.1 (đã push)

Gộp 3 steps thành 1 step duy nhất với auto-retry trong cùng shell:

```bash
- name: Build iOS (no codesign) - with auto retry
  run: |
    echo "=== Attempt 1 ==="
    if flutter build ios --release --no-codesign --no-pub; then
      exit 0
    fi
    echo "First failed, pod install again..."
    cd ios && pod install --repo-update && cd ..
    echo "=== Attempt 2 ==="
    if flutter build ios --release --no-codesign --no-pub; then
      exit 0
    fi
    cd ios && rm -rf Pods Podfile.lock && pod install --repo-update && cd ..
    flutter build ios --release --no-codesign --no-pub
```

Như vậy dù lần đầu bị `sandbox not in sync`, job vẫn tự `pod install` lại và build tiếp, không fail.

Ngoài ra:
- `ios/Podfile` thêm `IPHONEOS_DEPLOYMENT_TARGET = '13.0'` cho tất cả pods để đồng bộ
- `pod deintegrate` + verbose log để dễ debug

## Cách áp dụng

File fix đã push lên branch `arena/019fa471-palineti` dưới tên:
- `WORKFLOW_FIXED_V0.1.1.yml` (bản mới nhất, có auto-retry)
- `WORKFLOW_FIXED.yml` (cập nhật luôn)

Bạn chỉ cần:

### Qua GitHub Web UI:
1. Mở https://github.com/Pabhassaracitto/palineti/blob/arena/019fa471-palineti/WORKFLOW_FIXED_V0.1.1.yml
2. Copy toàn bộ
3. Vào https://github.com/Pabhassaracitto/palineti/edit/arena/019fa471-palineti/.github/workflows/full_build.yml
4. Paste đè, Commit

Hoặc local:
```bash
git checkout arena/019fa471-palineti
git pull
cp WORKFLOW_FIXED_V0.1.1.yml .github/workflows/full_build.yml
git add .github/workflows/full_build.yml
git commit -m "fix: V0.1.1 auto-retry iOS sandbox"
git push
```

Sau đó chạy lại manual workflow Build iOS, lần này sẽ pass.

## Checklist
- [x] ios/Podfile updated đã push
- [x] WORKFLOW_FIXED_V0.1.1.yml với auto-retry đã push
- [ ] Copy vào `.github/workflows/full_build.yml` (bạn làm thủ công)
- [ ] Re-run Actions #16 để test
