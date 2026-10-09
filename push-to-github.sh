#!/bin/zsh
set -e
REPO="git@github.com:rungrung23/kesana-kemari-travel.git"
if [ ! -d .git ]; then
  git init
fi
if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin "$REPO"
else
  git remote add origin "$REPO"
fi
git add .
git commit -m "Initial Kesana Kemari Travel website" 2>/dev/null || git commit -m "Update Kesana Kemari Travel website"
git branch -M main
git push -u origin main
echo "\nDONE: GitHub updated -> $REPO"
