#!/usr/bin/env python3
"""
Count C/C++, standalone assembly, and inline-assembly LOC from build logs.

Expected log formats
--------------------
Compilation-input log:
    [Compiler Generated] ../crypto/foo.c
    [Developer/Tool Generated] crypto/aes/aes-x86_64.s

Inline-assembly log:
    [inline-asm] ../crypto/foo.c:123

Counting rules
--------------
1. Duplicate file records are counted once after canonical path normalization.
2. Duplicate inline-assembly records are counted once per (canonical file, line).
3. cloc counts C/C++ and standalone assembly physical SLOC.
4. Adjusted C/C++ LOC is:

       raw C/C++ cloc LOC
       - unique inline-assembly locations inside the C/C++ cloc input set

   Inline assembly logged in headers or other files outside the C/C++ cloc
   input set is reported separately and is not subtracted, because cloc did
   not include those files in the raw C/C++ total.
"""

from __future__ import annotations

import argparse
import csv
import json
import re
import shutil
import subprocess
import sys
from collections import Counter, defaultdict
from dataclasses import asdict, dataclass
from pathlib import Path
from typing import Iterable, Sequence

SCRIPT_VERSION = "2026-08-03-v3"


C_CPP_SUFFIXES = {
    ".c", ".cc", ".cp", ".cpp", ".cxx", ".c++", ".C",
}
ASM_SUFFIXES = {
    ".s", ".S", ".asm",
}

COMPILED_SOURCE_LABELS = {
    "Compiler Generated",
}
STANDALONE_ASM_LABELS = {
    "Developer/Tool Generated",
}

TAGGED_PATH_RE = re.compile(r"^\[([^\]]+)\]\s+(.+?)\s*$")
INLINE_RE = re.compile(r"^\[inline-asm\]\s+(.+):(\d+)\s*$")


class LocStatsError(RuntimeError):
    """Raised for invalid input or a failed external command."""


@dataclass(frozen=True)
class LoggedPath:
    raw_path: str
    canonical_path: str
    label: str


@dataclass(frozen=True)
class InlineLocation:
    raw_path: str
    canonical_path: str
    line: int


@dataclass
class ClocFileRow:
    language: str
    filename: str
    canonical_path: str
    blank: int
    comment: int
    code: int


@dataclass
class ClocResult:
    files: int
    blank: int
    comment: int
    code: int
    by_language: dict[str, dict[str, int]]
    rows: list[ClocFileRow]


def eprint(*args: object) -> None:
    print(*args, file=sys.stderr)


def canonicalize(raw_path: str, base_dir: Path) -> Path:
    path = Path(raw_path)
    if not path.is_absolute():
        path = base_dir / path
    return path.expanduser().resolve(strict=False)


def suffix_is_c_cpp(path: Path) -> bool:
    return path.suffix in C_CPP_SUFFIXES


def suffix_is_asm(path: Path) -> bool:
    return path.suffix in ASM_SUFFIXES


def parse_compilation_log(
    log_path: Path,
    base_dir: Path,
) -> tuple[dict[str, LoggedPath], dict[str, LoggedPath], list[str], Counter]:
    """
    Return:
      compiled_sources, standalone_asm, ignored_lines, label_counts
    keyed by canonical path.
    """
    compiled_sources: dict[str, LoggedPath] = {}
    standalone_asm: dict[str, LoggedPath] = {}
    ignored_lines: list[str] = []
    label_counts: Counter = Counter()

    with log_path.open("r", encoding="utf-8", errors="replace") as stream:
        for line_number, raw_line in enumerate(stream, start=1):
            line = raw_line.rstrip("\n")
            if not line.strip():
                continue

            match = TAGGED_PATH_RE.match(line)
            if not match:
                ignored_lines.append(f"{line_number}: {line}")
                continue

            label, raw_path = match.groups()
            label_counts[label] += 1
            canonical = canonicalize(raw_path, base_dir)
            record = LoggedPath(
                raw_path=raw_path,
                canonical_path=str(canonical),
                label=label,
            )

            # Prefer the explicit log tags. Suffix fallback makes the parser
            # usable if the producer adds another tag while retaining paths.
            if label in COMPILED_SOURCE_LABELS:
                if suffix_is_c_cpp(canonical):
                    compiled_sources.setdefault(str(canonical), record)
                elif suffix_is_asm(canonical):
                    standalone_asm.setdefault(str(canonical), record)
                else:
                    ignored_lines.append(
                        f"{line_number}: unsupported compiled-source suffix: {line}"
                    )
            elif label in STANDALONE_ASM_LABELS:
                if suffix_is_asm(canonical):
                    standalone_asm.setdefault(str(canonical), record)
                elif suffix_is_c_cpp(canonical):
                    compiled_sources.setdefault(str(canonical), record)
                else:
                    ignored_lines.append(
                        f"{line_number}: unsupported standalone-asm suffix: {line}"
                    )
            else:
                if suffix_is_c_cpp(canonical):
                    compiled_sources.setdefault(str(canonical), record)
                elif suffix_is_asm(canonical):
                    standalone_asm.setdefault(str(canonical), record)
                else:
                    ignored_lines.append(
                        f"{line_number}: unknown tag/suffix combination: {line}"
                    )

    return compiled_sources, standalone_asm, ignored_lines, label_counts


def parse_inline_log(
    log_path: Path,
    base_dir: Path,
) -> tuple[dict[tuple[str, int], InlineLocation], list[str], int]:
    """
    Return unique inline locations keyed by (canonical path, line),
    malformed lines, and total parsed records before de-duplication.
    """
    locations: dict[tuple[str, int], InlineLocation] = {}
    malformed: list[str] = []
    parsed_records = 0

    with log_path.open("r", encoding="utf-8", errors="replace") as stream:
        for log_line_number, raw_line in enumerate(stream, start=1):
            line = raw_line.rstrip("\n")
            if not line.strip():
                continue

            match = INLINE_RE.match(line)
            if not match:
                malformed.append(f"{log_line_number}: {line}")
                continue

            raw_path, source_line_text = match.groups()
            source_line = int(source_line_text)
            if source_line <= 0:
                malformed.append(
                    f"{log_line_number}: source line must be positive: {line}"
                )
                continue

            parsed_records += 1
            canonical = canonicalize(raw_path, base_dir)
            key = (str(canonical), source_line)
            locations.setdefault(
                key,
                InlineLocation(
                    raw_path=raw_path,
                    canonical_path=str(canonical),
                    line=source_line,
                ),
            )

    return locations, malformed, parsed_records


def validate_files(
    compiled_sources: dict[str, LoggedPath],
    standalone_asm: dict[str, LoggedPath],
    inline_locations: dict[tuple[str, int], InlineLocation],
) -> tuple[list[str], list[str], dict[tuple[str, int], str]]:
    missing: list[str] = []
    invalid_inline: list[str] = []
    inline_text: dict[tuple[str, int], str] = {}

    all_paths = set(compiled_sources) | set(standalone_asm)
    all_paths |= {path for path, _ in inline_locations}

    line_cache: dict[str, list[str]] = {}

    for filename in sorted(all_paths):
        path = Path(filename)
        if not path.is_file():
            missing.append(filename)
            continue

        if any(key[0] == filename for key in inline_locations):
            try:
                line_cache[filename] = path.read_text(
                    encoding="utf-8", errors="replace"
                ).splitlines()
            except OSError as exc:
                invalid_inline.append(f"{filename}: cannot read file: {exc}")

    for key, location in sorted(inline_locations.items()):
        filename, source_line = key
        if filename not in line_cache:
            continue

        lines = line_cache[filename]
        if source_line > len(lines):
            invalid_inline.append(
                f"{filename}:{source_line}: line exceeds file length {len(lines)}"
            )
            continue

        text = lines[source_line - 1]
        if not text.strip():
            invalid_inline.append(
                f"{filename}:{source_line}: logged inline-asm line is blank"
            )
            continue
        inline_text[key] = text

    return missing, invalid_inline, inline_text


def write_manifest(paths: Iterable[str], destination: Path) -> None:
    destination.parent.mkdir(parents=True, exist_ok=True)
    with destination.open("w", encoding="utf-8", newline="\n") as stream:
        for filename in sorted(set(paths)):
            stream.write(filename)
            stream.write("\n")


def run_command(command: Sequence[str]) -> subprocess.CompletedProcess[str]:
    try:
        return subprocess.run(
            list(command),
            check=True,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
        )
    except FileNotFoundError as exc:
        raise LocStatsError(f"command not found: {command[0]}") from exc
    except subprocess.CalledProcessError as exc:
        rendered = " ".join(command)
        raise LocStatsError(
            f"command failed ({exc.returncode}): {rendered}\n"
            f"stdout:\n{exc.stdout}\n"
            f"stderr:\n{exc.stderr}"
        ) from exc


def normalize_cloc_header(cell: str) -> str:
    """Normalize cloc column names across versions and output styles."""
    return re.sub(r"[^a-z0-9]+", "", cell.strip().lower())


def infer_cloc_language(filename: str) -> str:
    """Infer a cloc-like language name when older CSV lacks a language column."""
    suffix = Path(filename).suffix
    if suffix == ".c":
        return "C"
    if suffix in {".cc", ".cp", ".cpp", ".cxx", ".c++", ".C"}:
        return "C++"
    if suffix in ASM_SUFFIXES:
        return "Assembly"
    return "Unknown"


def detect_cloc_delimiter(text: str) -> str:
    """Detect cloc's CSV delimiter, including user-configured alternatives."""
    candidate_lines = [line for line in text.splitlines() if line.strip()]
    sample = "\n".join(candidate_lines[:30])
    if not sample:
        return ","

    # Prefer a delimiter that produces a recognizable cloc header.
    for delimiter in (",", ";", "\t", "|"):
        try:
            rows = list(csv.reader(sample.splitlines(), delimiter=delimiter))
        except csv.Error:
            continue
        for row in rows:
            headers = {normalize_cloc_header(cell) for cell in row}
            has_counts = {"blank", "comment", "code"}.issubset(headers)
            has_identity = bool(
                headers
                & {"filename", "file", "path", "language", "lang", "files"}
            )
            if has_counts and has_identity:
                return delimiter

    try:
        dialect = csv.Sniffer().sniff(sample, delimiters=",;\t|")
        return dialect.delimiter
    except csv.Error:
        return ","


def parse_cloc_csv(csv_path: Path, base_dir: Path) -> ClocResult:
    """
    Parse cloc CSV across old and new releases.

    Supported per-file headers include, for example:
      language,filename,blank,comment,code
      File,blank,comment,code
      filename,blank,comment,code

    If a cloc release emits only a by-language summary despite --by-file,
    totals are still accepted. In that case rows is empty and per-language
    inline subtraction is inferred from source-file suffixes later.
    """
    try:
        text = csv_path.read_text(encoding="utf-8-sig", errors="replace")
    except OSError as exc:
        raise LocStatsError(f"cannot read cloc output {csv_path}: {exc}") from exc

    delimiter = detect_cloc_delimiter(text)
    parsed_rows = list(csv.reader(text.splitlines(), delimiter=delimiter))

    rows: list[ClocFileRow] = []
    summary_by_language: dict[str, dict[str, int]] = {}
    per_file_header: list[str] | None = None
    summary_header: list[str] | None = None

    filename_aliases = {"filename", "file", "path", "sourcefile"}
    language_aliases = {"language", "lang"}
    files_aliases = {"files", "nfiles", "filecount", "filescount"}

    for raw_row in parsed_rows:
        if not raw_row or not any(cell.strip() for cell in raw_row):
            continue

        normalized_cells = [cell.strip() for cell in raw_row]
        normalized_header = [normalize_cloc_header(cell) for cell in raw_row]
        header_set = set(normalized_header)

        if {"blank", "comment", "code"}.issubset(header_set):
            has_filename = bool(header_set & filename_aliases)
            has_language = bool(header_set & language_aliases)
            has_files = bool(header_set & files_aliases)

            if has_filename:
                per_file_header = normalized_header
                summary_header = None
                continue
            if has_language and has_files:
                summary_header = normalized_header
                per_file_header = None
                continue

        active_header = per_file_header or summary_header
        if active_header is None:
            continue
        # cloc appends a report-metadata column to the CSV header in some
        # versions, while ordinary data rows omit that final column. zip()
        # intentionally accepts the shorter data rows.
        row_map = dict(zip(active_header, normalized_cells))

        def get_alias(aliases: set[str], default: str = "") -> str:
            for alias in aliases:
                if alias in row_map:
                    return row_map[alias].strip()
            return default

        try:
            blank = int(float(row_map["blank"]))
            comment = int(float(row_map["comment"]))
            code = int(float(row_map["code"]))
        except (KeyError, ValueError):
            # Metadata and malformed trailing lines are not source records.
            continue

        if per_file_header is not None:
            filename = get_alias(filename_aliases)
            language = get_alias(language_aliases)
            if not filename or filename.upper() == "SUM":
                continue
            if not language:
                language = infer_cloc_language(filename)

            canonical = canonicalize(filename, base_dir)
            rows.append(
                ClocFileRow(
                    language=language,
                    filename=filename,
                    canonical_path=str(canonical),
                    blank=blank,
                    comment=comment,
                    code=code,
                )
            )
            continue

        language = get_alias(language_aliases)
        if not language or language.upper() == "SUM":
            continue
        try:
            files = int(float(get_alias(files_aliases, "0")))
        except ValueError:
            files = 0
        summary_by_language[language] = {
            "files": files,
            "blank": blank,
            "comment": comment,
            "code": code,
        }

    if rows:
        per_language: dict[str, dict[str, int]] = defaultdict(
            lambda: {"files": 0, "blank": 0, "comment": 0, "code": 0}
        )
        for row in rows:
            bucket = per_language[row.language]
            bucket["files"] += 1
            bucket["blank"] += row.blank
            bucket["comment"] += row.comment
            bucket["code"] += row.code

        return ClocResult(
            files=len(rows),
            blank=sum(row.blank for row in rows),
            comment=sum(row.comment for row in rows),
            code=sum(row.code for row in rows),
            by_language=dict(sorted(per_language.items())),
            rows=rows,
        )

    if summary_by_language:
        return ClocResult(
            files=sum(item["files"] for item in summary_by_language.values()),
            blank=sum(item["blank"] for item in summary_by_language.values()),
            comment=sum(item["comment"] for item in summary_by_language.values()),
            code=sum(item["code"] for item in summary_by_language.values()),
            by_language=dict(sorted(summary_by_language.items())),
            rows=[],
        )

    preview = "\n".join(text.splitlines()[:20])
    raise LocStatsError(
        f"no cloc records could be parsed from: {csv_path}\n"
        f"detected delimiter: {delimiter!r}\n"
        "First 20 lines of cloc output:\n"
        f"{preview or '<empty file>'}\n"
        "Also inspect the matching *_cloc_diagnostics.txt file."
    )


def run_cloc(
    cloc_executable: str,
    paths: Iterable[str],
    name: str,
    output_dir: Path,
    base_dir: Path,
) -> tuple[ClocResult, Path, Path]:
    unique_paths = sorted(set(paths))
    if not unique_paths:
        return (
            ClocResult(
                files=0,
                blank=0,
                comment=0,
                code=0,
                by_language={},
                rows=[],
            ),
            output_dir / f"{name}_manifest.txt",
            output_dir / f"{name}_cloc.csv",
        )

    manifest_path = output_dir / f"{name}_manifest.txt"
    csv_path = output_dir / f"{name}_cloc.csv"
    write_manifest(unique_paths, manifest_path)

    command = [
        cloc_executable,
        "--by-file",
        "--csv",
        "--quiet",
        "--fullpath",
        f"--list-file={manifest_path}",
        f"--out={csv_path}",
    ]
    if csv_path.exists():
        csv_path.unlink()

    completed = run_command(command)

    # Keep diagnostic streams when cloc emits version-specific warnings.
    diagnostics = output_dir / f"{name}_cloc_diagnostics.txt"
    diagnostics.write_text(
        "COMMAND:\n"
        + " ".join(command)
        + "\n\nSTDOUT:\n"
        + completed.stdout
        + "\nSTDERR:\n"
        + completed.stderr,
        encoding="utf-8",
    )

    return parse_cloc_csv(csv_path, base_dir), manifest_path, csv_path


def write_inline_csv(
    destination: Path,
    inline_locations: dict[tuple[str, int], InlineLocation],
    compiled_sources: set[str],
    inline_text: dict[tuple[str, int], str],
) -> None:
    with destination.open("w", encoding="utf-8", newline="") as stream:
        writer = csv.writer(stream)
        writer.writerow(
            [
                "raw_path",
                "canonical_path",
                "line",
                "inside_compiled_source_set",
                "source_text",
            ]
        )
        for key, location in sorted(inline_locations.items()):
            writer.writerow(
                [
                    location.raw_path,
                    location.canonical_path,
                    location.line,
                    location.canonical_path in compiled_sources,
                    inline_text.get(key, ""),
                ]
            )


def write_path_csv(
    destination: Path,
    records: dict[str, LoggedPath],
) -> None:
    with destination.open("w", encoding="utf-8", newline="") as stream:
        writer = csv.writer(stream)
        writer.writerow(["label", "raw_path", "canonical_path"])
        for canonical_path, record in sorted(records.items()):
            writer.writerow([record.label, record.raw_path, canonical_path])


def adjusted_by_language(
    c_cloc: ClocResult,
    inline_in_compiled_sources: set[tuple[str, int]],
) -> dict[str, dict[str, int]]:
    inline_per_file = Counter(path for path, _ in inline_in_compiled_sources)
    result: dict[str, dict[str, int]] = {}

    if c_cloc.rows:
        for row in c_cloc.rows:
            bucket = result.setdefault(
                row.language,
                {
                    "files": 0,
                    "raw_code": 0,
                    "inline_asm_subtracted": 0,
                    "adjusted_code": 0,
                },
            )
            subtract = inline_per_file.get(row.canonical_path, 0)
            bucket["files"] += 1
            bucket["raw_code"] += row.code
            bucket["inline_asm_subtracted"] += subtract
            bucket["adjusted_code"] += row.code - subtract
        return dict(sorted(result.items()))

    # Older cloc versions may provide only by-language totals. Preserve those
    # totals and infer which language receives each inline subtraction from the
    # source-file suffix.
    for language, raw in c_cloc.by_language.items():
        result[language] = {
            "files": raw.get("files", 0),
            "raw_code": raw.get("code", 0),
            "inline_asm_subtracted": 0,
            "adjusted_code": raw.get("code", 0),
        }

    for filename, count in inline_per_file.items():
        language = infer_cloc_language(filename)
        bucket = result.setdefault(
            language,
            {
                "files": 0,
                "raw_code": 0,
                "inline_asm_subtracted": 0,
                "adjusted_code": 0,
            },
        )
        bucket["inline_asm_subtracted"] += count
        bucket["adjusted_code"] -= count

    return dict(sorted(result.items()))


def build_argument_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        description=(
            "Count C/C++, standalone assembly, and inline-assembly LOC "
            "from compilation logs using cloc."
        )
    )
    parser.add_argument(
        "--version",
        action="version",
        version=f"%(prog)s {SCRIPT_VERSION}",
    )
    parser.add_argument(
        "--compile-log",
        required=True,
        type=Path,
        help="log containing compiled C/C++ and standalone assembly paths",
    )
    parser.add_argument(
        "--inline-log",
        required=True,
        type=Path,
        help="log containing [inline-asm] path:line records",
    )
    parser.add_argument(
        "--base-dir",
        required=True,
        type=Path,
        help=(
            "directory against which relative paths in both logs are resolved; "
            "normally the OpenSSL build directory"
        ),
    )
    parser.add_argument(
        "--output-dir",
        type=Path,
        default=Path("loc-report"),
        help="report directory (default: ./loc-report)",
    )
    parser.add_argument(
        "--cloc",
        default="cloc",
        help="cloc executable or absolute path (default: cloc)",
    )
    parser.add_argument(
        "--allow-missing",
        action="store_true",
        help=(
            "continue after excluding missing logged files; without this option "
            "missing files make the run fail"
        ),
    )
    parser.add_argument(
        "--allow-invalid-inline",
        action="store_true",
        help=(
            "continue after excluding inline locations that are blank, unreadable, "
            "or outside the referenced file"
        ),
    )
    return parser


def main() -> int:
    args = build_argument_parser().parse_args()
    # print(f"loc_stats.py version: {SCRIPT_VERSION}", file=sys.stderr)

    compile_log = args.compile_log.expanduser().resolve()
    inline_log = args.inline_log.expanduser().resolve()
    base_dir = args.base_dir.expanduser().resolve()
    output_dir = args.output_dir.expanduser().resolve()

    if not compile_log.is_file():
        raise LocStatsError(f"compile log does not exist: {compile_log}")
    if not inline_log.is_file():
        raise LocStatsError(f"inline log does not exist: {inline_log}")
    if not base_dir.is_dir():
        raise LocStatsError(f"base directory does not exist: {base_dir}")

    cloc_path = shutil.which(args.cloc)
    if cloc_path is None:
        explicit = Path(args.cloc)
        if explicit.is_file():
            cloc_path = str(explicit.resolve())
        else:
            raise LocStatsError(
                f"cloc was not found: {args.cloc}\n"
                "Install it first, for example: sudo apt install cloc"
            )

    output_dir.mkdir(parents=True, exist_ok=True)

    (
        compiled_sources,
        standalone_asm,
        ignored_compile_lines,
        label_counts,
    ) = parse_compilation_log(compile_log, base_dir)

    (
        inline_locations,
        malformed_inline_lines,
        parsed_inline_records,
    ) = parse_inline_log(inline_log, base_dir)

    missing_files, invalid_inline, inline_text = validate_files(
        compiled_sources,
        standalone_asm,
        inline_locations,
    )

    missing_set = set(missing_files)
    if missing_set and not args.allow_missing:
        missing_report = output_dir / "missing_files.txt"
        missing_report.write_text(
            "\n".join(sorted(missing_set)) + "\n",
            encoding="utf-8",
        )
        raise LocStatsError(
            f"{len(missing_set)} logged files are missing. "
            f"See {missing_report}. Check --base-dir, or use --allow-missing "
            "only when omission is intentional."
        )

    if invalid_inline and not args.allow_invalid_inline:
        invalid_report = output_dir / "invalid_inline_locations.txt"
        invalid_report.write_text(
            "\n".join(invalid_inline) + "\n",
            encoding="utf-8",
        )
        raise LocStatsError(
            f"{len(invalid_inline)} inline locations are invalid. "
            f"See {invalid_report}, or use --allow-invalid-inline only when "
            "excluding them is intentional."
        )

    # When missing or invalid records are explicitly allowed, omit them from
    # cloc/inline counts rather than silently subtracting unverifiable lines.
    # inline LOC because their source lines cannot be validated.
    compiled_sources = {
        path: record
        for path, record in compiled_sources.items()
        if path not in missing_set
    }
    standalone_asm = {
        path: record
        for path, record in standalone_asm.items()
        if path not in missing_set
    }
    inline_locations = {
        key: location
        for key, location in inline_locations.items()
        if key[0] not in missing_set and key in inline_text
    }

    compiled_source_set = set(compiled_sources)
    inline_all = set(inline_locations)
    inline_in_compiled_sources = {
        key for key in inline_all if key[0] in compiled_source_set
    }
    inline_outside_compiled_sources = inline_all - inline_in_compiled_sources

    c_cloc, _, _ = run_cloc(
        cloc_path,
        compiled_source_set,
        "compiled_c_cpp",
        output_dir,
        base_dir,
    )
    asm_cloc, _, _ = run_cloc(
        cloc_path,
        set(standalone_asm),
        "standalone_asm",
        output_dir,
        base_dir,
    )

    inline_subtracted = len(inline_in_compiled_sources)
    adjusted_c_cpp = c_cloc.code - inline_subtracted
    if adjusted_c_cpp < 0:
        raise LocStatsError(
            "adjusted C/C++ LOC is negative; inline log and cloc input sets "
            "are inconsistent"
        )

    c_adjusted_language = adjusted_by_language(
        c_cloc,
        inline_in_compiled_sources,
    )

    write_inline_csv(
        output_dir / "inline_locations.csv",
        inline_locations,
        compiled_source_set,
        inline_text,
    )
    write_path_csv(
        output_dir / "compiled_sources.csv",
        compiled_sources,
    )
    write_path_csv(
        output_dir / "standalone_asm_sources.csv",
        standalone_asm,
    )

    warnings: list[str] = []
    warnings.extend(
        f"compile-log ignored: {line}" for line in ignored_compile_lines
    )
    warnings.extend(
        f"inline-log malformed: {line}" for line in malformed_inline_lines
    )
    warnings.extend(f"inline validation: {line}" for line in invalid_inline)
    warnings.extend(f"missing: {line}" for line in sorted(missing_set))
    (output_dir / "warnings.txt").write_text(
        ("\n".join(warnings) + "\n") if warnings else "",
        encoding="utf-8",
    )

    summary = {
        "inputs": {
            "compile_log": str(compile_log),
            "inline_log": str(inline_log),
            "base_dir": str(base_dir),
            "cloc": cloc_path,
        },
        "log_records": {
            "compile_label_counts": dict(sorted(label_counts.items())),
            "unique_compiled_c_cpp_files": len(compiled_sources),
            "unique_standalone_asm_files": len(standalone_asm),
            "inline_records_before_deduplication": parsed_inline_records,
            "unique_inline_locations_all_logged_files": len(inline_all),
            "duplicate_inline_records_removed": (
                parsed_inline_records - len(inline_all)
            ),
        },
        "results": {
            "c_cpp_cloc_raw": {
                "files": c_cloc.files,
                "blank": c_cloc.blank,
                "comment": c_cloc.comment,
                "code": c_cloc.code,
                "by_language": c_cloc.by_language,
            },
            "inline_asm": {
                "all_unique_logged_locations": len(inline_all),
                "inside_c_cpp_cloc_input_set": inline_subtracted,
                "outside_c_cpp_cloc_input_set_not_subtracted": len(
                    inline_outside_compiled_sources
                ),
            },
            "c_cpp_excluding_inline_asm": {
                "formula": (
                    "c_cpp_cloc_raw.code "
                    "- inline_asm.inside_c_cpp_cloc_input_set"
                ),
                "code": adjusted_c_cpp,
                "by_language": c_adjusted_language,
            },
            "standalone_asm_cloc": {
                "files": asm_cloc.files,
                "blank": asm_cloc.blank,
                "comment": asm_cloc.comment,
                "code": asm_cloc.code,
                "by_language": asm_cloc.by_language,
            },
        },
        "quality": {
            "missing_files": len(missing_set),
            "ignored_compile_log_lines": len(ignored_compile_lines),
            "malformed_inline_log_lines": len(malformed_inline_lines),
            "invalid_inline_locations": len(invalid_inline),
            "warnings_file": str(output_dir / "warnings.txt"),
        },
    }

    summary_path = output_dir / "summary.json"
    summary_path.write_text(
        json.dumps(summary, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )

    print("=" * 72)
    print("LOC summary")
    print("=" * 72)
    print(f"Unique compiled C/C++ files       : {len(compiled_sources)}")
    print(f"Unique standalone ASM files       : {len(standalone_asm)}")
    print(f"C/C++ LOC reported by cloc        : {c_cloc.code}")
    print(f"Inline ASM LOC (all unique)       : {len(inline_all)}")
    print(f"Inline ASM LOC subtracted         : {inline_subtracted}")
    print(
        "Inline ASM outside C/C++ set      : "
        f"{len(inline_outside_compiled_sources)}"
    )
    print(f"C/C++ LOC excluding inline ASM    : {adjusted_c_cpp}")
    print(f"Standalone/hand-written ASM LOC   : {asm_cloc.code}")
    print(f"Total LOC                         : {adjusted_c_cpp + len(inline_all) + asm_cloc.code}")
    print(f"ASM LOC compared to total LOC     : {(asm_cloc.code + len(inline_all)) / (adjusted_c_cpp + len(inline_all) + asm_cloc.code) * 100:.2f}%")
    print("-" * 72)
    print(f"Detailed report                   : {summary_path}")
    print(f"Warnings                          : {output_dir / 'warnings.txt'}")

    if inline_outside_compiled_sources:
        print(
            "\nNote: inline ASM locations outside the C/C++ cloc input set "
            "are included in the all-unique inline ASM figure, but are not "
            "subtracted from C/C++ LOC."
        )

    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except LocStatsError as exc:
        eprint(f"error: {exc}")
        raise SystemExit(2)
