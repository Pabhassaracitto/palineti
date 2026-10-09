# Giao việc: cải thiện `root_of()` — tách đuôi hình thái Pāli

> Prompt này để giao cho một agent khác. Viết để đứng độc lập — không cần đọc
> lịch sử hội thoại. Dán toàn bộ nội dung từ mục **Yêu cầu** trở xuống.

---

## Yêu cầu

Repo: `Pabhassaracitto/palineti`, branch `arena/d31ad54d-palineti`.
Làm việc trên branch đó; commit và push lên chính branch đó.

**Mục tiêu:** công cụ `tools/audit_vocab_coverage.py` kiểm tra "mọi từ Pāḷi
mà bài tập bắt dịch phải truy ngược được về từ vựng đã học". Nó dùng hàm
`root_of()` để đưa từ biến cách về gốc trước khi tra cứu. `root_of()` hiện
chưa tách được nhiều đuôi hình thái, nên khoảng một nửa trong 221 cặp còn
lại là **báo động giả** — dạng biến cách của từ đã dạy.

Cải thiện `root_of()` (và/hoặc danh sách `ENDINGS`) để các dạng sau truy
vết được, **không làm giảm** khả năng bắt lỗi thật.

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
   221 xuống ≤ 170 mà **không** xuất hiện cặp mới thuộc dạng "từ chưa từng
   dạy nay được coi là đã dạy" (kiểm tra bằng cách nhìn diff danh sách).
5. Cập nhật chốt CI trong `.github/workflows/content_audit.yml`:
   `--max-untraced <số mới>` (lấy số đo được, không làm tròn đẹp).

### Kiểm tra trước khi giao nộp

```bash
python3 tools/_extract_corpus.py
python3 tools/audit_vocab_coverage.py --max-untraced <số mới> --max-neverlisted 179
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
