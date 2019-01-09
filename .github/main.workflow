workflow "Integration tests" {
  on = "push"
  resolves = ["Build", "Quickstart"]
}

action "Format" {
  uses = "icepuma/rust-github-actions/fmt@1.31.1"
  args = "-- --check"
}

action "Clippy" {
  uses = "icepuma/rust-github-actions/clippy@1.31.1"
  args = "-- -Dwarnings"
  needs = "Format"
}

action "Build" {
  uses = "icepuma/rust-github-actions/build@1.31.1"
  needs = "Clippy"
}

action "Quickstart" {
  uses = "icepuma/rust-github-actions/quickstart@1.31.1"
}
