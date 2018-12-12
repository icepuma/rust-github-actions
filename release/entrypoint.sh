#!/bin/bash

set -e -u -o pipefail

cd $GITHUB_WORKSPACE

CARGO_TOKEN=${CARGO_LOGIN_TOKEN:-no-token-provided}

if [[ "$CARGO_TOKEN" == "no-token-provided" ]]
then
  echo 'Please provide the cargo login token via: secrets = ["CARGO_LOGIN_TOKEN"]'
  exit 78
fi

echo "Run: cargo login ********** && cargo release $*"
bash -c "cargo login $CARGO_TOKEN && cargo release $*"
