#!/bin/sh -eux

cd "${GITHUB_WORKSPACE}"

git branch refs/heads/main
git config --global user.name "github-actions[bot]"
git config --global user.email "github-actions[bot]@users.noreply.github.com"
git reset --hard HEAD~1
git push --force origin HEAD:refs/heads/main
