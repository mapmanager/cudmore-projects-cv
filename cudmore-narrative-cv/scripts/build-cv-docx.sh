#!/usr/bin/env bash
#
# Purpose:
#   Convert an audience-specific Markdown CV to a Word document with Pandoc.
#
# Inputs and assumptions:
#   Accepts one positional argument identifying a folder that contains cv.md.
#   Relative paths are resolved from the project root. Pandoc must be installed,
#   and word-docs/my_template.docx must exist at the project root.
#
# Output:
#   Creates or replaces <source-folder>/output_word/cv.docx.
#
# Exclusions:
#   Does not modify the source Markdown, build a cover letter, or change the
#   reference Word template.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

usage() {
  echo "Usage: $(basename "$0") <source-cv-folder>" >&2
  echo "Example: $(basename "$0") outputs/imaging-core" >&2
}

if (( $# != 1 )); then
  usage
  exit 2
fi

source_folder="$1"
if [[ "$source_folder" != /* ]]; then
  source_folder="$PROJECT_ROOT/$source_folder"
fi

source_cv="$source_folder/cv.md"
# reference_doc="$PROJECT_ROOT/word-docs/my_template.docx"
reference_doc="$PROJECT_ROOT/libreoffice/cudmore-cv-skeleton.docx"
output_dir="$source_folder/output_word"
output_doc="$output_dir/cv.docx"

if ! command -v pandoc >/dev/null 2>&1; then
  echo "Error: pandoc is not installed or is not available on PATH." >&2
  exit 1
fi

if [[ ! -d "$source_folder" ]]; then
  echo "Error: source folder does not exist: $source_folder" >&2
  exit 1
fi

if [[ ! -f "$source_cv" ]]; then
  echo "Error: source CV does not exist: $source_cv" >&2
  exit 1
fi

if [[ ! -f "$reference_doc" ]]; then
  echo "Error: reference Word document does not exist: $reference_doc" >&2
  exit 1
fi

mkdir -p "$output_dir"

pandoc "$source_cv" \
  --output "$output_doc" \
  --reference-doc "$reference_doc"

echo "Created $output_doc"
