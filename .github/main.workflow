workflow "Integration tests" {
  on = "push"
  resolves = ["Build", "Quickstart"]
}

action "Format" {
  uses = "icepuma/rust-github-actions/fmt@master"
  args = "-- --check"
}

action "Clippy" {
  uses = "icepuma/rust-github-actions/clippy@master"
  args = "-- -Dwarnings"
  needs = "Format"
}

action "Build" {
  uses = "icepuma/rust-github-actions/build@master"
  needs = "Clippy"
}

action "Quickstart" {
  uses = "icepuma/rust-github-actions/quickstart@master"
}
