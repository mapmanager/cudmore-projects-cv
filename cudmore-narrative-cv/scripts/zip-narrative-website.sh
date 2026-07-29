#!/usr/bin/env bash
#
# Purpose:
#   Create a dated, incrementally versioned ZIP of the project's Markdown
#   source files for use as a portable ChatGPT source of truth.
#
# Inputs and assumptions:
#   Run from any directory. The project root is the parent of this script's
#   directory. Existing ZIP names in zips/ determine the next version number.
#
# Output:
#   zips/narrative-website-YYYYMMDD-vN.zip, with Markdown files stored beneath
#   the top-level narrative-website-cv/ directory.
#
# Exclusions:
#   Excludes zips/, .git/, and from-chat-gpt/. It includes only Markdown files,
#   so it does not package this script, DOCX files, or other non-Markdown files.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
ZIPS_DIR="$PROJECT_ROOT/zips"
PREFIX="narrative-website"
FOLDER_NAME="narrative-website-cv"
DATE="$(date +%Y%m%d)"

mkdir -p "$ZIPS_DIR"

max_version=0
shopt -s nullglob
for zip_file in "$ZIPS_DIR/${PREFIX}-${DATE}-v"*.zip; do
  base="$(basename "$zip_file" .zip)"
  if [[ "$base" =~ -v([0-9]+)$ ]]; then
    version="${BASH_REMATCH[1]}"
    if (( version > max_version )); then
      max_version=$version
    fi
  fi
done
shopt -u nullglob

next_version=$((max_version + 1))
output="$ZIPS_DIR/${PREFIX}-${DATE}-v${next_version}.zip"

md_files=()
while IFS= read -r file; do
  md_files+=("$file")
done < <(
  find "$PROJECT_ROOT" -name '*.md' \
    -not -path "$ZIPS_DIR/*" \
    -not -path "$PROJECT_ROOT/.git/*" \
    -not -path "$PROJECT_ROOT/from-chat-gpt/*" \
    | sort
)

if (( ${#md_files[@]} == 0 )); then
  echo "No .md files found under $PROJECT_ROOT" >&2
  exit 1
fi

tmpdir="$(mktemp -d)"
cleanup() {
  rm -rf "$tmpdir"
}
trap cleanup EXIT

for file in "${md_files[@]}"; do
  rel="${file#"$PROJECT_ROOT"/}"
  dest="$tmpdir/$FOLDER_NAME/$rel"
  mkdir -p "$(dirname "$dest")"
  ln "$file" "$dest"
done

(
  cd "$tmpdir"
  zip -r "$output" "$FOLDER_NAME"
)

echo "Created $output (${#md_files[@]} file(s))"
