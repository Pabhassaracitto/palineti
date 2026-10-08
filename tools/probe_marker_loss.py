"""Reproduce the Pāḷi-marker loss for specific catalog strings.

A full translation run costs about 27 minutes, which is far too slow for
finding out why Google mangled a marker.  This sends only the handful of
strings that actually failed, one request each, and prints the raw response
next to the source so the difference is visible.

Token ids come from the "keeping English for Tnnnnn" lines in
.ci/translate-run.txt.

Usage:
    python3 tools/probe_marker_loss.py                     # default tokens, hi
    python3 tools/probe_marker_loss.py --token T02027 --locale si
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
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

import generate_locale_sidecars as g  # noqa: E402

DEFAULT_TOKENS = ["T02027", "T02868", "T02150", "T02180", "T02363"]


def raw_translate(locale: str, text: str) -> str:
    params = urllib.parse.urlencode({
        "client": "gtx", "sl": "en", "tl": g.GOOGLE_LOCALES[locale],
        "dt": "t", "q": text,
    })
    url = "https://translate.googleapis.com/translate_a/single?" + params
    with urllib.request.urlopen(url, timeout=60) as response:
        payload = json.loads(response.read().decode("utf-8"))
    translated = "".join(p[0] for p in payload[0] if p and p[0])
    return html.unescape(translated)


def batch_probe(locale: str, size: int) -> int:
    """Send a realistic batch and report how many markers survive.

    A single string sent on its own kept every marker, yet the full run lost
    748 Hindi strings, so the loss is not a property of the string.  The
    production path sends up to ~3.6 KB of <span>-wrapped items in one
    request; this reproduces exactly that shape.
    """
    items = [i for i in g.catalog() if i.bucket == "quiz"][:size]
    protected: dict[str, dict[str, str]] = {}
    safe_by_token: dict[str, str] = {}
    spans = []
    for item in items:
        safe, saved = g.protect_pali(item.source)
        protected[item.token] = saved
        safe_by_token[item.token] = safe
        spans.append(f'<span id="{item.token}">{safe}</span>')
    query = "\n".join(spans)
    print(f"batch of {len(items)} items, {len(query)} chars, locale {locale}")

    params = urllib.parse.urlencode({
        "client": "gtx", "sl": "en", "tl": g.GOOGLE_LOCALES[locale],
        "dt": "t", "q": query,
    })
    url = "https://translate.googleapis.com/translate_a/single?" + params
    with urllib.request.urlopen(url, timeout=60) as response:
        payload = json.loads(response.read().decode("utf-8"))
    translated = html.unescape("".join(p[0] for p in payload[0] if p and p[0]))

    found = dict(re.findall(r'<span id="(T\d+)">(.*?)</span>', translated, re.S))
    print(f"spans recovered: {len(found)}/{len(items)}")
    lost = 0
    for item in items:
        raw = found.get(item.token)
        marks = protected[item.token]
        if raw is None:
            print(f"  {item.token}: SPAN MISSING")
            lost += 1
            continue
        bad = [m for m in marks if g._find_marker(raw, m) is None]
        if bad:
            lost += 1
            print(f"  {item.token}: {len(bad)}/{len(marks)} markers lost")
            print(f"      source: {item.source[:100]!r}")
            print(f"      google: {raw[:140]!r}")
    print(f"\nlost {lost}/{len(items)} items in a {size}-item batch")
    return 0


def separator_probe(locale: str, size: int) -> int:
    """Exercise the production separator protocol end to end for one batch."""
    batch = [i for i in g.catalog() if i.bucket == "quiz"][:size]
    payload, separators, protected = g._build_payload(batch)
    print(f"separator protocol, {len(batch)} items, {len(payload)} chars, {locale}")
    try:
        text = g._request(locale, batch)
    except Exception as exc:  # noqa: BLE001
        print(f"  REQUEST FAILED {type(exc).__name__}: {exc}")
        return 1
    chunks = g._split_payload(text, separators)
    if chunks is None:
        print("  SPLIT FAILED: at least one separator did not come back")
        print(f"  raw head: {text[:220]!r}")
        return 1
    print(f"  all {len(separators)} separators recovered")
    bad = 0
    for item, chunk in zip(batch, chunks):
        misses = [m for m in protected[item.token]
                  if g._find_marker(chunk, m) is None]
        if misses:
            bad += 1
            print(f"  {item.token}: {len(misses)} Pali marker(s) lost")
            print(f"      source: {item.source[:90]!r}")
            print(f"      chunk : {chunk[:120]!r}")
    print(f"  strings with a lost Pali marker: {bad}/{len(batch)}")
    # what the final text looks like after restoration
    item, chunk = batch[0], chunks[0]
    for marker, original in protected[item.token].items():
        hit = g._find_marker(chunk, marker)
        if hit:
            chunk = chunk.replace(hit, original)
    print(f"  item 1 restored: {chunk.strip()[:150]!r}")
    return 0


def sweep(locale: str, sizes: list[int]) -> int:
    """Find the largest request for which Google keeps every <span> wrapper."""
    pool = [i for i in g.catalog() if i.bucket == "quiz"]
    print(f"sweep for {locale}: {len(pool)} quiz items available")
    for size in sizes:
        items = pool[:size]
        protected, spans = {}, []
        for item in items:
            safe, saved = g.protect_pali(item.source)
            protected[item.token] = saved
            spans.append(f'<span id="{item.token}">{safe}</span>')
        query = "\n".join(spans)
        params = urllib.parse.urlencode({
            "client": "gtx", "sl": "en", "tl": g.GOOGLE_LOCALES[locale],
            "dt": "t", "q": query,
        })
        try:
            with urllib.request.urlopen(
                    "https://translate.googleapis.com/translate_a/single?" + params,
                    timeout=60) as response:
                payload = json.loads(response.read().decode("utf-8"))
            text = html.unescape("".join(p[0] for p in payload[0] if p and p[0]))
        except Exception as exc:  # noqa: BLE001
            print(f"  size {size:2d}: REQUEST FAILED {type(exc).__name__}")
            continue
        found = dict(re.findall(r'<span id="(T\d+)">(.*?)</span>', text, re.S))
        bad = sum(1 for i in items
                  if i.token in found
                  and any(g._find_marker(found[i.token], m) is None
                          for m in protected[i.token]))
        verdict = "OK" if len(found) == size and not bad else "SPANS DROPPED"
        print(f"  size {size:2d}: spans {len(found):2d}/{size:2d}, "
              f"markers lost in {bad}, {len(query):5d} chars  -> {verdict}")
        time.sleep(1.0)
    return 0


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--token", action="append", help="catalog token, repeatable")
    ap.add_argument("--locale", action="append", help="locale, repeatable")
    ap.add_argument("--batch", type=int, default=0,
                    help="instead of single strings, send a real N-item batch")
    ap.add_argument("--separators", type=int, default=0,
                    help="exercise the production separator protocol")
    ap.add_argument("--sweep", action="store_true",
                    help="find the largest request size that keeps every span")
    args = ap.parse_args()

    tokens = args.token or DEFAULT_TOKENS
    locales = args.locale or ["hi"]
    by_token = {i.token: i for i in g.catalog()}

    if args.separators:
        for locale in locales:
            separator_probe(locale, args.separators)
            print()
        return 0

    if args.sweep:
        for locale in locales:
            sweep(locale, [2, 3, 4, 5, 6, 8, 10, 15])
            print()
        return 0

    if args.batch:
        for locale in locales:
            batch_probe(locale, args.batch)
            print()
        return 0

    for token in tokens:
        item = by_token.get(token)
        if item is None:
            print(f"{token}: not in catalog")
            continue
        safe, saved = g.protect_pali(item.source)
        print(f"\n=== {token}  [{item.bucket}/{item.key}] ===")
        print(f"  source    : {item.source!r}")
        print(f"  protected : {safe!r}")
        print(f"  markers   : {list(saved)}")
        for locale in locales:
            try:
                out = raw_translate(locale, safe)
            except Exception as exc:  # noqa: BLE001
                print(f"  {locale:4s}     : REQUEST FAILED {type(exc).__name__}: {exc}")
                continue
            print(f"  {locale:4s} -> raw: {out!r}")
            for marker, original in saved.items():
                hit = g._find_marker(out, marker)
                state = "recovered" if hit else "LOST"
                print(f"  {locale:4s}    {marker} ({original!r}): {state}"
                      + (f" via {hit!r}" if hit else ""))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
