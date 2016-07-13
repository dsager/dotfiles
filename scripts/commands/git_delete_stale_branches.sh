#!/bin/sh

EXCLUDED_BRANCHES="master|develop|source|backup|$(git rev-parse --abbrev-ref HEAD)"
echo "DELETING LOCAL BRANCHES..."
git branch | egrep -v $EXCLUDED_BRANCHES | xargs git branch -D 
echo "DELETING REMOTE BRANCHES..."
git branch -r | grep origin | sed 's/origin\///g' | egrep -v $EXCLUDED_BRANCHES | xargs -I {} sh -c 'git push origin :{}'

