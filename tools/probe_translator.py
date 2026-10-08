"""Probe the Google Translate endpoint the sidecar generator depends on.

The generator talks to the unauthenticated public endpoint
(https://translate.googleapis.com/translate_a/single).  That endpoint is
unrated and applies per-IP limits, and CI runners share their egress IPs with
everyone else, so a run can fail on rate limiting rather than on anything
wrong with the repository.

This probe answers, in a few seconds and without touching any data file:

  * is the endpoint reachable at all from this machine?
  * does it answer 200 for each target locale, or does it refuse?
  * does it preserve an opaque marker such as PALI0000X, which is the
    mechanism protect_pali() relies on to keep Pali terms intact?

Exit status is 0 when every locale answers and markers survive, 1 otherwise,
so it can gate a longer run.

Usage:  python3 tools/probe_translator.py
"""

from __future__ import annotations

import html
import json
import sys
import urllib.parse
import urllib.request

GOOGLE_LOCALES = {"si": "si", "zh": "zh-CN", "my": "my", "hi": "hi"}
ENDPOINT = "https://translate.googleapis.com/translate_a/single"

# A real-ish learning-content sentence carrying a protected marker, matching
# what translate_batch() actually sends.
SAMPLE = (
    '<span id="T00001">The monk protects the PALI0000X Teaching.</span>\n'
    '<span id="T00002">He speaks with the PALI0001X sage.</span>'
)


def fetch(locale_code: str, query: str) -> tuple[int, str]:
    params = urllib.parse.urlencode(
        {"client": "gtx", "sl": "en", "tl": locale_code, "dt": "t", "q": query}
    )
    url = f"{ENDPOINT}?{params}"
    try:
        with urllib.request.urlopen(url, timeout=30) as response:
            return response.status, response.read().decode("utf-8")
    except urllib.error.HTTPError as exc:  # type: ignore[attr-defined]
        return exc.code, exc.read().decode("utf-8", "replace")[:200]
    except Exception as exc:  # noqa: BLE001 - probe reports whatever happens
        return 0, f"{type(exc).__name__}: {exc}"


def main() -> int:
    failures = 0
    for locale, code in GOOGLE_LOCALES.items():
        status, body = fetch(code, SAMPLE)
        if status != 200:
            print(f"  {locale} ({code}): HTTP {status}")
            print(f"      {body[:160]}")
            failures += 1
            continue
        try:
            payload = json.loads(body)
            text = "".join(p[0] for p in payload[0] if p and p[0])
            text = html.unescape(text)
        except Exception as exc:  # noqa: BLE001
            print(f"  {locale} ({code}): could not parse response: {exc}")
            failures += 1
            continue
        kept = all(m in text for m in ("T00001", "T00002", "PALI0000X", "PALI0001X"))
        print(f"  {locale} ({code}): HTTP 200, markers kept = {kept}")
        print(f"      {text[:120]}")
        if not kept:
            print("      WARNING: Google altered the span ids or the Pali markers;")
            print("      protect_pali() recovery would fail for this locale.")
            failures += 1

    if failures:
        print(f"\nprobe FAILED for {failures} locale(s)")
        return 1
    print("\nprobe OK for all locales")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
