# Giao việc: rà và bổ sung từ vựng bài 14 & 15

> Prompt này để giao cho một agent khác. Viết để đứng độc lập — không cần đọc
> lịch sử hội thoại. Dán toàn bộ nội dung từ mục **Yêu cầu** trở xuống.

---

## Yêu cầu

Repo: `Pabhassaracitto/palineti`, branch `arena/d31ad54d-palineti`.
Làm việc trên branch đó; commit và push lên chính branch đó.

**Mục tiêu:** bài 14 và 15 hiện còn 55 cặp *(bài, từ bài-tập)* mà công cụ không
truy vết được về từ vựng đã dạy. Hãy phân loại từng từ, và chỉ bổ sung vào
`kLessonNNVocab` những từ **thực sự thiếu**. Không tự soạn nội dung mới.

### Bối cảnh

Khoá học có 26 bài. Mỗi bài khai báo danh sách từ vựng `kLessonNNVocab` (trong
`lib/data/lessons/lesson_NN_data.dart`). Công cụ
`tools/audit_vocab_coverage.py` kiểm tra: *mọi từ Pāḷi mà bài tập bắt người học
dịch phải truy ngược được về từ vựng của bài đó hoặc bài trước.*

Đợt rà soát đã đưa con số toàn khoá từ 530 xuống **203** (ban đầu 221; commit `80a3509` tách thêm mệnh lệnh cách/aorist/enclitic). Phần còn lại
tập trung ở bài 14 (30), 15 (25), 08 (20), 18 (18), 17 (17), 19 (16).

Quan trọng: những từ thiếu ở bài 13/19 trước đây **không phải nội dung mới** —
hai bài đó in sẵn chúng trong bảng giảng của chính mình nhưng chưa đăng ký vào
`kLessonNNVocab`. Cách sửa đúng là **đăng ký lại nội dung đã có**.

### Quy tắc quyết định

Bổ sung vào `kLessonNNVocab` **chỉ khi** thoả một trong hai:

1. Từ (hoặc gốc của nó) xuất hiện trong **bảng giảng / phần lý thuyết** của
   chính bài đó, **hoặc** trong FAB (`fabVocab` / `fabPhrases`) của bài — nhưng
   chưa có trong `kLessonNNVocab`. Lấy nguyên nghĩa tiếng Việt từ bảng đó.
2. Từ là **căn mẫu** của bài (như `muni` ở bài 8: bài mở đầu bằng
   "Căn mẫu: muni", mọi bảng biến cách đều chia từ nó, nhưng nó không có trong
   danh sách từ vựng).

**Không** bổ sung khi:

- Đó là **dạng ngữ pháp**, không phải từ vựng: gerundive `-tabba`
  (`kātabbaṃ`, `daṭṭhabbaṃ`, `bujjhitabbāni`, `nahātabbaṃ`), quá khứ phân từ
  `-ta/-ita` (`khittaṃ`, `likhitāni`, `pūjitā`, `vippamuttassa`), hiện tại phân
  từ (`sayanto`), aorist (`upasaṃkami`, `nisīdiṃ`, `passiṃ`), mệnh lệnh cách
  (`gacchāhi`, `gaṇhāhi`, `dhoveyyāsi`), tương lai (`gamissanti`).
  → Những cái này **báo cáo lại** để cải thiện `root_of()`, không thêm từ vựng.
- Đó là **từ tiếng Anh lọt vào** câu hỏi (ví dụ `answer`, `adjective` nằm trong
  thân câu hỏi tiếng Việt/Anh). → Báo cáo là báo động giả.
- Từ đã có trong `kLessonNNVocab` của **bài trước đó** (tích luỹ). → Báo cáo là
  giới hạn của bộ giải, không thêm.

### Phương pháp

```bash
python3 tools/_extract_corpus.py                       # tạo tools/corpus.json
python3 tools/audit_vocab_coverage.py --json > tools/vocab_audit.json
```

Đọc `per_lesson` trong `tools/vocab_audit.json`; mỗi từ có kèm `samples` chỉ
chỗ nó xuất hiện. Với mỗi từ, mở `lib/data/lessons/lesson_14_data.dart` (hoặc
15), tìm xem nó có trong bảng giảng / FAB không.

Khi thêm, dùng helper `_v(...)` đã có trong file (đừng đổi số id của các mục
hiện tại — sidecar `learning_content_translations_vocab*.dart` giữ key
`pv_L14_0NN`, đổi số sẽ làm bản dịch trỏ sang từ khác). Thêm vào **cuối** danh
sách.

Tham khảo cách làm đợt trước: commit `fe47ab0` (bài 13/19/01) và `d5ad03a`
(bài 8).

### Kiểm tra trước khi giao nộp

```bash
python3 tools/_extract_corpus.py
python3 tools/audit_vocab_coverage.py --max-untraced 203 --max-neverlisted 162
python3 tools/generate_locale_sidecars.py     # phải PASS
```

Hai lệnh đầu phải thoát mã 0. Không được để `tools/generate_locale_sidecars.py`
chuyển sang FAIL — validate bắt buộc tập key khớp nhau.

Không có Flutter/Dart SDK trong môi trường này. Kiểm tra cú pháp bằng:

```bash
python3 - <<'PY'
import sys, pathlib
sys.path.insert(0, 'tools'); import _dart_scan as d
f = 'lib/data/lessons/lesson_14_data.dart'
txt = d.strip_comments(pathlib.Path(f).read_text())
i = 0; st = []; pairs = {'(': ')', '[': ']', '{': '}'}
while i < len(txt):
    c = txt[i]
    if c in '\'"': i = d.scan_string(txt, i); continue
    if c in pairs: st.append(c); i += 1; continue
    if c in ')]}':
        assert st and pairs[st[-1]] == c, f'lỗi tại {i}'
        st.pop(); i += 1; continue
    i += 1
assert not st, 'còn ngoặc chưa đóng'
print('cân bằng ngoặc OK', f)
PY
```

### Kết quả phải nộp

1. Commit lên branch `arena/d31ad54d-palineti`, tách thành 2 commit
   (bài 14, bài 15) với thông điệp nêu rõ nguồn của từng nhóm từ.
2. **Bảng phân loại** cho 55 từ, mỗi từ một dòng, gồm 4 cột:
   `từ | phân loại | căn cứ | hành động`

   Với `phân loại` thuộc một trong: `thiếu-thật`, `dạng-ngữ-pháp`,
   `báo-động-giả-Anh`, `đã-học-ở-bài-trước`.
3. Số đo trước/sau: `untraced` và `neverListed` toàn khoá.
4. Danh sách các đuôi hình thái mà `root_of()` chưa tách được (để tôi bổ sung
   vào `ENDINGS` trong `tools/audit_vocab_coverage.py`).

### Không làm

- Không sửa `tools/*.py` (trừ khi được yêu cầu).
- Không đổi số id của mục từ vựng đã có.
- Không chạy `tools/generate_locale_sidecars.py --translate` (cần mạng; đang có
  workflow lo việc đó).
- Không thêm key l10n mới (`l10n.yaml` đặt `app_vi.arb` làm template, một key
  mới đòi sửa 26 file ARB + 27 file sinh ra).

---

## Danh sách 55 từ cần phân loại

**Bài 14** (khai báo 64 mục từ vựng, bài tập dùng 152 từ):

```
answer, aparesaṃ, aviheṭhayaṃ, bahuṃ, bujjhitabbāni, bujjhitāni, care,
daṭṭhabbaṃ, desaṃ, guṇavantehi, idaṃ, itthiyo, karomi, khittaṃ, kātabbaṃ,
likhitāni, mettaṃ, nahātabbaṃ, nisīdiṃ, pacchā, passiṃ, pure, pūjitā,
sattesu, sayanto, sākhā, tatth, upasaṃkami, vajjena, vippamuttassa
```

**Bài 15** (khai báo 78 mục, bài tập dùng 184 từ):

```
adjective, arahato, asukasmiṃ, asukena, asuko, asukāya, bhagavatā,
bhajitabbā, dhoveyyāsi, gacchāhi, gamissanti, gamissāma, gaṇhāhi, hontu,
jāti, nanu, puriso, pātabbaṃ, saṅgaṇhitabbā, sukhena, tara, tathā,
tesānaṃ, yathā, īya
```

Ghi chú ban đầu (chỉ là định hướng, hãy tự kiểm chứng):

- `answer`, `adjective` trông giống từ tiếng Anh lọt vào thân câu hỏi → khả
  năng cao là báo động giả.
- `kātabbaṃ`, `daṭṭhabbaṃ`, `bujjhitabbāni`, `nahātabbaṃ`, `pātabbaṃ`,
  `bhajitabbā`, `saṅgaṇhitabbā` đều là gerundive `-tabba` → dạng ngữ pháp.
- `khittaṃ`, `likhitāni`, `pūjitā`, `vippamuttassa`, `bujjhitāni` là quá khứ
  phân từ → dạng ngữ pháp.
- `asuko / asukāya / asukena / asukasmiṃ` là các biến cách của cùng một gốc
  `asuka` — kiểm tra xem bài 15 có dạy `asuka` không.
- `gacchāhi`, `gaṇhāhi`, `dhoveyyāsi`, `hontu` là mệnh lệnh cách; `gamissanti`,
  `gamissāma` là tương lai → dạng ngữ pháp.
- `puriso` (bài 15) là dạng CC của `purisa` — đã học từ bài 1, khả năng cao là
  giới hạn bộ giải.
