#!/bin/bash

set -e -u -o pipefail

cd $GITHUB_WORKSPACE

CARGO_TOKEN=${CARGO_LOGIN_TOKEN:-no-token-provided}

if [[ "$CARGO_TOKEN" == "no-token-provided" ]]
then
  echo 'Please provide the cargo login token via: secrets = ["CARGO_LOGIN_TOKEN"]'
  exit 78
fi

set +e
echo "Run: cargo login ********** && cargo release $*"
OUTPUT=$(bash -c "cargo login $CARGO_TOKEN && cargo release $*" 2>&1)

echo $OUTPUT

SUCCESS=$?
set -e

if [ $SUCCESS -eq 0 ]; then
  exit 0
fi

# TODO: more error handling
