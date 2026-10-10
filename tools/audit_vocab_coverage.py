"""Audit: is every Pāḷi word an exercise asks the learner to translate
actually taught before that exercise?

Definitions used by this audit
------------------------------
* VOCAB LIST   – the PaliVocabModel entries a lesson declares
                 (kLessonNNVocab).  This is the "word bank" the lesson
                 promises to teach.
* FAB GLOSS    – the FabVocabItem / FabPhraseItem glosses shown inside a
                 phase's FAB sheet.  Available while the learner is doing
                 that phase, so it counts as taught for that phase.
* TEACHING     – the read_listen (grammar/reading) phase text.
* EXERCISE     – mind_game answers, listening_quiz practice sentences and
                 quiz questions/options.

A distinct Pāḷi word in EXERCISE is reported when it cannot be traced back
to any vocabulary root (this lesson or any earlier one), to the teaching
text, or to a FAB gloss of the same lesson or an earlier one.

Usage:  python3 tools/audit_vocab_coverage.py [--json out.json]
"""
from __future__ import annotations

import json
import re
import sys
import unicodedata
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CORPUS = json.loads((ROOT / "tools" / "corpus.json").read_text())

PALI_DIAC = "āīūṃṅñṇṭḍḷṛśṣḥĀĪŪṂṄÑṆṬḌḶṚŚṢḤ"
TOKEN_RE = re.compile(r"[A-Za-z" + PALI_DIAC + r"]+")
PALI_MARK_RE = re.compile(r"[āīūṃṅñṇṭḍḷṛśṣḥĀĪŪṂṄÑṆṬḌḶṚŚṢḤ]")

# Grammatical function words: part of the grammar syllabus, not of a lesson
# word list, so they are never reported as missing vocabulary.
FUNCTION_WORDS = {
    "ca", "vā", "na", "no", "hi", "kho", "pi", "api", "eva", "evaṃ", "iti",
    "ti", "atha", "tatra", "tattha", "idha", "kuto", "kuhiṃ", "yatra",
    "yattha", "sace", "yadi", "ce", "yāva", "puna", "punā", "udāhu", "uda",
    "nu", "kathaṃ", "kadā", "kati", "kiṃ", "kiñci", "koci", "keci",
    "ahaṃ", "mama", "mayaṃ", "amhaṃ", "amhākaṃ", "me", "mayā", "amhe",
    "tvaṃ", "tava", "tumhe", "tumhākaṃ", "te", "tayā", "vo",
    "so", "sā", "taṃ", "tā", "tāni", "tassa", "tāya", "tasmā", "tasmiṃ",
    "tena", "tesaṃ", "tesu", "tāyaṃ", "ayaṃ", "imaṃ", "ime", "imāya",
    "imassa", "imasmā", "imasmiṃ", "imāni", "imesaṃ", "imesu", "amha",
    "amuṃ", "etaṃ", "ete", "esā", "etāni", "etassa", "etāya", "etasmiṃ",
    "etena", "etesaṃ", "etesu", "eso", "esā",
    "yo", "yā", "yaṃ", "ye", "yāni", "yassa", "yāya", "yasmā", "yasmiṃ",
    "yena", "yesaṃ", "yesu", "kassa", "kena", "kasmā", "kasmiṃ", "kā", "ke",
    "hoti", "honti", "atthi", "santi", "ahosi", "ahu", "siyā", "bhavati",
    "sabba", "sabbe", "sabbā", "sabbāni", "sabbesaṃ", "sāmaṃ", "nāma",
    "sādhu", "handa", "bho", "āma", "mā", "alaṃ", "appeva", "nūna",
}

FINAL_VOWELS = ("a", "ā", "i", "ī", "u", "ū")

# Upasagga (verbal prefixes) taught in Lesson 21 and reused afterwards.
PREFIXES = (
    "accanta", "samā", "paccā", "pacc", "paṭi", "pati", "parā", "pari",
    "abhi", "adhi", "atis", "ati", "anu", "apa", "api", "ava", "ā",
    "an", "dū", "du", "nī", "ni", "nis", "upa", "u", "vi", "su", "pa",
    "saṃ", "sam", "sā", "ajjhā", "ajjha", "svā", "vyā", "vya", "a",
)
ENDINGS = sorted({
    "ānaṃ", "asmiṃ", "amhā", "asmā", "ebhi", "esu", "ehi", "assa", "āya",
    "āni", "āyo", "īhi", "ibhi", "īsu", "ūsu", "ūhi", "ubhi", "inaṃ",
    "issa", "imhi", "anti", "atha", "āma", "āmi", "asi", "ema", "esi",
    "etha", "emi", "onti", "osi", "otha", "omi", "oma", "eyya", "eyyāma",
    "eyyātha", "issati", "issanti", "issāmi", "issāma", "issatha",
    "iṃsu", "uṃ", "itvā", "tuṃ", "anto", "antā", "amāna", "anīya",
    "aṃ", "ā", "e", "o", "ena", "i", "ī", "u", "ū", "ṃ", "ni", "yo",
    "su", "hi", "bhi", "ti", "si", "tha", "mi", "ma", "nti", "a",
}, key=len, reverse=True)


def nfc(s: str) -> str:
    return unicodedata.normalize("NFC", s)


def norm(tok: str) -> str:
    return nfc(tok).lower().strip(".,;:!?()[]\"'“”‘’…·")


def tokens(text: str) -> list[str]:
    return [t for t in (norm(x) for x in TOKEN_RE.findall(text)) if t]


def build_lexicons() -> tuple[set[str], set[str]]:
    """Return (pāḷi lexicon, Vietnamese/English lexicon).

    A bare-ASCII word is only treated as Pāḷi when it is attested in a
    Pāḷi-side source and is not an ordinary Vietnamese/English word.  This is
    what lets the audit see "muni" / "nara" / "vadati" while ignoring the
    Vietnamese prose that surrounds them in quiz stems and FAB glosses.
    """
    pali: set[str] = set()
    vi: set[str] = set()
    for les in CORPUS:
        for v in les["vocab"]:
            pali.update(tokens(v["root"]))
            pali.update(tokens(v["examplePali"]))
            vi.update(tokens(v["wordVi"]))
            vi.update(tokens(v["exampleVi"]))
        for p in les["phases"]:
            if p["type"] == "read_listen":
                pali.update(tokens(p["contentVi"]))
                pali.update(tokens(p["contentEn"]))
            for it in p["fabVocab"]:
                pali.update(tokens(it["wordEn"]))
                vi.update(tokens(it["wordVi"]))
                vi.update(tokens(it["partOfSpeech"]))
            for s in p["segments"]:
                if s["isVietnamese"]:
                    vi.update(tokens(s["text"]))
                pali.update(tokens(s["answer"]))
        for s in les["loose_segments"]:
            if s["isVietnamese"]:
                vi.update(tokens(s["text"]))
            pali.update(tokens(s["answer"]))
        for sp in les["seg_pairs"]:
            pali.update(tokens(sp["pali"]))
            vi.update(tokens(sp["vi"]))
    return ({t for t in pali if len(t) > 1}, {t for t in vi if len(t) > 1})


LEXICON, VI_WORDS = build_lexicons()


def is_pali(tok: str) -> bool:
    return len(tok) > 1 and (PALI_MARK_RE.search(tok) is not None
                             or (tok in LEXICON and tok not in VI_WORDS))


# Endings quoted inside explanations ("Đuôi -o/-ā = Chủ cách").  They are
# grammar morphology, never vocabulary, so they are filtered out.
SUFFIX_MENTIONS = {
    "a", "ā", "i", "ī", "u", "ū", "e", "o", "aṃ", "ṃ", "ti", "si", "tha",
    "mi", "ma", "nti", "anti", "āmi", "āma", "ena", "ehi", "ebhi", "assa",
    "āya", "ānaṃ", "asmiṃ", "amhi", "amhā", "asmā", "esu", "esā", "su",
    "hi", "bhi", "ni", "yo", "āni", "āyo", "īhi", "īsu", "ūhi", "ūsu",
    "cc", "dc", "sdc", "cdc", "xxc", "stc", "dsc", "hc", "pāḷi", "pali",
    "sg", "pl", "nom", "acc", "ins", "dat", "abl", "gen", "loc", "voc",
}
ENGLISH_STOP = set("""
a an the and or but if then than that this these those there here
he she it they we you i him her them us me my his its their our your
is are was were be been being am do does did doing done have has had
having will would shall should can could may might must
man men woman women child children son sons father fathers mother
mother brother sister friend friends cook cooks cooking cooked
pot pots jar jars village villages rice book books letter letters
water flower flowers fruit fruits cloth city town field fields
food medicine seed seeds girl girls wife language speech hall
river boat boat home house houses seat bench throne
run runs running go goes going gone come comes coming came
eat eats eating drink drinks drinking sit sits sitting fall falls
falling wash washes washing buy buys buying sell sells selling
bring brings bringing send sends sending give gives giving
speak speaks speaking teach teaches preaching preach protects
protect salute salutes guard guards strike strikes get gets
receive receives wash carry carries take takes
sentence sentences group practice exercise lesson lessons
translate translate analysis rule rules case cases form forms
table note notes tip tips example examples meaning gloss
singular plural nominative accusative instrumental dative
ablative genitive locative vocative person number tense
present past future aorist imperfect optative imperative
with by from of to in on at for and into out up down
who what which where when why how not no yes
nara buddha dhamma pali english vietnamese
""".split())

VIETNAMESE_NOISE = {
    "con", "cho", "chi", "chia", "mang", "sang", "sau", "trong", "hai",
    "nhau", "danh", "ang", "anh", "nhi", "ngh", "nghi", "thu", "thuy",
    "quy", "tr", "th", "ph", "nh", "kh", "ch", "gi", "bi", "ai", "vi",
    "sa", "nte", "termination", "ghi", "nhớ", "qua", "lại", "nữa",
}


def pali_tokens(text: str) -> list[str]:
    return [t for t in tokens(text)
            if is_pali(t)
            and t not in FUNCTION_WORDS
            and t not in SUFFIX_MENTIONS
            and t not in VIETNAMESE_NOISE
            and t not in ENGLISH_STOP]


VERB_PRESENT_ENDINGS = [
    "ati", "anti", "asi", "atha", "āmi", "āma", "atu", "antū", "eyya",
    "eyyāmi", "eyyāma", "eyyātha", "imha", "ittha", "iṃsu", "iṃsū",
    "issati", "issanti", "issasi", "issatha", "issāmi", "issāma",
    "issatha", "ituṃ", "itvā", "amāna", "anta", "antī", "amāna",
]
VERB_BASE_SUFFIXES = ("ati", "eti", "oti", "āti", "iti", "ūti", "āmi", "omi")


def verb_base(root: str) -> str | None:
    for suf in VERB_BASE_SUFFIXES:
        if root.endswith(suf) and len(root) > len(suf) + 1:
            return root[: -len(suf)]
    return None


def expand_root(root: str) -> set[str]:
    """Surface forms a learner can build from a taught root."""
    forms = {root}
    base = verb_base(root)
    if base:
        for e in VERB_PRESENT_ENDINGS:
            forms.add(base + e)
        forms.add(root[: -3] + "ituṃ")
    for v in FINAL_VOWELS:                       # nominal stems
        if root.endswith(v) and len(root) > 2:
            forms.add(root[:-1])
    return forms


# Cerebral/dental and sibilant orthographic variants collapse together for
# matching only; both spellings are reported separately in the output.
_VARIANT = str.maketrans({
    "ṇ": "n", "ṭ": "t", "ḍ": "d", "ḷ": "l", "ṅ": "n", "ñ": "n",
    "ṛ": "r", "ś": "s", "ṣ": "s", "ḥ": "h", "ṝ": "r",
})


def variants(tok: str) -> set[str]:
    out = {tok}
    folded = tok.translate(_VARIANT)
    out.add(folded)
    out.add(folded.replace("ṃ", "m"))
    out.add(tok.replace("ṃ", "m"))
    return out


def root_of(tok: str, roots: set[str]) -> str | None:
    """Which taught root does this surface form belong to (best effort)?"""
    if not roots:
        return None
    expanded: dict[str, str] = {}
    for r in roots:
        for f in expand_root(r):
            expanded.setdefault(f, r)
    folded: dict[str, str] = {}
    for f, r in expanded.items():
        for v in variants(f):
            folded.setdefault(v, r)
    for v in variants(tok):
        if v in folded:
            return folded[v]
    # stem + ending
    cands = set()
    for e in ENDINGS:
        if tok.endswith(e) and len(tok) - len(e) >= 2:
            stem = tok[: len(tok) - len(e)]
            for v in FINAL_VOWELS:
                cands.add((stem + v, stem))
    for c, stem in sorted(cands, key=lambda x: -len(x[0])):
        if c in folded or stem in folded:
            return folded.get(c) or folded.get(stem)
    # prefix + taught base (upasagga compounds: abhi+dhamma -> abhidhamma)
    for pre in PREFIXES:
        if tok.startswith(pre) and len(tok) - len(pre) >= 3:
            rest = tok[len(pre):]
            for v in variants(rest):
                if v in folded:
                    return folded[v]
            for e in ENDINGS:
                if rest.endswith(e) and len(rest) - len(e) >= 2:
                    stem = rest[: len(rest) - len(e)]
                    for v in FINAL_VOWELS:
                        if (stem + v) in folded or stem in folded:
                            return folded.get(stem + v) or folded.get(stem)
    # conservative prefix match (roots of 4+ characters only)
    for r in sorted(roots, key=len, reverse=True):
        if len(r) >= 4 and tok.startswith(r) and len(tok) - len(r) <= 5:
            return r
    return None


def analyse() -> list[dict]:
    lessons = sorted(CORPUS, key=lambda c: c["lesson"])
    per_lesson: list[dict] = []

    for les in lessons:
        n = les["lesson"]
        roots = {t for v in les["vocab"] for t in tokens(v["root"])}
        teaching: set[str] = set()
        exercise: defaultdict[str, set[str]] = defaultdict(set)
        fab: set[str] = set()

        for p in les["phases"]:
            fab.update(t for it in p["fabVocab"] for t in pali_tokens(it["wordEn"]))
            if p["type"] == "read_listen":
                teaching.update(pali_tokens(p["contentVi"]))
                teaching.update(pali_tokens(p["contentEn"]))
            else:
                if p["type"] == "listening_quiz":
                    for t in pali_tokens(p["contentVi"]) + pali_tokens(p["contentEn"]):
                        exercise[t].add(f"practice:{p['id']}")
                for q in p["questions"]:
                    for t in pali_tokens(q["questionText"]):
                        exercise[t].add(f"quiz:{q['id'] or '?'}")
                    for o in q["options"]:
                        for t in pali_tokens(o):
                            exercise[t].add(f"quiz:{q['id'] or '?'}")
                for s in p["segments"]:
                    src = f"mindgame:{p['id']}"
                    if s["isVietnamese"]:
                        for t in pali_tokens(s["answer"]):
                            exercise[t].add(src)
                    else:
                        for t in pali_tokens(s["text"]):
                            exercise[t].add(src)

        for s in les["loose_segments"]:
            src = "mindgame:top-level"
            if s["isVietnamese"]:
                for t in pali_tokens(s["answer"]):
                    exercise[t].add(src)
            else:
                for t in pali_tokens(s["text"]):
                    exercise[t].add(src)

        for sp in les["seg_pairs"]:
            for t in pali_tokens(sp["pali"]):
                exercise[t].add("mindgame:_Seg")

        for q in les["orphan_questions"]:
            for t in pali_tokens(q["questionText"]):
                exercise[t].add(f"quiz:{q['id'] or 'orphan'}")
            for o in q["options"]:
                for t in pali_tokens(o):
                    exercise[t].add(f"quiz:{q['id'] or 'orphan'}")

        per_lesson.append({
            "lesson": n,
            "vocab_count": len(les["vocab"]),
            "roots": roots,
            "teaching": teaching,
            "fab": fab,
            "exercise": exercise,
        })

    # cumulative pass
    cum_roots: set[str] = set()
    cum_teaching: set[str] = set()
    cum_fab: set[str] = set()
    all_roots = {r for row in per_lesson for r in row["roots"]}

    report = []
    for row in per_lesson:
        # A lesson's own vocabulary, teaching text and FAB sheet are all
        # available to the learner before that lesson's exercises, so they
        # must be folded in *before* checking, not after.  (They used to be
        # OR-ed in at the end of the body, which made every word that a
        # lesson teaches in its own FAB look like it was never taught.)
        cum_roots |= row["roots"]
        cum_teaching |= row["teaching"]
        cum_fab |= row["fab"]
        untraceable = {}
        only_fab = {}
        for tok, sources in sorted(row["exercise"].items()):
            if tok in cum_teaching or root_of(tok, cum_roots) is not None:
                continue
            if tok in cum_fab:
                only_fab[tok] = sorted(sources)[:2]
            else:
                untraceable[tok] = sorted(sources)[:2]
        never_listed = [t for t in untraceable if root_of(t, all_roots) is None]

        report.append({
            "lesson": row["lesson"],
            "vocab_declared": row["vocab_count"],
            "exercise_words": len(row["exercise"]),
            "traced": len(row["exercise"]) - len(untraceable) - len(only_fab),
            "fab_only": sorted(only_fab),
            "untraceable": sorted(untraceable),
            "never_in_any_vocab_list": sorted(never_listed),
            "samples": {t: untraceable[t] for t in sorted(untraceable)[:8]},
        })

    return report


def main() -> None:
    report = analyse()
    if "--json" in sys.argv:
        out = {"per_lesson": report}
        print(json.dumps(out, ensure_ascii=False, indent=1))
        return
    print(f"{'L':>3} {'vocab':>6} {'exerW':>6} {'traced':>7} "
          f"{'fabOnly':>8} {'untraced':>9} {'neverListed':>12}")
    tu = tv = 0
    for r in report:
        tu += len(r["untraceable"]); tv += len(r["never_in_any_vocab_list"])
        print(f"{r['lesson']:>3} {r['vocab_declared']:>6} {r['exercise_words']:>6} "
              f"{r['traced']:>7} {len(r['fab_only']):>8} "
              f"{len(r['untraceable']):>9} {len(r['never_in_any_vocab_list']):>12}")
    print(f"totals: untraced={tu} neverListed={tv}")
    return tu, tv


def _arg(name: str, cast=float):
    flag = f"--{name}"
    if flag in sys.argv:
        try:
            return cast(sys.argv[sys.argv.index(flag) + 1])
        except (IndexError, ValueError):
            die(f"{flag} needs a numeric value")
    return None


def die(msg: str) -> None:
    print(f"error: {msg}", file=sys.stderr)
    raise SystemExit(1)


if __name__ == "__main__":
    if "--json" in sys.argv:
        print(json.dumps({"per_lesson": analyse()}, ensure_ascii=False, indent=1))
        raise SystemExit(0)

    max_untraced = _arg("max-untraced", int)
    max_never = _arg("max-neverlisted", int)
    tu, tv = main()

    # CI gate: every word an exercise asks the learner to translate should be
    # traceable to vocabulary taught in that lesson or an earlier one.
    failed = False
    if max_untraced is not None and tu > max_untraced:
        print(f"error: {tu} untraceable exercise words > {max_untraced}",
              file=sys.stderr)
        failed = True
    if max_never is not None and tv > max_never:
        print(f"error: {tv} words never listed > {max_never}", file=sys.stderr)
        failed = True
    raise SystemExit(1 if failed else 0)
