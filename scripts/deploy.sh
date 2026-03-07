#!/bin/bash
#
# ACM COMPUTE Regional Event - Deploy to GitHub Pages
#
# Usage: ./scripts/deploy.sh
#
# Builds the Jekyll site and pushes to gh-pages branch.
# Run from the repository root.

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# Helper functions
info() { echo -e "${GREEN}==>${NC} $1"; }
warn() { echo -e "${YELLOW}warning:${NC} $1"; }
error() { echo -e "${RED}error:${NC} $1" >&2; exit 1; }

# Ensure we're in the repo root
if [[ ! -f "_config.yml" ]]; then
    error "Must run from repository root (where _config.yml is located)"
fi

# Check for uncommitted changes (warn only)
if [[ -n $(git status --porcelain) ]]; then
    warn "You have uncommitted changes. Consider committing before deploying."
    echo ""
fi

# Get remote URL
REMOTE_URL=$(git remote get-url origin 2>/dev/null) || error "No git remote 'origin' found"

# Get git user config
GIT_USER_NAME=$(git config user.name) || error "Git user.name not configured"
GIT_USER_EMAIL=$(git config user.email) || error "Git user.email not configured"

# Build
info "Building site..."
bundle exec jekyll build || error "Jekyll build failed"

# Verify build output exists
if [[ ! -d "_site" ]] || [[ -z "$(ls -A _site)" ]]; then
    error "Build produced no output in _site/"
fi

info "Preparing deployment..."
cd _site

# Add .nojekyll to prevent GitHub from processing with Jekyll
touch .nojekyll

# Initialize fresh git repo
git init -q
git checkout -q -b gh-pages

# Configure git
git config user.name "$GIT_USER_NAME"
git config user.email "$GIT_USER_EMAIL"

# Commit
git add -A
git commit -q -m "build: deploy $(date '+%Y-%m-%d %H:%M:%S')"

# Push
info "Pushing to gh-pages..."
git push -f -q "$REMOTE_URL" gh-pages

# Cleanup
cd ..
rm -rf _site/.git

echo ""
info "Deployed successfully!"
echo ""
echo "Site will be available at your GitHub Pages URL shortly."
echo ""
echo -e "${YELLOW}First time?${NC} Configure GitHub Pages:"
echo "  1. Go to: GitHub repo → Settings → Pages"
echo "  2. Source: Deploy from a branch"
echo "  3. Branch: gh-pages / (root)"
echo "  4. Save"
echo ""
