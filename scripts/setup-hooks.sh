#!/bin/bash
# Setup Git Hooks

echo "Setting up Git Hooks..."

cp scripts/git-hooks/pre-commit .git/hooks/pre-commit
cp scripts/git-hooks/commit-msg .git/hooks/commit-msg
cp scripts/git-hooks/pre-push .git/hooks/pre-push

chmod +x .git/hooks/pre-commit
chmod +x .git/hooks/commit-msg
chmod +x .git/hooks/pre-push

echo "Git hooks installed successfully!"
echo ""
echo "Installed hooks:"
echo "  - pre-commit:  Format & validation"
echo "  - commit-msg:  Conventional commits"
echo "  - pre-push:    Additional checks"
