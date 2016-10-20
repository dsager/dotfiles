#!/usr/bin/env sh

AUTH=`pass web/pinboard | tail -n1`
FROM_DATE=`date --date="1 week ago" +"%Y-%m-%dT00:01:00Z"`
BASE_URL="https://api.pinboard.in/v1/posts/all"
URL="${BASE_URL}?format=json&tag=fl&fromdt=${FROM_DATE}&auth_token=${AUTH}"

curl -s "${URL}" | jq -r "map(.description, .href, \"\") | .[]"
