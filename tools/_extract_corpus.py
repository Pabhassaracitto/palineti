"""Extract the PaliNeti lesson corpus into JSON for auditing."""
from __future__ import annotations

import json
import re
import sys
import unicodedata
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import _dart_scan as d  # noqa: E402

ROOT = Path(__file__).resolve().parents[1]
LESSONS = sorted((ROOT / "lib/data/lessons").glob("lesson_*_data.dart"))


def nfc(s: str) -> str:
    return unicodedata.normalize("NFC", s)



def segment_from(text: str, a: int, b: int) -> dict:
    sf = fields_dict(text[a + 1:b - 1])
    return {
        "text": nfc(sf.get("text", "")),
        "isVietnamese": "isVietnamese: true" in text[a:b],
        "answer": nfc(sf.get("answer", "")),
    }


def iter_segments(body: str) -> list[dict]:
    """Every MixedSegment(...) / MixedSegment.pali(...) / .vietnamese(...)."""
    out = []
    for a, b in d.find_calls(body, "MixedSegment"):
        out.append(segment_from(body, a, b))
    for a, b in d.find_calls(body, "MixedSegment.pali"):
        out.append({"text": nfc(d.dart_decode(body[a + 1:b - 1].strip())),
                    "isVietnamese": False, "answer": ""})
    for a, b in d.find_calls(body, "MixedSegment.vietnamese"):
        args = split_args(body[a + 1:b - 1])
        out.append({
            "text": nfc(d.dart_decode(args[0])) if args else "",
            "isVietnamese": True,
            "answer": nfc(d.dart_decode(args[1])) if len(args) > 1 else "",
        })
    return out


def split_args(body: str) -> list[str]:
    """Split a Dart argument list on top-level commas, respecting strings."""
    args: list[str] = []
    i, n, start = 0, len(body), 0
    while i < n:
        ch = body[i]
        if ch in "'\"":
            i = d.scan_string(body, i)
            continue
        if ch in "([{":
            i = d.scan_balanced(body, i, ch, {"(": ")", "[": "]", "{": "}"}[ch])
            continue
        if ch == ",":
            args.append(body[start:i].strip())
            start = i + 1
        i += 1
    tail = body[start:].strip()
    if tail:
        args.append(tail)
    return args



def fields_dict(body: str) -> dict:
    out = {}
    for k, v in d.field_strings(body):
        out.setdefault(k, v)
    return out


def collect(path: Path) -> dict:
    raw = path.read_text()
    text = d.strip_comments(raw)
    lesson_no = int(re.search(r"lesson_(\d+)", path.name).group(1))

    vocab = []
    for a, b in d.find_calls(text, "PaliVocabModel"):
        f = fields_dict(text[a + 1:b - 1])
        if "root" in f:
            vocab.append({k: nfc(f.get(k, "")) for k in
                          ("id", "root", "paradigmId", "wordVi", "wordEn",
                           "lessonId", "examplePali", "exampleVi")})
    # Compact helper form: _v(n, root, paradigmId, wordVi, wordEn,
    #                        pronunciation, examplePali, exampleVi)
    if not vocab:
        for a, b in d.find_calls(text, "_v"):
            args = split_args(text[a + 1:b - 1])
            if len(args) < 6 or not args[0].lstrip("-").isdigit():
                continue
            num = int(args[0])
            get = lambda i: nfc(d.dart_decode(args[i])) if len(args) > i else ""
            root = get(1)
            if not root:
                continue
            vocab.append({
                "id": f"pv_L{lesson_no:02d}_{num:03d}",
                "root": root,
                "paradigmId": get(2),
                "wordVi": get(3),
                "wordEn": get(4),
                "lessonId": f"lesson_{lesson_no:02d}",
                "examplePali": get(6),
                "exampleVi": get(7),
            })

    phases = []
    for a, b in d.find_calls(text, "LessonPhase"):
        body = text[a + 1:b - 1]
        f = fields_dict(body)
        phase = {
            "id": f.get("id", ""),
            "type": f.get("phaseTypeStr", ""),
            "titleVi": nfc(f.get("titleVi", "")),
            "contentVi": nfc(f.get("contentVi", "")),
            "contentEn": nfc(f.get("contentEn", "")),
            "questions": [],
            "segments": [],
            "fabVocab": [],
        }
        for qa, qb in d.find_calls(body, "QuizQuestion"):
            qf = fields_dict(body[qa + 1:qb - 1])
            opts = []
            om = re.search(r"\boptions\s*:\s*\[", body[qa:qb])
            if om:
                start = qa + om.end() - 1
                end = d.scan_balanced(body, start, "[", "]")
                i = start + 1
                while i < end:
                    if body[i] in "'\"":
                        j = d.scan_string(body, i)
                        opts.append(nfc(d.dart_decode(body[i:j])))
                        i = j
                    else:
                        i += 1
            phase["questions"].append({
                "id": qf.get("id", ""),
                "questionText": nfc(qf.get("questionText", "")),
                "options": opts,
                "practiceNumber": qf.get("practiceNumber", ""),
            })
        for seg in iter_segments(body):
            phase["segments"].append(seg)
        for fa, fb in d.find_calls(body, "FabVocabItem"):
            ff = fields_dict(body[fa + 1:fb - 1])
            phase["fabVocab"].append({
                "wordEn": nfc(ff.get("wordEn", "")),
                "wordVi": nfc(ff.get("wordVi", "")),
                "partOfSpeech": nfc(ff.get("partOfSpeech", "")),
            })
        if phase["type"] or phase["questions"] or phase["segments"]:
            phases.append(phase)

    # Standalone (non-phase) segments, e.g. kLesson01MindGameSegments
    loose_segments = []
    phase_spans = [(a, b) for a, b in d.find_calls(text, "LessonPhase")]
    for a, b in d.find_calls(text, "MixedSegment"):
        if any(a > pa and b < pb for pa, pb in phase_spans):
            continue
        loose_segments.append(segment_from(text, a, b))

    # QuizQuestion / _Seg helpers defined outside a LessonPhase body
    phase_spans = [(a, b) for a, b in d.find_calls(text, "LessonPhase")]
    orphan_questions = []
    for qa, qb in d.find_calls(text, "QuizQuestion"):
        if any(qa > pa and qb < pb for pa, pb in phase_spans):
            continue
        qf = fields_dict(text[qa + 1:qb - 1])
        opts = []
        om = re.search(r"\boptions\s*:\s*\[", text[qa:qb])
        if om:
            start = qa + om.end() - 1
            end = d.scan_balanced(text, start, "[", "]")
            i = start + 1
            while i < end:
                if text[i] in "'\"":
                    j = d.scan_string(text, i)
                    opts.append(nfc(d.dart_decode(text[i:j])))
                    i = j
                else:
                    i += 1
        orphan_questions.append({
            "id": qf.get("id", ""),
            "questionText": nfc(qf.get("questionText", "")),
            "options": opts,
            "practiceNumber": qf.get("practiceNumber", ""),
        })

    seg_pairs = []
    for sa, sb in d.find_calls(text, "_Seg"):
        args = split_args(text[sa + 1:sb - 1])
        if len(args) < 2:
            continue
        try:
            pali = nfc(d.dart_decode(args[0]))
            vi = nfc(d.dart_decode(args[1]))
        except Exception:
            continue
        seg_pairs.append({"pali": pali, "vi": vi})

    return {
        "lesson": lesson_no,
        "orphan_questions": orphan_questions,
        "seg_pairs": seg_pairs,
        "file": path.name,
        "vocab": vocab,
        "phases": phases,
        "loose_segments": loose_segments,
    }


def main() -> None:
    corpus = [collect(p) for p in LESSONS]
    out = ROOT / "tools" / "corpus.json"
    out.write_text(json.dumps(corpus, ensure_ascii=False, indent=1))
    total_vocab = sum(len(c["vocab"]) for c in corpus)
    total_q = sum(len(p["questions"]) for c in corpus for p in c["phases"])
    total_s = sum(len(p["segments"]) for c in corpus for p in c["phases"])
    total_oq = sum(len(c["orphan_questions"]) for c in corpus)
    total_sp = sum(len(c["seg_pairs"]) for c in corpus)
    print(f"lessons={len(corpus)} vocab={total_vocab} phase_q={total_q} "
          f"orphan_q={total_oq} phase_segments={total_s} "
          f"loose={sum(len(c['loose_segments']) for c in corpus)} seg_pairs={total_sp}")
    for c in corpus:
        types = {}
        for p in c["phases"]:
            types[p["type"]] = types.get(p["type"], 0) + 1
        print(f"  L{c['lesson']:02d} vocab={len(c['vocab']):3d} "
              f"phases={len(c['phases']):2d} q={sum(len(p['questions']) for p in c['phases']):3d} "
              f"seg={sum(len(p['segments']) for p in c['phases']):3d} "
              f"oq={len(c['orphan_questions']):3d} sp={len(c['seg_pairs']):4d} {types}")


if __name__ == "__main__":
    main()
