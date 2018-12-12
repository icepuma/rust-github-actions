#!/bin/bash

set -e -u -o pipefail

cd $GITHUB_WORKSPACE

echo "Running cargo $*"

bash -c "cargo $*"
