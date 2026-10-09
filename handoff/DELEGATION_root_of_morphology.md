# Giao việc: cải thiện `root_of()` — phần còn lại (gerundive & quá khứ phân từ)

> Prompt này để giao cho một agent khác. Viết để đứng độc lập — không cần đọc
> lịch sử hội thoại. Dán toàn bộ nội dung từ mục **Yêu cầu** trở xuống.

---

## Yêu cầu

Repo: `Pabhassaracitto/palineti`, branch `arena/d31ad54d-palineti`.
Làm việc trên branch đó; commit và push lên chính branch đó.

**Bối cảnh (đã làm xong ngày 2026-10-09, commit `80a3509`):** `root_of()`
đã được thêm đuôi mệnh lệnh cách (`-āhi/-hi/-dhi/-ātha/-etha/-antu`), aorist
ngôi 1 không tăng âm (`-iṃ`), fallback tách tăng âm (`adāsiṃ → dāsiṃ`) và
tách enclitic (`soapī = so+api`). Kết quả: untraced **220 → 203**,
never-listed **179 → 162**.

**Phần còn lại của việc này:** hai nhóm hình thái cần **bảng động từ bất
quy tắc** mới tách đúng, không thêm đuôi chung chung được vì gốc biến đổi:

- **Gerundive `-tabba`:** `kātabbaṃ` (gốc `kar` → `kā`), `daṭṭhabbaṃ`
  (gốc `dis`/`dakkh` → `daṭṭh`), `nahātabbaṃ` (`nahā`), `pātabbaṃ` (`pā`),
  `bhajitabbā`, `saṅgaṇhitabbā`, `bujjhitabbāni` (`bhuj` → `bujjh`).
- **Quá khứ phân từ `-ta`:** `khittaṃ` (`khip` → `khitta`), `likhitāni`
  (`likh`), `pūjitā`, `vippamuttassa` (`vippamucc`), `bujjhitāni`, `pacitā`,
  `pesitā`, `vanditā`.

**Mục tiêu:** thêm bảng ánh xạ `dạng-bất-quy-tắc → gốc-đã-dạy` (chỉ những
gốc có trong từ vựng đã đăng ký), để các dạng trên truy vết được mà
**không làm giảm** khả năng bắt lỗi thật. Đích: untraced ≤ 185 (hiện 203).

### Các đuôi cần xử lý (đo từ bài 8/14/15)

| Nhóm | Đuôi | Ví dụ | Gốc mong muốn |
|---|---|---|---|
| Gerundive | `-tabbaṃ`, `-tabba`, `-tabbāni` | `kātabbaṃ`, `daṭṭhabbaṃ`, `bujjhitabbāni` | `kar`, `dakkh`, `bhuj`… — hoặc ít nhất là thân động từ |
| Quá khứ phân từ | `-ta`, `-tā`, `-tāni`, `-ssa` | `khittaṃ`, `likhitāni`, `pūjitā`, `vippamuttassa` | `khip`, `likh`, `pūj`, `vippamucc` |
| Hiện tại phân từ | `-anto`, `-anto` | `sayanto` | `sī` |
| Aorist ngôi 1 | `-iṃ`, `-imhā` | `nisīdiṃ`, `passiṃ`, `āgamimhā` | `nisīd`, `pass`, `āgam` |
| Mệnh lệnh cách | `-hi`, `-dhi`, `-āhi`, `-eyyāsi` | `gacchāhi`, `gaṇhāhi`, `dhoveyyāsi` | `gam`, `gaṇh`, `dhov` |
| Tương lai | `-issati`, `-issāma` | `gamissanti`, `gamissāma` | `gam` |

### Cách làm

1. Đọc `tools/audit_vocab_coverage.py`, đặc biệt `root_of()`, `ENDINGS`,
   `build_lexicons()`.
2. Sinh lại dữ liệu: `python3 tools/_extract_corpus.py`.
3. Thêm đuôi vào `ENDINGS` / viết logic tách. **Giữ nguyên tắc thận trọng:**
   thà để sót một vài dạng (báo động giả nhỏ) còn hơn cắt nhầm gốc làm mất
   khả năng bắt lỗi chính tả thật.
4. Đo trước/sau bằng:
   ```bash
   python3 tools/audit_vocab_coverage.py --json > /tmp/sau.json
   ```
   So sánh `untraced` và `neverListed` toàn khoá. Đích: `untraced` giảm từ
   203 xuống ≤ 185 mà **không** xuất hiện cặp mới thuộc dạng "từ chưa từng
   dạy nay được coi là đã dạy" (kiểm tra bằng cách nhìn diff danh sách).
5. Cập nhật chốt CI trong `.github/workflows/content_audit.yml`:
   `--max-untraced <số mới>` (hiện là 203) và `--max-neverlisted` (hiện 162).

### Kiểm tra trước khi giao nộp

```bash
python3 tools/_extract_corpus.py
python3 tools/audit_vocab_coverage.py --max-untraced <số mới> --max-neverlisted 162
python3 tools/generate_locale_sidecars.py     # vẫn PASS
```

Cả ba phải thoát mã 0.

### Kết quả phải nộp

1. Commit lên `arena/d31ad54d-palineti` với thông điệp nêu rõ các đuôi đã
   thêm và số đo trước/sau.
2. Bảng: từng dạng trong bảng trên → truy vết được hay chưa, truy về gốc gì.
3. Danh sách cặp **còn lại** sau khi tách, để người rà soát nội dung xử lý
   tiếp (đó mới là lỗi nội dung thật).

### Không làm

- Không sửa dữ liệu bài học (`lib/data/lessons/*.dart`).
- Không thêm từ vựng (việc đó thuộc issue khác — `handoff/DELEGATION_L14_L15_vocab.md`).
- Không chạy `--translate` (cần mạng, đang có workflow riêng).
