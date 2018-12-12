#!/bin/bash

set -e -u -o pipefail

cd $GITHUB_WORKSPACE

echo "Run: cargo build $*"
bash -c "cargo build $*"
