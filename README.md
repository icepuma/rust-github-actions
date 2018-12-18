# Rust github actions

[Github actions](https://developer.github.com/actions/) to deal with rust builds.

There is a tag for each stable version for `rust >= 1.31.0` that can be referenced!

## Quickstart
```
workflow "Quickstart" {
  on = "push"
  resolves = ["Quickstart"]
}

action "Quickstart" {
  uses = "icepuma/rust-github-actions/quickstart@master"
}
```

## Example

```
workflow "Build example project" {
  on = "push"
  resolves = ["Release"]
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

action "Release" {
  uses = "icepuma/rust-github-actions/release@master"
  needs = "Build"
  secrets = ["CARGO_LOGIN_TOKEN"]
}
```
