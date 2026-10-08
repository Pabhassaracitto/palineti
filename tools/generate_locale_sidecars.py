#!/usr/bin/env python3
"""Generate complete non-Vietnamese learning-content locale sidecars.

This is intentionally a build-time content tool: lesson data and models are
never touched.  It reads the English sidecar entries as the canonical key and
content template, requests a translation for each target locale, then emits
Dart ``part`` overlays.  The output overlays are merged by the existing
sidecar registries.

Run with ``--translate`` only in an environment allowed to contact the Google
Translate public endpoint (the checked-in GitHub Action).  Without it, the
script only verifies the generated files and catalog shape.
"""
from __future__ import annotations

import argparse
import html
import json
import re
import sys
import time
import urllib.parse
import urllib.request
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable

ROOT = Path(__file__).resolve().parents[1]
LOC = ROOT / "lib/data/localization"
LOCALES = ("si", "zh", "my", "hi")

# Filled in by main(); see --strict / --max-untranslated.
QUALITY_STRICT = False
QUALITY_MAX_UNTRANSLATED: float | None = None
QUALITY_MAX_PALI_LOST: float | None = None
QUALITY_VERBOSE = False
GOOGLE_LOCALES = {"si": "si", "zh": "zh-CN", "my": "my", "hi": "hi"}

# Literal Pāḷi in an explanation is terminology, not prose to be translated.
# The placeholders are restored byte-for-byte after machine translation.
PALI_WORD_RE = re.compile(r"(?<![A-Za-zĀĪŪṂṄÑṆṬḌḶāīūṃṅñṇṭḍḷ])[A-Za-zĀĪŪṂṄÑṆṬḌḶāīūṃṅñṇṭḍḷ]+[ĀĪŪṂṄÑṆṬḌḶāīūṃṅñṇṭḍḷ][A-Za-zĀĪŪṂṄÑṆṬḌḶāīūṃṅñṇṭḍḷ]*(?![A-Za-zĀĪŪṂṄÑṆṬḌḶāīūṃṅñṇṭḍḷ])")
QUOTED_TERM_RE = re.compile(r'"[^"\n]+"')


@dataclass(frozen=True)
class Item:
    token: str
    bucket: str
    key: str
    field: str
    source: str


def die(message: str) -> None:
    raise SystemExit(f"error: {message}")


def scan_string(text: str, start: int) -> int:
    """Return the index immediately after a single/double quoted Dart string."""
    quote = text[start]
    if quote not in "'\"":
        die(f"expected quote at {start}")
    i = start + 1
    while i < len(text):
        if text[i] == "\\":
            i += 2
        elif text[i] == quote:
            return i + 1
        else:
            i += 1
    die("unterminated Dart string")


def scan_balanced(text: str, start: int, opener: str = "{", closer: str = "}") -> int:
    """String-aware balanced delimiter scanner; Dart comments are not needed here."""
    if text[start] != opener:
        die(f"expected {opener!r} at {start}")
    depth, i = 1, start + 1
    while i < len(text):
        ch = text[i]
        if ch in "'\"":
            i = scan_string(text, i)
            continue
        if text.startswith("//", i):
            nl = text.find("\n", i + 2)
            i = len(text) if nl == -1 else nl + 1
            continue
        if text.startswith("/*", i):
            end = text.find("*/", i + 2)
            if end == -1:
                die("unterminated block comment")
            i = end + 2
            continue
        if ch == opener:
            depth += 1
        elif ch == closer:
            depth -= 1
            if depth == 0:
                return i + 1
        i += 1
    die(f"unterminated {opener}{closer} block")


def dart_decode(literal: str) -> str:
    """Decode the small Dart string-literal subset used by all source sidecars."""
    assert literal[0] in "'\"" and literal[-1] == literal[0]
    body = literal[1:-1]
    out: list[str] = []
    i = 0
    while i < len(body):
        if body[i] != "\\":
            out.append(body[i])
            i += 1
            continue
        if i + 1 >= len(body):
            die("trailing backslash in Dart string")
        esc = body[i + 1]
        table = {"n": "\n", "r": "\r", "t": "\t", "b": "\b", "f": "\f", "v": "\v", "\\": "\\", "'": "'", '\"': '\"', "$": "$"}
        if esc == "u":
            if i + 5 >= len(body):
                die("short Unicode escape")
            out.append(chr(int(body[i + 2:i + 6], 16)))
            i += 6
        else:
            out.append(table.get(esc, esc))
            i += 2
    return "".join(out)


def dart_quote(value: str) -> str:
    """Serialize a safe single-quoted Dart literal without altering Unicode."""
    return "'" + (value.replace("\\", "\\\\").replace("'", "\\'")
                         .replace("$", "\\$").replace("\n", "\\n")
                         .replace("\r", "\\r")) + "'"


def variable_body(text: str, name: str) -> str:
    marker = re.search(rf"(?:const|final)\s+Map<[^;=]+>\s+{re.escape(name)}\s*=\s*\{{", text)
    if not marker:
        # After generation the public registry is supplied by a Dart part and
        # the source template is intentionally renamed to a private English
        # map.  Read that same canonical template on validation reruns.
        english_name = "_english" + name[0].upper() + name[1:]
        marker = re.search(rf"(?:const|final)\s+Map<[^;=]+>\s+{re.escape(english_name)}\s*=\s*\{{", text)
    if not marker:
        die(f"map variable {name} not found")
    start = text.find("{", marker.start())
    return text[start + 1:scan_balanced(text, start) - 1]


def top_entries(map_body: str) -> list[tuple[str, str]]:
    """Return top-level quoted key/value chunks from a Dart map body."""
    entries: list[tuple[str, str]] = []
    i = 0
    while i < len(map_body):
        while i < len(map_body) and (map_body[i].isspace() or map_body[i] == ','):
            i += 1
        if i >= len(map_body):
            break
        if map_body.startswith("//", i):
            nl = map_body.find("\n", i + 2)
            i = len(map_body) if nl < 0 else nl + 1
            continue
        if map_body[i] not in "'\"":
            # Decorative comment fragments should already have been skipped.
            nl = map_body.find("\n", i)
            i = len(map_body) if nl < 0 else nl + 1
            continue
        end_key = scan_string(map_body, i)
        key = dart_decode(map_body[i:end_key])
        j = end_key
        while j < len(map_body) and map_body[j].isspace():
            j += 1
        if j >= len(map_body) or map_body[j] != ':':
            die(f"missing colon for key {key!r}")
        j += 1
        while j < len(map_body) and map_body[j].isspace():
            j += 1
        value_start = j
        if j < len(map_body) and map_body[j] == '{':
            value_end = scan_balanced(map_body, j)
        elif j < len(map_body) and map_body[j] == '[':
            value_end = scan_balanced(map_body, j, '[', ']')
        elif map_body.startswith("Localized", j):
            paren = map_body.find("(", j)
            value_end = scan_balanced(map_body, paren, '(', ')')
        elif j < len(map_body) and map_body[j] in "'\"":
            value_end = scan_string(map_body, j)
        else:
            die(f"unknown value shape for key {key!r}: {map_body[j:j + 32]!r}")
        entries.append((key, map_body[value_start:value_end]))
        i = value_end
    return entries


def string_after(chunk: str, label: str) -> str | None:
    match = re.search(rf"\b{re.escape(label)}\s*:\s*(['\"])", chunk)
    if not match:
        return None
    start = match.start(1)
    end = scan_string(chunk, start)
    return dart_decode(chunk[start:end])


def strings_in_list(chunk: str, label: str) -> list[str]:
    match = re.search(rf"\b{re.escape(label)}\s*:\s*\[", chunk)
    if not match:
        die(f"list {label} absent")
    start = chunk.find("[", match.start())
    body = chunk[start + 1:scan_balanced(chunk, start, '[', ']') - 1]
    values: list[str] = []
    i = 0
    while i < len(body):
        if body[i] in "'\"":
            end = scan_string(body, i)
            values.append(dart_decode(body[i:end]))
            i = end
        else:
            i += 1
    return values


def english_nested_learning(filename: str, variable: str, bucket: str) -> list[Item]:
    text = (LOC / filename).read_text()
    result: list[Item] = []
    for key, locale_map in top_entries(variable_body(text, variable)):
        english = dict(top_entries(locale_map)).get("en")
        if english is None:
            die(f"{filename}: {key} lacks en")
        for field in ("title", "description", "content"):
            value = string_after(english, field)
            if value is not None:
                result.append(Item("", bucket, key, field, value))
    return result


def english_outer_strings(filename: str, variable: str, bucket: str) -> list[Item]:
    text = (LOC / filename).read_text()
    body = variable_body(text, variable)
    english = dict(top_entries(body)).get("en")
    if english is None:
        die(f"{filename}: no en map")
    values: list[Item] = []
    for key, raw in top_entries(english):
        if raw.lstrip()[0] not in "'\"":
            die(f"{filename}: {key} is not a string")
        values.append(Item("", bucket, key, "value", dart_decode(raw.strip())))
    return values


def english_phase_content() -> list[Item]:
    return english_outer_learning("learning_content_translations_content.dart", "phaseContentTranslations", "content")


def english_outer_learning(filename: str, variable: str, bucket: str) -> list[Item]:
    text = (LOC / filename).read_text()
    english = dict(top_entries(variable_body(text, variable))).get("en")
    if english is None:
        die(f"{filename}: no en map")
    result = []
    for key, value in top_entries(english):
        content = string_after(value, "content")
        if content is None:
            die(f"{filename}: {key} lacks content")
        result.append(Item("", bucket, key, "content", content))
    return result


def english_quizzes() -> list[Item]:
    result: list[Item] = []
    for path in sorted((LOC / "quiz_translations").glob("quiz_en_*.dart")):
        text = path.read_text()
        map_match = re.search(r"const\s+Map<[^=]+>\s+\w+\s*=\s*\{", text)
        if not map_match:
            die(f"quiz map absent: {path}")
        start = text.find("{", map_match.start())
        for key, locale_map in top_entries(text[start + 1:scan_balanced(text, start) - 1]):
            english = dict(top_entries(locale_map)).get("en")
            if english is None:
                die(f"{path}: {key} lacks en")
            question = string_after(english, "questionText")
            options = strings_in_list(english, "options")
            if question is None or len(options) != 4:
                die(f"{path}: malformed {key}")
            result.append(Item("", "quiz", key, "questionText", question))
            result.extend(Item("", "quiz", key, f"option{index}", value) for index, value in enumerate(options))
    return result


def catalog() -> list[Item]:
    items: list[Item] = []
    items += english_nested_learning("learning_content_translations.dart", "lessonMetaTranslations", "meta")
    items += english_nested_learning("learning_content_translations.dart", "lessonDayTranslations", "day")
    items += english_nested_learning("learning_content_translations.dart", "lessonPhaseTranslations", "phase")
    items += english_outer_strings("learning_content_translations_vocab.dart", "vocabWordTranslations", "word")
    items += english_outer_strings("learning_content_translations_vocab.dart", "vocabExampleTranslations", "example")
    items += english_outer_strings("learning_content_translations_vocab.dart", "vocabPosTranslations", "pos")
    items += english_phase_content()
    items += english_outer_strings("mind_game_translations.dart", "mindGameSegmentTranslations", "mind")
    items += english_quizzes()
    # Stable token names make batch recovery unambiguous across reruns.
    return [Item(f"T{i:05d}", x.bucket, x.key, x.field, x.source) for i, x in enumerate(items, 1)]


def protect_pali(source: str) -> tuple[str, dict[str, str]]:
    saved: dict[str, str] = {}
    n = 0

    def save(match: re.Match[str]) -> str:
        nonlocal n
        value = match.group(0)
        # Quoted English prose is not protected; only quoted Pāḷi/grammar words.
        if match.re is QUOTED_TERM_RE and not PALI_WORD_RE.search(value):
            return value
        # Short alpha-numeric markers survive Google Translate intact (unlike
        # repeated-letter pseudo words such as ZZ...ZZ, which it normalizes).
        marker = f"PALI{n:04d}X"
        n += 1
        saved[marker] = value
        return marker

    source = QUOTED_TERM_RE.sub(save, source)
    source = PALI_WORD_RE.sub(save, source)
    return source, saved


MAX_TRANSLATE_ATTEMPTS = 6


def _find_marker(value: str, marker: str) -> str | None:
    """Locate a protect_pali() marker in translated text.

    Google sometimes inserts whitespace inside an opaque alphanumeric token
    (``PALI0003X`` -> ``PALI 0003X``) or changes its case, which used to count
    as a lost marker and, after the retries were exhausted, aborted the whole
    translation run.  Matching with optional internal whitespace recovers
    those; ``None`` means the marker really is gone.
    """
    if marker in value:
        return marker
    pattern = r"\s*".join(re.escape(ch) for ch in marker)
    hit = re.search(pattern, value, re.IGNORECASE)
    return hit.group(0) if hit else None


def translate_batch(locale: str, batch: list[Item], attempt: int = 0) -> dict[str, str]:
    # Literal Pāḷi inside an explanation is terminology, not prose: it is
    # swapped out for opaque markers before the request and restored
    # afterwards.  Without this the translator transliterates the quotation
    # into the target script ("Acariyā" -> "ආචාරියා" / "अकारिया"), which
    # silently corrupts every cited sentence.
    # Canonical Pāḷi *keys* are copied separately, byte-for-byte, from the
    # English sidecars and are never sent to the translator.
    protected: dict[str, dict[str, str]] = {}
    safe_by_token: dict[str, str] = {}
    spans: list[str] = []
    for item in batch:
        safe, saved = protect_pali(item.source)
        protected[item.token] = saved
        safe_by_token[item.token] = safe
        spans.append(f'<span id="{item.token}">{safe}</span>')
    query = "\n".join(spans)
    params = urllib.parse.urlencode({"client": "gtx", "sl": "en", "tl": GOOGLE_LOCALES[locale], "dt": "t", "q": query})
    url = "https://translate.googleapis.com/translate_a/single?" + params
    try:
        with urllib.request.urlopen(url, timeout=60) as response:
            payload = json.loads(response.read().decode("utf-8"))
        translated = "".join(piece[0] for piece in payload[0] if piece and piece[0])
        translated = html.unescape(translated)
        found = {token: value for token, value in re.findall(r'<span id="(T\d+)">(.*?)</span>', translated, re.S)}
        extra = set(found) - {item.token for item in batch}
        if extra:
            raise ValueError(f"span recovery produced unexpected ids: {sorted(extra)[:3]}")

        # A string counts as "recovered" only if every Pāḷi marker it carried
        # came back, because a lost marker would leave the translation with a
        # stray PALI0003X in it and no way to put the Pāḷi term back.
        ok: dict[str, str] = {}
        lost: list[Item] = []
        for item in batch:
            value = found.get(item.token)
            if value is None:
                lost.append(item)
                continue
            restored: str | None = value
            for marker, original in protected[item.token].items():
                hit = _find_marker(restored, marker)
                if hit is None:
                    restored = None
                    break
                restored = restored.replace(hit, original)
            if restored is None:
                lost.append(item)
            else:
                ok[item.token] = restored.strip()

        if not lost:
            return ok

        # Retry only the strings that failed, in a much smaller request --
        # Google handles short payloads better than a full batch.  Once the
        # attempts are exhausted, keep the English source for those strings
        # rather than failing a run that has already spent 20 minutes.  The
        # quality report counts them as untranslated.
        if attempt >= MAX_TRANSLATE_ATTEMPTS:
            for item in lost:
                print(f"  {locale}: keeping English for {item.token} "
                      f"({item.bucket}/{item.key}) - Pāḷi markers lost "
                      f"{attempt + 1} times", file=sys.stderr)
                ok[item.token] = item.source
            return ok
        print(f"  {locale}: {len(lost)} string(s) lost their Pāḷi markers; "
              f"retrying them alone", file=sys.stderr)
        time.sleep(2)
        ok.update(translate_batch(locale, lost, attempt + 1))
        return ok
    except Exception as exc:
        # Rate limiting (429) from a shared CI egress IP is the common case
        # here, and it clears on a timescale of minutes, not seconds, so the
        # backoff has to be far longer than a normal transient-failure curve.
        if attempt >= MAX_TRANSLATE_ATTEMPTS:
            raise
        delay = min(15 * 2 ** attempt, 240)
        print(f"  retry {locale} attempt {attempt + 1}/{MAX_TRANSLATE_ATTEMPTS} "
              f"({type(exc).__name__}: {exc}); sleeping {delay}s", file=sys.stderr)
        time.sleep(delay)
        return translate_batch(locale, batch, attempt + 1)


def translations(items: list[Item], locale: str) -> dict[str, str]:
    # Keep the URL comfortably below proxy / Google GET limits after escaping.
    chunks: list[list[Item]] = []
    current: list[Item] = []
    current_size = 0
    for item in items:
        size = len(item.source) + 48
        if current and current_size + size > 3600:
            chunks.append(current)
            current, current_size = [], 0
        current.append(item)
        current_size += size
    if current:
        chunks.append(current)
    result: dict[str, str] = {}
    for number, chunk in enumerate(chunks, 1):
        print(f"{locale}: translating batch {number}/{len(chunks)} ({len(chunk)} strings)", file=sys.stderr)
        result.update(translate_batch(locale, chunk))
        # Keep below the unauthenticated public-endpoint request rate.  CI
        # runners share an egress IP with every other job Google sees from
        # that range, so 0.8s between batches was enough to draw a 429 partway
        # through a full four-locale run.
        time.sleep(2.0)
    if len(result) != len(items):
        die(f"{locale}: expected {len(items)} translations, got {len(result)}")
    return result


def item_map(items: Iterable[Item], strings: dict[str, str], bucket: str, locale: str) -> dict[str, dict[str, str]]:
    answer: dict[str, dict[str, str]] = {}
    for item in items:
        if item.bucket == bucket:
            answer.setdefault(item.key, {})[item.field] = strings[item.token]
    return answer


def emit_learning_map(name: str, values: dict[str, dict[str, dict[str, str]]]) -> str:
    out = [f"const Map<String, Map<String, LocalizedLearningText>> {name} = {{"]
    for key, locale_values in values.items():
        out.append(f"  {dart_quote(key)}: {{")
        for locale in LOCALES:
            fields = locale_values[locale]
            out.append(f"    {dart_quote(locale)}: LocalizedLearningText(")
            for field in ("title", "description", "content"):
                if field in fields:
                    out.append(f"      {field}: {dart_quote(fields[field])},")
            out.append("    ),")
        out.append("  },")
    out.append("};")
    return "\n".join(out)


def regroup_learning(items: list[Item], strings_by_locale: dict[str, dict[str, str]], bucket: str) -> dict[str, dict[str, dict[str, str]]]:
    output: dict[str, dict[str, dict[str, str]]] = {}
    for item in items:
        if item.bucket != bucket:
            continue
        per_key = output.setdefault(item.key, {})
        for locale in LOCALES:
            per_key.setdefault(locale, {})[item.field] = strings_by_locale[locale][item.token]
    return output


def emit_outer_string_map(name: str, items: list[Item], strings_by_locale: dict[str, dict[str, str]], bucket: str) -> str:
    out = [f"const Map<String, Map<String, String>> {name} = {{"]
    selected = [item for item in items if item.bucket == bucket]
    for locale in LOCALES:
        out.append(f"  {dart_quote(locale)}: {{")
        for item in selected:
            out.append(f"    {dart_quote(item.key)}: {dart_quote(strings_by_locale[locale][item.token])},")
        out.append("  },")
    out.append("};")
    return "\n".join(out)


def emit_quiz_map(items: list[Item], strings_by_locale: dict[str, dict[str, str]]) -> str:
    grouped = regroup_learning(items, strings_by_locale, "quiz")
    out = ["const Map<String, Map<String, LocalizedQuizQuestionText>> _additionalQuizQuestionTranslations = {"]
    for key, locale_values in grouped.items():
        out.append(f"  {dart_quote(key)}: {{")
        for locale in LOCALES:
            fields = locale_values[locale]
            out.append(f"    {dart_quote(locale)}: LocalizedQuizQuestionText(")
            out.append(f"      questionText: {dart_quote(fields['questionText'])},")
            out.append("      options: [")
            for option in range(4):
                out.append(f"        {dart_quote(fields[f'option{option}'])},")
            out.append("      ],")
            out.append("    ),")
        out.append("  },")
    out.append("};")
    return "\n".join(out)


def generate(items: list[Item], strings_by_locale: dict[str, dict[str, str]]) -> None:
    main = ["part of 'learning_content_translations.dart';", ""]
    main.append(emit_learning_map("_additionalLessonMetaTranslations", regroup_learning(items, strings_by_locale, "meta")))
    main.append(emit_learning_map("_additionalLessonDayTranslations", regroup_learning(items, strings_by_locale, "day")))
    main.append(emit_learning_map("_additionalLessonPhaseTranslations", regroup_learning(items, strings_by_locale, "phase")))
    main.append(emit_quiz_map(items, strings_by_locale))
    main += [
        "",
        "Map<String, Map<String, T>> _mergeLocaleTranslations<T>(",
        "  Map<String, Map<String, T>> english,",
        "  Map<String, Map<String, T>> additions,",
        ") => {",
        "  for (final entry in english.entries)",
        "    entry.key: { ...entry.value, ...?additions[entry.key] },",
        "};",
        "",
        "final Map<String, Map<String, LocalizedLearningText>> lessonMetaTranslations =",
        "    _mergeLocaleTranslations(_englishLessonMetaTranslations, _additionalLessonMetaTranslations);",
        "final Map<String, Map<String, LocalizedLearningText>> lessonDayTranslations =",
        "    _mergeLocaleTranslations(_englishLessonDayTranslations, _additionalLessonDayTranslations);",
        "final Map<String, Map<String, LocalizedLearningText>> lessonPhaseTranslations =",
        "    _mergeLocaleTranslations(_englishLessonPhaseTranslations, _additionalLessonPhaseTranslations);",
        "final Map<String, Map<String, LocalizedQuizQuestionText>> quizQuestionTranslations =",
        "    _mergeLocaleTranslations(_englishQuizQuestionTranslations, _additionalQuizQuestionTranslations);",
        "",
    ]
    (LOC / "learning_content_translations_locales.dart").write_text("\n".join(main))

    vocab = ["part of 'learning_content_translations_vocab.dart';", ""]
    vocab.append(emit_outer_string_map("_additionalVocabWordTranslations", items, strings_by_locale, "word"))
    vocab.append(emit_outer_string_map("_additionalVocabExampleTranslations", items, strings_by_locale, "example"))
    vocab.append(emit_outer_string_map("_additionalVocabPosTranslations", items, strings_by_locale, "pos"))
    vocab += [
        "",
        "final Map<String, Map<String, String>> vocabWordTranslations = {",
        "  ..._englishVocabWordTranslations, ..._additionalVocabWordTranslations,",
        "};",
        "final Map<String, Map<String, String>> vocabExampleTranslations = {",
        "  ..._englishVocabExampleTranslations, ..._additionalVocabExampleTranslations,",
        "};",
        "final Map<String, Map<String, String>> vocabPosTranslations = {",
        "  ..._englishVocabPosTranslations, ..._additionalVocabPosTranslations,",
        "};",
        "",
    ]
    (LOC / "learning_content_translations_vocab_locales.dart").write_text("\n".join(vocab))

    content = ["part of 'learning_content_translations_content.dart';", ""]
    content.append(emit_learning_map("_additionalPhaseContentTranslations", regroup_learning(items, strings_by_locale, "content")))
    content += [
        "",
        "final Map<String, Map<String, LocalizedLearningText>> phaseContentTranslations = {",
        "  for (final entry in _englishPhaseContentTranslations.entries)",
        "    entry.key: { ...entry.value, ...?_additionalPhaseContentTranslations[entry.key] },",
        "};",
        "",
    ]
    (LOC / "learning_content_translations_content_locales.dart").write_text("\n".join(content))

    mind = ["part of 'mind_game_translations.dart';", ""]
    mind.append(emit_outer_string_map("_additionalMindGameSegmentTranslations", items, strings_by_locale, "mind"))
    mind += ["", "final Map<String, Map<String, String>> mindGameSegmentTranslations = {", "  ..._englishMindGameSegmentTranslations, ..._additionalMindGameSegmentTranslations,", "};", ""]
    (LOC / "mind_game_translations_locales.dart").write_text("\n".join(mind))


def add_part_and_rename(path: Path, part: str, old: str, new: str) -> None:
    text = path.read_text()
    if f"part '{part}';" not in text:
        imports = list(re.finditer(r"^import [^;]+;\n", text, re.M))
        if imports:
            insert = imports[-1].end()
        else:
            # vocab/mind have no imports: part must precede declarations/comments.
            insert = 0
        text = text[:insert] + f"part '{part}';\n" + text[insert:]
    text = text.replace(f"const Map<String, Map<String, LocalizedLearningText>> {old} =", f"const Map<String, Map<String, LocalizedLearningText>> {new} =", 1)
    text = text.replace(f"const Map<String, Map<String, LocalizedQuizQuestionText>> {old} =", f"const Map<String, Map<String, LocalizedQuizQuestionText>> {new} =", 1)
    text = text.replace(f"const Map<String, Map<String, String>> {old} =", f"const Map<String, Map<String, String>> {new} =", 1)
    path.write_text(text)


def wire_overlays() -> None:
    main = LOC / "learning_content_translations.dart"
    add_part_and_rename(main, "learning_content_translations_locales.dart", "lessonMetaTranslations", "_englishLessonMetaTranslations")
    add_part_and_rename(main, "learning_content_translations_locales.dart", "lessonDayTranslations", "_englishLessonDayTranslations")
    add_part_and_rename(main, "learning_content_translations_locales.dart", "lessonPhaseTranslations", "_englishLessonPhaseTranslations")
    add_part_and_rename(main, "learning_content_translations_locales.dart", "quizQuestionTranslations", "_englishQuizQuestionTranslations")
    vocab = LOC / "learning_content_translations_vocab.dart"
    add_part_and_rename(vocab, "learning_content_translations_vocab_locales.dart", "vocabWordTranslations", "_englishVocabWordTranslations")
    add_part_and_rename(vocab, "learning_content_translations_vocab_locales.dart", "vocabExampleTranslations", "_englishVocabExampleTranslations")
    add_part_and_rename(vocab, "learning_content_translations_vocab_locales.dart", "vocabPosTranslations", "_englishVocabPosTranslations")
    content = LOC / "learning_content_translations_content.dart"
    add_part_and_rename(content, "learning_content_translations_content_locales.dart", "phaseContentTranslations", "_englishPhaseContentTranslations")
    mind = LOC / "mind_game_translations.dart"
    add_part_and_rename(mind, "mind_game_translations_locales.dart", "mindGameSegmentTranslations", "_englishMindGameSegmentTranslations")


def check_balanced(path: Path) -> None:
    text = path.read_text()
    stack: list[tuple[str, int]] = []
    pairs = {"(": ")", "[": "]", "{": "}"}
    i = 0
    while i < len(text):
        if text[i] in "'\"":
            i = scan_string(text, i)
            continue
        if text.startswith("//", i):
            nl = text.find("\n", i + 2)
            i = len(text) if nl == -1 else nl + 1
            continue
        if text.startswith("/*", i):
            end = text.find("*/", i + 2)
            if end < 0:
                die(f"{path}: unterminated comment")
            i = end + 2
            continue
        if text[i] in pairs:
            stack.append((text[i], i))
        elif text[i] in ")]}":
            if not stack or pairs[stack[-1][0]] != text[i]:
                die(f"{path}: delimiter mismatch at {i}")
            stack.pop()
        i += 1
    if stack:
        die(f"{path}: unclosed delimiter at {stack[-1][1]}")


def _expect_equal(actual: set[str], expected: set[str], label: str) -> None:
    if actual != expected:
        missing, extra = expected - actual, actual - expected
        die(f"{label}: keys differ; missing={sorted(missing)[:3]} extra={sorted(extra)[:3]}")


def _localized_overlay_check(
    generated_path: Path,
    generated_variable: str,
    source_path: Path,
    source_variable: str,
    fields: tuple[str, ...],
) -> None:
    """Check id/locale/field alignment for a LocalizedLearningText overlay."""
    generated = dict(top_entries(variable_body(generated_path.read_text(), generated_variable)))
    source = dict(top_entries(variable_body(source_path.read_text(), source_variable)))
    _expect_equal(set(generated), set(source), generated_variable)
    for key, source_locale_map in source.items():
        source_en = dict(top_entries(source_locale_map))["en"]
        expected_fields = {field for field in fields if string_after(source_en, field) is not None}
        locales = dict(top_entries(generated[key]))
        _expect_equal(set(locales), set(LOCALES), f"{generated_variable}/{key}")
        for locale, translated in locales.items():
            actual_fields = {field for field in fields if string_after(translated, field) is not None}
            if actual_fields != expected_fields:
                die(f"{generated_variable}/{key}/{locale}: field set {actual_fields} != {expected_fields}")


def _outer_learning_overlay_check(
    generated_path: Path,
    generated_variable: str,
    source_path: Path,
    source_variable: str,
    fields: tuple[str, ...],
) -> None:
    """Check an EN locale -> id map rendered as an id -> locale overlay."""
    generated = dict(top_entries(variable_body(generated_path.read_text(), generated_variable)))
    source_outer = dict(top_entries(variable_body(source_path.read_text(), source_variable)))
    source = dict(top_entries(source_outer["en"]))
    _expect_equal(set(generated), set(source), generated_variable)
    for key, source_value in source.items():
        expected_fields = {field for field in fields if string_after(source_value, field) is not None}
        locales = dict(top_entries(generated[key]))
        _expect_equal(set(locales), set(LOCALES), f"{generated_variable}/{key}")
        for locale, translated in locales.items():
            actual_fields = {field for field in fields if string_after(translated, field) is not None}
            if actual_fields != expected_fields:
                die(f"{generated_variable}/{key}/{locale}: field set {actual_fields} != {expected_fields}")


def _outer_string_overlay_check(
    generated_path: Path,
    generated_variable: str,
    source_path: Path,
    source_variable: str,
) -> None:
    generated = dict(top_entries(variable_body(generated_path.read_text(), generated_variable)))
    source_outer = dict(top_entries(variable_body(source_path.read_text(), source_variable)))
    source = dict(top_entries(source_outer["en"]))
    _expect_equal(set(generated), set(LOCALES), generated_variable)
    for locale, translated_outer in generated.items():
        translated = dict(top_entries(translated_outer))
        _expect_equal(set(translated), set(source), f"{generated_variable}/{locale}")
        if any(raw.lstrip()[:1] not in "'\"" for raw in translated.values()):
            die(f"{generated_variable}/{locale}: non-string value")


def _quiz_overlay_check(generated_path: Path, items: list[Item]) -> None:
    generated = dict(top_entries(variable_body(generated_path.read_text(), "_additionalQuizQuestionTranslations")))
    expected = {item.key for item in items if item.bucket == "quiz"}
    _expect_equal(set(generated), expected, "quiz locale overlay")
    for question_id, locale_map in generated.items():
        locales = dict(top_entries(locale_map))
        _expect_equal(set(locales), set(LOCALES), f"quiz/{question_id}")
        for locale, value in locales.items():
            if string_after(value, "questionText") is None or len(strings_in_list(value, "options")) != 4:
                die(f"quiz/{question_id}/{locale}: expected questionText + four options")


# ── translation-quality checks ─────────────────────────────────────────────

ASCII_RE = re.compile(r"[A-Za-z]")


def _nested_overlay_pairs(
    generated_path: Path,
    generated_variable: str,
    source_path: Path,
    source_variable: str,
    fields: tuple[str, ...],
    bucket: str,
):
    """Yield (bucket, key, field, english, locale, value) for id -> locale maps."""
    generated = dict(top_entries(variable_body(generated_path.read_text(), generated_variable)))
    source = dict(top_entries(variable_body(source_path.read_text(), source_variable)))
    for key, source_locale_map in source.items():
        source_en = dict(top_entries(source_locale_map)).get("en")
        if source_en is None:
            die(f"{generated_variable}/{key}: source lacks en")
        targets = dict(top_entries(generated.get(key, "")))
        for field in fields:
            english = string_after(source_en, field)
            if english is None:
                continue
            for locale in LOCALES:
                entry = targets.get(locale)
                if entry is None:
                    continue
                yield bucket, key, field, english, locale, string_after(entry, field)


def _outer_learning_overlay_pairs(
    generated_path: Path,
    generated_variable: str,
    source_path: Path,
    source_variable: str,
    fields: tuple[str, ...],
    bucket: str,
):
    generated = dict(top_entries(variable_body(generated_path.read_text(), generated_variable)))
    source_outer = dict(top_entries(variable_body(source_path.read_text(), source_variable)))
    source = dict(top_entries(source_outer["en"]))
    for key, source_value in source.items():
        targets = dict(top_entries(generated.get(key, "")))
        for field in fields:
            english = string_after(source_value, field)
            if english is None:
                continue
            for locale in LOCALES:
                entry = targets.get(locale)
                if entry is None:
                    continue
                yield bucket, key, field, english, locale, string_after(entry, field)


def _outer_string_overlay_pairs(
    generated_path: Path,
    generated_variable: str,
    source_path: Path,
    source_variable: str,
    bucket: str,
):
    generated = dict(top_entries(variable_body(generated_path.read_text(), generated_variable)))
    source_outer = dict(top_entries(variable_body(source_path.read_text(), source_variable)))
    source = dict(top_entries(source_outer["en"]))
    for locale in LOCALES:
        targets = dict(top_entries(generated.get(locale, "")))
        for key, english in source.items():
            if key in targets:
                yield bucket, key, "value", english, locale, targets[key]


def _quiz_overlay_pairs(bucket: str = "quiz"):
    generated = dict(top_entries(variable_body(
        (LOC / "learning_content_translations_locales.dart").read_text(),
        "_additionalQuizQuestionTranslations")))
    for path in sorted((LOC / "quiz_translations").glob("quiz_en_*.dart")):
        text = path.read_text()
        map_match = re.search(r"const\s+Map<[^=]+>\s+\w+\s*=\s*\{", text)
        start = text.find("{", map_match.start())
        for key, locale_map in top_entries(text[start + 1:scan_balanced(text, start) - 1]):
            english = dict(top_entries(locale_map)).get("en")
            if english is None:
                continue
            targets = dict(top_entries(generated.get(key, "")))
            english_values = [string_after(english, "questionText")]
            english_values.extend(strings_in_list(english, "options"))
            for locale in LOCALES:
                entry = targets.get(locale)
                if entry is None:
                    continue
                values = [string_after(entry, "questionText")]
                values.extend(strings_in_list(entry, "options"))
                for index, (en, value) in enumerate(zip(english_values, values)):
                    if en is None or value is None:
                        continue
                    field = "questionText" if index == 0 else f"option{index - 1}"
                    yield bucket, key, field, en, locale, value


def translation_quality_pairs():
    main = LOC / "learning_content_translations.dart"
    vocab = LOC / "learning_content_translations_vocab.dart"
    content = LOC / "learning_content_translations_content.dart"
    mind = LOC / "mind_game_translations.dart"
    generated_main = LOC / "learning_content_translations_locales.dart"
    generated_vocab = LOC / "learning_content_translations_vocab_locales.dart"
    generated_content = LOC / "learning_content_translations_content_locales.dart"
    generated_mind = LOC / "mind_game_translations_locales.dart"
    fields = ("title", "description", "content")
    for bucket, source_variable, generated_variable in (
        ("meta", "lessonMetaTranslations", "_additionalLessonMetaTranslations"),
        ("day", "lessonDayTranslations", "_additionalLessonDayTranslations"),
        ("phase", "lessonPhaseTranslations", "_additionalLessonPhaseTranslations"),
    ):
        yield from _nested_overlay_pairs(
            generated_main, generated_variable, main, source_variable, fields, bucket)
    yield from _outer_learning_overlay_pairs(
        generated_content, "_additionalPhaseContentTranslations",
        content, "phaseContentTranslations", fields, "content")
    for bucket, source_variable, generated_variable in (
        ("word", "vocabWordTranslations", "_additionalVocabWordTranslations"),
        ("example", "vocabExampleTranslations", "_additionalVocabExampleTranslations"),
        ("pos", "vocabPosTranslations", "_additionalVocabPosTranslations"),
    ):
        yield from _outer_string_overlay_pairs(
            generated_vocab, generated_variable, vocab, source_variable, bucket)
    yield from _outer_string_overlay_pairs(
        generated_mind, "_additionalMindGameSegmentTranslations",
        mind, "mindGameSegmentTranslations", "mind")
    yield from _quiz_overlay_pairs()


def translation_quality_report(verbose: bool = False) -> dict[str, dict[str, int]]:
    """Count strings that were never translated and strings whose Pāḷi was lost.

    A string counts as *untranslated* when it is byte-identical to the English
    source and the source actually contains Latin prose to translate (a string
    that is pure Pāḷi or pure punctuation legitimately stays identical).

    A string counts as *pali-lost* when a Pāḷi word quoted in the English
    source does not survive verbatim in the target -- the translator has
    transliterated or dropped it.
    """
    stats: dict[str, dict[str, int]] = {
        locale: {"strings": 0, "untranslated": 0, "pali_lost": 0} for locale in LOCALES}
    examples: dict[str, dict[str, list[str]]] = {
        locale: {"untranslated": [], "pali_lost": []} for locale in LOCALES}
    for bucket, key, field, english, locale, value in translation_quality_pairs():
        if english is None or value is None:
            continue
        stats[locale]["strings"] += 1
        en, target = english.strip(), value.strip()
        if ASCII_RE.search(en) and en == target:
            stats[locale]["untranslated"] += 1
            if len(examples[locale]["untranslated"]) < 3:
                examples[locale]["untranslated"].append(f"{bucket}/{key}/{field}: {en[:70]!r}")
        missing = [term for term in PALI_WORD_RE.findall(en) if term not in target]
        if missing and en != target:
            stats[locale]["pali_lost"] += 1
            if len(examples[locale]["pali_lost"]) < 3:
                examples[locale]["pali_lost"].append(
                    f"{bucket}/{key}/{field}: lost {missing[:3]} -> {target[:70]!r}")
    print("Translation quality (per target locale):")
    print(f"  {'loc':5}{'strings':>9}{'untranslated':>14}{'%':>7}{'pali lost':>12}{'%':>7}")
    for locale in LOCALES:
        s = stats[locale]
        un = 100.0 * s["untranslated"] / s["strings"] if s["strings"] else 0.0
        pl = 100.0 * s["pali_lost"] / s["strings"] if s["strings"] else 0.0
        print(f"  {locale:5}{s['strings']:>9}{s['untranslated']:>14}{un:>6.1f}%"
              f"{s['pali_lost']:>12}{pl:>6.1f}%")
    if verbose:
        for locale in LOCALES:
            for kind, lines in examples[locale].items():
                for line in lines:
                    print(f"    [{locale}] {kind}: {line}")
    return stats


def validate(items: list[Item]) -> None:
    # Lesson 23 was added after the original handoff table was written, so the
    # canonical English sidecar correctly contains 26 metadata records.
    expected = {
        "meta": 26, "day": 52, "phase": 151, "quiz": 297,
        "word": 415, "example": 417, "pos": 68, "content": 7, "mind": 447,
    }
    actual = {
        name: (sum(1 for x in items if x.bucket == name) // 5 if name == "quiz"
               else len({x.key for x in items if x.bucket == name}))
        for name in expected
    }
    if actual != expected:
        die(f"English catalog counts wrong: {actual} != {expected}")

    main = LOC / "learning_content_translations.dart"
    vocab = LOC / "learning_content_translations_vocab.dart"
    content = LOC / "learning_content_translations_content.dart"
    mind = LOC / "mind_game_translations.dart"
    generated_main = LOC / "learning_content_translations_locales.dart"
    generated_vocab = LOC / "learning_content_translations_vocab_locales.dart"
    generated_content = LOC / "learning_content_translations_content_locales.dart"
    generated_mind = LOC / "mind_game_translations_locales.dart"
    generated = [generated_main, generated_vocab, generated_content, generated_mind]
    for path in [main, vocab, content, mind, *generated]:
        if not path.exists():
            die(f"missing generated sidecar {path}")
        check_balanced(path)

    _localized_overlay_check(generated_main, "_additionalLessonMetaTranslations", main, "lessonMetaTranslations", ("title", "description", "content"))
    _localized_overlay_check(generated_main, "_additionalLessonDayTranslations", main, "lessonDayTranslations", ("title", "description", "content"))
    _localized_overlay_check(generated_main, "_additionalLessonPhaseTranslations", main, "lessonPhaseTranslations", ("title", "description", "content"))
    _outer_learning_overlay_check(generated_content, "_additionalPhaseContentTranslations", content, "phaseContentTranslations", ("title", "description", "content"))
    _outer_string_overlay_check(generated_vocab, "_additionalVocabWordTranslations", vocab, "vocabWordTranslations")
    _outer_string_overlay_check(generated_vocab, "_additionalVocabExampleTranslations", vocab, "vocabExampleTranslations")
    _outer_string_overlay_check(generated_vocab, "_additionalVocabPosTranslations", vocab, "vocabPosTranslations")
    _outer_string_overlay_check(generated_mind, "_additionalMindGameSegmentTranslations", mind, "mindGameSegmentTranslations")
    _quiz_overlay_check(generated_main, items)

    # This exact-set comparison is byte-level for Python strings. It confirms
    # that runtime Mind Game Pāḷi keys and inline POS labels were copied from
    # EN/source rather than retyped; NFC also catches accidental decomposed
    # diacritics in all generated key maps.
    for label, generated_path, generated_variable, source_path, source_variable in (
        ("mind-game Pāḷi", generated_mind, "_additionalMindGameSegmentTranslations", mind, "mindGameSegmentTranslations"),
        ("part-of-speech", generated_vocab, "_additionalVocabPosTranslations", vocab, "vocabPosTranslations"),
    ):
        generated_outer = dict(top_entries(variable_body(generated_path.read_text(), generated_variable)))
        source_outer = dict(top_entries(variable_body(source_path.read_text(), source_variable)))
        source_keys = set(dict(top_entries(source_outer["en"])))
        for locale in LOCALES:
            locale_keys = set(dict(top_entries(generated_outer[locale])))
            _expect_equal(locale_keys, source_keys, f"{label}/{locale}")
            if any(__import__("unicodedata").normalize("NFC", key) != key for key in locale_keys):
                die(f"{label}/{locale}: decomposed Unicode key")

    print("Catalog, key-set, quiz-shape, and string-aware syntax validation passed.")
    print("Canonical English counts:", ", ".join(f"{k}={v}" for k, v in expected.items()))
    print()
    stats = translation_quality_report(verbose=QUALITY_VERBOSE)
    if QUALITY_STRICT or QUALITY_MAX_UNTRANSLATED is not None:
        offenders = []
        for locale in LOCALES:
            s = stats[locale]
            for key, label, flag in (
                ("untranslated", "untranslated", QUALITY_MAX_UNTRANSLATED),
                ("pali_lost", "Pali-lost", QUALITY_MAX_PALI_LOST),
            ):
                ratio = 100.0 * s[key] / s["strings"] if s["strings"] else 0.0
                if QUALITY_STRICT and s[key]:
                    offenders.append(f"{locale}: {s[key]} {label}")
                elif flag is not None and ratio > flag:
                    offenders.append(f"{locale}: {ratio:.1f}% {label} > {flag:.1f}%")
        if offenders:
            die("translation quality: " + "; ".join(offenders))
        print("Translation-quality gate passed.")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--translate", action="store_true", help="call Google Translate and write overlays")
    parser.add_argument("--locale", choices=LOCALES, action="append", help="only translate a locale (repeatable)")
    parser.add_argument("--strict", action="store_true",
                        help="fail validation if any target string is untranslated")
    parser.add_argument("--max-untranslated", type=float, default=None, metavar="PCT",
                        help="fail validation above this %% of untranslated strings per locale")
    parser.add_argument("--max-pali-lost", type=float, default=None, metavar="PCT",
                        help="fail validation above this %% of strings whose Pali terms were transliterated away")
    parser.add_argument("--verbose-quality", action="store_true",
                        help="print sample untranslated / Pali-lost strings")
    args = parser.parse_args()
    global QUALITY_STRICT, QUALITY_MAX_UNTRANSLATED, QUALITY_MAX_PALI_LOST, QUALITY_VERBOSE
    QUALITY_STRICT = args.strict
    QUALITY_MAX_UNTRANSLATED = args.max_untranslated
    QUALITY_MAX_PALI_LOST = args.max_pali_lost
    QUALITY_VERBOSE = args.verbose_quality
    items = catalog()
    if not args.translate:
        validate(items)
        return
    locales = tuple(args.locale or LOCALES)
    # Rerunning a subset preserves existing target translations by reading the
    # canonical JSON cache emitted below. CI normally runs all four together.
    cache = ROOT / ".locale_translation_cache.json"
    strings_by_locale: dict[str, dict[str, str]] = {}
    if cache.exists():
        strings_by_locale = json.loads(cache.read_text())
    for locale in locales:
        strings_by_locale[locale] = translations(items, locale)
    missing = [locale for locale in LOCALES if locale not in strings_by_locale]
    if missing:
        die(f"translation cache lacks locales {missing}; run with --locale for them first")
    generate(items, strings_by_locale)
    wire_overlays()
    cache.unlink(missing_ok=True)
    validate(items)


if __name__ == "__main__":
    main()
