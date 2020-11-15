#!/bin/bash

set -euo pipefail

readonly episodes="$(curl \
  -H 'Accept: application/json' \
  -H "Authorization: Bearer ${SIMPLECAST_TOKEN}" \
  --location \
  --request GET \
  'https://api.simplecast.com/podcasts/c0a958c6-59dd-45ad-b246-1b7a1a9e51f6/episodes?limit=200')"

cat > index.md <<- EOF
# Episodes

EOF

# https://www.starkandwayne.com/blog/bash-for-loop-over-json-array-using-jq/
for episode in $(echo "${episodes}" | jq -r '.collection[] | @base64'); do
  _jq() {
    echo "${episode}" | base64 --decode | jq -r ${1}
  }

  echo "* [$(_jq '.title')](/episodes/$(_jq '.token'))" >> index.md

  episode_detail="$(curl \
    -H 'Accept: application/json' \
    -H "Authorization: Bearer ${SIMPLECAST_TOKEN}" \
    --location \
    --request GET \
    https://api.simplecast.com/episodes/$(_jq '.id'))"

  _jq2() {
    echo "${episode_detail}" | jq -r ${1}
  }

  episode_file="$(_jq '.token').md"
  echo "---" > "$episode_file"
  echo "layout: default" >> "$episode_file"
  echo "title: \"$(_jq '.title')\"" >> "$episode_file"
  echo "date: \"$(_jq '.published_at')\"" >> "$episode_file"
  echo "permalink: /episodes/$(_jq '.token')/" >> "$episode_file"
  echo "---" >> "$episode_file"
  echo "" >> "$episode_file"
  echo "# $(_jq '.title')" >> "$episode_file"
  echo "" >> "$episode_file"
  echo "<iframe frameBorder=\"0\" height=\"200px\" scrolling=\"no\" seamless src=\"https://player.simplecast.com/$(_jq '.id')\" width=\"100%\"></iframe>" >> $episode_file
  echo "" >> "$episode_file"
  echo "$(_jq2 '.long_description')" >> "$episode_file"
done
