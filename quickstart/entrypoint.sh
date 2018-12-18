#!/bin/bash

set -e -u -o pipefail

cd $GITHUB_WORKSPACE

echo "Run: cargo fmt -- --check && cargo clippy -- -Dwarnings && cargo test && cargo build --release"
bash -c "cargo fmt -- --check && cargo clippy -- -Dwarnings && cargo test && cargo build --release"
