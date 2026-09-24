#!/usr/bin/env bash
#
# Purpose:
#   Convert the shared Research Software Platforms Markdown section to a Word
#   document with Pandoc.
#
# Inputs and assumptions:
#   Uses shared-cv-sections/research-software-platforms.md as the fixed input.
#   Pandoc must be installed, and libreoffice/cudmore-cv-skeleton.docx must
#   exist at the project root.
#
# Output:
#   Creates or replaces
#   shared-cv-sections/research-software-platforms.docx.
#
# Exclusions:
#   Does not modify the source Markdown, process an audience-specific CV or
#   cover letter, or change the reference Word document.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

source_md="$PROJECT_ROOT/shared-cv-sections/research-software-platforms.md"
reference_doc="$PROJECT_ROOT/libreoffice/cudmore-cv-skeleton.docx"
output_doc="$PROJECT_ROOT/shared-cv-sections/research-software-platforms.docx"

if ! command -v pandoc >/dev/null 2>&1; then
  echo "Error: pandoc is not installed or is not available on PATH." >&2
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

pandoc "$source_md" \
  --output "$output_doc" \
  --reference-doc "$reference_doc"

echo "Created $output_doc"
