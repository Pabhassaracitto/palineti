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


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--token", action="append", help="catalog token, repeatable")
    ap.add_argument("--locale", action="append", help="locale, repeatable")
    args = ap.parse_args()

    tokens = args.token or DEFAULT_TOKENS
    locales = args.locale or ["hi"]
    by_token = {i.token: i for i in g.catalog()}

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
