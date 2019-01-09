# Rust github actions

[Github actions](https://developer.github.com/actions/) to deal with rust builds.

To use different versions of rust you can reference the action via branch.

## Available versions

- master
- 1.31.1
- 1.31.0

## Quickstart

Contains `fmt` & `clippy`. This action could be used to quickly bootstrap a rust project and its CI with `Github Actions`. 

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
