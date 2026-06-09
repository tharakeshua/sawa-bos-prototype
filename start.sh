#!/usr/bin/env bash
# SAWA BOS · v5.3 — local launcher (macOS / Linux)
#
# Boots a tiny local web server in this folder, then opens the prototype
# in your default browser. Stops with Ctrl-C.

set -euo pipefail

cd "$(dirname "$0")"

PORT=8765
URL="http://127.0.0.1:${PORT}/index.html"

echo ""
echo "──────────────────────────────────────────"
echo "  SAWA BOS · v5.3 — Live Prototype"
echo "──────────────────────────────────────────"
echo "  Serving on: ${URL}"
echo "  Folder:     $(pwd)"
echo "  Press Ctrl-C to stop."
echo ""

# Pick a runtime: prefer python3, fall back to python or node.
if command -v python3 >/dev/null 2>&1; then
  RUNNER=(python3 -m http.server "${PORT}" --bind 127.0.0.1)
elif command -v python >/dev/null 2>&1; then
  RUNNER=(python -m SimpleHTTPServer "${PORT}")
elif command -v npx >/dev/null 2>&1; then
  RUNNER=(npx --yes serve -l "${PORT}" .)
else
  echo "ERROR: need python3, python, or node/npx installed." >&2
  echo "       …or just double-click index.html (works from file:// too)." >&2
  exit 1
fi

# Open the browser shortly after the server starts.
( sleep 1.2 && (open "${URL}" 2>/dev/null || xdg-open "${URL}" 2>/dev/null || true) ) &

exec "${RUNNER[@]}"
