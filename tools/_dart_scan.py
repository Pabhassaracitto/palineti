"""Minimal Dart-literal scanner shared by the audit tools.

Only the subset of Dart actually used by lib/data is supported: comments,
single/double/triple-quoted strings and balanced (), [] and {} groups.
"""
from __future__ import annotations

ESCAPES = {"n": "\n", "r": "\r", "t": "\t", "b": "\b", "f": "\f",
           "v": "\v", "\\": "\\", "'": "'", '"': '"', "$": "$"}


class DartScanError(Exception):
    pass


def scan_string(text: str, start: int) -> int:
    """Return the index immediately after the string literal at `start`."""
    if start + 2 < len(text) and text[start] in "'\"" and text[start] == text[start + 1] == text[start + 2]:
        quote = text[start:start + 3]
        i = start + 3
        while i < len(text):
            if text[i] == "\\":
                i += 2
                continue
            if text.startswith(quote, i):
                return i + 3
            i += 1
        raise DartScanError("unterminated triple-quoted string")
    quote = text[start]
    if quote not in "'\"":
        raise DartScanError(f"expected quote at {start}")
    i = start + 1
    while i < len(text):
        if text[i] == "\\":
            i += 2
        elif text[i] == quote:
            return i + 1
        elif text[i] == "\n":
            raise DartScanError("unterminated string literal")
        else:
            i += 1
    raise DartScanError("unterminated string literal")


def scan_balanced(text: str, start: int, opener: str = "{", closer: str = "}") -> int:
    if text[start] != opener:
        raise DartScanError(f"expected {opener!r} at {start}")
    depth, i = 1, start + 1
    n = len(text)
    while i < n:
        ch = text[i]
        if ch in "'\"":
            i = scan_string(text, i)
            continue
        if text.startswith("//", i):
            nl = text.find("\n", i + 2)
            i = n if nl == -1 else nl + 1
            continue
        if text.startswith("/*", i):
            end = text.find("*/", i + 2)
            if end == -1:
                raise DartScanError("unterminated block comment")
            i = end + 2
            continue
        if ch == opener:
            depth += 1
        elif ch == closer:
            depth -= 1
            if depth == 0:
                return i + 1
        i += 1
    raise DartScanError(f"unterminated {opener}{closer}")


def dart_decode(literal: str) -> str:
    assert literal[0] in "'\"" and literal[-1] == literal[0]
    if len(literal) >= 6 and literal[:3] == literal[-3:] and literal[0] in "'\"":
        body = literal[3:-3]
    else:
        body = literal[1:-1]
    out, i = [], 0
    while i < len(body):
        if body[i] != "\\":
            out.append(body[i])
            i += 1
            continue
        if i + 1 >= len(body):
            raise DartScanError("trailing backslash")
        esc = body[i + 1]
        if esc == "u":
            out.append(chr(int(body[i + 2:i + 6], 16)))
            i += 6
        else:
            out.append(ESCAPES.get(esc, esc))
            i += 2
    return "".join(out)


def strip_comments(text: str) -> str:
    """Blank out comments but keep length, so offsets stay valid."""
    out = list(text)
    i, n = 0, len(text)
    while i < n:
        if text[i] in "'\"":
            j = scan_string(text, i)
            i = j
            continue
        if text.startswith("//", i):
            nl = text.find("\n", i)
            end = n if nl == -1 else nl
            for k in range(i, end):
                out[k] = " "
            i = end
            continue
        if text.startswith("/*", i):
            end = text.find("*/", i + 2)
            end = n if end == -1 else end + 2
            for k in range(i, end):
                if out[k] != "\n":
                    out[k] = " "
            i = end
            continue
        i += 1
    return "".join(out)


def find_calls(text: str, name: str):
    """Yield (start_of_args, end_of_args) for every `Name(` call."""
    results = []
    i = 0
    while True:
        idx = text.find(name + "(", i)
        if idx == -1:
            return results
        paren = idx + len(name)
        try:
            end = scan_balanced(text, paren, "(", ")")
        except DartScanError:
            return results
        results.append((paren, end))
        i = end


def field_strings(body: str, skip_nested_calls: bool = True):
    """Extract `label: <string>` pairs from one constructor body.

    Nested constructor calls are skipped so that e.g. a `MixedSegment`
    inside a `LessonPhase` body is not mistaken for a field of the phase.
    Returns a list of (label, decoded value).
    """
    found = []
    i, n = 0, len(body)
    while i < n:
        ch = body[i]
        if ch in "'\"":
            i = scan_string(body, i)
            continue
        if ch in "([{":
            closer = {"(": ")", "[": "]", "{": "}"}[ch]
            i = scan_balanced(body, i, ch, closer)
            continue
        if ch.isalpha() or ch == "_":
            j = i
            while j < n and (body[j].isalnum() or body[j] == "_"):
                j += 1
            label = body[i:j]
            k = j
            while k < n and body[k].isspace():
                k += 1
            if k < n and body[k] == ":" and not body.startswith("::", k):
                k += 1
                while k < n and body[k].isspace():
                    k += 1
                if k < n and body[k] in "'\"":
                    end = scan_string(body, k)
                    found.append((label, dart_decode(body[k:end])))
                    i = end
                    continue
            i = j
            continue
        i += 1
    return found
