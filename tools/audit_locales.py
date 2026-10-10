"""Audit UI (ARB) and learning-content (sidecar) translation coverage."""
from __future__ import annotations

import json
import re
import sys
import unicodedata
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(Path(__file__).resolve().parent))
import _dart_scan as d  # noqa: E402

L10N = ROOT / "lib/l10n"
LOC = ROOT / "lib/data/localization"
LOCALES = ("en", "si", "zh", "my", "hi")
ALL_ARB_LOCALES = sorted(p.stem[4:] for p in L10N.glob("app_*.arb"))

SCRIPT_RANGES = {
    "hi": (0x0900, 0x097F),   # Devanagari
    "si": (0x0D80, 0x0DFF),   # Sinhala
    "zh": (0x4E00, 0x9FFF),   # Han
    "my": (0x1000, 0x109F),   # Myanmar
    "bo": (0x0F00, 0x0FFF),   # Tibetan
    "th": (0x0E00, 0x0E7F),   # Thai
    "km": (0x1780, 0x17FF),   # Khmer
    "lo": (0x0E80, 0x0EFF),   # Lao
    "ta": (0x0B80, 0x0BFF),   # Tamil
    "te": (0x0C00, 0x0C7F),   # Telugu
    "bn": (0x0980, 0x09FF),   # Bengali
    "mr": (0x0900, 0x097F),   # Devanagari
    "ar": (0x0600, 0x06FF),
    "ja": (0x3040, 0x30FF),
    "ko": (0xAC00, 0xD7AF),
    "ru": (0x0400, 0x04FF),
    "mn": (0x1800, 0x18AF),
}


def in_script(text: str, locale: str) -> bool:
    rng = SCRIPT_RANGES.get(locale)
    if rng is None:
        return True
    return any(rng[0] <= ord(ch) <= rng[1] for ch in text)


def arb_report() -> list[dict]:
    vi = json.loads((L10N / "app_vi.arb").read_text())
    en = json.loads((L10N / "app_en.arb").read_text())
    keys = [k for k in vi if not k.startswith("@")]
    rows = []
    for loc in ALL_ARB_LOCALES:
        data = json.loads((L10N / f"app_{loc}.arb").read_text())
        missing = [k for k in keys if k not in data or not str(data[k]).strip()]
        placeholders = {}
        for k in keys:
            meta = vi.get(f"@{k}", {})
            ph = set(re.findall(r"\{(\w+)\}", str(vi[k])))
            tgt = set(re.findall(r"\{(\w+)\}", str(data.get(k, ""))))
            if ph != tgt:
                placeholders[k] = sorted(ph ^ tgt)
        # "untranslated" = identical to the Vietnamese source (and not a
        # locale-neutral value such as an emoji or a proper noun)
        def neutral(s: str) -> bool:
            s = s.strip()
            return s == "" or not re.search(r"[A-Za-zÀ-ɏ぀-ヿ一-鿿]", s)
        same_vi = [k for k in keys
                   if str(data.get(k, "")) == str(vi[k]) and not neutral(str(vi[k]))]
        rows.append({
            "locale": loc,
            "keys": len([k for k in data if not k.startswith("@")]),
            "missing": missing,
            "placeholder_mismatch": placeholders,
            "untranslated_vs_vi": same_vi,
        })
    return rows


# ── learning-content sidecars ──────────────────────────────────────────────

def _entries(map_body: str) -> list[tuple[str, str]]:
    out, i = [], 0
    n = len(map_body)
    while i < n:
        while i < n and (map_body[i].isspace() or map_body[i] == ","):
            i += 1
        if i >= n:
            break
        if map_body[i] not in "'\"":
            nl = map_body.find("\n", i)
            i = n if nl < 0 else nl + 1
            continue
        end_key = d.scan_string(map_body, i)
        key = d.dart_decode(map_body[i:end_key])
        j = end_key
        while j < n and map_body[j].isspace():
            j += 1
        if j >= n or map_body[j] != ":":
            break
        j += 1
        while j < n and map_body[j].isspace():
            j += 1
        vs = j
        if j < n and map_body[j] == "{":
            ve = d.scan_balanced(map_body, j)
        elif j < n and map_body[j] == "[":
            ve = d.scan_balanced(map_body, j, "[", "]")
        elif map_body.startswith("Localized", j):
            ve = d.scan_balanced(map_body, map_body.find("(", j), "(", ")")
        elif j < n and map_body[j] in "'\"":
            ve = d.scan_string(map_body, j)
        else:
            break
        out.append((key, map_body[vs:ve]))
        i = ve
    return out


def strings_anywhere(chunk: str) -> list[str]:
    """Every decoded string literal inside a Dart chunk."""
    out, i, n = [], 0, len(chunk)
    while i < n:
        if chunk[i] in "'\"":
            j = d.scan_string(chunk, i)
            out.append(d.dart_decode(chunk[i:j]))
            i = j
        else:
            i += 1
    return out


BUCKETS = [
    ("lesson meta", "learning_content_translations.dart", "lessonMetaTranslations",
     "learning_content_translations_locales.dart", "_additionalLessonMetaTranslations"),
    ("lesson day", "learning_content_translations.dart", "lessonDayTranslations",
     "learning_content_translations_locales.dart", "_additionalLessonDayTranslations"),
    ("lesson phase", "learning_content_translations.dart", "lessonPhaseTranslations",
     "learning_content_translations_locales.dart", "_additionalLessonPhaseTranslations"),
    ("quiz", "learning_content_translations.dart", "quizQuestionTranslations",
     "learning_content_translations_locales.dart", "_additionalQuizQuestionTranslations"),
    ("vocab word", "learning_content_translations_vocab.dart", "vocabWordTranslations",
     "learning_content_translations_vocab_locales.dart", "_additionalVocabWordTranslations"),
    ("vocab example", "learning_content_translations_vocab.dart", "vocabExampleTranslations",
     "learning_content_translations_vocab_locales.dart", "_additionalVocabExampleTranslations"),
    ("part of speech", "learning_content_translations_vocab.dart", "vocabPosTranslations",
     "learning_content_translations_vocab_locales.dart", "_additionalVocabPosTranslations"),
    ("phase content", "learning_content_translations_content.dart", "phaseContentTranslations",
     "learning_content_translations_content_locales.dart", "_additionalPhaseContentTranslations"),
    ("mind game", "mind_game_translations.dart", "mindGameSegmentTranslations",
     "mind_game_translations_locales.dart", "_additionalMindGameSegmentTranslations"),
]


def content_report() -> dict:
    stats = {loc: {"entries": 0, "strings": 0, "in_script": 0} for loc in LOCALES}
    per_bucket = []
    for label, src_file, src_var, gen_file, gen_var in BUCKETS:
        src_text = d.strip_comments((LOC / src_file).read_text())
        # source registry may be a `part`-supplied merge; read the English map
        m = re.search(rf"(?:const|final)\s+Map<[^;=]+>\s+{re.escape(src_var)}\s*=\s*\{{", src_text)
        if not m:
            eng = "_english" + src_var[0].upper() + src_var[1:]
            m = re.search(rf"(?:const|final)\s+Map<[^;=]+>\s+{re.escape(eng)}\s*=\s*\{{", src_text)
        src_ids = set()
        if m:
            start = src_text.find("{", m.start())
            src_ids = {k for k, _ in _entries(src_text[start + 1:d.scan_balanced(src_text, start) - 1])}
        gen_text = d.strip_comments((LOC / gen_file).read_text())
        gm = re.search(rf"(?:const|final)\s+Map<[^;=]+>\s+{re.escape(gen_var)}\s*=\s*\{{", gen_text)
        start = gen_text.find("{", gm.start())
        gen_entries = _entries(gen_text[start + 1:d.scan_balanced(gen_text, start) - 1])
        n_ids = len(gen_entries)
        row = {"bucket": label, "ids": n_ids}
        for _id, chunk in gen_entries:
            locales = _entries(chunk if chunk.strip().startswith("{") else "{" + chunk + "}")
            if not locales:
                # outer-locale shape: locale -> {id: "..."}; handled by caller
                continue
            for loc, sub in locales:
                if loc not in stats:
                    continue
                vals = strings_anywhere(sub)
                stats[loc]["entries"] += 1
                stats[loc]["strings"] += len(vals)
                stats[loc]["in_script"] += sum(1 for v in vals if in_script(v, loc))
        per_bucket.append(row)
    # outer-locale maps (vocab word / example / pos / mind game)
    outer = [
        ("vocab word", "learning_content_translations_vocab_locales.dart", "_additionalVocabWordTranslations"),
        ("vocab example", "learning_content_translations_vocab_locales.dart", "_additionalVocabExampleTranslations"),
        ("part of speech", "learning_content_translations_vocab_locales.dart", "_additionalVocabPosTranslations"),
        ("mind game", "mind_game_translations_locales.dart", "_additionalMindGameSegmentTranslations"),
    ]
    for label, gen_file, gen_var in outer:
        gen_text = d.strip_comments((LOC / gen_file).read_text())
        gm = re.search(rf"(?:const|final)\s+Map<[^;=]+>\s+{re.escape(gen_var)}\s*=\s*\{{", gen_text)
        start = gen_text.find("{", gm.start())
        for loc, chunk in _entries(gen_text[start + 1:d.scan_balanced(gen_text, start) - 1]):
            if loc not in stats:
                continue
            inner = chunk.strip()
            if inner.startswith("{"):
                pairs = _entries(inner[1:-1])
            else:
                pairs = []
                for line in inner.splitlines():
                    line = line.strip()
                    if line.startswith("'"):
                        try:
                            j = d.scan_string(line, 0)
                            k = d.dart_decode(line[:j])
                            rest = line[j:].lstrip()
                            if rest.startswith(":"):
                                rest = rest[1:].lstrip()
                                if rest[:1] in "'\"":
                                    e = d.scan_string(rest, 0)
                                    pairs.append((k, rest[:e]))
                        except Exception:
                            continue
            vals = [d.dart_decode(v) for _, v in pairs if v.strip()[:1] in "'\""]
            if vals:
                stats[loc]["entries"] += 1
                stats[loc]["strings"] += len(vals)
                stats[loc]["in_script"] += sum(1 for v in vals if in_script(v, loc))
    return {"per_locale": stats, "buckets": per_bucket}


def main() -> None:
    print("── UI strings (lib/l10n/app_*.arb) ─────────────────────────")
    print(f"{'loc':8}{'keys':>6}{'missing':>9}{'badPH':>7}{'=vi':>6}")
    for r in arb_report():
        print(f"{r['locale']:8}{r['keys']:>6}{len(r['missing']):>9}"
              f"{len(r['placeholder_mismatch']):>7}{len(r['untranslated_vs_vi']):>6}")
        if r["missing"]:
            print("        missing:", ", ".join(r["missing"][:10]))
        if r["placeholder_mismatch"]:
            print("        placeholders:", r["placeholder_mismatch"])
    print()
    print("── Learning content sidecars ───────────────────────────────")
    res = content_report()
    print(f"{'loc':6}{'entries':>9}{'strings':>9}{'in target script':>18}{'%':>7}")
    for loc in LOCALES:
        s = res["per_locale"][loc]
        pct = 100.0 * s["in_script"] / s["strings"] if s["strings"] else 0
        print(f"{loc:6}{s['entries']:>9}{s['strings']:>9}{s['in_script']:>18}{pct:>6.1f}%")


if __name__ == "__main__":
    main()
