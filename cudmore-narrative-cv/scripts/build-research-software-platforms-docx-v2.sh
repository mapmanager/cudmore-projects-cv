#!/usr/bin/env bash
#
# Purpose:
#   Convert an audience-specific Research Software Platforms Markdown section
#   to a Word document with Pandoc.
#
# Inputs and assumptions:
#   Accepts one positional argument identifying a folder that contains
#   research-software-platforms.md. Relative paths are resolved from the
#   project root. Pandoc must be installed, and
#   libreoffice/cudmore-cv-skeleton.docx must exist at the project root.
#
# Output:
#   Creates or replaces
#   <source-folder>/output_word/research-software-platforms.docx.
#
# Exclusions:
#   Does not modify the source Markdown, process the shared platform section,
#   build a CV or cover letter, or change the reference Word document.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

usage() {
  echo "Usage: $(basename "$0") <source-platform-folder>" >&2
  echo "Example: $(basename "$0") outputs/research-software-engineer" >&2
}

if (( $# != 1 )); then
  usage
  exit 2
fi

source_folder="$1"
if [[ "$source_folder" != /* ]]; then
  source_folder="$PROJECT_ROOT/$source_folder"
fi

source_md="$source_folder/research-software-platforms.md"
reference_doc="$PROJECT_ROOT/libreoffice/cudmore-cv-skeleton.docx"
output_dir="$source_folder/output_word"
output_doc="$output_dir/research-software-platforms.docx"

if ! command -v pandoc >/dev/null 2>&1; then
  echo "Error: pandoc is not installed or is not available on PATH." >&2
  exit 1
fi

if [[ ! -d "$source_folder" ]]; then
  echo "Error: source folder does not exist: $source_folder" >&2
  exit 1
fi

if [[ ! -f "$source_md" ]]; then
  echo "Error: source Markdown does not exist: $source_md" >&2
  exit 1
fi

if [[ ! -f "$reference_doc" ]]; then
  echo "Error: reference Word document does not exist: $reference_doc" >&2
  exit 1
fi

mkdir -p "$output_dir"

pandoc "$source_md" \
  --output "$output_doc" \
  --reference-doc "$reference_doc"

echo "Created $output_doc"
