#!/usr/bin/env bash
set -ev

echo `which node`
node deploy.js
echo "end of deploy process"

git status
git add .
# git commit -m "add auto commit file"
# git push

echo "end of run scripts"
