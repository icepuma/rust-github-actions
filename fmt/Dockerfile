FROM rust:1.33.0

LABEL "com.github.actions.name"="fmt"
LABEL "com.github.actions.description"="Cargo fmt"
LABEL "com.github.actions.icon"="play-circle"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/icepuma/rust-github-actions"
LABEL "homepage"="https://github.com/icepuma/rust-github-actions"
LABEL "maintainer"="Stefan Ruzitschka <icepuma@godda.mn>"

RUN rustup component add rustfmt-preview

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
