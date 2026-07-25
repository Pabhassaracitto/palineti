# PALINETI — Brand Identity Guide · v0.4 (ÁP DỤNG NGUYÊN BẢN)

Quyết định cuối: **dùng nguyên bản `logo_refined_palm_leaf.png` as-is, không chỉnh
sửa**, và áp dụng thẳng vào app. Mọi bản phái sinh (wordmark ghép, icon gradient,
các ý tưởng) chuyển thành *kho lưu trữ tham khảo*.

---

## 1. Logo chính thức = NGUYÊN BẢN

- **File nguồn:** `branding/logo_refined_palm_leaf.png` (line-art: Tăng 3/4 + bó lá
  buông + cung tròn + chấm *urna*).
- **Asset runtime:** `assets/branding/palineti_mark.png` — **bản sao byte-identical**
  (md5 trùng nguồn → không chỉnh sửa).
- **Icon app:** xuất *thẳng* từ nguồn gốc (chỉ thu phóng đa kích thước), không phối
  lại màu/nền.

> Chỉ còn **1** asset thương hiệu được đóng gói vào app: `palineti_mark.png`.

---

## 2. Bảng màu (nguồn: `lib/core/constants/app_colors.dart`)

| Vai trò | Hằng số Dart | Hex |
|---|---|---|
| Đỏ mận — y | `paliMaroon` | `#800020` |
| Vàng kim — lá buông / viền | `paliGold` | `#B8860B` |
| Vàng nghệ — chấm urna | `paliSaffron` | `#FF8C00` |
| Nâu mực — chữ | `paliInk` | `#3E2723` |
| Kem giấy cổ — nền | `paliBg` | `#FFF8E7` |

---

## 3. Áp dụng vào app — ĐÃ THỰC HIỆN ✅

1. **Launcher icons** = nguồn gốc, ghi đè đúng size chuẩn (đồng thời sửa PNG header
   lỗi cũ): Android 48→192 · iOS 20→1024 · macOS 16→1024 · Web 192/512/maskable/
   favicon(32).
2. **Giao diện** (`lib/presentation/screens/home_screen.dart` → `_buildHeader`):
   - Logo gắn bằng `Image.asset('assets/branding/palineti_mark.png')` trong một
     “logo chip” bo tròn viền vàng (nền `paliBg`) → ảnh **nguyên vẹn**.
   - Tên **PALINETI** vẽ bằng `Text` native (`paliInk`, w800, letterSpacing 3) —
     **không nướng chữ vào ảnh**.
3. **pubspec.yaml** khai báo `assets: - assets/branding/`.
4. *Giữ nguyên* `LaunchImage` (splash).

---

## 4. Kho lưu trữ tham khảo (`branding/`, KHÔNG đóng gói)

`logo_wordmark.png` (mark + chữ serif), `logo_wordmark_profile.png` (nguồn chữ),
`app_icon_lineart.png` (icon gradient line-art), `logo_concept_01_monk_book.png`,
`logo_idea2_dhamma_wheel.png`, `logo_idea3_lamp.png`, `logo_monogram_P.png`.
→ Dùng lại nếu sau này cần wordmark / icon nền tối / monogram favicon.

---

## 5. NÊN / KHÔNG NÊN

Giữ nguyên bản; không bóp méo / tô đặc / đổi màu; clear-space ≥ chiều cao đầu Tăng;
min-size mark ≈ 24 px, icon ≥ 16 px (nét mảnh sẽ nhạt ở size rất nhỏ — chấp nhận vì
dùng nguyên bản). Không đặt logo lên nền rối; nếu cần, đặt trong “chip” `paliBg`.

---

## 6. Cây thư mục

```
branding/
├── BRAND_GUIDE.md
├── logo_refined_palm_leaf.png        # NGUYÊN BẢN = logo chính thức
└── (kho lưu trữ: wordmark / lineart icon / idea2 / idea3 / monogram / concept_01)
assets/branding/
└── palineti_mark.png                 # = nguyên bản (byte-identical), đã khai báo pubspec
lib/presentation/screens/home_screen.dart   # header: Image.asset + Text PALINETI
android|ios|macos|web/...             # launcher icons = nguồn gốc (đã ghi đè)
```

---

## 7. Bước tiếp theo (tuỳ chọn)

1. **Vector hoá** nguyên bản → SVG pixel-perfect (giúp nét rõ ở icon nhỏ).
2. Đưa logo vào **splash / AppBar** nếu muốn.
3. **Commit + mở PR** từ nhánh `arena/019f98fa-palineti` (hiện chưa commit).

---

*Bản v0.4 · Arena.ai Agent Mode · nhánh `arena/019f98fa-palineti`.*
