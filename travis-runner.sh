#!/bin/bash

GH_REPO="@github.com/PierreZ/gwetur.git"

FULL_REPO="https://$GH_TOKEN$GH_REPO"

cp .travis.yml build/unbundled/
cd build/unbundled
git init
git config user.name "travis-auto"
git config user.email "travis"

git add -A
git commit -m "deployed to github pages"
git push --force --quiet $FULL_REPO HEAD:prod
