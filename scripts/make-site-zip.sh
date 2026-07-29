#!/usr/bin/env bash
#
# Purpose:
#   Create a dated, incrementally versioned ZIP of this repo's source material
#   (MkDocs site sources, config, narrative CV sources, and deploy workflow).
#
# Inputs and assumptions:
#   Run from any directory. The project root is the parent of this script's
#   directory. Existing ZIP names in zips/ for today's date determine the next
#   version number.
#
# Output:
#   zips/cudmore-projects-cv-YYYYMMDD_vN.zip, with files stored beneath the
#   top-level cudmore-projects-cv/ directory.
#
# Exclusions (aligned with root .gitignore plus VCS/build artifacts):
#   zips/, *.zip, site/, build/, dist/, .venv/, .git/, IDE/OS junk,
#   cudmore-narrative-cv/from-chat-gpt/, cudmore-narrative-cv/zips/,
#   cudmore-narrative-cv/*.zip, __backup_*/, __pycache__/, egg-info, etc.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
ZIPS_DIR="$PROJECT_ROOT/zips"
PREFIX="cudmore-projects-cv"
FOLDER_NAME="cudmore-projects-cv"
DATE="$(date +%Y%m%d)"

mkdir -p "$ZIPS_DIR"

max_version=0
shopt -s nullglob
for zip_file in "$ZIPS_DIR/${PREFIX}-${DATE}_v"*.zip; do
  base="$(basename "$zip_file" .zip)"
  if [[ "$base" =~ _v([0-9]+)$ ]]; then
    version="${BASH_REMATCH[1]}"
    if (( version > max_version )); then
      max_version=$version
    fi
  fi
done
shopt -u nullglob

next_version=$((max_version + 1))
output="$ZIPS_DIR/${PREFIX}-${DATE}_v${next_version}.zip"

tmpdir="$(mktemp -d)"
cleanup() {
  rm -rf "$tmpdir"
}
trap cleanup EXIT

staging="$tmpdir/$FOLDER_NAME"
mkdir -p "$staging"

# Copy tracked-style sources while applying the same ignore rules as .gitignore.
# Prefer rsync when available; fall back to ditto+find filtering is avoided.
rsync -a \
  --exclude '.git/' \
  --exclude 'zips/' \
  --exclude '*.zip' \
  --exclude 'site/' \
  --exclude 'build/' \
  --exclude 'dist/' \
  --exclude '.venv/' \
  --exclude '.venv-stale/' \
  --exclude '__pycache__/' \
  --exclude '*.py[cod]' \
  --exclude '*$py.class' \
  --exclude '*.egg-info/' \
  --exclude '.DS_Store' \
  --exclude '.AppleDouble' \
  --exclude '.vscode/' \
  --exclude '.idea/' \
  --exclude '*.swp' \
  --exclude '*~' \
  --exclude '__backup_*/' \
  --exclude 'cudmore-narrative-cv/from-chat-gpt/' \
  --exclude 'cudmore-narrative-cv/zips/' \
  --exclude 'cudmore-narrative-cv/*.zip' \
  "$PROJECT_ROOT/" "$staging/"

(
  cd "$tmpdir"
  zip -r "$output" "$FOLDER_NAME"
)

file_count="$(find "$staging" -type f | wc -l | tr -d ' ')"
echo "Created $output (${file_count} file(s))"
