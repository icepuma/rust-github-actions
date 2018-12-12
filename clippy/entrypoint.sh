#!/bin/bash

set -e -u -o pipefail

cd $GITHUB_WORKSPACE

echo "Run: cargo clippy $*"
bash -c "cargo clippy $*"
