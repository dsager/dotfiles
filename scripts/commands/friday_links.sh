#!/usr/bin/env sh

FROM_DATE_STRING=${1:-"1 week ago"}
FROM_DATE=`date --date="${FROM_DATE_STRING}" +"%Y-%m-%dT00:01:00Z"`

AUTH=`pass web/pinboard | tail -n1`

BASE_URL="https://api.pinboard.in/v1/posts/all"
URL="${BASE_URL}?format=json&tag=fl&fromdt=${FROM_DATE}&auth_token=${AUTH}"

curl -s "${URL}" | jq -r "map(.description, .href, \"\") | .[]"
