#!/bin/bash

set -e -u -o pipefail

cd $GITHUB_WORKSPACE

echo "Run: cargo fmt $*"
bash -c "cargo fmt $*"
