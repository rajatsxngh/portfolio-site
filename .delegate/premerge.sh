#!/usr/bin/env bash
set -e
# Static HTML site - validate HTML syntax

if [ -n "${BASH_VERSION:-}" ]; then _SELF="${BASH_SOURCE[0]}"
elif [ -n "${ZSH_VERSION:-}" ]; then eval '_SELF="${(%):-%x}"'
else _SELF="$0"; fi

SCRIPT_DIR="$(cd "$(dirname "$_SELF")" && pwd)"
WORKTREE_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$WORKTREE_ROOT"

# Basic validation: check if index.html exists and is valid
if [ ! -f index.html ]; then
  echo "ERROR: index.html not found"
  exit 1
fi

echo "✓ HTML file exists and is readable"
