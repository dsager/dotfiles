#! /bin/sh

git push mine

REPO=$(git config --get remote.origin.url | sed -e 's/git@github.com://' -e 's/.git$//')
FORK=$(git config --get remote.mine.url | sed -e 's/.*://' -e 's/\/.*//')
BRANCH=$(git rev-parse --abbrev-ref HEAD)

xdg-open "https://github.com/${REPO}/compare/develop...${FORK}:${BRANCH}?expand=1"
