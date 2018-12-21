#!/bin/bash

set -e -u -o pipefail

cd $GITHUB_WORKSPACE

set +e
echo "Run: cargo fmt $*"
OUTPUT=$(bash -c "cargo fmt $*" 2>&1)

echo $OUTPUT

SUCCESS=$?
set -e

if [ $SUCCESS -eq 0 ]; then
  exit 0
fi

# TODO: more error handling
