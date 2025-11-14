#!/bin/bash

echo "Resolving merge conflicts and syncing to latest changes..."

# Abort any ongoing merge
git merge --abort 2>/dev/null || true

# Fetch latest from remote
echo "Fetching latest changes..."
git fetch origin

# Checkout the branch
echo "Checking out segmented equalizer branch..."
git checkout claude/segmented-equalizer-bars-01NQLPJad5DpjawuQB2ReREw

# Reset to match remote exactly
echo "Resetting to remote state..."
git reset --hard origin/claude/segmented-equalizer-bars-01NQLPJad5DpjawuQB2ReREw

echo ""
echo "✓ Done! Your local files are now synced."
echo "✓ The segmented equalizer changes are in place."
echo ""
echo "To view locally, run:"
echo "  python3 -m http.server 8000"
echo "Then open: http://localhost:8000/index.html"
