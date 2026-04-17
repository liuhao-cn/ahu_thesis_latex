#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

usage() {
  cat <<'EOF'
Usage: ./make.sh [clean|help]

Commands:
  (no args) Build main.pdf with XeLaTeX + BibTeX and clean intermediates.
  clean     Remove intermediate build files.
  help      Show this help message.
EOF
}

require_cmd() {
  local name="$1"
  if ! command -v "$name" >/dev/null 2>&1; then
    printf 'Missing dependency: %s\n' "$name" >&2
    exit 1
  fi
}

run_quiet() {
  local step_name="$1"
  local log_file
  shift

  log_file="$(mktemp)"
  if ! "$@" >"$log_file" 2>&1; then
    printf 'Build step failed: %s\n\n' "$step_name" >&2
    cat "$log_file" >&2
    rm -f "$log_file"
    exit 1
  fi
  rm -f "$log_file"
}

clean_intermediates() {
  rm -f \
    "$ROOT/main.aux" \
    "$ROOT/main.bbl" \
    "$ROOT/main.blg" \
    "$ROOT/main.log" \
    "$ROOT/main.out" \
    "$ROOT/main.toc"
}

build_pdf_artifacts() {
  (
    cd "$ROOT"
    run_quiet "XeLaTeX pass 1" xelatex -interaction=nonstopmode -halt-on-error main.tex
    run_quiet "BibTeX" bibtex main
    run_quiet "XeLaTeX pass 2" xelatex -interaction=nonstopmode -halt-on-error main.tex
    run_quiet "XeLaTeX pass 3" xelatex -interaction=nonstopmode -halt-on-error main.tex
  )
}

command_name="${1:-}"

case "$command_name" in
  "")
    require_cmd xelatex
    require_cmd bibtex
    build_pdf_artifacts
    clean_intermediates
    ;;
  clean)
    clean_intermediates
    ;;
  help|-h|--help)
    usage
    ;;
  *)
    printf 'Unknown command: %s\n\n' "$command_name" >&2
    usage >&2
    exit 1
    ;;
esac
