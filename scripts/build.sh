#!/bin/bash

set -euo pipefail

readonly episodes="$(curl \
  -H 'Accept: application/json' \
  -H "Authorization: Bearer ${SIMPLECAST_TOKEN}" \
  --location \
  --request GET \
  'https://api.simplecast.com/podcasts/c0a958c6-59dd-45ad-b246-1b7a1a9e51f6/episodes?limit=200')"

cat > README.md <<- EOF
# Swift Unwrapped

A podcast spin off of Swift Weekly Brief and other Swifty news.

EOF

# https://www.starkandwayne.com/blog/bash-for-loop-over-json-array-using-jq/
for episode in $(echo "${episodes}" | jq -r '.collection[] | @base64'); do
  _jq() {
    echo ${episode} | base64 --decode | jq -r ${1}
  }

  echo "* [$(_jq '.title')](https://spec.fm/podcasts/swift-unwrapped/$(_jq '.token'))" >> README.md
done
