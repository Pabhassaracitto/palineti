# Giao việc: hoàn thiện bản dịch si/hi/zh/my — phần còn lại

> Prompt này để giao cho một agent khác. Viết để đứng độc lập — không cần đọc
> lịch sử hội thoại. Dán toàn bộ nội dung từ mục **Yêu cầu** trở xuống.

---

## Yêu cầu

Repo: `Pabhassaracitto/palineti`, branch `arena/d31ad54d-palineti`.
Ưu tiên người dùng đã chốt: **1. Sinhala, 2. Hindi, 3. Chinese** (Myanmar vét sau).

### Hiện trạng (đo bằng `python3 tools/generate_locale_sidecars.py --verbose-quality`)

| locale | chưa dịch | Pāḷi mất | ghi chú |
|---|---|---|---|
| si | ~221 (7,2%) | 0% | phần lớn là **chuỗi Google từ chối dịch** (echo) |
| hi | ~85 (2,8%) | 0% | đa số là chuỗi chỉ gồm chữ Pāḷi (đúng là phải giữ nguyên) |
| zh | ~106 (3,5%) | 0% | như hi |
| my | ~247 (8,0%) | 0% | run `--only-gaps` có leo thang hình dạng sẽ kéo số này xuống mạnh |

Số liệu chính xác thay đổi theo commit; đo lại trước khi làm.

### Những gì pipeline đã có (đừng làm lại)

- Giao thức **marker văn bản thuần** (không dùng thẻ HTML — Google xoá thẻ với
  tiếng Hindi): `_build_payload` / `_split_payload` / `_request` trong
  `tools/generate_locale_sidecars.py`.
- **Echo detection**: bản trả về trùng nguồn tiếng Anh bị coi là thất bại.
- **Leo thang hình dạng** cho chuỗi đơn: trần → thêm dấu chấm → bọc nháy
  (`_translate_single`). Đo được: dấu chấm phá echo cho 9/12 chuỗi my, bọc
  nháy 8/12; **si thì gần như không phá được** (chỉ 2/12).
- `--only-gaps`: chỉ dịch phần thiếu, giữ nguyên bản dịch đã có.
- `.github/workflows/translate_content.yml` chạy được trên GitHub Actions
  (sandbox của dự án không có mạng ra Google; token GitHub ở đó cũng không có
  quyền dispatch — workflow hiện có trigger `push` tạm thời).

### Việc cần làm, theo thứ tự

**Bước 1 — Vét Myanmar bằng chính pipeline hiện có.** Chạy workflow
`translate_content.yml` với input `locales=my`, `only_gaps=true`. Chờ commit
tự động. Đo lại. Đích: my ≤ 5% chưa dịch.

**Bước 2 — Phần còn lại của Sinhala: không dùng Google nữa.**
~200 chuỗi si còn lại là chuỗi Google **từ chối dịch một cách tất định**
(probe đo 16/16 lần echo cho cùng nội dung, mọi hình dạng payload). Tiếp tục
retry chỉ tốn giờ chạy CI. Chúng hầu hết là **tiêu đề ngắn và nhãn ngữ pháp**
("Mind Game: Review Practice 2", "2. Present Passive Participle – īyamāna",
"'Passive (a→ī)'", "📘 The Passive Voice"…). Cách làm đúng:

1. Lấy danh sách chính xác:
   ```bash
   python3 tools/generate_locale_sidecars.py --verbose-quality
   ```
   hoặc đọc `translation_quality_pairs()` — lọc `en.strip() == val.strip()`
   cho locale `si`.
2. Dịch **thủ công có trợ giúp** (agent tự dịch được — đây là tiêu đề giáo
   trình ngắn, không cần Google) rồi **nạp thẳng vào sidecar**: thêm bản dịch
   vào cache `.locale_translation_cache.json` hoặc ghi trực tiếp vào
   `_additional...` maps trong `lib/data/localization/*_locales.dart`, giữ
   nguyên cấu trúc file (validate sẽ bắt lỗi nếu sai).
3. **Giữ nguyên chữ Pāḷi dạng Latin** trong bản dịch (VD `īyamāna`, `tabba`
   không chuyển tự sang chữ Sinhala) — đây là quy ước toàn dự án và là điều
   chốt `pali-lost` kiểm tra.
4. Chạy `python3 tools/generate_locale_sidecars.py` — phải PASS.

**Bước 3 — Hindi/Chinese còn lại: phân loại trước đã.** Đo cho thấy phần lớn
chuỗi hi/zh "chưa dịch" là chuỗi **chỉ gồm chữ Pāḷi** (`narāya`, `narānaṃ`,
`-tha`, `-ti`…) — những chuỗi này **đúng là phải giữ nguyên**, không phải lỗi.
Đừng dịch chúng. Nếu sau khi loại nhóm đó vẫn còn chuỗi tiếng Anh thật sự,
xử lý như Bước 2.

**Bước 4 — Dọn CI tạm thời** (issue IN4-69): xoá khối trigger `push` trong
`translate_content.yml` (giữ `workflow_dispatch`), xoá
`.github/workflows/probe_translator.yml`.

### Kiểm tra trước khi giao nộp

```bash
python3 tools/generate_locale_sidecars.py --verbose-quality   # validate + số đo
python3 tools/audit_vocab_coverage.py --max-untraced 203 --max-neverlisted 162
```

Cả hai thoát mã 0. Số "chưa dịch" của si phải giảm thực chất (chứ không phải
do đổi cách đo).

### Kết quả phải nộp

1. Commit lên `arena/d31ad54d-palineti`, tách theo locale.
2. Bảng số đo trước/sau cho 4 locale.
3. Danh sách chuỗi si đã dịch thủ công (kèm bản dịch) để tác giả rà lại.

### Không làm

- Không retry Google cho chuỗi đã echo — đã chứng minh là vô ích.
- Không chuyển tự chữ Pāḷi sang script bản địa.
- Không đổi số id từ vựng, không thêm key l10n mới.
- Không force-push.
