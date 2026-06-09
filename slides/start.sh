#!/usr/bin/env bash
# SAWA BOS · Discovery Sprint — Slide deck launcher
# Serves slides/ on http://127.0.0.1:8766 and opens your default browser.

set -e
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DIR"

PORT="${PORT:-8766}"

open_browser () {
  local URL="http://127.0.0.1:${PORT}/"
  echo ""
  echo "  ───────────────────────────────────────────────"
  echo "  SAWA BOS · slide deck"
  echo "  open → ${URL}"
  echo "  press Ctrl+C to stop"
  echo "  ───────────────────────────────────────────────"
  echo ""
  sleep 0.6
  if command -v open >/dev/null 2>&1; then
    open "$URL" >/dev/null 2>&1 || true
  elif command -v xdg-open >/dev/null 2>&1; then
    xdg-open "$URL" >/dev/null 2>&1 || true
  fi
}

if command -v python3 >/dev/null 2>&1; then
  open_browser
  exec python3 -m http.server "$PORT" --bind 127.0.0.1
elif command -v python >/dev/null 2>&1; then
  open_browser
  exec python -m SimpleHTTPServer "$PORT"
else
  echo "Python is required to run the local server."
  echo "Install Python 3 (https://python.org) and run this script again."
  exit 1
fi
