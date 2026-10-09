"""Regression tests for targeted translation-sidecar regeneration.

Run with: python3 -m unittest tools.test_generate_locale_sidecars
"""
from __future__ import annotations

import contextlib
import io
import shutil
import sys
import tempfile
import unittest
from pathlib import Path
from unittest import mock

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "tools"))
import generate_locale_sidecars as sidecars  # noqa: E402


class TargetedGapsOnlyTests(unittest.TestCase):
    def test_single_locale_run_preserves_other_locales(self) -> None:
        original_loc = sidecars.LOC
        with tempfile.TemporaryDirectory(prefix="palineti-l10n-test-") as temp:
            temp_loc = Path(temp) / "localization"
            shutil.copytree(original_loc, temp_loc)
            sidecars.LOC = temp_loc
            try:
                items = sidecars.catalog()
                before = list(sidecars.translation_quality_pairs())
                other_before = {
                    (bucket, key, field, locale): value
                    for bucket, key, field, _english, locale, value in before
                    if locale != "my"
                }
                self.assertIn(
                    ("pos", "tinh_tu", "value", "si"), other_before,
                    "outer string maps should expose decoded text, not Dart quotes",
                )
                self.assertEqual(other_before[("pos", "tinh_tu", "value", "si")], "නාම විශේෂණය")

                calls: list[tuple[str, int]] = []

                def fake_translations(gaps, locale: str) -> dict[str, str]:
                    calls.append((locale, len(gaps)))
                    return {
                        item.token: item.source + " [fixture translation]"
                        for item in gaps
                    }

                with mock.patch.object(sidecars, "translations", side_effect=fake_translations):
                    with contextlib.redirect_stdout(io.StringIO()):
                        sidecars.translate_gaps(items, ("my",))
                        sidecars.validate(items)

                self.assertEqual([locale for locale, _ in calls], ["my"])
                after = list(sidecars.translation_quality_pairs())
                other_after = {
                    (bucket, key, field, locale): value
                    for bucket, key, field, _english, locale, value in after
                    if locale != "my"
                }
                self.assertEqual(other_before, other_after)
            finally:
                sidecars.LOC = original_loc


if __name__ == "__main__":
    unittest.main()
