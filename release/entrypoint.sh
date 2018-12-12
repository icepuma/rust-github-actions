#!/bin/bash

set -e -u -o pipefail

cd $GITHUB_WORKSPACE

echo "Run: cargo login ********** && cargo release $*"
bash -c "cargo login $CARGO_TOKEN && cargo release $*"
